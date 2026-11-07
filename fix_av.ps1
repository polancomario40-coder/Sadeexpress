$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.pas'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

$bad_code = @"
        if QFactura.RecordCount > 0 then
        begin
          if QFactura.FieldByName('Cancelado').AsBoolean then
          begin
            QFactura.Close;
            raise Exception.Create('Esta factura esta cancelada y no podra seleccionarse..');
          end;

          if not (RS.State in [dsEdit, dsInsert]) then
            RS.Edit;

          RSReferencia.Value := QFactura.FieldByName('idFactura').Value;
          RSidCliente.Value := QFactura.FieldByName('idCliente').AsInteger;
          RSidDocumento.Value := QFactura.FieldByName('Factura').AsString;
          
          FacturaFind.ShowModal;
          // Asignar el idCliente desde la factura si está vacío o si quieres forzarlo
          if not FacturaFind.CxcidCliente.IsNull then
          begin
            RSidCliente.Value := FacturaFind.CxcidCliente.Value;
          end;
"@

$good_code = @"
        if QFactura.RecordCount > 0 then
        begin
          if QFactura.FieldByName('Cancelado').AsBoolean then
          begin
            QFactura.Close;
            raise Exception.Create('Esta factura esta cancelada y no podra seleccionarse..');
          end;

          if not (RS.State in [dsEdit, dsInsert]) then
            RS.Edit;

          RSReferencia.Value := QFactura.FieldByName('idFactura').Value;
          RSidCliente.Value := QFactura.FieldByName('idCliente').AsInteger;
          RSidDocumento.Value := QFactura.FieldByName('Factura').AsString;
"@

$bad_code = $bad_code -replace "`r`n", "`n"
$good_code = $good_code -replace "`r`n", "`n"
$c = $c -replace "`r`n", "`n"

$c = $c.Replace($bad_code, $good_code)

$c = $c -replace "`n", "`r`n"
[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "Fixed Access Violation!"

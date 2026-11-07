$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.pas'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

# 1. Add to uses clause in implementation
$c = $c.Replace("uses Udata, udgiidm, uBusqueda, uCliente, UUtiles, CxCFind;", "uses Udata, udgiidm, uBusqueda, uCliente, UUtiles, CxCFind, FacturaFind;")

# 2. Add declaration to TCXC class
$c = $c.Replace("    procedure FindClienteClick(Sender: TObject);", "    procedure FindClienteClick(Sender: TObject);`r`n    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);")

# 3. Replace the faulty procedure implementation
$old_impl = 'procedure TCXC\.cxDBButtonEdit1PropertiesButtonClick\s*\([^)]+\);\s*var\s*x\s*:\s*variant;\s*begin\s*inherited;\s*x := fBuscar\(TFindFactura, ''idFactura'', false\);\s*if x <> Null then\s*begin\s*with facturaAct do\s*begin\s*Close;\s*Parameters\[1\]\.Value := x;\s*Open;\s*if RecordCount > 0 then\s*begin\s*if facturaActCancelado\.Value then\s*raise Exception\.Create\(''Esta factura esta cancelada y no podra seleccionarse..''\);\s*RSReferencia\.Value := facturaActidFactura\.Value;\s*RSidDocumento\.Value := facturaActFactura\.Value;\s*// Auto-fill NCF from selected invoice\s*RSNcfModificado\.Value := facturaActCompFiscal\.Value;\s*RSFechaNcfModificado\.Value := facturaActFecha\.Value;\s*end;\s*end;\s*end;\s*end;'

$new_impl = @"
procedure TCXC.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  x                 : variant;
  QFactura          : TADOQuery;
begin
  inherited;
  x := fBuscar(TFindFactura, 'idFactura', false);
  if x <> Null then
  begin
    QFactura := TADOQuery.Create(nil);
    try
      QFactura.Connection := dm.Coneccion;
      QFactura.SQL.Text := 'SELECT idFactura, Factura, CompFiscal, Cancelado, Fecha FROM Factura WHERE idFactura = :id';
      QFactura.Parameters.ParamByName('id').Value := x;
      QFactura.Open;

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
        RSidDocumento.Value := QFactura.FieldByName('Factura').AsString;
        
        // Auto-fill NCF from selected invoice
        RSNcfModificado.Value := QFactura.FieldByName('CompFiscal').AsString;
        RSFechaNcfModificado.Value := QFactura.FieldByName('Fecha').AsDateTime;
      end;
      QFactura.Close;
    finally
      QFactura.Free;
    end;
  end;
end;
"@

$c = [regex]::Replace($c, $old_impl, $new_impl)

[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "Compiled fixed."

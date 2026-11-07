$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.pas'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

$old_sql = "QFactura.SQL.Text := 'SELECT idFactura, Factura, CompFiscal, Cancelado, Fecha FROM Factura WHERE idFactura = :id';"
$new_sql = "QFactura.SQL.Text := 'SELECT idFactura, Factura, CompFiscal, Cancelado, Fecha, idCliente FROM Factura WHERE idFactura = :id';"
$c = $c.Replace($old_sql, $new_sql)

$old_assign = "        RSReferencia.Value := QFactura.FieldByName('idFactura').Value;"
$new_assign = "        RSReferencia.Value := QFactura.FieldByName('idFactura').Value;`r`n        RSidCliente.Value := QFactura.FieldByName('idCliente').AsInteger;"
$c = $c.Replace($old_assign, $new_assign)

[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "Patched logic for idCliente."

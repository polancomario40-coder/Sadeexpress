$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.pas'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

$c = $c -replace '(?s)RSNcfModificado\.Value := QFactura\.FieldByName\(''CompFiscal''\)\.AsString;\s*RSFechaNcfModificado\.Value := QFactura\.FieldByName\(''Fecha''\)\.AsDateTime;', "cxDBTextEdit1.Text := QFactura.FieldByName('CompFiscal').AsString;"

[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "Replaced properly!"

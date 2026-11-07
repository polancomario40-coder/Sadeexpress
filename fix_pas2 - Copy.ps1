$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.pas'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

# Remove variable declarations
$c = $c -replace '(?m)^\s*RSNcfModificado:\s*TStringField;\r?\n', ''
$c = $c -replace '(?m)^\s*RSFechaNcfModificado:\s*TDateTimeField;\r?\n', ''
$c = $c -replace '(?m)^\s*RSTipoNcfModificado:\s*TStringField;\r?\n', ''
$c = $c -replace '(?m)^\s*cxDBTextEdit1:\s*TcxDBTextEdit;\r?\n', "    cxDBTextEdit1: TcxTextEdit;`r`n"

# Replace value assignments
$old_assign = @"
        RSNcfModificado.Value := QFactura.FieldByName('CompFiscal').AsString;
        RSFechaNcfModificado.Value := QFactura.FieldByName('Fecha').AsDateTime;
"@
$new_assign = @"
        cxDBTextEdit1.Text := QFactura.FieldByName('CompFiscal').AsString;
"@
$c = $c.Replace(($old_assign -replace "`r`n", "`n"), ($new_assign -replace "`r`n", "`n"))
$c = $c.Replace($old_assign, $new_assign)

[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "Fixed uCXC.pas variables and assignments"

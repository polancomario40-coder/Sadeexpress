$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.pas'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

# Find the accidental injection
$bad_pattern = 'edTotalPprocedure TCXC\.cxDBButtonEdit1PropertiesButtonClick[\s\S]*?RSFechaNcfModificado\.Value := facturaActFecha\.Value;\r?\n      end;\r?\n    end;\r?\n  end;\r?\nend;'

$c = [regex]::Replace($c, $bad_pattern, 'edTotalPend.Value := Value;')
[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "Fixed!"

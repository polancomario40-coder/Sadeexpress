$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.pas'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

# Normalize line endings to exactly \r\n
$c = $c -replace "`r`n", "`n"
$c = $c -replace "`r", "`n"
$c = $c -replace "`n", "`r`n"

[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "Normalized line endings for uCXC.pas"

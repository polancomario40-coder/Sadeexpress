$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.pas'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

$c = [regex]::Replace($c, 'edTotalPend\.Value := Value;[\s\S]*?end\.Value := Value;', 'edTotalPend.Value := Value;')
[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "Fixed double value!"

$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

$c = $c -replace "object btnRefrescarECF: TBitBtn", "object btnRefrescarECF: TButton"
$c = $c -replace "`r`n", "`n"
$c = $c -replace "`n", "`r`n"
[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "Fixed button type!"

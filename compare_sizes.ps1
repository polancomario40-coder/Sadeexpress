$bytes1 = [System.IO.File]::ReadAllBytes('C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm')
$bytes2 = [System.IO.File]::ReadAllBytes('C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.~dfm')
Write-Host "DFM Length: $($bytes1.Length)"
Write-Host "Backup Length: $($bytes2.Length)"

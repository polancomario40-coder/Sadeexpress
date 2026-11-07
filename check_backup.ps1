$bytes2 = [System.IO.File]::ReadAllBytes('C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.~dfm')
Write-Host "Backup First 4 bytes: $($bytes2[0]), $($bytes2[1]), $($bytes2[2]), $($bytes2[3])"

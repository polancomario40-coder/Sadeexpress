$bytes = [System.IO.File]::ReadAllBytes('C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm')
Write-Host "Length: $($bytes.Length)"
Write-Host "First bytes: $($bytes[0]), $($bytes[1]), $($bytes[2])"

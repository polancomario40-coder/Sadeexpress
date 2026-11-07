$bytes = [System.IO.File]::ReadAllBytes('C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm')
$len = $bytes.Length
Write-Host "Last bytes: $($bytes[$len-5]), $($bytes[$len-4]), $($bytes[$len-3]), $($bytes[$len-2]), $($bytes[$len-1])"

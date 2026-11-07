$bak = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.~dfm'
$dfm = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
Copy-Item -Path $bak -Destination $dfm -Force
Write-Host "Restored uCXC.dfm from backup!"

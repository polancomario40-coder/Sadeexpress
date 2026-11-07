$lines1 = Get-Content 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.~dfm'
$lines2 = Get-Content 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
Write-Host "Lines in backup: $($lines1.Length)"
Write-Host "Lines in current: $($lines2.Length)"

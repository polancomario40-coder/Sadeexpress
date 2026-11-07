$lines = Get-Content 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
for ($i = 840; $i -le 860; $i++) {
    Write-Host "${i}: $($lines[$i-1])"
}

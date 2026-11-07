$lines = Get-Content 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
for ($i = 580; $i -le 600; $i++) {
    Write-Host "${i}: $($lines[$i-1])"
}

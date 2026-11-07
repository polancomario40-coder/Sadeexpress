$lines = Get-Content 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
for ($i = 520; $i -le 540; $i++) {
    Write-Host "${i}: $($lines[$i-1])"
}

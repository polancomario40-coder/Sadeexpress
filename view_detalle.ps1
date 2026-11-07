$lines = Get-Content 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
for ($i = 330; $i -le 350; $i++) {
    Write-Host "${i}: $($lines[$i-1])"
}

$lines = Get-Content 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
for ($i = 356; $i -lt 400; $i++) {
    Write-Host "${i}: $($lines[$i-1])"
}

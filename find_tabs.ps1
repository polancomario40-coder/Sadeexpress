$lines = Get-Content 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
for ($i = 0; $i -lt $lines.Length; $i++) {
    if ($lines[$i] -match 'object tabInfoECF') { Write-Host "tabInfoECF at $($i+1)" }
    if ($lines[$i] -match 'object TabSheet2') { Write-Host "TabSheet2 at $($i+1)" }
}

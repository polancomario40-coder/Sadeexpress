$lines = Get-Content 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
$objCount = 0
$endCount = 0
foreach ($l in $lines) {
    if ($l -match '^\s*object ') { $objCount++ }
    if ($l -match '^\s*end$') { $endCount++ }
}
Write-Host "Objects: $objCount"
Write-Host "Ends: $endCount"

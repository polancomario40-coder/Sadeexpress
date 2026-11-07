$lines = Get-Content 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
$lineNum = 1
foreach ($l in $lines) {
    # Check for quotes
    $q = ($l.ToCharArray() | Where-Object { $_ -eq "'" }).Count
    if ($q % 2 -ne 0) {
        Write-Host "Odd quotes at line ${lineNum}: $l"
    }
    $lineNum++
}

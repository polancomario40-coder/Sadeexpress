$bytes = [System.IO.File]::ReadAllBytes('C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm')
$crCount = 0
$lfCount = 0
foreach ($b in $bytes) {
    if ($b -eq 13) { $crCount++ }
    if ($b -eq 10) { $lfCount++ }
}
Write-Host "CR: $crCount"
Write-Host "LF: $lfCount"

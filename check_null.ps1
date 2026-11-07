$bytes = [System.IO.File]::ReadAllBytes('C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm')
$nullCount = 0
foreach ($b in $bytes) {
    if ($b -eq 0) { $nullCount++ }
}
Write-Host "Null bytes: $nullCount"

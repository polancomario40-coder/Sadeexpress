$lines = Get-Content 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
$stack = 0
$detalleStack = -1
$lineNumber = 1
$foundStart = $false
foreach ($line in $lines) {
    if ($line -match '^\s*object ' -or $line -match '^\s*inherited ' -or $line -match '^\s*item') {
        $stack++
        if ($line -match 'object Detalle: TPageControl') {
            $detalleStack = $stack
            $foundStart = $true
        }
    }
    if ($line -match '^\s*end>?') {
        if ($foundStart -and $stack -eq $detalleStack) {
            Write-Host "Detalle ends at line $lineNumber"
            break
        }
        $stack--
    }
    $lineNumber++
}

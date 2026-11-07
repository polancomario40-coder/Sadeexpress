$lines = Get-Content 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
$stack = 0
$lineNumber = 1
foreach ($line in $lines) {
    if ($line -match '^\s*object ' -or $line -match '^\s*inherited ' -or $line -match '^\s*item') {
        $stack++
    }
    if ($line -match '^\s*end>?') {
        $stack--
    }
    $lineNumber++
}
Write-Host "Final stack size: $stack"

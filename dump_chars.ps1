$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))
$idx = $c.IndexOf('object Creditos')
if ($idx -gt 20) {
    $sub = $c.Substring($idx - 20, 40)
    Write-Host "CHARACTERS:"
    foreach ($char in $sub.ToCharArray()) {
        Write-Host "$($char) - $([int]$char)"
    }
}

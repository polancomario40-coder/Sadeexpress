$dfm_path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
$dfm = [IO.File]::ReadAllText($dfm_path, [Text.Encoding]::GetEncoding(1252))

$lbl16 = [IO.File]::ReadAllText('parts.txt').Split("`n`n")[0]
# Actually, reading from parts.txt might be tricky because of split.

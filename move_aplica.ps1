$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

# Extract the block to move
$regex = '(?s)\s*object Label16: TLabel.+?cxDBTextEdit1: TcxTextEdit.+?TabOrder = 20\s+end'
$match = [regex]::Match($c, $regex)
$block = $match.Value
$c = $c.Replace($block, "")

# Indent the block for HeaderPanel
$indented_block = $block -replace '(?m)^', '  '

# Insert it right after dxDBLookupEdit2
$lookup = "(?s)object dxDBLookupEdit2: TdxDBLookupEdit.+?StyleController = dm\.dxEstilo\s+end"
$match2 = [regex]::Match($c, $lookup)
$lookup_block = $match2.Value

$c = $c.Replace($lookup_block, $lookup_block + "`r`n" + $indented_block)

[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "Moved Aplica A to HeaderPanel!"

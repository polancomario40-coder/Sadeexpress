$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

$bad_ds = @"
      object edEcfStatus1: TcxDBTextEdit
        Left = 16
        Top = 32
        Width = 120
        DataBinding.DataField = 'StatusEcf'
        DataBinding.DataSource = DS
"@

$good_ds = @"
      object edEcfStatus1: TcxDBTextEdit
        Left = 16
        Top = 32
        Width = 120
        DataBinding.DataField = 'StatusEcf'
        DataBinding.DataSource = dsEcfStatus
"@

# Fix CRLF
$bad_ds = $bad_ds -replace "`r`n", "`n"
$good_ds = $good_ds -replace "`r`n", "`n"
$c = $c -replace "`r`n", "`n"

$c = $c.Replace($bad_ds, $good_ds)

$c = $c -replace "`n", "`r`n"
[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "Fixed DataSource for edEcfStatus1"

$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

$c = $c -replace '(?s)    object Label16: TLabel\r?\n      Left = 560\r?\n      Top = 112\r?\n      Width = 42', '    object Label16: TLabel
      Left = 420
      Top = 88
      Width = 42'

$c = $c -replace '(?s)    object cxDBButtonEdit1: TcxDBButtonEdit\r?\n      Left = 605\r?\n      Top = 108\r?\n      Width = 80', '    object cxDBButtonEdit1: TcxDBButtonEdit
      Left = 465
      Top = 84
      Width = 115'

$c = $c -replace '(?s)    object cxDBTextEdit1: TcxDBTextEdit\r?\n      Left = 688\r?\n      Top = 108\r?\n      Width = 85', '    object cxDBTextEdit1: TcxDBTextEdit
      Left = 585
      Top = 84
      Width = 120'

[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "DFM positions updated."

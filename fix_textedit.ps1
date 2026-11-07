$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

$old_textedit = @"
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 450
    Top = 84
    Width = 120
    Height = 21
    DataBinding.DataField = 'NcfModificado'
    DataBinding.DataSource = DS
    TabOrder = 20
  end
"@

$new_textedit = @"
  object cxDBTextEdit1: TcxTextEdit
    Left = 450
    Top = 84
    Width = 120
    Height = 21
    Properties.ReadOnly = True
    Style.Color = 13818837
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 20
  end
"@

$c = $c.Replace(($old_textedit -replace "`r`n", "`n"), ($new_textedit -replace "`r`n", "`n"))
$c = $c.Replace($old_textedit, $new_textedit)

[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "Fixed dfm for cxDBTextEdit1"

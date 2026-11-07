$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

$tab = @"
      object edEcfStatus1: TcxDBTextEdit
        Left = 16
        Top = 32
        Width = 120
        Height = 21
        DataBinding.DataField = 'StatusEcf'
        DataBinding.DataSource = dsEcfStatus
        Properties.ReadOnly = True
        TabOrder = 0
      end
"@

$tab_new = @"
      object edEcfStatus1: TcxDBTextEdit
        Left = 16
        Top = 32
        Width = 120
        Height = 21
        DataBinding.DataField = 'StatusEcf'
        DataBinding.DataSource = dsEcfStatus
        Properties.ReadOnly = True
        TabOrder = 0
      end
      object btnRefrescarECF: TBitBtn
        Left = 145
        Top = 30
        Width = 75
        Height = 25
        Caption = 'Refrescar'
        TabOrder = 2
        OnClick = btnRefrescarECFClick
      end
"@

$c = $c.Replace(($tab -replace "`r`n", "`n"), ($tab_new -replace "`r`n", "`n"))
$c = $c.Replace($tab, $tab_new)

[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "Added Refresh button to Info ECF tab!"

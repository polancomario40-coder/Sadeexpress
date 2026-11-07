$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

# 1. Shrink Sub Cliente width to make room
$oldSubCliente = @"
    object dxDBLookupEdit2: TdxDBLookupEdit
      Left = 64
      Top = 84
      Width = 345
"@
$newSubCliente = @"
    object dxDBLookupEdit2: TdxDBLookupEdit
      Left = 64
      Top = 84
      Width = 200
"@
$c = $c.Replace(($oldSubCliente -replace "`r`n", "`n"), ($newSubCliente -replace "`r`n", "`n"))
$c = $c.Replace($oldSubCliente, $newSubCliente)

# 2. Fix the positions of Aplica A components
$oldAplica = @"
  object Label16: TLabel
    Left = 405
    Top = 88
    Width = 53
    Height = 13
    Caption = 'Aplica A:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object cxDBButtonEdit1: TcxDBButtonEdit
    Left = 465
    Top = 84
    Width = 115
    Height = 21
    DataBinding.DataField = 'idDocumento'
    DataBinding.DataSource = DS
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.ReadOnly = True
    Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 19
  end
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 585
    Top = 84
    Width = 120
    Height = 21
    DataBinding.DataField = 'NcfModificado'
    DataBinding.DataSource = DS
    TabOrder = 20
  end
"@

$newAplica = @"
  object Label16: TLabel
    Left = 275
    Top = 88
    Width = 53
    Height = 13
    Caption = 'Aplica A:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object cxDBButtonEdit1: TcxDBButtonEdit
    Left = 330
    Top = 84
    Width = 115
    Height = 21
    DataBinding.DataField = 'idDocumento'
    DataBinding.DataSource = DS
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.ReadOnly = True
    Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 19
  end
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
$c = $c.Replace(($oldAplica -replace "`r`n", "`n"), ($newAplica -replace "`r`n", "`n"))
$c = $c.Replace($oldAplica, $newAplica)

$c = $c -replace "`r`n", "`n"
$c = $c -replace "`n", "`r`n"
[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "Fixed UI overlap!"

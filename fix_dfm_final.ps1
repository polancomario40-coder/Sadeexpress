$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

$c = $c -replace '(?s)object Label16: TLabel.+?cxDBTextEdit1: TcxDBTextEdit.+?TabOrder = 20\s+end', @"
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

$c = $c -replace "(?s)object dxDBLookupEdit2: TdxDBLookupEdit\s+Left = 64\s+Top = 84\s+Width = 345", @"
    object dxDBLookupEdit2: TdxDBLookupEdit
      Left = 64
      Top = 84
      Width = 200
"@

[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "Replaced all UI bits correctly!"

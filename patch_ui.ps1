$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

$new_fields = @"
    object Label16: TLabel
      Left = 560
      Top = 112
      Width = 42
      Height = 13
      Caption = 'Aplica A:'
    end
    object cxDBButtonEdit1: TcxDBButtonEdit
      Left = 605
      Top = 108
      Width = 80
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
      Left = 688
      Top = 108
      Width = 85
      Height = 21
      DataBinding.DataField = 'NcfModificado'
      DataBinding.DataSource = DS
      TabOrder = 20
    end
    object dxDBLookupEdit2: TdxDBLookupEdit
"@

$c = [regex]::Replace($c, "(?s)    object dxDBLookupEdit2: TdxDBLookupEdit", $new_fields)
[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "DFM UI components injected."

$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
$lines = Get-Content $path

$newLines = @()

$headerInjection = @"
  object dsEcfStatus: TDataSource
    DataSet = dm.rsEcfStatus
    Left = 24
    Top = 24
  end
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
$headerInjectionLines = $headerInjection -split "`n"

$tabInjection = @"
    object tabInfoECF: TTabSheet
      Caption = 'Info ECF'
      ImageIndex = 4
      DesignSize = (
        772
        346)
      object LabelEcfStatus1: TLabel
        Left = 16
        Top = 16
        Width = 63
        Height = 13
        Caption = 'Estado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelCodSeguridad1: TLabel
        Left = 16
        Top = 72
        Width = 72
        Height = 13
        Caption = 'Cod. seguridad:'
      end
      object edEcfStatus1: TcxDBTextEdit
        Left = 16
        Top = 32
        Width = 120
        DataBinding.DataField = 'StatusEcf'
        DataBinding.DataSource = DS
        Properties.ReadOnly = True
        Style.Color = 13818837
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
      object edCodSeguridad1: TcxDBTextEdit
        Left = 16
        Top = 88
        Width = 120
        DataBinding.DataField = 'CodigoSeguridadEcf'
        DataBinding.DataSource = dsEcfStatus
        Properties.ReadOnly = True
        Style.Color = 13818837
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 1
      end
      object mmoUltError1: TcxDBMemo
        Left = 150
        Top = 16
        Width = 600
        Height = 310
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataBinding.DataField = 'ultError'
        DataBinding.DataSource = dsEcfStatus
        Properties.ReadOnly = True
        Style.Color = 13818837
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 2
      end
    end
"@
$tabInjectionLines = $tabInjection -split "`n"

for ($i = 0; $i -lt $lines.Length; $i++) {
    $line = $lines[$i]
    
    # 1. Inject after TextHeight = 13
    if ($line -match '^\s*TextHeight = 13') {
        $newLines += $line
        foreach ($il in $headerInjectionLines) {
            $newLines += $il.TrimEnd("`r")
        }
        continue
    }

    # 2. Inject before line 348 (0-indexed 347)
    if ($i -eq 347) {
        foreach ($il in $tabInjectionLines) {
            $newLines += $il.TrimEnd("`r")
        }
    }

    $newLines += $line
}

# Normalize to \r\n and write
$finalStr = $newLines -join "`r`n"
[IO.File]::WriteAllText($path, $finalStr, [Text.Encoding]::GetEncoding(1252))
Write-Host "DFM rebuilt correctly!"

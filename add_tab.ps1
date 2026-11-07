$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

# 1. Remove old components from documentos TabSheet
$old_ecf_controls = @"
        object LabelCodSeguridad: TLabel
          Left = 380
          Top = 304
          Width = 72
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Cod. seguridad:'
          Transparent = True
        end
        object edCodSeguridad: TcxDBTextEdit
          Left = 460
          Top = 300
          Width = 100
          Anchors = [akLeft, akBottom]
          DataBinding.DataField = 'CodigoSeguridadEcf'
          DataBinding.DataSource = dsEcfStatus
          Properties.ReadOnly = True
          Style.Color = 13818837
          Style.LookAndFeel.NativeStyle = True
          TabOrder = 33
        end
        object mmoUltError: TcxDBMemo
          Left = 570
          Top = 300
          Width = 200
          Height = 40
          Anchors = [akLeft, akRight, akBottom]
          DataBinding.DataField = 'ultError'
          DataBinding.DataSource = dsEcfStatus
          Properties.ReadOnly = True
          Style.Color = 13818837
          Style.LookAndFeel.NativeStyle = True
          TabOrder = 34
        end
"@
$c = $c.Replace($old_ecf_controls, "")

# 2. Find the end of TabSheet2 and inject the new tab
$idx1 = $c.IndexOf('    object TabSheet2: TTabSheet')
$idx2 = $c.IndexOf('  end', $idx1)
$idx3 = $c.IndexOf("`n", $idx2) + 1

$new_tab = @"
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

$c = $c.Substring(0, $idx3) + $new_tab + "`r`n" + $c.Substring($idx3)
[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "New tab injected successfully!"

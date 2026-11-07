$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

$ecf_controls = @"
        object edTotalPend: TdxCurrencyEdit
          Left = 463
          Top = 324
          Width = 121
          TabOrder = 3
          TabStop = False
          Anchors = [akLeft, akBottom]
          StyleController = dm.dxEstilo
          DisplayFormat = '$,0.00;-$,0.00'
          StoredValues = 0
        end
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

$c = [regex]::Replace($c, "(?s)        object edTotalPend: TdxCurrencyEdit.*?StoredValues = 0\r?\n        end", $ecf_controls)

[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "Injected via edTotalPend regex."

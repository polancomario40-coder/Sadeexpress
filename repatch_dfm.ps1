$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))

# 1. Dataset RS fields
$rs_fields = @"
    object RSCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object RSNcfModificado: TStringField
      FieldName = 'NcfModificado'
      Size = 19
    end
    object RSFechaNcfModificado: TDateTimeField
      FieldName = 'FechaNcfModificado'
    end
    object RSTipoNcfModificado: TStringField
      FieldName = 'TipoNcfModificado'
      Size = 2
    end
"@
$c = [regex]::Replace($c, "(?s)    object RSCompFiscal: TStringField\r?\n      FieldName = 'CompFiscal'\r?\n      Size = 19\r?\n    end", $rs_fields)

# 2. Dataset RPTCxc fields
$rpt_fields = @"
    object RPTCxcAplicadoTotal: TBCDField
      FieldName = 'AplicadoTotal'
      ReadOnly = True
      Precision = 20
      Size = 2
    end
    object RPTCxcCompFiscalAplica: TStringField
      FieldName = 'CompFiscalAplica'
      Size = 19
    end
"@
$c = [regex]::Replace($c, "(?s)    object RPTCxcAplicadoTotal: TBCDField\r?\n      FieldName = 'AplicadoTotal'\r?\n      ReadOnly = True\r?\n      Precision = 20\r?\n      Size = 2\r?\n    end", $rpt_fields)

# 3. UI fields (Aplica A)
$ui_fields = @"
    object Label16: TLabel
      Left = 420
      Top = 88
      Width = 42
      Height = 13
      Caption = 'Aplica A:'
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
    object dxDBLookupEdit2: TdxDBLookupEdit
"@
$c = [regex]::Replace($c, "(?s)    object dxDBLookupEdit2: TdxDBLookupEdit", $ui_fields)

# 4. dsEcfStatus
$ds_ecf = @"
  TextHeight = 13
  object dsEcfStatus: TDataSource
    DataSet = dm.rsEcfStatus
    Left = 24
    Top = 24
  end
"@
$c = $c.Replace("  TextHeight = 13", $ds_ecf)

# 5. ECF components in documentos TabSheet
$ecf_controls = @"
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
      end
    object Creditos: TTabSheet
"@
$c = $c.Replace("        end`r`n      end`r`n    object Creditos: TTabSheet", $ecf_controls)

[IO.File]::WriteAllText($path, $c, [Text.Encoding]::GetEncoding(1252))
Write-Host "Re-applied all DFM patches correctly."

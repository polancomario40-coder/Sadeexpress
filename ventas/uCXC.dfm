inherited CXC: TCXC
  Left = 260
  Top = 110
  Caption = 'CXC'
  ClientHeight = 599
  ClientWidth = 782
  Color = 15922418
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Width = 782
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 782
    inherited nuevo: TwwNavButton
      Width = 87
    end
    inherited editar: TwwNavButton
      Left = 87
      Width = 87
    end
    inherited guardar: TwwNavButton
      Left = 174
      Width = 87
    end
    inherited cancelar: TwwNavButton
      Left = 261
      Width = 87
    end
    inherited borrar: TwwNavButton
      Left = 348
      Width = 87
    end
    object bAnular: TwwNavButton [5]
      Left = 435
      Top = 0
      Width = 87
      Height = 42
      Action = AAnular
      ImageIndex = 3
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 5
      Style = nbsCustom
    end
    inherited BLocalizarx: TwwNavButton
      Left = 522
      Width = 87
      Index = 6
    end
    object bimprimir: TwwNavButton [7]
      Left = 609
      Top = 0
      Width = 87
      Height = 42
      Action = Aprint
      ImageIndex = 11
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 7
      Style = nbsCustom
    end
    inherited salir: TwwNavButton
      Left = 696
      Width = 86
      Index = 8
    end
  end
  object Detalle: TPageControl [2]
    Left = 0
    Top = 224
    Width = 780
    Height = 374
    ActivePage = documentos
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    object documentos: TTabSheet
      Caption = 'Debitos afectados por este documento'
      DesignSize = (
        772
        346)
      object Label10: TLabel
        Left = 0
        Top = 328
        Width = 73
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'Fecha aplicado'
      end
      object Label4: TLabel
        Left = 183
        Top = 328
        Width = 67
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'Total aplicado'
      end
      object Label7: TLabel
        Left = 408
        Top = 328
        Width = 48
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'Pendiente'
      end
      object grDetalle: TdxDBGrid
        Left = 0
        Top = 4
        Width = 770
        Height = 313
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'idCXCDebito'
        SummaryGroups = <>
        SummarySeparator = ', '
        TabOrder = 0
        DataSource = dsDet
        Filter.Criteria = {00000000}
        LookAndFeel = lfUltraFlat
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowAutoHeight, edgoUseBitmap]
        Anchors = [akLeft, akTop, akRight, akBottom]
        object grDetalleDocumento: TdxDBGridMaskColumn
          Caption = 'Doc'
          DisableEditor = True
          TabStop = False
          Width = 63
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Documento'
        end
        object grDetalleFechaDoc: TdxDBGridDateColumn
          Caption = 'Fecha'
          DisableEditor = True
          TabStop = False
          Width = 62
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FechaDoc'
        end
        object grDetalleidTipoDocumento: TdxDBGridMaskColumn
          Caption = 'Tipo'
          DisableEditor = True
          TabStop = False
          Width = 32
          BandIndex = 0
          RowIndex = 0
          FieldName = 'idTipoDocumento'
        end
        object grDetalleMoneda: TdxDBGridColumn
          DisableEditor = True
          Width = 78
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Moneda'
        end
        object grDetalleColumn13: TdxDBGridColumn
          Width = 49
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Tasa'
        end
        object grDetalleTotalDoc: TdxDBGridCurrencyColumn
          Caption = 'Total'
          DisableEditor = True
          TabStop = False
          Width = 89
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TotalDoc'
          Nullable = False
        end
        object grDetalleColumn11: TdxDBGridCurrencyColumn
          DisableEditor = True
          Width = 83
          BandIndex = 0
          RowIndex = 0
          FieldName = 'AplicadoOtros'
          Nullable = True
        end
        object grDetalleBalance: TdxDBGridCurrencyColumn
          DisableEditor = True
          TabStop = False
          Width = 92
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Balance'
          Nullable = False
        end
        object grDetalleFechaAplicado: TdxDBGridDateColumn
          Caption = 'Fecha app'
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FechaAplicado'
        end
        object grDetalleColumn12: TdxDBGridCurrencyColumn
          Width = 87
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Aplicado'
          Nullable = False
        end
        object grDetalleClienteObra: TdxDBGridColumn
          Caption = 'Sub cliente'
          Width = 63
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ClienteObra'
        end
      end
      object dxDBEdit3: TdxDBEdit
        Left = 85
        Top = 324
        Width = 90
        TabOrder = 1
        TabStop = False
        Anchors = [akLeft, akBottom]
        DataField = 'FechaAplicado'
        DataSource = dsDet
        StyleController = dm.dxEstilo
      end
      object edTotalApp: TdxCurrencyEdit
        Left = 255
        Top = 324
        Width = 121
        TabOrder = 2
        TabStop = False
        Anchors = [akLeft, akBottom]
        StyleController = dm.dxEstilo
        DisplayFormat = '$,0.00;-$,0.00'
        StoredValues = 0
      end
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
    end
    object Creditos: TTabSheet
      Caption = 'Creditos que afectan este documento'
      ImageIndex = 1
      DesignSize = (
        772
        346)
      object dxDBGrid1: TdxDBGrid
        Left = 2
        Top = 0
        Width = 765
        Height = 336
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'idCxcDet'
        SummaryGroups = <>
        SummarySeparator = ', '
        TabOrder = 0
        DataSource = dsdetcreditos
        Filter.Criteria = {00000000}
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        Anchors = [akLeft, akTop, akRight, akBottom]
        object dxDBGrid1Tipo: TdxDBGridMaskColumn
          Width = 71
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Tipo'
        end
        object dxDBGrid1Documento: TdxDBGridMaskColumn
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Documento'
        end
        object dxDBGrid1MontoAplicado: TdxDBGridCurrencyColumn
          Caption = 'Monto Aplicado'
          Width = 118
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MontoAplicado'
          Nullable = False
        end
        object dxDBGrid1FechaAplicado: TdxDBGridDateColumn
          Caption = 'Fecha Aplicado'
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FechaAplicado'
        end
        object dxDBGrid1idCxcDet: TdxDBGridColumn
          Visible = False
          Width = 198
          BandIndex = 0
          RowIndex = 0
          FieldName = 'idCxcDet'
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Codificacion Contable'
      ImageIndex = 3
      inline frCodifCtas1: TfrCodifCtas
        Left = 0
        Top = 0
        Width = 772
        Height = 346
        Align = alClient
        TabOrder = 0
        inherited Grid: TcxGrid
          Width = 772
          Height = 346
          inherited tvCtas: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '###,###,##0.00'
                Kind = skSum
                FieldName = 'Debito'
                Column = frCodifCtas1.tvCtasDebito
              end
              item
                Format = '###,###,##0.00'
                Kind = skSum
                FieldName = 'Credito'
                Column = frCodifCtas1.tvCtasCredito
              end>
          end
        end
      end
    end
    object tabInfoECF: TTabSheet
      Caption = 'Info ECF'
      ImageIndex = 4
      DesignSize = (
        772
        346)
      object LabelEcfStatus1: TLabel
        Left = 16
        Top = 16
        Width = 41
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
        Width = 74
        Height = 13
        Caption = 'Cod. seguridad:'
      end
      object edEcfStatus1: TcxDBTextEdit
        Left = 16
        Top = 32
        Width = 120
        Height = 21
        DataBinding.DataField = 'StatusEcf'
        DataBinding.DataSource = dsEcfStatus
        Properties.ReadOnly = True
        Style.Color = 13818837
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
      object edCodSeguridad1: TcxDBTextEdit
        Left = 16
        Top = 88
        Width = 120
        Height = 21
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
      object btnRefrescarECF: TButton
        Left = 16
        Top = 118
        Width = 120
        Height = 25
        Caption = 'Refrescar'
        TabOrder = 3
        OnClick = btnRefrescarECFClick
      end
      object bSendECF: TButton
        Left = 16
        Top = 150
        Width = 120
        Height = 25
        Caption = 'Enviar ECF'
        TabOrder = 4
        OnClick = bSendECFClick
      end
    end
  end
  object dxDBEdit1: TdxDBEdit [3]
    Left = 689
    Top = 166
    Width = 85
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    Style.BorderStyle = xbsNone
    Style.ButtonTransparence = ebtAlways
    TabOrder = 3
    TabStop = False
    Anchors = [akTop, akRight]
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'Usuario'
    DataSource = DS
    ReadOnly = True
    Height = 16
    StoredValues = 65
  end
  object HeaderPanel: TPanel [4]
    Left = 0
    Top = 45
    Width = 777
    Height = 178
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      777
      178)
    object Label5: TLabel
      Left = 6
      Top = 40
      Width = 45
      Height = 13
      Caption = 'Num Doc'
    end
    object Label6: TLabel
      Left = 182
      Top = 36
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label9: TLabel
      Left = 20
      Top = 64
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object Label1: TLabel
      Left = 180
      Top = 10
      Width = 42
      Height = 13
      Caption = 'Tipo Cxc'
    end
    object Label2: TLabel
      Left = 392
      Top = 38
      Width = 44
      Height = 13
      Caption = 'Tipo Doc'
    end
    object Label3: TLabel
      Left = 22
      Top = 114
      Width = 33
      Height = 13
      Caption = 'Valor $'
    end
    object Label8: TLabel
      Left = 12
      Top = 136
      Width = 46
      Height = 13
      Caption = 'Concepto'
    end
    object Label11: TLabel
      Left = 602
      Top = 65
      Width = 31
      Height = 13
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Desc :'
    end
    object Label12: TLabel
      Left = 602
      Top = 37
      Width = 30
      Height = 13
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Total :'
    end
    object Label13: TLabel
      Left = 602
      Top = 89
      Width = 90
      Height = 13
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Dias / Vencimiento'
    end
    object Label21: TLabel
      Left = 183
      Top = 114
      Width = 39
      Height = 13
      Caption = 'Moneda'
    end
    object Label26: TLabel
      Left = 602
      Top = 11
      Width = 21
      Height = 13
      Anchors = [akLeft, akTop, akRight]
      Caption = 'NCF'
    end
    object Label14: TLabel
      Left = 360
      Top = 114
      Width = 24
      Height = 13
      Caption = 'Tasa'
    end
    object Label15: TLabel
      Left = 4
      Top = 86
      Width = 54
      Height = 13
      Caption = 'Sub Cliente'
    end
    object Label16: TLabel
      Left = 275
      Top = 88
      Width = 48
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
    object cod: TdxDBEdit
      Left = 62
      Top = 32
      Width = 116
      TabOrder = 0
      TabStop = False
      DataField = 'Cxc'
      DataSource = DS
      ReadOnly = False
      StyleController = dm.dxEstilo
      StoredValues = 64
    end
    object dxDBEdit2: TcxDBDateEdit
      Left = 232
      Top = 32
      Width = 145
      Height = 21
      TabStop = False
      DataBinding.DataField = 'Fecha'
      DataBinding.DataSource = DS
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 1
    end
    object Credito: TdxDBCheckEdit
      Left = 14
      Top = 7
      Width = 65
      TabOrder = 2
      OnClick = CreditoClick
      Alignment = taRightJustify
      Caption = 'Credito'
      DataField = 'esCredito'
      DataSource = DS
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      StoredValues = 1
    end
    object FindCliente: TButton
      Left = 62
      Top = 59
      Width = 16
      Height = 20
      Caption = '...'
      TabOrder = 3
      TabStop = False
      OnClick = FindClienteClick
    end
    object dxDBEdit6: TdxDBEdit
      Left = 78
      Top = 58
      Width = 100
      TabOrder = 4
      OnDblClick = dxDBEdit6DblClick
      DataField = 'idCliente'
      DataSource = DS
      StyleController = dm.dxEstilo
    end
    object dxDBEdit11: TdxDBEdit
      Left = 180
      Top = 58
      Width = 394
      TabOrder = 5
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      DataField = 'Cliente'
      DataSource = DS
      StyleController = dm.dxEstilo
    end
    object Tipo: TdxDBLookupEdit
      Left = 233
      Top = 7
      Width = 339
      TabOrder = 10
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      DataField = 'idCxcTipo'
      DataSource = DS
      ReadOnly = False
      StyleController = dm.dxEstilo
      ListFieldName = 'CxcTipo'
      KeyFieldName = 'idCxcTipo'
      ListSource = dsTipos
      LookupKeyValue = Null
      StoredValues = 64
    end
    object dxDBEdit4: TdxDBEdit
      Left = 456
      Top = 32
      Width = 118
      Color = 15395562
      TabOrder = 11
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      DataField = 'idTipoDocumento'
      DataSource = DS
      ReadOnly = True
      StyleController = dm.dxEstilo
      StoredValues = 64
    end
    object dxDBMemo1: TdxDBMemo
      Left = 62
      Top = 136
      Width = 711
      TabOrder = 9
      Anchors = [akLeft, akTop, akRight]
      DataField = 'Concepto'
      DataSource = DS
      StyleController = dm.dxEstilo
      Height = 33
    end
    object dxDBCurrencyEdit1: TdxDBCurrencyEdit
      Left = 62
      Top = 110
      Width = 116
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      DataField = 'Valor'
      DataSource = DS
      StyleController = dm.dxEstilo
      DisplayFormat = '$,0.00;-$,0.00'
      Nullable = False
      StoredValues = 0
    end
    object dxDBCurrencyEdit2: TdxDBCurrencyEdit
      Left = 636
      Top = 60
      Width = 136
      Color = 15395562
      TabOrder = 12
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      DataField = 'Descuento'
      DataSource = DS
      ReadOnly = True
      StyleController = dm.dxEstilo
      DisplayFormat = '$,0.00;-$,0.00'
      Nullable = False
      StoredValues = 64
    end
    object dxDBCurrencyEdit3: TdxDBCurrencyEdit
      Left = 636
      Top = 33
      Width = 136
      Color = 15395562
      TabOrder = 13
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      DataField = 'Total'
      DataSource = DS
      ReadOnly = True
      StyleController = dm.dxEstilo
      DisplayFormat = '$,0.00;-$,0.00'
      Nullable = False
      StoredValues = 64
    end
    object dxDBPickEdit1: TdxDBPickEdit
      Left = 596
      Top = 110
      Width = 43
      Enabled = False
      TabOrder = 14
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      DataField = 'Condicion'
      DataSource = DS
      StyleController = dm.dxEstilo
      Items.Strings = (
        '00'
        '02'
        '07'
        '15'
        '30'
        '45'
        '60')
      CanDeleteText = True
    end
    object Vencimiento: TdxDBDateEdit
      Left = 638
      Top = 110
      Width = 135
      TabOrder = 15
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      DataField = 'Vencimiento'
      DataSource = DS
      StyleController = dm.dxEstilo
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 226
      Top = 110
      Width = 101
      Height = 21
      TabStop = False
      DataBinding.DataField = 'idMoneda'
      DataBinding.DataSource = DS
      Properties.KeyFieldNames = 'idMoneda'
      Properties.ListColumns = <
        item
          FieldName = 'Moneda'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm.dsMoneda
      Style.BorderStyle = ebsFlat
      Style.LookAndFeel.NativeStyle = True
      Style.StyleController = dm.cxEstilo
      TabOrder = 7
    end
    object dxDBCheckEdit1: TdxDBCheckEdit
      Left = 476
      Top = 110
      Width = 77
      TabOrder = 16
      TabStop = False
      OnClick = CreditoClick
      Alignment = taRightJustify
      Caption = 'Cancelado'
      DataField = 'Cancelado'
      DataSource = DS
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      StoredValues = 1
    end
    object dxDBEdit21: TdxDBEdit
      Left = 636
      Top = 7
      Width = 135
      TabOrder = 17
      Anchors = [akLeft, akTop, akRight]
      DataField = 'CompFiscal'
      DataSource = DS
      StyleController = dm.dxEstilo
    end
    object dxDBEdit5: TdxDBEdit
      Left = 398
      Top = 110
      Width = 67
      TabOrder = 8
      TabStop = False
      DataField = 'Tasa'
      DataSource = DS
      ReadOnly = False
      StyleController = dm.dxEstilo
      StoredValues = 64
    end
    object dxDBLookupEdit2: TdxDBLookupEdit
      Left = 64
      Top = 84
      Width = 200
      TabOrder = 18
      DataField = 'idClienteObra'
      DataSource = DS
      ReadOnly = False
      StyleController = dm.dxEstilo
      ListFieldName = 'idClienteObra'
      CanDeleteText = True
      KeyFieldName = 'idClienteObra'
      ListSource = dsClienteObra
      LookupKeyValue = Null
      StoredValues = 64
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
  end
  inherited DS: TwwDataSource
    Left = 16
    Top = 228
  end
  inherited ImageList: TImageList
    Left = 16
    Top = 175
  end
  inherited Acciones: TActionList
    Left = 16
    Top = 16
    inherited AAnular: TAction
      Caption = 'Anular'
    end
  end
  inherited RS: TADODataSet
    AfterScroll = RSAfterScroll
    OnNewRecord = RSNewRecord
    CommandText = 'rsCXC;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idCXC'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 16
    Top = 122
    object RSidCxc: TGuidField
      FieldName = 'idCxc'
      FixedChar = True
      Size = 38
    end
    object RSCxc: TStringField
      FieldName = 'Cxc'
      Size = 16
    end
    object RSidCliente: TIntegerField
      FieldName = 'idCliente'
      Required = True
      OnValidate = RSidClienteValidate
    end
    object RSidTipoDocumento: TStringField
      DisplayLabel = 'Tipo Documento'
      FieldName = 'idTipoDocumento'
      Required = True
      Size = 16
    end
    object RSidDocumento: TStringField
      FieldName = 'idDocumento'
    end
    object RSValor: TBCDField
      FieldName = 'Valor'
      Required = True
      OnValidate = RSValorValidate
      Precision = 18
      Size = 2
    end
    object RSFecha: TDateTimeField
      FieldName = 'Fecha'
      Required = True
      OnValidate = RSFechaValidate
    end
    object RSConcepto: TStringField
      FieldName = 'Concepto'
      Required = True
      Size = 100
    end
    object RSidCxcTipo: TIntegerField
      FieldName = 'idCxcTipo'
    end
    object RSesCredito: TBooleanField
      FieldName = 'esCredito'
      OnValidate = RSesCreditoValidate
    end
    object RSCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object RSReferencia: TGuidField
      FieldName = 'Referencia'
      FixedChar = True
      Size = 38
    end
    object RSCliente: TStringField
      FieldName = 'Cliente'
      Required = True
      Size = 100
    end
    object RSUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object RSDescuento: TBCDField
      FieldName = 'Descuento'
      Precision = 19
      Size = 2
    end
    object RSTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 20
      Size = 2
    end
    object RSCondicion: TIntegerField
      FieldName = 'Condicion'
    end
    object RSVencimiento: TDateTimeField
      FieldName = 'Vencimiento'
    end
    object RSidMoneda: TIntegerField
      FieldName = 'idMoneda'
      OnValidate = RSidMonedaValidate
    end
    object RSFechaCancelado: TDateTimeField
      FieldName = 'FechaCancelado'
    end
    object RSCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object RSidClienteObra: TStringField
      FieldName = 'idClienteObra'
      Size = 25
    end
    object RSTasa: TFloatField
      FieldName = 'Tasa'
    end
    object RScomputer: TStringField
      FieldName = 'computer'
      Size = 50
    end
  end
  object dsEcfStatus: TDataSource
    DataSet = dm.rsEcfStatus
    Left = 24
    Top = 24
  end
  object ClienteAct: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'ClienteAct;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idCliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 190
    Top = 69
    object ClienteActidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object ClienteActCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object ClienteActContacto: TStringField
      FieldName = 'Contacto'
      Size = 40
    end
    object ClienteActLimiteCredito: TBCDField
      FieldName = 'LimiteCredito'
      Precision = 19
      Size = 2
    end
    object ClienteActActivo: TBooleanField
      FieldName = 'Activo'
    end
    object ClienteActidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object ClienteActDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object ClienteActSector: TStringField
      FieldName = 'Sector'
    end
    object ClienteActCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object ClienteActTelefono: TStringField
      FieldName = 'Telefono'
    end
    object ClienteActNoPagaItbis: TBooleanField
      FieldName = 'NoPagaItbis'
    end
    object ClienteActDescuento: TFloatField
      FieldName = 'Descuento'
    end
    object ClienteActFax: TStringField
      FieldName = 'Fax'
    end
    object ClienteActeMail: TStringField
      FieldName = 'eMail'
      Size = 80
    end
    object ClienteActidListaPrecio: TStringField
      FieldName = 'idListaPrecio'
      Size = 16
    end
    object ClienteActCondicion: TIntegerField
      FieldName = 'Condicion'
    end
    object ClienteActidCuenta: TStringField
      FieldName = 'idCuenta'
    end
    object ClienteActidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
    end
    object ClienteActRNC_Cedula: TStringField
      FieldName = 'RNC_Cedula'
    end
    object ClienteActidCondicion: TStringField
      FieldName = 'idCondicion'
      Size = 16
    end
    object ClienteActNotas: TStringField
      FieldName = 'Notas'
      Size = 2000
    end
    object ClienteActIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
    end
  end
  object Tipos: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'CXCTipoList;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@esCredito'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Fijo'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 248
    Top = 69
    object TiposidCxcTipo: TIntegerField
      FieldName = 'idCxcTipo'
    end
    object TiposCxcTipo: TStringField
      FieldName = 'CxcTipo'
      Size = 50
    end
    object TiposesCredito: TBooleanField
      FieldName = 'esCredito'
    end
    object TiposCC: TStringField
      FieldName = 'CC'
    end
    object TiposInterno: TBooleanField
      FieldName = 'Interno'
    end
  end
  object dsTipos: TwwDataSource
    AutoEdit = False
    DataSet = Tipos
    OnUpdateData = DSUpdateData
    Left = 248
    Top = 175
  end
  object rsDet: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'rsCXCDet;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idCXC'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@idCliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 132
    Top = 70
    object rsDetidCXCDet: TGuidField
      FieldName = 'idCXCDet'
      FixedChar = True
      Size = 38
    end
    object rsDetidCXC: TGuidField
      FieldName = 'idCXC'
      FixedChar = True
      Size = 38
    end
    object rsDetidCXCDebito: TGuidField
      FieldName = 'idCXCDebito'
      FixedChar = True
      Size = 38
    end
    object rsDetAplicado: TBCDField
      FieldName = 'Aplicado'
      currency = True
      Precision = 19
      Size = 2
    end
    object rsDetAplicadoOtros: TBCDField
      FieldName = 'AplicadoOtros'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsDetDocumento: TStringField
      FieldName = 'Documento'
    end
    object rsDetidTipoDocumento: TStringField
      FieldName = 'idTipoDocumento'
      Size = 16
    end
    object rsDetFechaDoc: TDateTimeField
      FieldName = 'FechaDoc'
    end
    object rsDetTotalDoc: TBCDField
      FieldName = 'TotalDoc'
      Precision = 19
      Size = 2
    end
    object rsDetBalance: TBCDField
      FieldName = 'Balance'
      ReadOnly = True
      currency = True
      Precision = 21
      Size = 2
    end
    object rsDetFechaAplicado: TDateTimeField
      FieldName = 'FechaAplicado'
    end
    object rsDetDescuento: TBCDField
      FieldName = 'Descuento'
      currency = True
      Precision = 19
      Size = 2
    end
    object rsDetidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsDetTipo: TWordField
      FieldName = 'Tipo'
    end
    object rsDetMoneda: TStringField
      FieldName = 'Moneda'
      Size = 16
    end
    object rsDetidClienteObra: TStringField
      FieldName = 'idClienteObra'
      Size = 16
    end
    object rsDetClienteObra: TStringField
      FieldName = 'ClienteObra'
      Size = 100
    end
    object rsDetTasa: TFloatField
      FieldName = 'Tasa'
    end
  end
  object mDet: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'idCXCDet'
        DataType = ftGuid
        Size = 38
      end
      item
        Name = 'idCXC'
        DataType = ftGuid
        Size = 38
      end
      item
        Name = 'idCXCDebito'
        DataType = ftGuid
        Size = 38
      end
      item
        Name = 'Aplicado'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'AplicadoOtros'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'Documento'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'idTipoDocumento'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'idMoneda'
        DataType = ftInteger
      end
      item
        Name = 'FechaDoc'
        DataType = ftDateTime
      end
      item
        Name = 'TotalDoc'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'FechaAplicado'
        DataType = ftDateTime
      end
      item
        Name = 'Tipo'
        DataType = ftWord
      end
      item
        Name = 'Descuento'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'Balance'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'Moneda'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'ClienteObra'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'idClienteObra'
        DataType = ftString
        Size = 16
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '4.08b'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    BeforeEdit = mDetBeforeEdit
    AfterPost = mDetAfterPost
    Left = 74
    Top = 175
    object mDetidCXCDet: TGuidField
      FieldName = 'idCXCDet'
      FixedChar = True
      Size = 38
    end
    object mDetidCXC: TGuidField
      FieldName = 'idCXC'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object mDetidCXCDebito: TGuidField
      FieldName = 'idCXCDebito'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object mDetAplicado: TBCDField
      FieldName = 'Aplicado'
      OnValidate = mDetAplicadoValidate
      currency = True
      Precision = 19
      Size = 2
    end
    object mDetAplicadoOtros: TBCDField
      FieldName = 'AplicadoOtros'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object mDetDocumento: TStringField
      FieldName = 'Documento'
      ReadOnly = True
    end
    object mDetidTipoDocumento: TStringField
      FieldName = 'idTipoDocumento'
      ReadOnly = True
      Size = 16
    end
    object mDetidMoneda: TIntegerField
      FieldName = 'idMoneda'
      ReadOnly = True
    end
    object mDetFechaDoc: TDateTimeField
      FieldName = 'FechaDoc'
      ReadOnly = True
    end
    object mDetTotalDoc: TBCDField
      FieldName = 'TotalDoc'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object mDetFechaAplicado: TDateTimeField
      FieldName = 'FechaAplicado'
      OnValidate = mDetFechaAplicadoValidate
    end
    object mDetTipo: TWordField
      FieldName = 'Tipo'
      ReadOnly = True
    end
    object mDetDescuento: TBCDField
      FieldName = 'Descuento'
      ReadOnly = True
      OnValidate = mDetDescuentoValidate
      currency = True
      Precision = 19
      Size = 2
    end
    object mDetBalance: TBCDField
      FieldName = 'Balance'
      ReadOnly = True
      currency = True
      Precision = 22
      Size = 2
    end
    object mDetMoneda: TStringField
      FieldName = 'Moneda'
      ReadOnly = True
      Size = 16
    end
    object mDetClienteObra: TStringField
      FieldName = 'ClienteObra'
      Size = 100
    end
    object mDetidClienteObra: TStringField
      FieldName = 'idClienteObra'
      Size = 16
    end
    object mDetTasa: TFloatField
      FieldName = 'Tasa'
    end
  end
  object dsDet: TDataSource
    DataSet = mDet
    Left = 190
    Top = 122
  end
  object cGuardarDet: TADOCommand
    CommandText = 'CXCGuardarDet;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idCXCDet'
        Attributes = [paNullable]
        DataType = ftGuid
        Direction = pdInputOutput
        Value = Null
      end
      item
        Name = '@IdCXC'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@IdCXCDebito'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@Valor'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Descuento'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@Tasa'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end>
    Left = 74
    Top = 16
  end
  object rsDetCreditos: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'rsCxcDetCreditos;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idCxc'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 248
    Top = 16
    object rsDetCreditosTipo: TStringField
      FieldName = 'Tipo'
      Size = 16
    end
    object rsDetCreditosDocumento: TStringField
      FieldName = 'Documento'
      Size = 16
    end
    object rsDetCreditosMontoAplicado: TBCDField
      FieldName = 'MontoAplicado'
      Precision = 18
      Size = 2
    end
    object rsDetCreditosFechaAplicado: TDateTimeField
      FieldName = 'FechaAplicado'
    end
    object rsDetCreditosidCxcDet: TGuidField
      FieldName = 'idCxcDet'
      FixedChar = True
      Size = 38
    end
  end
  object dsdetcreditos: TDataSource
    DataSet = rsDetCreditos
    Left = 248
    Top = 122
  end
  object RPTCxc: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    OnCalcFields = RPTCxcCalcFields
    CommandText = 'RPTCxc;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idCxc'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 190
    Top = 16
    object RPTCxcidCxc: TGuidField
      FieldName = 'idCxc'
      FixedChar = True
      Size = 38
    end
    object RPTCxcCxc: TStringField
      FieldName = 'Cxc'
      Size = 16
    end
    object RPTCxcidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object RPTCxcidTipoDocumento: TStringField
      FieldName = 'idTipoDocumento'
      Size = 16
    end
    object RPTCxcValor: TBCDField
      FieldName = 'Valor'
      Precision = 18
      Size = 2
    end
    object RPTCxcFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object RPTCxcConcepto: TStringField
      FieldName = 'Concepto'
      Size = 100
    end
    object RPTCxcidCxcTipo: TIntegerField
      FieldName = 'idCxcTipo'
    end
    object RPTCxcesCredito: TBooleanField
      FieldName = 'esCredito'
    end
    object RPTCxcCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object RPTCxcReferencia: TGuidField
      FieldName = 'Referencia'
      FixedChar = True
      Size = 38
    end
    object RPTCxcCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object RPTCxcUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object RPTCxcidDocumento: TStringField
      FieldName = 'idDocumento'
    end
    object RPTCxcDescuento: TBCDField
      FieldName = 'Descuento'
      Precision = 19
      Size = 2
    end
    object RPTCxcTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 20
      Size = 2
    end
    object RPTCxcCondicion: TIntegerField
      FieldName = 'Condicion'
    end
    object RPTCxcVencimiento: TDateTimeField
      FieldName = 'Vencimiento'
    end
    object RPTCxcidCxcDet: TGuidField
      FieldName = 'idCxcDet'
      FixedChar = True
      Size = 38
    end
    object RPTCxcAplicadoValor: TBCDField
      FieldName = 'AplicadoValor'
      Precision = 18
      Size = 2
    end
    object RPTCxcAplicacionFecha: TDateTimeField
      FieldName = 'AplicacionFecha'
    end
    object RPTCxcAplicadoDescuento: TBCDField
      FieldName = 'AplicadoDescuento'
      Precision = 19
      Size = 2
    end
    object RPTCxcAplicadoTotal: TBCDField
      FieldName = 'AplicadoTotal'
      ReadOnly = True
      Precision = 20
      Size = 2
    end
    object RPTCxcDebitoidCxc: TGuidField
      FieldName = 'DebitoidCxc'
      FixedChar = True
      Size = 38
    end
    object RPTCxcDebitoCxc: TStringField
      FieldName = 'DebitoCxc'
      Size = 16
    end
    object RPTCxcDebitoidTipoDoc: TStringField
      FieldName = 'DebitoidTipoDoc'
      Size = 16
    end
    object RPTCxcDebitoValor: TBCDField
      FieldName = 'DebitoValor'
      Precision = 18
      Size = 2
    end
    object RPTCxcDebitoFecha: TDateTimeField
      FieldName = 'DebitoFecha'
    end
    object RPTCxcDebitoConcepto: TStringField
      FieldName = 'DebitoConcepto'
      Size = 100
    end
    object RPTCxccompania: TStringField
      FieldName = 'compania'
      Size = 50
    end
    object RPTCxcdireccion: TStringField
      FieldName = 'direccion'
      Size = 120
    end
    object RPTCxctelefono: TStringField
      FieldName = 'telefono'
      Size = 15
    end
    object RPTCxcfax: TStringField
      FieldName = 'fax'
      Size = 15
    end
    object RPTCxcrnc: TStringField
      FieldName = 'rnc'
    end
    object RPTCxcCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object RPTCxcCxcTipo: TStringField
      FieldName = 'CxcTipo'
      Size = 50
    end
    object RPTCxcMoneda: TStringField
      FieldName = 'Moneda'
    end
    object RPTCxcMonedaFact: TStringField
      FieldName = 'MonedaFact'
    end
    object RPTCxcDebitoNCF: TStringField
      FieldName = 'DebitoNCF'
      Size = 19
    end
    object RPTCxcSUCURSARDireccion: TStringField
      FieldName = 'SUCURSARDireccion'
      ReadOnly = True
      Size = 2000
    end
    object RPTCxcSUCURSARLTelefono: TStringField
      FieldName = 'SUCURSARLTelefono'
      ReadOnly = True
      Size = 2000
    end
    object RPTCxcBalance: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Balance'
      Calculated = True
    end
    object RPTCxcitbi: TBCDField
      FieldName = 'itbi'
      Precision = 18
      Size = 2
    end
    object RPTCxcCompFiscalAplica: TStringField
      FieldName = 'CompFiscalAplica'
      Size = 19
    end
    object RPTCxcQrUrl: TStringField
      FieldName = 'QrUrl'
      ReadOnly = True
      Size = 1000
    end
    object RPTCxcCodigoSeguridadEcf: TStringField
      FieldName = 'CodigoSeguridadEcf'
    end
    object RPTCxcFechaFirmaDigital: TDateTimeField
      FieldName = 'FechaFirmaDigital'
    end
    object RPTCxcncfModificado: TStringField
      FieldName = 'ncfModificado'
      Size = 19
    end
  end
  object dsRPTCxc: TDataSource
    DataSet = RPTCxc
    Left = 74
    Top = 122
  end
  object CxcRPT: TppReport
    AutoStop = False
    DataPipeline = plRPTCxc
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'TV HDTV 1920x1080'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 8890
    PrinterSetup.mmMarginLeft = 8890
    PrinterSetup.mmMarginRight = 8890
    PrinterSetup.mmMarginTop = 8890
    PrinterSetup.mmPaperHeight = 139700
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 188
    Template.FileName = 'E:\cbsexpress\cbsexpress\cxcfmt.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    ShowCancelDialog = False
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 190
    Top = 175
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plRPTCxc'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 76994
      mmPrintPosition = 0
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkEnabled = False
        DataField = 'compania'
        DataPipeline = plRPTCxc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 6615
        mmLeft = 83344
        mmTop = 12171
        mmWidth = 108215
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkEnabled = False
        DataField = 'SUCURSARDireccion'
        DataPipeline = plRPTCxc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 20108
        mmWidth = 191559
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkEnabled = False
        DataField = 'SUCURSARLTelefono'
        DataPipeline = plRPTCxc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 23813
        mmWidth = 29633
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkEnabled = False
        DataField = 'fax'
        DataPipeline = plRPTCxc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 3440
        mmLeft = 30692
        mmTop = 23813
        mmWidth = 33338
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkEnabled = False
        DataField = 'rnc'
        DataPipeline = plRPTCxc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 27517
        mmWidth = 46567
        BandType = 1
        LayerName = Foreground
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 33602
        mmWidth = 194469
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 144198
        mmTop = 35719
        mmWidth = 16404
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plRPTCxc
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 4233
        mmLeft = 162719
        mmTop = 35719
        mmWidth = 29369
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Cxc'
        DataPipeline = plRPTCxc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 4233
        mmLeft = 23548
        mmTop = 35719
        mmWidth = 44715
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'idCliente'
        DataPipeline = plRPTCxc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 4233
        mmLeft = 23548
        mmTop = 48683
        mmWidth = 20638
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'CxcTipo'
        DataPipeline = plRPTCxc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 5292
        mmLeft = 119327
        mmTop = 26458
        mmWidth = 72496
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Valor'
        DataPipeline = plRPTCxc
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 4233
        mmLeft = 32015
        mmTop = 55033
        mmWidth = 37835
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Concepto'
        DataPipeline = plRPTCxc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 12171
        mmLeft = 23548
        mmTop = 62177
        mmWidth = 100806
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Cliente'
        DataPipeline = plRPTCxc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 4233
        mmLeft = 46038
        mmTop = 48683
        mmWidth = 145786
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'Descuento'
        DataPipeline = plRPTCxc
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 4233
        mmLeft = 100806
        mmTop = 55033
        mmWidth = 30956
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plRPTCxc
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 4233
        mmLeft = 154517
        mmTop = 55033
        mmWidth = 37592
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Numero :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 35719
        mmWidth = 20638
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cliente :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 48683
        mmWidth = 20638
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Tipo Doc :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 71438
        mmTop = 26458
        mmWidth = 34131
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Valor :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 55033
        mmWidth = 20638
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Descuento :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 71438
        mmTop = 55033
        mmWidth = 20638
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 133086
        mmTop = 55033
        mmWidth = 12435
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Concepto :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 61648
        mmWidth = 20638
        BandType = 1
        LayerName = Foreground
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 75142
        mmWidth = 194469
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'NCF :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 42069
        mmWidth = 20638
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkEnabled = False
        DataField = 'CompFiscal'
        DataPipeline = plRPTCxc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 4233
        mmLeft = 23548
        mmTop = 42069
        mmWidth = 113771
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        HyperlinkEnabled = False
        DataField = 'idTipoDocumento'
        DataPipeline = plRPTCxc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 5292
        mmLeft = 106363
        mmTop = 26458
        mmWidth = 12171
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkEnabled = False
        DataField = 'Moneda'
        DataPipeline = plRPTCxc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 4233
        mmLeft = 146315
        mmTop = 55033
        mmWidth = 7673
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkEnabled = False
        DataField = 'Moneda'
        DataPipeline = plRPTCxc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 4233
        mmLeft = 92340
        mmTop = 55033
        mmWidth = 8202
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        HyperlinkEnabled = False
        DataField = 'Moneda'
        DataPipeline = plRPTCxc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 4233
        mmLeft = 23548
        mmTop = 55033
        mmWidth = 7673
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        HyperlinkEnabled = False
        DataField = 'Balance'
        DataPipeline = plRPTCxc
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 4498
        mmLeft = 160608
        mmTop = 66147
        mmWidth = 31221
        BandType = 1
        LayerName = Foreground
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        HyperlinkEnabled = False
        DataField = 'Moneda'
        DataPipeline = plRPTCxc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 4498
        mmLeft = 153200
        mmTop = 65882
        mmWidth = 6879
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 
          '________________________________________________________________' +
          '_________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 153200
        mmTop = 66412
        mmWidth = 38629
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'BALANCE  PENDIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 9525
        mmLeft = 130975
        mmTop = 61648
        mmWidth = 21696
        BandType = 1
        LayerName = Foreground
      end
    end
    object hh: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Documentos afectados :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 1058
        mmWidth = 50800
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Valor Aplicado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 112448
        mmTop = 1323
        mmWidth = 26458
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Desc. Aplicado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 139436
        mmTop = 1323
        mmWidth = 25135
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total Aplicado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 164836
        mmTop = 1323
        mmWidth = 28310
        BandType = 0
        LayerName = Foreground
      end
    end
    object dd: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'AplicadoValor'
        DataPipeline = plRPTCxc
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 3429
        mmLeft = 113506
        mmTop = 0
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'AplicadoDescuento'
        DataPipeline = plRPTCxc
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 3429
        mmLeft = 139965
        mmTop = 0
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'AplicadoTotal'
        DataPipeline = plRPTCxc
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 3429
        mmLeft = 167482
        mmTop = 0
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'DebitoCxc'
        DataPipeline = plRPTCxc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 3429
        mmLeft = 19844
        mmTop = 0
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        DataField = 'DebitoValor'
        DataPipeline = plRPTCxc
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 3429
        mmLeft = 89959
        mmTop = 0
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkEnabled = False
        DataField = 'DebitoFecha'
        DataPipeline = plRPTCxc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 3429
        mmLeft = 0
        mmTop = 0
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        HyperlinkEnabled = False
        DataField = 'MonedaFact'
        DataPipeline = plRPTCxc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 3429
        mmLeft = 82021
        mmTop = 0
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        HyperlinkEnabled = False
        DataField = 'DebitoNCF'
        DataPipeline = plRPTCxc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRPTCxc'
        mmHeight = 3429
        mmLeft = 41540
        mmTop = 0
        mmWidth = 38894
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 191559
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 124090
        mmTop = 1588
        mmWidth = 69586
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 14552
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 11377
        mmTop = 8202
        mmWidth = 74348
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        Caption = 'PREPARADO POR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 33073
        mmTop = 8996
        mmWidth = 30692
        BandType = 7
        LayerName = Foreground
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 112448
        mmTop = 8202
        mmWidth = 74348
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        Caption = 'RECIBIDO POR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 134144
        mmTop = 8996
        mmWidth = 25665
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object plRPTCxc: TppDBPipeline
    DataSource = dsRPTCxc
    UserName = 'plRPTCxc'
    Left = 132
    Top = 175
    object plRPTCxcppField1: TppField
      FieldAlias = 'idCxc'
      FieldName = 'idCxc'
      FieldLength = 38
      DataType = dtGUID
      DisplayWidth = 38
      Position = 0
    end
    object plRPTCxcppField2: TppField
      FieldAlias = 'Cxc'
      FieldName = 'Cxc'
      FieldLength = 16
      DisplayWidth = 16
      Position = 1
    end
    object plRPTCxcppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'idCliente'
      FieldName = 'idCliente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object plRPTCxcppField4: TppField
      FieldAlias = 'idTipoDocumento'
      FieldName = 'idTipoDocumento'
      FieldLength = 16
      DisplayWidth = 16
      Position = 3
    end
    object plRPTCxcppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor'
      FieldName = 'Valor'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 4
    end
    object plRPTCxcppField6: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 5
    end
    object plRPTCxcppField7: TppField
      FieldAlias = 'Concepto'
      FieldName = 'Concepto'
      FieldLength = 100
      DisplayWidth = 100
      Position = 6
    end
    object plRPTCxcppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'idCxcTipo'
      FieldName = 'idCxcTipo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object plRPTCxcppField9: TppField
      FieldAlias = 'esCredito'
      FieldName = 'esCredito'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 8
    end
    object plRPTCxcppField10: TppField
      FieldAlias = 'Cancelado'
      FieldName = 'Cancelado'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 9
    end
    object plRPTCxcppField11: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 38
      DataType = dtGUID
      DisplayWidth = 38
      Position = 10
    end
    object plRPTCxcppField12: TppField
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 50
      DisplayWidth = 50
      Position = 11
    end
    object plRPTCxcppField13: TppField
      FieldAlias = 'Usuario'
      FieldName = 'Usuario'
      FieldLength = 30
      DisplayWidth = 30
      Position = 12
    end
    object plRPTCxcppField14: TppField
      FieldAlias = 'idDocumento'
      FieldName = 'idDocumento'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object plRPTCxcppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'Descuento'
      FieldName = 'Descuento'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 14
    end
    object plRPTCxcppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 21
      Position = 15
    end
    object plRPTCxcppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'Condicion'
      FieldName = 'Condicion'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object plRPTCxcppField18: TppField
      FieldAlias = 'Vencimiento'
      FieldName = 'Vencimiento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 17
    end
    object plRPTCxcppField19: TppField
      FieldAlias = 'idCxcDet'
      FieldName = 'idCxcDet'
      FieldLength = 38
      DataType = dtGUID
      DisplayWidth = 38
      Position = 18
    end
    object plRPTCxcppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'AplicadoValor'
      FieldName = 'AplicadoValor'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 19
    end
    object plRPTCxcppField21: TppField
      FieldAlias = 'AplicacionFecha'
      FieldName = 'AplicacionFecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 20
    end
    object plRPTCxcppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'AplicadoDescuento'
      FieldName = 'AplicadoDescuento'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 21
    end
    object plRPTCxcppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'AplicadoTotal'
      FieldName = 'AplicadoTotal'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 21
      Position = 22
    end
    object plRPTCxcppField24: TppField
      FieldAlias = 'DebitoidCxc'
      FieldName = 'DebitoidCxc'
      FieldLength = 38
      DataType = dtGUID
      DisplayWidth = 38
      Position = 23
    end
    object plRPTCxcppField25: TppField
      FieldAlias = 'DebitoCxc'
      FieldName = 'DebitoCxc'
      FieldLength = 16
      DisplayWidth = 16
      Position = 24
    end
    object plRPTCxcppField26: TppField
      FieldAlias = 'DebitoidTipoDoc'
      FieldName = 'DebitoidTipoDoc'
      FieldLength = 16
      DisplayWidth = 16
      Position = 25
    end
    object plRPTCxcppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'DebitoValor'
      FieldName = 'DebitoValor'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 26
    end
    object plRPTCxcppField28: TppField
      FieldAlias = 'DebitoFecha'
      FieldName = 'DebitoFecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 27
    end
    object plRPTCxcppField29: TppField
      FieldAlias = 'DebitoConcepto'
      FieldName = 'DebitoConcepto'
      FieldLength = 100
      DisplayWidth = 100
      Position = 28
    end
    object plRPTCxcppField30: TppField
      FieldAlias = 'compania'
      FieldName = 'compania'
      FieldLength = 50
      DisplayWidth = 50
      Position = 29
    end
    object plRPTCxcppField31: TppField
      FieldAlias = 'direccion'
      FieldName = 'direccion'
      FieldLength = 120
      DisplayWidth = 120
      Position = 30
    end
    object plRPTCxcppField32: TppField
      FieldAlias = 'telefono'
      FieldName = 'telefono'
      FieldLength = 15
      DisplayWidth = 15
      Position = 31
    end
    object plRPTCxcppField33: TppField
      FieldAlias = 'fax'
      FieldName = 'fax'
      FieldLength = 15
      DisplayWidth = 15
      Position = 32
    end
    object plRPTCxcppField34: TppField
      FieldAlias = 'rnc'
      FieldName = 'rnc'
      FieldLength = 20
      DisplayWidth = 20
      Position = 33
    end
    object plRPTCxcppField35: TppField
      FieldAlias = 'CompFiscal'
      FieldName = 'CompFiscal'
      FieldLength = 19
      DisplayWidth = 19
      Position = 34
    end
    object plRPTCxcppField36: TppField
      FieldAlias = 'CxcTipo'
      FieldName = 'CxcTipo'
      FieldLength = 50
      DisplayWidth = 50
      Position = 35
    end
    object plRPTCxcppField37: TppField
      FieldAlias = 'Moneda'
      FieldName = 'Moneda'
      FieldLength = 20
      DisplayWidth = 20
      Position = 36
    end
    object plRPTCxcppField38: TppField
      FieldAlias = 'MonedaFact'
      FieldName = 'MonedaFact'
      FieldLength = 20
      DisplayWidth = 20
      Position = 37
    end
    object plRPTCxcppField39: TppField
      FieldAlias = 'DebitoNCF'
      FieldName = 'DebitoNCF'
      FieldLength = 19
      DisplayWidth = 19
      Position = 38
    end
    object plRPTCxcppField40: TppField
      FieldAlias = 'SUCURSARDireccion'
      FieldName = 'SUCURSARDireccion'
      FieldLength = 2000
      DisplayWidth = 2000
      Position = 39
    end
    object plRPTCxcppField41: TppField
      FieldAlias = 'SUCURSARLTelefono'
      FieldName = 'SUCURSARLTelefono'
      FieldLength = 2000
      DisplayWidth = 2000
      Position = 40
    end
    object plRPTCxcppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'Balance'
      FieldName = 'Balance'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 41
    end
    object plRPTCxcppField43: TppField
      FieldAlias = 'itbi'
      FieldName = 'itbi'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 19
      Position = 42
    end
    object plRPTCxcppField44: TppField
      FieldAlias = 'CompFiscalAplica'
      FieldName = 'CompFiscalAplica'
      FieldLength = 19
      DisplayWidth = 19
      Position = 43
    end
    object plRPTCxcppField45: TppField
      FieldAlias = 'QrUrl'
      FieldName = 'QrUrl'
      FieldLength = 1000
      DisplayWidth = 1000
      Position = 44
    end
    object plRPTCxcppField46: TppField
      FieldAlias = 'CodigoSeguridadEcf'
      FieldName = 'CodigoSeguridadEcf'
      FieldLength = 20
      DisplayWidth = 20
      Position = 45
    end
    object plRPTCxcppField47: TppField
      FieldAlias = 'FechaFirmaDigital'
      FieldName = 'FechaFirmaDigital'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 46
    end
    object plRPTCxcppField48: TppField
      FieldAlias = 'ncfModificado'
      FieldName = 'ncfModificado'
      FieldLength = 19
      DisplayWidth = 19
      Position = 47
    end
  end
  object AnularCxc: TADOCommand
    CommandText = 'SPCxcAnular;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idCxc'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@Anulado'
        Attributes = [paNullable]
        DataType = ftBoolean
        Direction = pdInputOutput
        Value = Null
      end>
    Left = 132
    Top = 16
  end
  object rsCtasCliente: TADODataSet
    Connection = dm.Coneccion
    CommandText = 'svrsCuentaCliente'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idCliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@idMoneda'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 74
    Top = 69
    object rsCtasClienteidCuentaCredito: TStringField
      FieldName = 'idCuentaCredito'
      Size = 16
    end
    object rsCtasClienteidCuentaContado: TStringField
      FieldName = 'idCuentaContado'
      Size = 16
    end
  end
  object dsClienteObra: TDataSource
    DataSet = ClienteObra
    Left = 132
    Top = 122
  end
  object ClienteObra: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'ClienteObraList;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idCliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 16
    Top = 69
    object ClienteObraidClienteObra: TStringField
      FieldName = 'idClienteObra'
      Size = 25
    end
    object ClienteObraidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object ClienteObraDireccionObra: TStringField
      FieldName = 'DireccionObra'
      Size = 120
    end
    object ClienteObraSectorObra: TStringField
      FieldName = 'SectorObra'
      Size = 50
    end
    object ClienteObraCiudadObra: TStringField
      FieldName = 'CiudadObra'
    end
    object ClienteObraTelefonoObra: TStringField
      FieldName = 'TelefonoObra'
    end
    object ClienteObraFaxObra: TStringField
      FieldName = 'FaxObra'
    end
    object ClienteObraCelularObra: TStringField
      FieldName = 'CelularObra'
    end
    object ClienteObraContactoObra: TStringField
      FieldName = 'ContactoObra'
      Size = 40
    end
  end
  object dsBalance: TDataSource
    Left = 661
    Top = 173
  end
  object rsDatosEstado: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxcDatosEstado;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idCli'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Fec'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@idDir'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 712
    Top = 176
    object rsDatosEstadoBalance: TBCDField
      FieldName = 'Balance'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsDatosEstadoFecUltCargo: TDateTimeField
      FieldName = 'FecUltCargo'
      ReadOnly = True
    end
    object rsDatosEstadoRefUltCargo: TStringField
      FieldName = 'RefUltCargo'
      ReadOnly = True
    end
    object rsDatosEstadoTipoUltCargo: TStringField
      FieldName = 'TipoUltCargo'
      ReadOnly = True
      Size = 10
    end
    object rsDatosEstadoMtoUltCargo: TBCDField
      FieldName = 'MtoUltCargo'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsDatosEstadoFecUltPago: TDateTimeField
      FieldName = 'FecUltPago'
      ReadOnly = True
    end
    object rsDatosEstadoRefUltPago: TStringField
      FieldName = 'RefUltPago'
      ReadOnly = True
    end
    object rsDatosEstadoMtoUltPago: TBCDField
      FieldName = 'MtoUltPago'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsDatosEstadoPorDist: TBCDField
      FieldName = 'PorDist'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsDatosEstadoidCliente: TIntegerField
      FieldName = 'idCliente'
      ReadOnly = True
    end
    object rsDatosEstadoAbono: TBCDField
      FieldName = 'Abono'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
  end
end

inherited InvEntSalDet: TInvEntSalDet
  Left = 491
  Top = 284
  Caption = 'Movimeinto de Entradas y Salidas'
  ClientHeight = 525
  ClientWidth = 1012
  Color = 14870499
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel [0]
    Left = 15
    Top = 9
    Width = 37
    Height = 13
    Caption = 'Desde :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel [1]
    Left = 15
    Top = 32
    Width = 32
    Height = 13
    Caption = 'Hasta:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel [2]
    Left = 210
    Top = 21
    Width = 20
    Height = 13
    Caption = 'Tipo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel [3]
    Left = 16
    Top = 478
    Width = 58
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Recibido de '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [4]
    Left = 40
    Top = 502
    Width = 32
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Fecha '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [5]
    Left = 208
    Top = 502
    Width = 32
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Fecha '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel [6]
    Left = 368
    Top = 478
    Width = 52
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Referencia'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel [7]
    Left = 368
    Top = 502
    Width = 54
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Grupo Prod'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Grid: TdxDBGrid [8]
    Left = 4
    Top = 50
    Width = 1004
    Height = 414
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'idProMovDet'
    ShowGroupPanel = True
    ShowSummaryFooter = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Small Fonts'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnDblClick = GridDblClick
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = []
    DataSource = DS
    Filter.Active = True
    Filter.AutoDataSetFilter = True
    Filter.Criteria = {00000000}
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = []
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoRowAutoHeight, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    Anchors = [akLeft, akTop, akRight, akBottom]
    object GridSalida: TdxDBGridCheckColumn
      Width = 54
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Salida'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object GridProMov: TdxDBGridMaskColumn
      Caption = 'Documento'
      Width = 81
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ProMov'
    end
    object GridFecha: TdxDBGridDateColumn
      Caption = 'Fecha'
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Hora'
    end
    object GridReferencia: TdxDBGridMaskColumn
      Visible = False
      Width = 69
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Referencia'
    end
    object GridEntregadoPor: TdxDBGridMaskColumn
      Visible = False
      Width = 170
      BandIndex = 0
      RowIndex = 0
      FieldName = 'EntregadoPor'
    end
    object GrididProMovDet: TdxDBGridColumn
      Visible = False
      Width = 97
      BandIndex = 0
      RowIndex = 0
      FieldName = 'idProMovDet'
    end
    object GrididProducto: TdxDBGridMaskColumn
      Caption = 'Producto'
      Width = 91
      BandIndex = 0
      RowIndex = 0
      FieldName = 'idProducto'
    end
    object GridProducto: TdxDBGridMaskColumn
      Width = 206
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Producto'
    end
    object GridCosto: TdxDBGridCurrencyColumn
      Width = 90
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Costo'
      SummaryFooterType = cstSum
      SummaryFooterField = 'Costo'
      SummaryFooterFormat = '0.00'
      Nullable = False
    end
    object GridColumn19: TdxDBGridColumn
      Width = 88
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Cantidad'
    end
    object GridCentroCosto: TdxDBGridMaskColumn
      Width = 106
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CentroCosto'
    end
    object GridCC: TdxDBGridMaskColumn
      Width = 71
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CC'
    end
    object GridColumn18: TdxDBGridColumn
      Width = 225
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Suplidor'
    end
    object GridGrupo: TdxDBGridMaskColumn
      Width = 131
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Grupo'
    end
    object GridLinea: TdxDBGridMaskColumn
      Width = 121
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Linea'
    end
    object GridColumn15: TdxDBGridColumn
      Caption = 'Tipo'
      Width = 151
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ProMovTipo'
    end
    object GridColumn16: TdxDBGridCheckColumn
      Caption = #191'Transf?'
      Width = 67
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Transferencia'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object GridColumn17: TdxDBGridColumn
      Caption = 'Almacen'
      Width = 84
      BandIndex = 0
      RowIndex = 0
      FieldName = 'idAlmacen'
    end
  end
  object Desde: TdxDateEdit [9]
    Left = 55
    Top = 5
    Width = 137
    TabOrder = 1
    StyleController = dm.dxEstilo
    OnChange = DesdeChange
    Date = -700000.000000000000000000
    SaveTime = False
  end
  object Hasta: TdxDateEdit [10]
    Left = 55
    Top = 28
    Width = 137
    TabOrder = 2
    StyleController = dm.dxEstilo
    OnChange = HastaChange
    Date = -700000.000000000000000000
    SaveTime = False
  end
  object EntSal: TcxImageComboBox [11]
    Left = 238
    Top = 18
    Width = 105
    Height = 21
    Properties.Items = <
      item
        Description = 'Todos'
        ImageIndex = 0
      end
      item
        Description = 'Salidas'
        Value = True
      end
      item
        Description = 'Entradas'
        Value = False
      end>
    TabOrder = 3
  end
  object dxDBEdit1: TdxDBEdit [12]
    Left = 80
    Top = 470
    Width = 281
    Color = 14342874
    TabOrder = 4
    Anchors = [akLeft, akBottom]
    DataField = 'EntregadoPor'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit2: TdxDBEdit [13]
    Left = 80
    Top = 494
    Width = 113
    Color = 14342874
    TabOrder = 5
    Anchors = [akLeft, akBottom]
    DataField = 'Fecha'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit3: TdxDBEdit [14]
    Left = 248
    Top = 494
    Width = 113
    Color = 14342874
    TabOrder = 6
    Anchors = [akLeft, akBottom]
    DataField = 'Fecha'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit4: TdxDBEdit [15]
    Left = 432
    Top = 470
    Width = 113
    Color = 14342874
    TabOrder = 7
    Anchors = [akLeft, akBottom]
    DataField = 'Referencia'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit5: TdxDBEdit [16]
    Left = 432
    Top = 494
    Width = 113
    Color = 14342874
    TabOrder = 8
    Anchors = [akLeft, akBottom]
    DataField = 'Grupo'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object cbConCuenta: TdxCheckEdit [17]
    Left = 606
    Top = 471
    Width = 173
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    Anchors = [akLeft, akBottom]
    Caption = 'Imprimir con Cuenta Contable'
    StyleController = dm.dxEstilo
    State = cbsChecked
  end
  object cxButton1: TcxButton [18]
    Left = 678
    Top = 13
    Width = 97
    Height = 27
    Caption = 'Exportar a Excel'
    TabOrder = 10
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton [19]
    Left = 566
    Top = 13
    Width = 102
    Height = 27
    Caption = 'Imprimir'
    TabOrder = 11
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [20]
    Left = 452
    Top = 13
    Width = 102
    Height = 27
    Caption = 'Mostrar'
    TabOrder = 12
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    DataSet = rsMovimiento
    Left = 157
    Top = 205
  end
  object rsMovimiento: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'InvEntradaSalidasDetalle;1'
    CommandTimeout = 3000
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
        Name = '@Desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Salida'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 96
    Top = 208
    object rsMovimientoProMov: TStringField
      FieldName = 'ProMov'
      Size = 16
    end
    object rsMovimientoFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsMovimientoSalida: TBooleanField
      FieldName = 'Salida'
    end
    object rsMovimientoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsMovimientoEntregadoPor: TStringField
      FieldName = 'EntregadoPor'
      Size = 50
    end
    object rsMovimientoidAlmacen: TStringField
      FieldName = 'idAlmacen'
      Size = 16
    end
    object rsMovimientoidProMovDet: TGuidField
      FieldName = 'idProMovDet'
      FixedChar = True
      Size = 38
    end
    object rsMovimientoidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object rsMovimientoProducto: TStringField
      FieldName = 'Producto'
      Size = 120
    end
    object rsMovimientoCantidad: TBCDField
      FieldName = 'Cantidad'
      DisplayFormat = '###,###,##0.00'
      Precision = 8
    end
    object rsMovimientoCosto: TBCDField
      FieldName = 'Costo'
      Precision = 18
      Size = 2
    end
    object rsMovimientoCentroCosto: TStringField
      FieldName = 'CentroCosto'
    end
    object rsMovimientoGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
    object rsMovimientoLinea: TStringField
      FieldName = 'Linea'
      Size = 50
    end
    object rsMovimientoCC: TStringField
      FieldName = 'CC'
      Size = 25
    end
    object rsMovimientoidProMov: TGuidField
      FieldName = 'idProMov'
      FixedChar = True
      Size = 38
    end
    object rsMovimientoTamano: TStringField
      FieldName = 'Tamano'
      ReadOnly = True
      Size = 115
    end
    object rsMovimientoCostoUnitario: TBCDField
      FieldName = 'CostoUnitario'
      ReadOnly = True
      Precision = 32
      Size = 17
    end
    object rsMovimientoIdUnidad: TStringField
      FieldName = 'IdUnidad'
      Size = 16
    end
    object rsMovimientoProMovTipo: TStringField
      FieldName = 'ProMovTipo'
      Size = 50
    end
    object rsMovimientoTransferencia: TBooleanField
      FieldName = 'Transferencia'
      ReadOnly = True
    end
    object rsMovimientoSuplidor: TStringField
      FieldName = 'Suplidor'
      Size = 100
    end
    object rsMovimientoHora: TDateTimeField
      FieldName = 'Hora'
    end
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = plMovimiento
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    AllowPrintToArchive = True
    AllowPrintToFile = True
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
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 288
    Top = 192
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plMovimiento'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 21167
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = 14671839
        ParentWidth = True
        Pen.Color = clSilver
        mmHeight = 5027
        mmLeft = 0
        mmTop = 16140
        mmWidth = 266701
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        Caption = 'Detalle Movimientos de Entadas y Salidas (Cuenta Contable)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 0
        mmTop = 9790
        mmWidth = 203730
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 73290
        mmTop = 17198
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 91017
        mmTop = 17198
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Costo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 123296
        mmTop = 17198
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cantidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 108215
        mmTop = 17198
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Centro de Cost.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 156104
        mmTop = 17198
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label102'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cuentas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 236803
        mmTop = 17198
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Producto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 26458
        mmTop = 17198
        mmWidth = 43392
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label101'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 0
        mmTop = 17198
        mmWidth = 15610
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        AutoSize = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3503
        mmLeft = 191294
        mmTop = 794
        mmWidth = 69056
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Sal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 257705
        mmTop = 17198
        mmWidth = 5027
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Grupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 180182
        mmTop = 17198
        mmWidth = 32808
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Costo/U'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 140759
        mmTop = 17198
        mmWidth = 14023
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 20
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 8467
        mmLeft = 529
        mmTop = 529
        mmWidth = 182827
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3503
        mmLeft = 214048
        mmTop = 5821
        mmWidth = 46038
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Referencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 214313
        mmTop = 17198
        mmWidth = 20902
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppShape1: TppShape
        OnPrint = ppShape1Print
        UserName = 'Shape1'
        Brush.Color = 15395562
        ParentHeight = True
        ParentWidth = True
        Pen.Style = psClear
        StretchWithParent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Costo'
        DataPipeline = plMovimiento
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 2900
        mmLeft = 123296
        mmTop = 0
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Cantidad'
        DataPipeline = plMovimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 2900
        mmLeft = 108215
        mmTop = 0
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plMovimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 2900
        mmLeft = 91017
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'ProMov'
        DataPipeline = plMovimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 2910
        mmLeft = 73290
        mmTop = 0
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'CentroCosto'
        DataPipeline = plMovimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 2910
        mmLeft = 156104
        mmTop = 0
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'CC'
        DataPipeline = plMovimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 2910
        mmLeft = 237067
        mmTop = 0
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'idProducto'
        DataPipeline = plMovimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 2910
        mmLeft = 0
        mmTop = 0
        mmWidth = 25929
        BandType = 4
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = plMovimiento
        DataField = 'Salida'
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3969
        mmLeft = 259028
        mmTop = 0
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Grupo'
        DataPipeline = plMovimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 2910
        mmLeft = 179917
        mmTop = 0
        mmWidth = 32808
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'CostoUnitario'
        DataPipeline = plMovimiento
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 2900
        mmLeft = 140759
        mmTop = 0
        mmWidth = 13758
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Producto'
        DataPipeline = plMovimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 2910
        mmLeft = 26458
        mmTop = 0
        mmWidth = 46038
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Referencia'
        DataPipeline = plMovimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 2910
        mmLeft = 214578
        mmTop = 0
        mmWidth = 21167
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppShape5: TppShape
        UserName = 'Shape3'
        Brush.Color = 14671839
        ParentHeight = True
        ParentWidth = True
        Pen.Color = clSilver
        mmHeight = 5292
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        DataField = 'Costo'
        DataPipeline = plMovimiento
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 4233
        mmLeft = 104775
        mmTop = 794
        mmWidth = 34660
        BandType = 7
      end
      object ppLabel25: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        Caption = 'Costo Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 529
        mmWidth = 26988
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object plMovimiento: TppDBPipeline
    DataSource = DS
    UserName = 'plMovimiento'
    Left = 216
    Top = 200
  end
  object rptOperaciones: TppReport
    AutoStop = False
    DataPipeline = plMovimiento
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    AllowPrintToArchive = True
    AllowPrintToFile = True
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
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 290
    Top = 256
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plMovimiento'
    object ppTitleBand2: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 29104
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape2'
        Brush.Color = clSilver
        mmHeight = 5027
        mmLeft = 0
        mmTop = 24077
        mmWidth = 266171
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        Caption = 'Detalle Movimientos de Entadas y Salidas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 0
        mmTop = 15081
        mmWidth = 115359
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 143404
        mmTop = 25135
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 161925
        mmTop = 25135
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Costo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 194734
        mmTop = 25135
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cantidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 179388
        mmTop = 25135
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Centro de Cost.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 228071
        mmTop = 25135
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label102'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Alto . Ancho . Largo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 96573
        mmTop = 25135
        mmWidth = 27781
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Producto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 24871
        mmTop = 25135
        mmWidth = 36513
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label101'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 0
        mmTop = 25135
        mmWidth = 15610
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 188384
        mmTop = 794
        mmWidth = 71967
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Salida'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 256382
        mmTop = 25135
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Medida'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 126736
        mmTop = 25135
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Costo/U'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 212461
        mmTop = 25135
        mmWidth = 14023
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 5821
        mmLeft = 529
        mmTop = 529
        mmWidth = 114829
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Suplidor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 71438
        mmTop = 25135
        mmWidth = 14023
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppShape4: TppShape
        OnPrint = ppShape4Print
        UserName = 'Shape1'
        Brush.Color = 15395562
        ParentHeight = True
        ParentWidth = True
        Pen.Style = psClear
        StretchWithParent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Costo'
        DataPipeline = plMovimiento
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 2910
        mmLeft = 194734
        mmTop = 265
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Cantidad'
        DataPipeline = plMovimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 2910
        mmLeft = 179388
        mmTop = 265
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plMovimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 2910
        mmLeft = 161925
        mmTop = 265
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'ProMov'
        DataPipeline = plMovimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 2910
        mmLeft = 144992
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'CentroCosto'
        DataPipeline = plMovimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 2910
        mmLeft = 228071
        mmTop = 265
        mmWidth = 28046
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Tamano'
        DataPipeline = plMovimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 2910
        mmLeft = 98954
        mmTop = 0
        mmWidth = 25929
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'idProducto'
        DataPipeline = plMovimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 2910
        mmLeft = 0
        mmTop = 0
        mmWidth = 22754
        BandType = 4
      end
      object myDBCheckBox2: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = plMovimiento
        DataField = 'Salida'
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3969
        mmLeft = 259028
        mmTop = 0
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'IdUnidad'
        DataPipeline = plMovimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 2910
        mmLeft = 126471
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'CostoUnitario'
        DataPipeline = plMovimiento
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 2910
        mmLeft = 212461
        mmTop = 265
        mmWidth = 13758
        BandType = 4
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Producto'
        DataPipeline = plMovimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 25135
        mmTop = 0
        mmWidth = 42863
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBMemo3: TppDBMemo
        UserName = 'DBMemo3'
        CharWrap = False
        DataField = 'Suplidor'
        DataPipeline = plMovimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 71702
        mmTop = 0
        mmWidth = 25400
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line2'
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3440
        mmLeft = 1323
        mmTop = 6350
        mmWidth = 260880
        BandType = 8
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 214313
        mmTop = 1323
        mmWidth = 47361
        BandType = 8
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Grupo'
      DataPipeline = plMovimiento
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plMovimiento'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppDBText21: TppDBText
          UserName = 'DBText2'
          HyperlinkEnabled = False
          DataPipeline = plMovimiento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plMovimiento'
          mmHeight = 5027
          mmLeft = 15081
          mmTop = 1323
          mmWidth = 110861
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object OpenFile: TOpenDialog
    DefaultExt = 'xls'
    FileName = 'EntradasSalidas'
    Filter = 'xls|*.xls'
    Left = 396
    Top = 206
  end
end

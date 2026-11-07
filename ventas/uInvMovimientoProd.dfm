inherited InvMovimientoProd: TInvMovimientoProd
  Left = 353
  Top = 149
  Caption = 'Movimeinto de un producto'
  ClientHeight = 458
  ClientWidth = 772
  Color = 15922418
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 12
    Top = 40
    Width = 44
    Height = 13
    Caption = 'Almacen:'
  end
  object Label5: TLabel [1]
    Left = 229
    Top = 16
    Width = 37
    Height = 13
    Caption = 'Desde :'
  end
  object Label6: TLabel [2]
    Left = 229
    Top = 40
    Width = 31
    Height = 13
    Caption = 'Hasta:'
  end
  object Label2: TLabel [3]
    Left = 12
    Top = 16
    Width = 46
    Height = 13
    Caption = 'Producto:'
  end
  object SpeedButton1: TSpeedButton [4]
    Left = 64
    Top = 9
    Width = 22
    Height = 19
    Caption = '...'
    OnClick = SpeedButton1Click
  end
  object Label3: TLabel [5]
    Left = 336
    Top = 440
    Width = 37
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'X Costo'
  end
  object Label4: TLabel [6]
    Left = 528
    Top = 440
    Width = 52
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'X Cantidad'
  end
  object Label7: TLabel [7]
    Left = 112
    Top = 440
    Width = 186
    Height = 13
    Caption = 'Datos establesidos por este movimiento'
  end
  object luAlm: TdxLookupEdit [8]
    Left = 64
    Top = 32
    Width = 137
    TabOrder = 0
    StyleController = dm.dxEstilo
    ListFieldName = 'Almacen'
    KeyFieldName = 'idAlmacen'
    ListSource = DS
    LookupKeyValue = Null
  end
  object BitBtn1: TBitBtn [9]
    Left = 427
    Top = 13
    Width = 105
    Height = 34
    Anchors = [akTop, akRight]
    Caption = 'Mostrar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object Grid: TdxDBGrid [10]
    Left = 4
    Top = 64
    Width = 764
    Height = 361
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'idProMovDet'
    ShowSummaryFooter = True
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 2
    OnDblClick = GridDblClick
    DataSource = dsMovimientos
    Filter.Active = True
    Filter.AutoDataSetFilter = True
    Filter.Criteria = {00000000}
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoRowAutoHeight, edgoUseBitmap]
    Anchors = [akLeft, akTop, akRight, akBottom]
    object GrididProMov: TdxDBGridColumn
      Visible = False
      Width = 398
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Mov. '
    end
    object GridProMov: TdxDBGridMaskColumn
      Width = 81
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ProMov'
    end
    object GridReferencia: TdxDBGridMaskColumn
      Width = 67
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Referencia'
    end
    object GridFecha: TdxDBGridDateColumn
      Width = 79
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Fecha'
    end
    object GridisAlmacen: TdxDBGridMaskColumn
      Visible = False
      Width = 91
      BandIndex = 0
      RowIndex = 0
      FieldName = 'isAlmacen'
    end
    object GrididProMovDet: TdxDBGridColumn
      Visible = False
      Width = 398
      BandIndex = 0
      RowIndex = 0
      FieldName = 'idProMovDet'
    end
    object GrididProducto: TdxDBGridMaskColumn
      Visible = False
      Width = 260
      BandIndex = 0
      RowIndex = 0
      FieldName = 'idProducto'
    end
    object GridCosto: TdxDBGridCurrencyColumn
      Width = 84
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Costo'
      DisplayFormat = '#,0.00;(#,0.00)'
      Nullable = False
    end
    object GridEntradas: TdxDBGridMaskColumn
      Width = 73
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Entradas'
      SummaryFooterType = cstSum
      SummaryFooterField = 'Entradas'
      SummaryFooterFormat = '0.00'
    end
    object GridSalidas: TdxDBGridCurrencyColumn
      Width = 73
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Salidas'
      SummaryFooterType = cstSum
      SummaryFooterField = 'Salidas'
      SummaryFooterFormat = '0.00'
      DisplayFormat = '0'
      Nullable = False
    end
    object GridBalance: TdxDBGridCurrencyColumn
      Width = 70
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Balance'
      DisplayFormat = '0'
      Nullable = False
    end
    object GridColumn12: TdxDBGridMaskColumn
      Caption = 'Tipo'
      Width = 95
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PromovTipo'
    end
    object GridColumn13: TdxDBGridColumn
      Width = 140
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Suplidor'
    end
  end
  object Desde: TdxDateEdit [11]
    Left = 269
    Top = 8
    Width = 137
    TabOrder = 3
    StyleController = dm.dxEstilo
    OnChange = DesdeChange
    Date = -700000.000000000000000000
    SaveTime = False
  end
  object BitBtn2: TBitBtn [12]
    Left = 540
    Top = 13
    Width = 105
    Height = 33
    Anchors = [akTop, akRight]
    Caption = 'Imprimir'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object Hasta: TdxDateEdit [13]
    Left = 269
    Top = 32
    Width = 137
    TabOrder = 5
    StyleController = dm.dxEstilo
    OnChange = HastaChange
    Date = -700000.000000000000000000
    SaveTime = False
  end
  object Producto: TdxEdit [14]
    Left = 86
    Top = 8
    Width = 115
    TabOrder = 6
    StyleController = dm.dxEstilo
  end
  object dxDBEdit1: TdxDBEdit [15]
    Left = 384
    Top = 432
    Width = 121
    TabOrder = 7
    Anchors = [akRight, akBottom]
    DataField = 'xCosto'
    DataSource = dsMovimientos
    ReadOnly = True
    StoredValues = 64
  end
  object dxDBEdit2: TdxDBEdit [16]
    Left = 592
    Top = 432
    Width = 121
    TabOrder = 8
    Anchors = [akRight, akBottom]
    DataField = 'xCantidad'
    DataSource = dsMovimientos
    ReadOnly = True
    StoredValues = 64
  end
  object BitBtn3: TBitBtn [17]
    Left = 656
    Top = 13
    Width = 105
    Height = 33
    Anchors = [akTop, akRight]
    Caption = 'Excel'
    TabOrder = 9
    OnClick = BitBtn3Click
  end
  inherited DS: TwwDataSource
    DataSet = Almacen
    Left = 37
  end
  object Almacen: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select idAlmacen, Almacen '#13#10'from almacen '#13#10
    Parameters = <>
    Left = 40
    Top = 272
    object AlmacenidAlmacen: TStringField
      FieldName = 'idAlmacen'
      Size = 16
    end
    object AlmacenAlmacen: TStringField
      FieldName = 'Almacen'
      Size = 50
    end
  end
  object rsMovimiento: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'InvMovimientosProd;1'
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
        Name = '@idProducto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@idAlmacen'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 128
    Top = 272
    object rsMovimientoDesde: TDateTimeField
      FieldName = 'Desde'
      ReadOnly = True
    end
    object rsMovimientoHasta: TDateTimeField
      FieldName = 'Hasta'
      ReadOnly = True
    end
    object rsMovimientoidProMov: TGuidField
      FieldName = 'idProMov'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object rsMovimientoProMov: TStringField
      FieldName = 'ProMov'
      ReadOnly = True
      Size = 16
    end
    object rsMovimientoReferencia: TStringField
      FieldName = 'Referencia'
      ReadOnly = True
    end
    object rsMovimientoFecha: TDateTimeField
      FieldName = 'Fecha'
      ReadOnly = True
    end
    object rsMovimientoidProMovDet: TGuidField
      FieldName = 'idProMovDet'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object rsMovimientoidAlmacen: TStringField
      FieldName = 'idAlmacen'
      ReadOnly = True
      Size = 16
    end
    object rsMovimientoidProducto: TStringField
      FieldName = 'idProducto'
      ReadOnly = True
      Size = 25
    end
    object rsMovimientoProducto: TStringField
      FieldName = 'Producto'
      ReadOnly = True
      Size = 120
    end
    object rsMovimientoCosto: TBCDField
      FieldName = 'Costo'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object rsMovimientoEntradas: TFloatField
      FieldName = 'Entradas'
      ReadOnly = True
    end
    object rsMovimientoSalidas: TBCDField
      FieldName = 'Salidas'
      ReadOnly = True
      Precision = 16
      Size = 2
    end
    object rsMovimientoBalance: TBCDField
      FieldName = 'Balance'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object rsMovimientoPromovTipo: TStringField
      FieldName = 'PromovTipo'
      ReadOnly = True
      Size = 50
    end
    object rsMovimientoxCosto: TBCDField
      FieldName = 'xCosto'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object rsMovimientoxCantidad: TBCDField
      FieldName = 'xCantidad'
      ReadOnly = True
      Precision = 18
    end
    object rsMovimientoSalida: TBooleanField
      FieldName = 'Salida'
      ReadOnly = True
    end
    object rsMovimientoSuplidor: TStringField
      FieldName = 'Suplidor'
      ReadOnly = True
      Size = 100
    end
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = plMovimiento
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
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
    Left = 224
    Top = 216
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
      mmHeight = 25665
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'idProducto'
        DataPipeline = plMovimiento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 4586
        mmLeft = 21696
        mmTop = 13494
        mmWidth = 24077
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Producto'
        DataPipeline = plMovimiento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 4586
        mmLeft = 46302
        mmTop = 13494
        mmWidth = 95779
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        Caption = 'Producto :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 13494
        mmWidth = 20532
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        Caption = 'Almacen :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 143404
        mmTop = 13494
        mmWidth = 30956
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'idAlmacen'
        DataPipeline = plMovimiento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 4586
        mmLeft = 175948
        mmTop = 13494
        mmWidth = 24077
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        Caption = 'Hasta :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 160178
        mmTop = 7938
        mmWidth = 14182
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText101'
        HyperlinkEnabled = False
        DataField = 'Hasta'
        DataPipeline = plMovimiento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 4586
        mmLeft = 175948
        mmTop = 7938
        mmWidth = 24077
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        Caption = 'Desde :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 159332
        mmTop = 2381
        mmWidth = 15028
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'Desde'
        DataPipeline = plMovimiento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 4586
        mmLeft = 175948
        mmTop = 2381
        mmWidth = 24077
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        Caption = 'Detalle de Movimiento de un producto en un periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        mmHeight = 6085
        mmLeft = 0
        mmTop = 1058
        mmWidth = 140494
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        Caption = 'Movimiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3852
        mmLeft = 0
        mmTop = 20638
        mmWidth = 20743
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        Caption = 'Referencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3852
        mmLeft = 21431
        mmTop = 20638
        mmWidth = 19092
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3852
        mmLeft = 42333
        mmTop = 20638
        mmWidth = 10414
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        Caption = 'Costo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3852
        mmLeft = 81227
        mmTop = 20638
        mmWidth = 9906
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        Caption = 'Entradas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3852
        mmLeft = 95250
        mmTop = 20638
        mmWidth = 15706
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        HyperlinkEnabled = False
        Caption = 'Salidas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3852
        mmLeft = 120386
        mmTop = 20638
        mmWidth = 12742
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        Caption = 'Balance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3852
        mmLeft = 146579
        mmTop = 20638
        mmWidth = 13970
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 529
        mmLeft = 0
        mmTop = 25135
        mmWidth = 200819
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        Caption = 'Tipo Mov'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3852
        mmLeft = 161661
        mmTop = 20638
        mmWidth = 15960
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
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
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Salidas'
        DataPipeline = plMovimiento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 111390
        mmTop = 0
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Costo'
        DataPipeline = plMovimiento
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 65352
        mmTop = 0
        mmWidth = 25665
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Balance'
        DataPipeline = plMovimiento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 133615
        mmTop = 0
        mmWidth = 26988
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Entradas'
        DataPipeline = plMovimiento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 91546
        mmTop = 0
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plMovimiento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 42333
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = plMovimiento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 21431
        mmTop = 0
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'ProMov'
        DataPipeline = plMovimiento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'PromovTipo'
        DataPipeline = plMovimiento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 161661
        mmTop = 0
        mmWidth = 40217
        BandType = 4
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
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 200555
        BandType = 8
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 1323
        mmWidth = 71967
        BandType = 8
      end
      object ppSystemVariable2: TppSystemVariable
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
        mmLeft = 154517
        mmTop = 1323
        mmWidth = 47361
        BandType = 8
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object Movimientos: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Desde'
        DataType = ftDateTime
      end
      item
        Name = 'Hasta'
        DataType = ftDateTime
      end
      item
        Name = 'idProMov'
        DataType = ftGuid
        Size = 38
      end
      item
        Name = 'ProMov'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Fecha'
        DataType = ftDateTime
      end
      item
        Name = 'idAlmacen'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'idProMovDet'
        DataType = ftGuid
        Size = 38
      end
      item
        Name = 'idProducto'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'Producto'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'Costo'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'Entradas'
        DataType = ftFloat
      end
      item
        Name = 'Salidas'
        DataType = ftBCD
        Size = 4
      end
      item
        Name = 'Balance'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'PromovTipo'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'xCosto'
        DataType = ftBCD
        Size = 4
      end
      item
        Name = 'xCantidad'
        DataType = ftBCD
        Size = 4
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
    Left = 290
    Top = 248
    object MovimientosDesde: TDateTimeField
      FieldName = 'Desde'
      ReadOnly = True
    end
    object MovimientosHasta: TDateTimeField
      FieldName = 'Hasta'
      ReadOnly = True
    end
    object MovimientosidProMov: TGuidField
      FieldName = 'idProMov'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object MovimientosProMov: TStringField
      FieldName = 'ProMov'
      ReadOnly = True
      Size = 16
    end
    object MovimientosReferencia: TStringField
      FieldName = 'Referencia'
      ReadOnly = True
    end
    object MovimientosFecha: TDateTimeField
      FieldName = 'Fecha'
      ReadOnly = True
    end
    object MovimientosidAlmacen: TStringField
      FieldName = 'idAlmacen'
      ReadOnly = True
      Size = 16
    end
    object MovimientosidProMovDet: TGuidField
      FieldName = 'idProMovDet'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object MovimientosidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object MovimientosProducto: TStringField
      FieldName = 'Producto'
      ReadOnly = True
      Size = 120
    end
    object MovimientosCosto: TBCDField
      FieldName = 'Costo'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object MovimientosEntradas: TFloatField
      FieldName = 'Entradas'
      ReadOnly = True
    end
    object MovimientosSalidas: TBCDField
      FieldName = 'Salidas'
      ReadOnly = True
      Precision = 8
    end
    object MovimientosBalance: TBCDField
      FieldName = 'Balance'
      Precision = 2
      Size = 2
    end
    object MovimientosPromovTipo: TStringField
      FieldName = 'PromovTipo'
      Size = 50
    end
    object MovimientosxCosto: TBCDField
      FieldName = 'xCosto'
    end
    object MovimientosxCantidad: TBCDField
      FieldName = 'xCantidad'
    end
    object MovimientosSuplidor: TStringField
      FieldName = 'Suplidor'
      Size = 100
    end
  end
  object dsMovimientos: TDataSource
    DataSet = Movimientos
    Left = 232
    Top = 320
  end
  object plMovimiento: TppDBPipeline
    DataSource = dsMovimientos
    UserName = 'plMovimiento'
    Left = 128
    Top = 216
  end
  object fd: TSaveDialog
    DefaultExt = 'xls'
    Left = 164
    Top = 120
  end
end

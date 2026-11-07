inherited Existencias: TExistencias
  Left = 310
  Top = 184
  Caption = 'Reporte de existencias'
  ClientHeight = 458
  ClientWidth = 657
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 12
    Width = 44
    Height = 13
    Caption = 'Almacen:'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 36
    Width = 50
    Height = 13
    Caption = 'Inventario:'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 60
    Width = 29
    Height = 13
    Caption = 'Linea:'
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 84
    Width = 32
    Height = 13
    Caption = 'Grupo:'
  end
  object Label5: TLabel [4]
    Left = 332
    Top = 12
    Width = 31
    Height = 13
    Caption = 'Hasta:'
  end
  object luGrupo: TdxLookupEdit [5]
    Left = 64
    Top = 76
    Width = 254
    TabOrder = 0
    StyleController = dm.dxEstilo
    ListFieldName = 'Grupo'
    KeyFieldName = 'idGrupo'
    ListSource = dsGrupo
    LookupKeyValue = Null
  end
  object luInv: TdxLookupEdit [6]
    Left = 64
    Top = 28
    Width = 254
    TabOrder = 1
    StyleController = dm.dxEstilo
    OnChange = luInvChange
    ListFieldName = 'Inventario'
    KeyFieldName = 'idInventario'
    ListSource = dsInv
    LookupKeyValue = Null
  end
  object luLinea: TdxLookupEdit [7]
    Left = 64
    Top = 52
    Width = 254
    TabOrder = 2
    StyleController = dm.dxEstilo
    OnChange = luLineaChange
    ListFieldName = 'Linea'
    KeyFieldName = 'idLinea'
    ListSource = dsLinea
    LookupKeyValue = Null
  end
  object luAlm: TdxLookupEdit [8]
    Left = 64
    Top = 4
    Width = 254
    TabOrder = 3
    StyleController = dm.dxEstilo
    ListFieldName = 'Almacen'
    KeyFieldName = 'idAlmacen'
    ListSource = DS
    LookupKeyValue = Null
  end
  object BitBtn1: TBitBtn [9]
    Left = 514
    Top = 16
    Width = 105
    Height = 25
    Caption = 'Mostrar'
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object dxDBGrid1: TdxDBGrid [10]
    Left = 4
    Top = 104
    Width = 649
    Height = 353
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'ROWID'
    ShowGroupPanel = True
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 5
    DataSource = dsExistencias
    Filter.Active = True
    Filter.AutoDataSetFilter = True
    Filter.Criteria = {00000000}
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoRowAutoHeight, edgoUseBitmap]
    object dxDBGrid1idProducto: TdxDBGridMaskColumn
      Caption = 'Codigo'
      Width = 36
      BandIndex = 0
      RowIndex = 0
      FieldName = 'idProducto'
    end
    object dxDBGrid1Producto: TdxDBGridMaskColumn
      Width = 308
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Producto'
    end
    object dxDBGrid1Existencia: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Existencia'
    end
    object dxDBGrid1Maximo: TdxDBGridMaskColumn
      Width = 57
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Maximo'
    end
    object dxDBGrid1Minimo: TdxDBGridMaskColumn
      Width = 48
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Minimo'
    end
    object dxDBGrid1Reorden: TdxDBGridMaskColumn
      Width = 54
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Reorden'
    end
    object dxDBGrid1Grupo: TdxDBGridMaskColumn
      Sorted = csUp
      Visible = False
      Width = 172
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Grupo'
      GroupIndex = 2
    end
    object dxDBGrid1Linea: TdxDBGridMaskColumn
      Sorted = csUp
      Visible = False
      Width = 189
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Linea'
      GroupIndex = 1
    end
    object dxDBGrid1Inventario: TdxDBGridMaskColumn
      Sorted = csUp
      Visible = False
      Width = 242
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Inventario'
      GroupIndex = 0
    end
    object dxDBGrid1idAlmacen: TdxDBGridMaskColumn
      Sorted = csUp
      Visible = False
      Width = 80
      BandIndex = 0
      RowIndex = 0
      FieldName = 'idAlmacen'
      GroupIndex = 3
    end
  end
  object dtFecha: TdxDateEdit [11]
    Left = 368
    Top = 8
    Width = 109
    TabOrder = 6
    StyleController = dm.dxEstilo
    OnChange = dtFechaChange
    Date = -700000.000000000000000000
    SaveTime = False
  end
  object BitBtn2: TBitBtn [12]
    Left = 514
    Top = 56
    Width = 105
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 7
    OnClick = BitBtn2Click
  end
  inherited DS: TwwDataSource
    DataSet = Almacen
    Left = 229
    Top = 349
  end
  object Almacen: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select idAlmacen, Almacen '#13#10'from almacen '#13#10'union'#13#10'select Null, '#39 +
      '(Todos)'#39#13#10'order by 2'
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
  object Inventario: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select idInventario, Inventario'#13#10'from Inventario'#13#10'union'#13#10'select ' +
      'Null, '#39'(Todos)'#39#13#10'order by 2'
    Parameters = <>
    Left = 144
    Top = 272
    object InventarioidInventario: TStringField
      FieldName = 'idInventario'
      Size = 16
    end
    object InventarioInventario: TStringField
      FieldName = 'Inventario'
      Size = 50
    end
  end
  object Grupo: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select idGrupo, Grupo'#13#10'from Grupo'#13#10'where idLinea = :idLinea'#13#10'uni' +
      'on'#13#10'select Null, '#39'(Todos)'#39#13#10'order by 2'
    DataSource = dsLinea
    MasterFields = 'idLinea'
    Parameters = <
      item
        Name = 'idLinea'
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 232
    Top = 272
    object GrupoidGrupo: TStringField
      FieldName = 'idGrupo'
      Size = 16
    end
    object GrupoGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
  end
  object Linea: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select idLinea, Linea'#13#10'from Linea '#13#10'where idInventario = :idInve' +
      'ntario'#13#10'union'#13#10'select Null, '#39'(Todos)'#39#13#10'order by 2'
    DataSource = dsInv
    MasterFields = 'idInventario'
    Parameters = <
      item
        Name = 'idInventario'
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 344
    Top = 264
    object LineaidLinea: TStringField
      FieldName = 'idLinea'
      Size = 16
    end
    object LineaLinea: TStringField
      FieldName = 'Linea'
      Size = 50
    end
  end
  object dsLinea: TwwDataSource
    AutoEdit = False
    DataSet = Linea
    OnUpdateData = DSUpdateData
    Left = 349
    Top = 349
  end
  object dsGrupo: TwwDataSource
    AutoEdit = False
    DataSet = Grupo
    OnUpdateData = DSUpdateData
    Left = 141
    Top = 341
  end
  object dsInv: TwwDataSource
    AutoEdit = False
    DataSet = Inventario
    OnUpdateData = DSUpdateData
    Left = 45
    Top = 341
  end
  object rsExistencias: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'ReporteExistencia;1'
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
        Name = '@idGrupo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@idLinea'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@idInventario'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@idAlmacen'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 432
    Top = 272
    object rsExistenciasROWID: TGuidField
      FieldName = 'ROWID'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object rsExistenciasidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object rsExistenciasProducto: TStringField
      FieldName = 'Producto'
      Size = 100
    end
    object rsExistenciasMaximo: TFloatField
      FieldName = 'Maximo'
    end
    object rsExistenciasMinimo: TFloatField
      FieldName = 'Minimo'
    end
    object rsExistenciasReorden: TFloatField
      FieldName = 'Reorden'
    end
    object rsExistenciasExistencia: TFloatField
      FieldName = 'Existencia'
      ReadOnly = True
    end
    object rsExistenciasGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
    object rsExistenciasLinea: TStringField
      FieldName = 'Linea'
      Size = 50
    end
    object rsExistenciasInventario: TStringField
      FieldName = 'Inventario'
      Size = 50
    end
    object rsExistenciasidAlmacen: TStringField
      FieldName = 'idAlmacen'
      Size = 16
    end
    object rsExistenciasAlmacen: TStringField
      FieldName = 'Almacen'
      Size = 50
    end
  end
  object dsExistencias: TDataSource
    DataSet = rsExistencias
    Left = 480
    Top = 336
  end
  object plExistencias: TppDBPipeline
    DataSource = dsExistencias
    UserName = 'plExistencias'
    Left = 168
    Top = 216
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = plExistencias
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
    Left = 312
    Top = 224
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plExistencias'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 20373
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Color = clNavy
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 1323
        mmTop = 19844
        mmWidth = 200555
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 7673
        mmTop = 15346
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Producto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 35719
        mmTop = 15346
        mmWidth = 101600
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Reorden'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3951
        mmLeft = 157163
        mmTop = 15346
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Min'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3951
        mmLeft = 189707
        mmTop = 15346
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Max'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3951
        mmLeft = 176213
        mmTop = 15346
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Existencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3951
        mmLeft = 138377
        mmTop = 15346
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Reporte de Existencias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 20
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 8202
        mmLeft = 2117
        mmTop = 794
        mmWidth = 91281
        BandType = 0
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 4374
        mmLeft = 2117
        mmTop = 9260
        mmWidth = 19050
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppShape1: TppShape
        OnPrint = ppShape1Print
        UserName = 'Shape1'
        Brush.Color = 15395562
        ParentHeight = True
        ParentWidth = True
        Pen.Style = psClear
        mmHeight = 4498
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'idProducto'
        DataPipeline = plExistencias
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plExistencias'
        mmHeight = 3440
        mmLeft = 7673
        mmTop = 529
        mmWidth = 26458
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Producto'
        DataPipeline = plExistencias
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plExistencias'
        mmHeight = 3440
        mmLeft = 35719
        mmTop = 529
        mmWidth = 100806
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Reorden'
        DataPipeline = plExistencias
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plExistencias'
        mmHeight = 3387
        mmLeft = 157163
        mmTop = 529
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Minimo'
        DataPipeline = plExistencias
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plExistencias'
        mmHeight = 3387
        mmLeft = 189707
        mmTop = 529
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Reorden'
        DataPipeline = plExistencias
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plExistencias'
        mmHeight = 3387
        mmLeft = 176213
        mmTop = 529
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Existencia'
        DataPipeline = plExistencias
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plExistencias'
        mmHeight = 3440
        mmLeft = 137319
        mmTop = 529
        mmWidth = 19050
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
        mmHeight = 3951
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 36407
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
        mmHeight = 3951
        mmLeft = 187785
        mmTop = 1323
        mmWidth = 14111
        BandType = 8
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'idAlmacen'
      DataPipeline = plExistencias
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plExistencias'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          HyperlinkEnabled = False
          DataField = 'Almacen'
          DataPipeline = plExistencias
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plExistencias'
          mmHeight = 3969
          mmLeft = 21167
          mmTop = 794
          mmWidth = 101336
          BandType = 3
          GroupNo = 0
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Almacen:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 2117
          mmTop = 794
          mmWidth = 18521
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 1323
        mmPrintPosition = 0
        object ppLine6: TppLine
          UserName = 'Line6'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 529
          mmWidth = 203200
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'Inventario'
      DataPipeline = plExistencias
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plExistencias'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          HyperlinkEnabled = False
          DataField = 'Inventario'
          DataPipeline = plExistencias
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plExistencias'
          mmHeight = 3969
          mmLeft = 22754
          mmTop = 794
          mmWidth = 101336
          BandType = 3
          GroupNo = 1
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Inventario:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 2117
          mmTop = 794
          mmWidth = 19844
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 1588
        mmPrintPosition = 0
        object ppLine5: TppLine
          UserName = 'Line5'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 529
          mmWidth = 203200
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'Linea'
      DataPipeline = plExistencias
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plExistencias'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          HyperlinkEnabled = False
          DataField = 'Linea'
          DataPipeline = plExistencias
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plExistencias'
          mmHeight = 3969
          mmLeft = 15610
          mmTop = 794
          mmWidth = 101336
          BandType = 3
          GroupNo = 2
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Linea:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 2117
          mmTop = 794
          mmWidth = 12700
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 1323
        mmPrintPosition = 0
        object ppLine4: TppLine
          UserName = 'Line4'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 529
          mmWidth = 203200
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'Grupo'
      DataPipeline = plExistencias
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plExistencias'
      NewFile = False
      object ppGroupHeaderBand4: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppDBText10: TppDBText
          UserName = 'DBText10'
          HyperlinkEnabled = False
          DataField = 'Grupo'
          DataPipeline = plExistencias
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plExistencias'
          mmHeight = 3969
          mmLeft = 16404
          mmTop = 794
          mmWidth = 106098
          BandType = 3
          GroupNo = 3
        end
        object ppLabel11: TppLabel
          UserName = 'Label101'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Grupo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 2117
          mmTop = 794
          mmWidth = 13758
          BandType = 3
          GroupNo = 3
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 1323
        mmPrintPosition = 0
        object ppLine3: TppLine
          UserName = 'Line3'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 529
          mmWidth = 203200
          BandType = 5
          GroupNo = 3
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end

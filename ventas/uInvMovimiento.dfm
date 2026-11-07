inherited InvMovimiento: TInvMovimiento
  Left = 497
  Top = 176
  Caption = 'Movimientos de Inventario'
  ClientHeight = 484
  ClientWidth = 818
  Color = 15922418
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 332
    Top = 64
    Width = 44
    Height = 13
    Caption = 'Almacen:'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 16
    Width = 50
    Height = 13
    Caption = 'Inventario:'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 40
    Width = 29
    Height = 13
    Caption = 'Linea:'
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 64
    Width = 32
    Height = 13
    Caption = 'Grupo:'
  end
  object Label5: TLabel [4]
    Left = 344
    Top = 16
    Width = 37
    Height = 13
    Caption = 'Desde :'
  end
  object Label6: TLabel [5]
    Left = 344
    Top = 40
    Width = 31
    Height = 13
    Caption = 'Hasta:'
  end
  object luGrupo: TdxLookupEdit [6]
    Left = 64
    Top = 56
    Width = 242
    TabOrder = 0
    StyleController = dm.dxEstilo
    ListFieldName = 'Grupo'
    KeyFieldName = 'idGrupo'
    ListSource = dsGrupo
    LookupKeyValue = Null
  end
  object luInv: TdxLookupEdit [7]
    Left = 64
    Top = 8
    Width = 242
    TabOrder = 1
    StyleController = dm.dxEstilo
    OnChange = luInvChange
    ListFieldName = 'Inventario'
    KeyFieldName = 'idInventario'
    ListSource = dsInv
    LookupKeyValue = Null
  end
  object luLinea: TdxLookupEdit [8]
    Left = 64
    Top = 32
    Width = 242
    TabOrder = 2
    StyleController = dm.dxEstilo
    OnChange = luLineaChange
    ListFieldName = 'Linea'
    KeyFieldName = 'idLinea'
    ListSource = dsLinea
    LookupKeyValue = Null
  end
  object luAlm: TdxLookupEdit [9]
    Left = 384
    Top = 56
    Width = 137
    TabOrder = 3
    StyleController = dm.dxEstilo
    ListFieldName = 'Almacen'
    KeyFieldName = 'idAlmacen'
    ListSource = DS
    LookupKeyValue = Null
  end
  object BitBtn1: TBitBtn [10]
    Left = 538
    Top = 7
    Width = 105
    Height = 34
    Caption = 'Mostrar'
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object Desde: TdxDateEdit [11]
    Left = 384
    Top = 8
    Width = 137
    TabOrder = 5
    StyleController = dm.dxEstilo
    OnChange = DesdeChange
    Date = -700000.000000000000000000
    SaveTime = False
  end
  object BitBtn2: TBitBtn [12]
    Left = 538
    Top = 44
    Width = 105
    Height = 33
    Caption = 'Imprimir'
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object Hasta: TdxDateEdit [13]
    Left = 384
    Top = 32
    Width = 137
    TabOrder = 7
    StyleController = dm.dxEstilo
    OnChange = HastaChange
    Date = -700000.000000000000000000
    SaveTime = False
  end
  object BitBtn3: TBitBtn [14]
    Left = 650
    Top = 12
    Width = 63
    Height = 25
    Caption = 'Expandir'
    TabOrder = 8
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn [15]
    Left = 718
    Top = 12
    Width = 61
    Height = 25
    Caption = 'Colapsar'
    TabOrder = 9
    OnClick = BitBtn4Click
  end
  object Grid: TcxGrid [16]
    Left = 4
    Top = 88
    Width = 809
    Height = 393
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 10
    LookAndFeel.Kind = lfUltraFlat
    object GridDBTableView1: TcxGridDBTableView
      DataController.DataSource = dsMovimiento
      DataController.Filter.MaxValueListCount = 1000
      DataController.Filter.Active = True
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      Filtering.MaxDropDownCount = 12
      OptionsBehavior.IncSearch = True
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      Preview.AutoHeight = False
      Preview.MaxLineCount = 2
      object GridDBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 0
        Properties.ReadOnly = True
        Visible = False
        Width = 72
      end
      object GridDBTableView1Grupo: TcxGridDBColumn
        DataBinding.FieldName = 'Grupo'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 50
        Properties.ReadOnly = True
        Visible = False
        GroupIndex = 3
        SortIndex = 2
        SortOrder = soAscending
        Width = 77
      end
      object GridDBTableView1Inventario: TcxGridDBColumn
        DataBinding.FieldName = 'Inventario'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 50
        Properties.ReadOnly = True
        Visible = False
        GroupIndex = 2
        SortIndex = 0
        SortOrder = soAscending
        Width = 52
      end
      object GridDBTableView1Linea: TcxGridDBColumn
        DataBinding.FieldName = 'Linea'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 50
        Properties.ReadOnly = True
        Visible = False
        GroupIndex = 1
        SortIndex = 1
        SortOrder = soAscending
        Width = 72
      end
      object GridDBTableView1idAlmacen: TcxGridDBColumn
        Caption = 'Almacen'
        DataBinding.FieldName = 'idAlmacen'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 16
        Properties.ReadOnly = True
        Visible = False
        GroupIndex = 0
        SortIndex = 3
        SortOrder = soAscending
        Width = 70
      end
      object GridDBTableView1idProducto: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'idProducto'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 25
        Properties.ReadOnly = True
        Width = 20
      end
      object GridDBTableView1Producto: TcxGridDBColumn
        DataBinding.FieldName = 'Producto'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 100
        Properties.ReadOnly = True
        Width = 114
      end
      object GridDBTableView1DBColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'Ubicacion'
        Options.Filtering = False
        Width = 130
      end
      object GridDBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'idUnidad'
        Options.Filtering = False
        Width = 44
      end
      object GridDBTableView1Inicial: TcxGridDBColumn
        DataBinding.FieldName = 'Inicial'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.MaxLength = 0
        Properties.ReadOnly = True
        Options.Filtering = False
        Width = 37
      end
      object GridDBTableView1Entradas: TcxGridDBColumn
        DataBinding.FieldName = 'Entradas'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.AssignedValues.DisplayFormat = True
        Properties.AssignedValues.MaxValue = True
        Properties.AssignedValues.MinValue = True
        Properties.Nullable = False
        Properties.ReadOnly = True
        Properties.ValidateOnEnter = True
        Options.Filtering = False
        Width = 39
      end
      object GridDBTableView1Salidas: TcxGridDBColumn
        DataBinding.FieldName = 'Salidas'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.AssignedValues.DisplayFormat = True
        Properties.AssignedValues.MaxValue = True
        Properties.AssignedValues.MinValue = True
        Properties.Nullable = False
        Properties.ReadOnly = True
        Properties.ValidateOnEnter = True
        Options.Filtering = False
        Width = 39
      end
      object GridDBTableView1Final: TcxGridDBColumn
        DataBinding.FieldName = 'Final'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.MaxLength = 0
        Properties.ReadOnly = True
        Options.Filtering = False
        Width = 37
      end
      object GridDBTableView1DBColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'Minimo'
        Options.Filtering = False
        Width = 45
      end
      object GridDBTableView1DBColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'Critico'
        Options.Filtering = False
        Width = 42
      end
      object GridDBTableView1DBColumn5: TcxGridDBColumn
        DataBinding.FieldName = 'Maximo'
        Options.Filtering = False
        Width = 50
      end
      object GridDBTableView1DBColumn6: TcxGridDBColumn
        Caption = 'Pedir'
        DataBinding.FieldName = 'APedir'
        Options.Filtering = False
        Width = 27
      end
      object GridDBTableView1DBColumn7: TcxGridDBColumn
        Caption = 'Ult. salida'
        DataBinding.FieldName = 'UltimaSalida'
        Options.Filtering = False
        Width = 72
      end
      object GridDBTableView1DBColumn8: TcxGridDBColumn
        DataBinding.FieldName = 'ST'
        Width = 43
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridDBTableView1
    end
  end
  object cxButton4: TcxButton [17]
    Left = 657
    Top = 44
    Width = 115
    Height = 27
    Caption = 'Exportar a Excel'
    TabOrder = 11
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    DataSet = Almacen
    Left = 37
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
    Left = 120
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
    Left = 200
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
    Left = 280
    Top = 272
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
    Left = 277
    Top = 325
  end
  object dsGrupo: TwwDataSource
    AutoEdit = False
    DataSet = Grupo
    OnUpdateData = DSUpdateData
    Left = 197
    Top = 333
  end
  object dsInv: TwwDataSource
    AutoEdit = False
    DataSet = Inventario
    OnUpdateData = DSUpdateData
    Left = 117
    Top = 333
  end
  object rsMovimiento: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'InvMovimientos;1'
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
        Name = '@idGrupo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@idLinea'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@idInventario'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@idAlmacen'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 352
    Top = 272
    object rsMovimientoID: TGuidField
      FieldName = 'ID'
      FixedChar = True
      Size = 38
    end
    object rsMovimientoInventario: TStringField
      FieldName = 'Inventario'
      Size = 50
    end
    object rsMovimientoLinea: TStringField
      FieldName = 'Linea'
      Size = 50
    end
    object rsMovimientoGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
    object rsMovimientoidAlmacen: TStringField
      FieldName = 'idAlmacen'
      Size = 16
    end
    object rsMovimientoidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object rsMovimientoProducto: TStringField
      FieldName = 'Producto'
      Size = 100
    end
    object rsMovimientoInicial: TFloatField
      FieldName = 'Inicial'
      DisplayFormat = '###,###,##0.00##'
    end
    object rsMovimientoEntradas: TBCDField
      FieldName = 'Entradas'
      DisplayFormat = '###,###,##0.00##'
      Precision = 32
    end
    object rsMovimientoSalidas: TBCDField
      FieldName = 'Salidas'
      DisplayFormat = '###,###,##0.00##'
      Precision = 32
    end
    object rsMovimientoFinal: TFloatField
      FieldName = 'Final'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00##'
    end
    object rsMovimientoDesde: TDateTimeField
      FieldName = 'Desde'
    end
    object rsMovimientoHasta: TDateTimeField
      FieldName = 'Hasta'
    end
    object rsMovimientoidUnidad: TStringField
      DisplayLabel = 'Unidad'
      FieldName = 'idUnidad'
      Size = 16
    end
    object rsMovimientoUbicacion: TStringField
      FieldName = 'Ubicacion'
      Size = 50
    end
    object rsMovimientoCritico: TFloatField
      FieldName = 'Critico'
      DisplayFormat = '###,###,##0.00##'
    end
    object rsMovimientoMaximo: TFloatField
      FieldName = 'Maximo'
      DisplayFormat = '###,###,##0.00##'
    end
    object rsMovimientoMinimo: TFloatField
      FieldName = 'Minimo'
      DisplayFormat = '###,###,##0.00##'
    end
    object rsMovimientoUltimaSalida: TDateTimeField
      FieldName = 'UltimaSalida'
      ReadOnly = True
    end
    object rsMovimientoAPedir: TFloatField
      FieldName = 'APedir'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00##'
    end
    object rsMovimientoST: TStringField
      FieldName = 'ST'
      ReadOnly = True
      Size = 1
    end
  end
  object dsMovimiento: TDataSource
    DataSet = rsMovimiento
    Left = 352
    Top = 328
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
    PrinterSetup.mmMarginBottom = 8890
    PrinterSetup.mmMarginLeft = 8890
    PrinterSetup.mmMarginRight = 8890
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
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
    Left = 192
    Top = 208
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
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'idProducto'
        DataPipeline = plMovimiento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 265
        mmTop = 0
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Entradas'
        DataPipeline = plMovimiento
        DisplayFormat = '#,0.00##;(#,0.00##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 128588
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Final'
        DataPipeline = plMovimiento
        DisplayFormat = '#,0.00##;(#,0.00##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 167746
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Salidas'
        DataPipeline = plMovimiento
        DisplayFormat = '#,0.00##;(#,0.00##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 147902
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Inicial'
        DataPipeline = plMovimiento
        DisplayFormat = '#,0.00##;(#,0.00##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 109009
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Producto'
        DataPipeline = plMovimiento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 23813
        mmTop = 0
        mmWidth = 69850
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkEnabled = False
        DataField = 'Minimo'
        DataPipeline = plMovimiento
        DisplayFormat = '#,0.00##;(#,0.00##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 187325
        mmTop = 0
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkEnabled = False
        DataField = 'Critico'
        DataPipeline = plMovimiento
        DisplayFormat = '#,0.00##;(#,0.00##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 201348
        mmTop = 0
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        HyperlinkEnabled = False
        DataField = 'Maximo'
        DataPipeline = plMovimiento
        DisplayFormat = '#,0.00##;(#,0.00##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 213255
        mmTop = 0
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        HyperlinkEnabled = False
        DataField = 'UltimaSalida'
        DataPipeline = plMovimiento
        DisplayFormat = 'mm/dd/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 94456
        mmTop = 0
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        HyperlinkEnabled = False
        DataField = 'Ubicacion'
        DataPipeline = plMovimiento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 239713
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        HyperlinkEnabled = False
        DataField = 'APedir'
        DataPipeline = plMovimiento
        DisplayFormat = '#,0.00##;(#,0.00##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 225955
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        HyperlinkEnabled = False
        DataField = 'ST'
        DataPipeline = plMovimiento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 256911
        mmTop = 0
        mmWidth = 4498
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 529
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Color = clGray
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 264
        mmWidth = 261621
        BandType = 8
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'idAlmacen'
      DataPipeline = plMovimiento
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plMovimiento'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 19844
        mmPrintPosition = 0
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          HyperlinkEnabled = False
          DataField = 'idAlmacen'
          DataPipeline = plMovimiento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plMovimiento'
          mmHeight = 3440
          mmLeft = 21696
          mmTop = 12700
          mmWidth = 72231
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
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 265
          mmTop = 12700
          mmWidth = 20902
          BandType = 3
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Pen.Color = clNavy
          Pen.Width = 0
          ParentWidth = True
          Weight = 0.250000000000000000
          mmHeight = 529
          mmLeft = 0
          mmTop = 19579
          mmWidth = 261621
          BandType = 3
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'CODIGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3006
          mmLeft = 265
          mmTop = 16404
          mmWidth = 21960
          BandType = 3
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'PRODUCTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3006
          mmLeft = 23813
          mmTop = 16404
          mmWidth = 69850
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'ENTRADAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3006
          mmLeft = 128588
          mmTop = 16404
          mmWidth = 18521
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'EXISTENCIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3006
          mmLeft = 167746
          mmTop = 16404
          mmWidth = 18521
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'SALIDAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3006
          mmLeft = 147902
          mmTop = 16404
          mmWidth = 18521
          BandType = 3
          GroupNo = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'INICIAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3006
          mmLeft = 109009
          mmTop = 16404
          mmWidth = 18521
          BandType = 3
          GroupNo = 0
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Reporte de Movimientos de Inventario por periodo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Tahoma'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5556
          mmLeft = 265
          mmTop = 6615
          mmWidth = 112713
          BandType = 3
          GroupNo = 0
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Desde:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 140494
          mmTop = 794
          mmWidth = 20902
          BandType = 3
          GroupNo = 0
        end
        object ppDBText11: TppDBText
          UserName = 'DBText11'
          HyperlinkEnabled = False
          DataField = 'Desde'
          DataPipeline = plMovimiento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plMovimiento'
          mmHeight = 3704
          mmLeft = 161925
          mmTop = 794
          mmWidth = 24871
          BandType = 3
          GroupNo = 0
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Hasta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 140759
          mmTop = 5027
          mmWidth = 20902
          BandType = 3
          GroupNo = 0
        end
        object ppDBText12: TppDBText
          UserName = 'DBText12'
          HyperlinkEnabled = False
          DataField = 'Hasta'
          DataPipeline = plMovimiento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plMovimiento'
          mmHeight = 3704
          mmLeft = 161925
          mmTop = 5027
          mmWidth = 24871
          BandType = 3
          GroupNo = 0
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
          mmHeight = 3440
          mmLeft = 205317
          mmTop = 794
          mmWidth = 55827
          BandType = 3
          GroupNo = 0
        end
        object ppSystemVariable1: TppSystemVariable
          UserName = 'SystemVariable1'
          HyperlinkEnabled = False
          VarType = vtPrintDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 224103
          mmTop = 5027
          mmWidth = 37042
          BandType = 3
          GroupNo = 0
        end
        object ppLabel27: TppLabel
          UserName = 'Label27'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'MIN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3006
          mmLeft = 188384
          mmTop = 16404
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
        end
        object ppLabel28: TppLabel
          UserName = 'Label28'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'CRIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3006
          mmLeft = 201348
          mmTop = 16404
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
        end
        object ppLabel29: TppLabel
          UserName = 'Label29'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'MAX'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3006
          mmLeft = 213519
          mmTop = 16404
          mmWidth = 12171
          BandType = 3
          GroupNo = 0
        end
        object ppLabel30: TppLabel
          UserName = 'Label30'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'UL SAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3006
          mmLeft = 94456
          mmTop = 16404
          mmWidth = 13758
          BandType = 3
          GroupNo = 0
        end
        object ppLabel31: TppLabel
          UserName = 'Label301'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'UBICACION'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3006
          mmLeft = 239713
          mmTop = 16404
          mmWidth = 16669
          BandType = 3
          GroupNo = 0
        end
        object ppDBText28: TppDBText
          UserName = 'DBText28'
          HyperlinkEnabled = False
          DataField = 'Compania'
          DataPipeline = dm.plConfig
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 14
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plConfig'
          mmHeight = 6085
          mmLeft = 265
          mmTop = 265
          mmWidth = 132557
          BandType = 3
          GroupNo = 0
        end
        object ppLabel32: TppLabel
          UserName = 'Label32'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'PEDIR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3006
          mmLeft = 226219
          mmTop = 16404
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
        end
        object ppLabel33: TppLabel
          UserName = 'Label33'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'ST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2910
          mmLeft = 256911
          mmTop = 16404
          mmWidth = 4498
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
    object ppGroup2: TppGroup
      BreakName = 'Inventario'
      DataPipeline = plMovimiento
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plMovimiento'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppLabel9: TppLabel
          UserName = 'Label9'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Inventario:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 265
          mmTop = 265
          mmWidth = 20902
          BandType = 3
          GroupNo = 1
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          HyperlinkEnabled = False
          DataField = 'Inventario'
          DataPipeline = plMovimiento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plMovimiento'
          mmHeight = 3704
          mmLeft = 21960
          mmTop = 265
          mmWidth = 119856
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'Linea'
      DataPipeline = plMovimiento
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plMovimiento'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 3175
        mmPrintPosition = 0
        object ppLabel10: TppLabel
          UserName = 'Label10'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Linea:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 6615
          mmTop = 0
          mmWidth = 20902
          BandType = 3
          GroupNo = 2
        end
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          HyperlinkEnabled = False
          DataField = 'Linea'
          DataPipeline = plMovimiento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plMovimiento'
          mmHeight = 3175
          mmLeft = 28310
          mmTop = 0
          mmWidth = 116681
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'Grupo'
      DataPipeline = plMovimiento
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plMovimiento'
      NewFile = False
      object ppGroupHeaderBand4: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppDBText10: TppDBText
          UserName = 'DBText10'
          HyperlinkEnabled = False
          DataField = 'Grupo'
          DataPipeline = plMovimiento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plMovimiento'
          mmHeight = 3440
          mmLeft = 32808
          mmTop = 264
          mmWidth = 116417
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
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 10848
          mmTop = 264
          mmWidth = 20902
          BandType = 3
          GroupNo = 3
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 794
        mmPrintPosition = 0
        object ppLine3: TppLine
          UserName = 'Line3'
          Pen.Color = clNavy
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 0
          mmTop = 265
          mmWidth = 261621
          BandType = 5
          GroupNo = 3
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object plMovimiento: TppDBPipeline
    DataSource = dsMovimiento
    UserName = 'plMovimiento'
    Left = 96
    Top = 208
    object plMovimientoppField1: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 38
      DataType = dtGUID
      DisplayWidth = 38
      Position = 0
    end
    object plMovimientoppField2: TppField
      FieldAlias = 'Inventario'
      FieldName = 'Inventario'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object plMovimientoppField3: TppField
      FieldAlias = 'Linea'
      FieldName = 'Linea'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object plMovimientoppField4: TppField
      FieldAlias = 'Grupo'
      FieldName = 'Grupo'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object plMovimientoppField5: TppField
      FieldAlias = 'idAlmacen'
      FieldName = 'idAlmacen'
      FieldLength = 16
      DisplayWidth = 16
      Position = 4
    end
    object plMovimientoppField6: TppField
      FieldAlias = 'idProducto'
      FieldName = 'idProducto'
      FieldLength = 25
      DisplayWidth = 25
      Position = 5
    end
    object plMovimientoppField7: TppField
      FieldAlias = 'Producto'
      FieldName = 'Producto'
      FieldLength = 100
      DisplayWidth = 100
      Position = 6
    end
    object plMovimientoppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'Inicial'
      FieldName = 'Inicial'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object plMovimientoppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Entradas'
      FieldName = 'Entradas'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 33
      Position = 8
    end
    object plMovimientoppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Salidas'
      FieldName = 'Salidas'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 33
      Position = 9
    end
    object plMovimientoppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Final'
      FieldName = 'Final'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object plMovimientoppField12: TppField
      FieldAlias = 'Desde'
      FieldName = 'Desde'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 11
    end
    object plMovimientoppField13: TppField
      FieldAlias = 'Hasta'
      FieldName = 'Hasta'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 12
    end
    object plMovimientoppField14: TppField
      FieldAlias = 'idUnidad'
      FieldName = 'idUnidad'
      FieldLength = 16
      DisplayWidth = 16
      Position = 13
    end
    object plMovimientoppField15: TppField
      FieldAlias = 'Ubicacion'
      FieldName = 'Ubicacion'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object plMovimientoppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'Critico'
      FieldName = 'Critico'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object plMovimientoppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'Maximo'
      FieldName = 'Maximo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object plMovimientoppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'Minimo'
      FieldName = 'Minimo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object plMovimientoppField19: TppField
      FieldAlias = 'UltimaSalida'
      FieldName = 'UltimaSalida'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 18
    end
    object plMovimientoppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'APedir'
      FieldName = 'APedir'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object plMovimientoppField21: TppField
      FieldAlias = 'ST'
      FieldName = 'ST'
      FieldLength = 1
      DisplayWidth = 1
      Position = 20
    end
  end
  object OpenFile: TOpenDialog
    DefaultExt = 'xls'
    FileName = 'Datos'
    Filter = 'xls|*.xls'
    Left = 374
    Top = 176
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = plMovimiento
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 8890
    PrinterSetup.mmMarginLeft = 8890
    PrinterSetup.mmMarginRight = 8890
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
    Left = 330
    Top = 216
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
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape1'
        Brush.Color = 15395562
        Pen.Style = psClear
        StretchWithParent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 198438
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'idProducto'
        DataPipeline = plMovimiento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 529
        mmTop = 0
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Entradas'
        DataPipeline = plMovimiento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 132292
        mmTop = 0
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Final'
        DataPipeline = plMovimiento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 173302
        mmTop = 0
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Salidas'
        DataPipeline = plMovimiento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 152929
        mmTop = 0
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Inicial'
        DataPipeline = plMovimiento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 110596
        mmTop = 0
        mmWidth = 19844
        BandType = 4
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Producto'
        DataPipeline = plMovimiento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plMovimiento'
        mmHeight = 3175
        mmLeft = 24342
        mmTop = 0
        mmWidth = 83873
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
      object ppLine4: TppLine
        UserName = 'Line2'
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 193146
        BandType = 8
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
        Transparent = True
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 1323
        mmWidth = 36513
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
        mmLeft = 147638
        mmTop = 1323
        mmWidth = 45508
        BandType = 8
      end
    end
    object ppGroup5: TppGroup
      BreakName = 'idAlmacen'
      DataPipeline = plMovimiento
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plMovimiento'
      NewFile = False
      object ppGroupHeaderBand5: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 20902
        mmPrintPosition = 0
        object ppDBText17: TppDBText
          UserName = 'DBText7'
          HyperlinkEnabled = False
          DataField = 'idAlmacen'
          DataPipeline = plMovimiento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plMovimiento'
          mmHeight = 3969
          mmLeft = 21696
          mmTop = 10319
          mmWidth = 72231
          BandType = 3
          GroupNo = 0
        end
        object ppLabel14: TppLabel
          UserName = 'Label8'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Almacen:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 0
          mmTop = 10319
          mmWidth = 20902
          BandType = 3
          GroupNo = 0
        end
        object ppLine5: TppLine
          UserName = 'Line1'
          Pen.Color = clNavy
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 529
          mmLeft = 0
          mmTop = 20108
          mmWidth = 193940
          BandType = 3
          GroupNo = 0
        end
        object ppLabel15: TppLabel
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
          mmLeft = 529
          mmTop = 15610
          mmWidth = 21960
          BandType = 3
          GroupNo = 0
        end
        object ppLabel16: TppLabel
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
          mmLeft = 23813
          mmTop = 15610
          mmWidth = 73554
          BandType = 3
          GroupNo = 0
        end
        object ppLabel17: TppLabel
          UserName = 'Label4'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Entradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 132292
          mmTop = 15610
          mmWidth = 19844
          BandType = 3
          GroupNo = 0
        end
        object ppLabel18: TppLabel
          UserName = 'Label5'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Final'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 173302
          mmTop = 15610
          mmWidth = 19844
          BandType = 3
          GroupNo = 0
        end
        object ppLabel19: TppLabel
          UserName = 'Label6'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Salidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 152929
          mmTop = 15610
          mmWidth = 19844
          BandType = 3
          GroupNo = 0
        end
        object ppLabel20: TppLabel
          UserName = 'Label7'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Inicial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 110596
          mmTop = 15610
          mmWidth = 19844
          BandType = 3
          GroupNo = 0
        end
        object ppLabel21: TppLabel
          UserName = 'Label1'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Reporte de Movimientos de Inventario por periodo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 16
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 7144
          mmLeft = 0
          mmTop = 265
          mmWidth = 127529
          BandType = 3
          GroupNo = 0
        end
        object ppLabel22: TppLabel
          UserName = 'Label12'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Desde:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 146844
          mmTop = 794
          mmWidth = 20902
          BandType = 3
          GroupNo = 0
        end
        object ppDBText18: TppDBText
          UserName = 'DBText11'
          HyperlinkEnabled = False
          DataField = 'Desde'
          DataPipeline = plMovimiento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plMovimiento'
          mmHeight = 3969
          mmLeft = 168275
          mmTop = 794
          mmWidth = 24871
          BandType = 3
          GroupNo = 0
        end
        object ppLabel23: TppLabel
          UserName = 'Label13'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Hasta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 147109
          mmTop = 5556
          mmWidth = 20902
          BandType = 3
          GroupNo = 0
        end
        object ppDBText19: TppDBText
          UserName = 'DBText12'
          HyperlinkEnabled = False
          DataField = 'Hasta'
          DataPipeline = plMovimiento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plMovimiento'
          mmHeight = 3969
          mmLeft = 168275
          mmTop = 5556
          mmWidth = 24871
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup6: TppGroup
      BreakName = 'Inventario'
      DataPipeline = plMovimiento
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plMovimiento'
      NewFile = False
      object ppGroupHeaderBand6: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppLabel24: TppLabel
          UserName = 'Label9'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Inventario:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3881
          mmLeft = 0
          mmTop = 529
          mmWidth = 20902
          BandType = 3
          GroupNo = 1
        end
        object ppDBText20: TppDBText
          UserName = 'DBText8'
          HyperlinkEnabled = False
          DataField = 'Inventario'
          DataPipeline = plMovimiento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plMovimiento'
          mmHeight = 3969
          mmLeft = 21960
          mmTop = 529
          mmWidth = 119856
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'Linea'
      DataPipeline = plMovimiento
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plMovimiento'
      NewFile = False
      object ppGroupHeaderBand7: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppLabel25: TppLabel
          UserName = 'Label10'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Linea:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3881
          mmLeft = 6615
          mmTop = 0
          mmWidth = 20902
          BandType = 3
          GroupNo = 2
        end
        object ppDBText21: TppDBText
          UserName = 'DBText9'
          HyperlinkEnabled = False
          DataField = 'Linea'
          DataPipeline = plMovimiento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plMovimiento'
          mmHeight = 3969
          mmLeft = 28310
          mmTop = 0
          mmWidth = 116681
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup8: TppGroup
      BreakName = 'Grupo'
      DataPipeline = plMovimiento
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plMovimiento'
      NewFile = False
      object ppGroupHeaderBand8: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppShape4: TppShape
          UserName = 'Shape2'
          Brush.Color = 13882323
          Pen.Style = psClear
          mmHeight = 5292
          mmLeft = 9790
          mmTop = 265
          mmWidth = 184944
          BandType = 3
          GroupNo = 3
        end
        object ppDBText22: TppDBText
          UserName = 'DBText10'
          HyperlinkEnabled = False
          DataField = 'Grupo'
          DataPipeline = plMovimiento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plMovimiento'
          mmHeight = 3969
          mmLeft = 32808
          mmTop = 794
          mmWidth = 116417
          BandType = 3
          GroupNo = 3
        end
        object ppLabel26: TppLabel
          UserName = 'Label101'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Grupo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3881
          mmLeft = 10848
          mmTop = 794
          mmWidth = 20902
          BandType = 3
          GroupNo = 3
        end
      end
      object ppGroupFooterBand8: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppLine6: TppLine
          UserName = 'Line3'
          Pen.Color = clNavy
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 10319
          mmTop = 265
          mmWidth = 183886
          BandType = 5
          GroupNo = 3
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
end

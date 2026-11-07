inherited Fisico: TFisico
  Left = 608
  Top = 210
  Anchors = [akRight, akBottom]
  Caption = 'Inventario Fisico'
  ClientHeight = 546
  ClientWidth = 656
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 16
    Top = 82
    Width = 46
    Height = 13
    Caption = 'Concepto'
  end
  object Label3: TLabel [1]
    Left = 32
    Top = 58
    Width = 29
    Height = 13
    Caption = 'Fecha'
  end
  inherited Bevel1: TBevel
    Width = 656
  end
  object Label8: TLabel [3]
    Left = 174
    Top = 56
    Width = 40
    Height = 13
    Caption = 'Almacen'
  end
  object Label1: TLabel [4]
    Left = 4
    Top = 488
    Width = 333
    Height = 52
    Anchors = [akLeft, akBottom]
    Caption = 
      'Si el Fisico es marcado como parcial, al postearlo solo se afect' +
      'arn los productos registrados en el mismo, si no es marcado como' +
      ' parcial, se asumira que todos los productos no digitados estan ' +
      'en cero en el almacen seleccionado y se haran los ajustes corres' +
      'pondientes'
    WordWrap = True
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 656
    inherited nuevo: TwwNavButton
      Width = 66
    end
    inherited editar: TwwNavButton
      Left = 66
      Width = 66
    end
    inherited guardar: TwwNavButton
      Left = 132
      Width = 66
    end
    inherited cancelar: TwwNavButton
      Left = 198
      Width = 66
    end
    inherited borrar: TwwNavButton
      Left = 264
      Width = 66
    end
    inherited BLocalizarx: TwwNavButton
      Left = 330
      Width = 66
    end
    object bImportar: TwwNavButton [6]
      Left = 396
      Top = 0
      Width = 65
      Height = 42
      Action = aImportarFisico
      ImageIndex = 0
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 6
      Style = nbsCustom
    end
    object bPostear: TwwNavButton [7]
      Left = 461
      Top = 0
      Width = 65
      Height = 42
      Action = aPostearFisico
      ImageIndex = 2
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 7
      Style = nbsCustom
    end
    object bImprimir: TwwNavButton [8]
      Left = 526
      Top = 0
      Width = 65
      Height = 42
      Action = Aprint
      ImageIndex = 11
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 8
      Style = nbsCustom
    end
    inherited salir: TwwNavButton
      Left = 591
      Width = 65
      Index = 9
    end
  end
  object dxDBEdit2: TdxDBEdit [6]
    Left = 72
    Top = 76
    Width = 504
    TabOrder = 1
    Anchors = [akLeft, akTop, akRight]
    DataField = 'Fisico'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit3: TdxDBEdit [7]
    Left = 72
    Top = 50
    Width = 89
    TabOrder = 0
    TabStop = False
    DataField = 'Fecha'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit5: TdxDBEdit [8]
    Left = 582
    Top = 52
    Width = 70
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    Style.BorderStyle = xbsNone
    Style.ButtonTransparence = ebtAlways
    TabOrder = 2
    TabStop = False
    Anchors = [akTop, akRight]
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'Usuario'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    Height = 16
    StoredValues = 65
  end
  inherited Grid: TwwDBGrid
    Left = 2
    Top = 103
    Width = 85
    Height = 0
    ControlType.Strings = (
      'TipoDescripcion;CustomEdit;wwDBLookupComboDlg1;F')
    Selected.Strings = (
      'idProducto'#9'17'#9'Producto'
      'Producto'#9'66'#9'Descripcion'
      'Existencia'#9'14'#9'Existencia')
    DataSource = nil
    KeyOptions = []
    TabOrder = 3
    TitleFont.Name = 'Tahoma'
    Visible = False
    OnColExit = GridColExit
  end
  object dxDBLookupEdit2: TdxDBLookupEdit [10]
    Left = 222
    Top = 50
    Width = 381
    TabOrder = 5
    Anchors = [akLeft, akTop, akRight]
    DataField = 'idAlmacen'
    DataSource = DS
    StyleController = dm.dxEstilo
    ListFieldName = 'Almacen'
    KeyFieldName = 'idAlmacen'
    ListSource = dsAlmacen
    LookupKeyValue = Null
  end
  object cxDBCheckBox1: TcxDBCheckBox [11]
    Left = 580
    Top = 76
    Width = 121
    Height = 21
    Anchors = [akTop, akRight]
    Caption = 'Posteado'
    DataBinding.DataField = 'Posteado'
    DataBinding.DataSource = DS
    TabOrder = 6
  end
  object cxGrid1: TcxGrid [12]
    Left = 2
    Top = 390
    Width = 651
    Height = 94
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 7
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsErr
      DataController.KeyFieldNames = 'Linea'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'Linea'
        Options.Filtering = False
      end
      object cxGrid1DBTableView1Codigo: TcxGridDBColumn
        DataBinding.FieldName = 'Codigo'
        Options.Editing = False
        Options.Filtering = False
        Width = 100
      end
      object cxGrid1DBTableView1Error: TcxGridDBColumn
        DataBinding.FieldName = 'Error'
        Options.Editing = False
        Options.Filtering = False
        Styles.Content = cxStyle1
        Width = 578
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton1: TcxButton [13]
    Left = 502
    Top = 485
    Width = 149
    Height = 29
    Anchors = [akRight, akBottom]
    Caption = 'Guardar errores en excel'
    TabOrder = 8
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton [14]
    Left = 502
    Top = 515
    Width = 149
    Height = 28
    Anchors = [akRight, akBottom]
    Caption = 'Copiar otro fisico'
    TabOrder = 9
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxGrid2: TcxGrid [15]
    Left = 2
    Top = 106
    Width = 650
    Height = 282
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 10
    OnEnter = cxGrid2Enter
    LookAndFeel.NativeStyle = True
    object cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
      DataController.DataSource = DS2
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'idFisicoDet'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.AlwaysShowEditor = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.IncSearch = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsSelection.HideSelection = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.BandHeaders = False
      Styles.Background = cxStyle3
      Styles.Content = cxStyle2
      Styles.Footer = cxStyle3
      Styles.Header = cxStyle3
      Styles.Indicator = cxStyle3
      Bands = <
        item
        end>
      object cxGrid2DBBandedTableView1idProducto: TcxGridDBBandedColumn
        DataBinding.FieldName = 'idProducto'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGrid2DBBandedTableView1idProductoPropertiesButtonClick
        HeaderAlignmentHorz = taCenter
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid2DBBandedTableView1Producto: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Producto'
        HeaderAlignmentHorz = taCenter
        Width = 386
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid2DBBandedTableView1Existencia: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Existencia'
        HeaderAlignmentHorz = taCenter
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBBandedTableView1
    end
  end
  object cxDBCheckBox2: TcxDBCheckBox [16]
    Left = 364
    Top = 507
    Width = 105
    Height = 21
    Anchors = [akLeft, akBottom]
    Caption = 'Fisico Parcial'
    DataBinding.DataField = 'Parcial'
    DataBinding.DataSource = DS
    TabOrder = 11
  end
  inherited DS: TwwDataSource
    Left = 373
    Top = 349
  end
  inherited ImageList: TImageList
    Left = 310
    Top = 296
  end
  inherited Acciones: TActionList
    Left = 312
    Top = 352
    object aImportarFisico: TAction
      Caption = 'Import CSV'
      ImageIndex = 0
      OnExecute = aImportarFisicoExecute
    end
    object AGetProduct: TAction
      Caption = 'AGetProduct'
      OnExecute = AGetProductExecute
    end
    object aPostearFisico: TAction
      Caption = 'Postear'
      ImageIndex = 2
      OnExecute = aPostearFisicoExecute
    end
  end
  inherited RS: TADODataSet
    OnNewRecord = RSNewRecord
    CommandText = 'rsFisico;1'
    CommandTimeout = 10000
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idFis'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 376
    Top = 296
    object RSidFisico: TGuidField
      FieldName = 'idFisico'
      FixedChar = True
      Size = 38
    end
    object RSFisico: TStringField
      FieldName = 'Fisico'
      Size = 50
    end
    object RSFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object RSHora: TDateTimeField
      FieldName = 'Hora'
    end
    object RSidAlmacen: TStringField
      FieldName = 'idAlmacen'
      Size = 16
    end
    object RSPosteado: TBooleanField
      FieldName = 'Posteado'
    end
    object RSUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object RSidCompania: TIntegerField
      FieldName = 'idCompania'
    end
    object RSParcial: TBooleanField
      FieldName = 'Parcial'
    end
  end
  inherited DS2: TwwDataSource
    Left = 445
    Top = 345
  end
  inherited RSDet: TADODataSet
    BeforePost = RSDetBeforePost
    OnNewRecord = RSDetNewRecord
    CommandText = 'rsFisicoDet;1'
    CommandTimeout = 10000
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idFis'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 440
    Top = 296
    object RSDetidProducto: TStringField
      DisplayLabel = 'Producto'
      DisplayWidth = 25
      FieldName = 'idProducto'
      OnValidate = RSDetidProductoValidate
      Size = 25
    end
    object RSDetProducto: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 66
      FieldName = 'Producto'
      Size = 60
    end
    object RSDetExistencia: TFloatField
      DisplayWidth = 14
      FieldName = 'Existencia'
      OnValidate = RSDetExistenciaValidate
    end
    object RSDetCosto: TBCDField
      DisplayLabel = 'Costo Unidad'
      DisplayWidth = 12
      FieldName = 'Costo'
      Visible = False
      Precision = 18
      Size = 2
    end
    object RSDetidFisicoDet: TGuidField
      FieldName = 'idFisicoDet'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object RSDetidFisico: TGuidField
      FieldName = 'idFisico'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object RSDetLinea: TIntegerField
      FieldName = 'Linea'
      Visible = False
    end
  end
  object ProductoAct: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'ProductoAct;1'
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
        Name = '@idProducto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@Lista'
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
      end
      item
        Name = '@idMoneda'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 224
    Top = 296
    object ProductoActidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object ProductoActProducto: TStringField
      FieldName = 'Producto'
      Size = 100
    end
    object ProductoActExistencia: TFloatField
      FieldName = 'Existencia'
    end
    object ProductoActCostoPromedio: TBCDField
      FieldName = 'CostoPromedio'
      Precision = 19
      Size = 2
    end
    object ProductoActPrecioContado: TBCDField
      FieldName = 'PrecioContado'
      Precision = 19
      Size = 2
    end
    object ProductoActPrecioCredito: TBCDField
      FieldName = 'PrecioCredito'
      Precision = 19
      Size = 2
    end
    object ProductoActInactivo: TBooleanField
      FieldName = 'Inactivo'
    end
    object ProductoActporciento: TFloatField
      FieldName = 'porciento'
    end
    object ProductoActidUnidad: TStringField
      FieldName = 'idUnidad'
      Size = 16
    end
    object ProductoActMinimo: TFloatField
      FieldName = 'Minimo'
    end
    object ProductoActReorden: TFloatField
      FieldName = 'Reorden'
    end
    object ProductoActAutoDescuento: TBooleanField
      FieldName = 'AutoDescuento'
    end
    object ProductoActCambiarPrecio: TBooleanField
      FieldName = 'CambiarPrecio'
    end
    object ProductoActDescuento: TFloatField
      FieldName = 'Descuento'
    end
    object ProductoActExistenciaNeg: TBooleanField
      FieldName = 'ExistenciaNeg'
    end
    object ProductoActidListaPrecio: TStringField
      FieldName = 'idListaPrecio'
      ReadOnly = True
      Size = 16
    end
    object ProductoActidPartida: TStringField
      FieldName = 'idPartida'
      Size = 16
    end
    object ProductoActidMoneda: TIntegerField
      FieldName = 'idMoneda'
      ReadOnly = True
    end
    object ProductoActCalcExistencia: TBooleanField
      FieldName = 'CalcExistencia'
    end
  end
  object dsProductoAct: TDataSource
    DataSet = ProductoAct
    Left = 224
    Top = 352
  end
  object Almacen: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'Almacenes;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 40
    Top = 296
  end
  object dsAlmacen: TDataSource
    DataSet = Almacen
    Left = 40
    Top = 352
  end
  object InvFisicoPostear: TADOCommand
    CommandText = 'invFisicoPostear;1'
    CommandTimeout = 10000
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
        Name = '@idFisico'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@Usuario'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 512
    Top = 200
  end
  object Import: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'idProducto'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Cantidad'
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
    DefaultFormat = kbmCSVStreamFormat1
    CommaTextFormat = kbmCSVStreamFormat1
    AllDataFormat = kbmCSVStreamFormat1
    FormFormat = kbmCSVStreamFormat1
    Left = 222
    Top = 112
    object ImportidProducto: TStringField
      DisplayWidth = 30
      FieldName = 'idProducto'
      Size = 30
    end
    object ImportCantidad: TBCDField
      FieldName = 'Cantidad'
    end
  end
  object dsimport: TDataSource
    DataSet = Import
    Left = 470
    Top = 132
  end
  object kbmCSVStreamFormat1: TkbmCSVStreamFormat
    CSVQuote = '"'
    CSVFieldDelimiter = ','
    CSVRecordDelimiter = ','
    CSVTrueString = 'True'
    CSVFalseString = 'False'
    sfLocalFormat = []
    sfQuoteOnlyStrings = []
    sfNoHeader = [sfSaveNoHeader, sfLoadNoHeader]
    Version = '3.00'
    sfData = [sfSaveData, sfLoadData]
    sfCalculated = []
    sfLookup = []
    sfNonVisible = [sfSaveNonVisible, sfLoadNonVisible]
    sfBlobs = [sfSaveBlobs, sfLoadBlobs]
    sfDef = [sfSaveDef, sfLoadDef]
    sfIndexDef = [sfSaveIndexDef, sfLoadIndexDef]
    sfPlaceHolders = []
    sfFiltered = [sfSaveFiltered]
    sfIgnoreRange = [sfSaveIgnoreRange]
    sfIgnoreMasterDetail = [sfSaveIgnoreMasterDetail]
    sfDeltas = []
    sfDontFilterDeltas = []
    sfAppend = []
    sfFieldKind = [sfSaveFieldKind]
    sfFromStart = [sfLoadFromStart]
    Left = 136
    Top = 102
  end
  object OpenFile: TOpenDialog
    Left = 250
    Top = 164
  end
  object FisicoExistencia: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'InvFisicoExistencia;1'
    CommandTimeout = 10000
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
        Name = '@idFisico'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 70
    Top = 154
    object FisicoExistenciaROWID: TGuidField
      FieldName = 'ROWID'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object FisicoExistenciaidFisico: TGuidField
      FieldName = 'idFisico'
      FixedChar = True
      Size = 38
    end
    object FisicoExistenciaFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object FisicoExistenciaidAlmacen: TStringField
      FieldName = 'idAlmacen'
      ReadOnly = True
      Size = 16
    end
    object FisicoExistenciaidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object FisicoExistenciaProducto: TStringField
      FieldName = 'Producto'
      Size = 100
    end
    object FisicoExistenciaMaximo: TFloatField
      FieldName = 'Maximo'
    end
    object FisicoExistenciaMinimo: TFloatField
      FieldName = 'Minimo'
    end
    object FisicoExistenciaReorden: TFloatField
      FieldName = 'Reorden'
    end
    object FisicoExistenciareferencia: TStringField
      FieldName = 'referencia'
      Size = 25
    end
    object FisicoExistenciaidUnidad: TStringField
      FieldName = 'idUnidad'
      Size = 16
    end
    object FisicoExistenciaExistencia: TFloatField
      FieldName = 'Existencia'
      ReadOnly = True
    end
    object FisicoExistenciaExistenciaFisico: TFloatField
      FieldName = 'ExistenciaFisico'
    end
    object FisicoExistenciaGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
    object FisicoExistenciaLinea: TStringField
      FieldName = 'Linea'
      Size = 50
    end
    object FisicoExistenciaInventario: TStringField
      FieldName = 'Inventario'
      Size = 50
    end
    object FisicoExistenciaDiferencia: TFloatField
      FieldName = 'Diferencia'
      ReadOnly = True
    end
    object FisicoExistenciaUbicacion: TStringField
      FieldName = 'Ubicacion'
      Size = 50
    end
  end
  object dsFisicoExistencia: TDataSource
    DataSet = FisicoExistencia
    Left = 58
    Top = 208
  end
  object RptFisicoExistencia: TppReport
    AutoStop = False
    DataPipeline = plFisicoExistenca
    PassSetting = psTwoPass
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
    OutlineSettings.CreatePageNodes = False
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
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    SavePrinterSetup = True
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 164
    Top = 164
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plFisicoExistenca'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 34396
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = clSilver
        mmHeight = 6085
        mmLeft = 0
        mmTop = 26988
        mmWidth = 203200
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Codigo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2921
        mmLeft = 1323
        mmTop = 28310
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Producto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2921
        mmLeft = 22490
        mmTop = 28310
        mmWidth = 63236
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fisico'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2921
        mmLeft = 104775
        mmTop = 28310
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Existencias Vs Fisico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 110331
        mmTop = 10319
        mmWidth = 91281
        BandType = 0
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 21431
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Sistema'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2921
        mmLeft = 127794
        mmTop = 28310
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Ubicacion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 175155
        mmTop = 28310
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Unidad'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2921
        mmLeft = 87048
        mmTop = 28310
        mmWidth = 14817
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 6615
        mmLeft = 794
        mmTop = 1588
        mmWidth = 112184
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Diferencias'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 153459
        mmTop = 28310
        mmWidth = 19579
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'idAlmacen'
        DataPipeline = plFisicoExistenca
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plFisicoExistenca'
        mmHeight = 3440
        mmLeft = 152929
        mmTop = 1588
        mmWidth = 48948
        BandType = 0
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
        Transparent = True
        mmHeight = 3440
        mmLeft = 133879
        mmTop = 1588
        mmWidth = 18521
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 2910
      mmPrintPosition = 0
      object ppShape1: TppShape
        OnPrint = ppShape1Print
        UserName = 'Shape1'
        Brush.Color = 15395562
        ParentHeight = True
        ParentWidth = True
        Pen.Style = psClear
        mmHeight = 2910
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'idProducto'
        DataPipeline = plFisicoExistenca
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plFisicoExistenca'
        mmHeight = 2858
        mmLeft = 1323
        mmTop = 0
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'ExistenciaFisico'
        DataPipeline = plFisicoExistenca
        DisplayFormat = '#,0.####;(#0.####,)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plFisicoExistenca'
        mmHeight = 2910
        mmLeft = 104775
        mmTop = 0
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Existencia'
        DataPipeline = plFisicoExistenca
        DisplayFormat = '#,0.00##'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plFisicoExistenca'
        mmHeight = 2910
        mmLeft = 127794
        mmTop = 0
        mmWidth = 23283
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = True
        DataField = 'Producto'
        DataPipeline = plFisicoExistenca
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'plFisicoExistenca'
        mmHeight = 2910
        mmLeft = 23813
        mmTop = 0
        mmWidth = 60854
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Ubicacion'
        DataPipeline = plFisicoExistenca
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plFisicoExistenca'
        mmHeight = 2910
        mmLeft = 175419
        mmTop = 0
        mmWidth = 26723
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'idUnidad'
        DataPipeline = plFisicoExistenca
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plFisicoExistenca'
        mmHeight = 2858
        mmLeft = 85990
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Diferencia'
        DataPipeline = plFisicoExistenca
        DisplayFormat = '#,0.00##'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plFisicoExistenca'
        mmHeight = 2910
        mmLeft = 153459
        mmTop = 0
        mmWidth = 20373
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 37571
        BandType = 8
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 181239
        mmTop = 1323
        mmWidth = 20638
        BandType = 8
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'Linea'
      DataPipeline = plFisicoExistenca
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plFisicoExistenca'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
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
    object ppGroup2: TppGroup
      BreakName = 'Inventario'
      DataPipeline = plFisicoExistenca
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plFisicoExistenca'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
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
    object ppGroup4: TppGroup
      BreakName = 'Grupo'
      DataPipeline = plFisicoExistenca
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plFisicoExistenca'
      NewFile = False
      object ppGroupHeaderBand4: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 9525
        mmPrintPosition = 0
        object ppDBText10: TppDBText
          UserName = 'DBText10'
          HyperlinkEnabled = False
          DataField = 'Grupo'
          DataPipeline = plFisicoExistenca
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plFisicoExistenca'
          mmHeight = 3440
          mmLeft = 133615
          mmTop = 4763
          mmWidth = 67469
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
          Transparent = True
          mmHeight = 3440
          mmLeft = 131763
          mmTop = 794
          mmWidth = 13758
          BandType = 3
          GroupNo = 3
        end
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          HyperlinkEnabled = False
          DataField = 'Linea'
          DataPipeline = plFisicoExistenca
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plFisicoExistenca'
          mmHeight = 3440
          mmLeft = 60061
          mmTop = 4233
          mmWidth = 66675
          BandType = 3
          GroupNo = 3
        end
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
          Transparent = True
          mmHeight = 3440
          mmLeft = 57679
          mmTop = 529
          mmWidth = 12700
          BandType = 3
          GroupNo = 3
        end
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
          Transparent = True
          mmHeight = 3440
          mmLeft = 265
          mmTop = 265
          mmWidth = 19844
          BandType = 3
          GroupNo = 3
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          HyperlinkEnabled = False
          DataField = 'Inventario'
          DataPipeline = plFisicoExistenca
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plFisicoExistenca'
          mmHeight = 3440
          mmLeft = 3175
          mmTop = 4233
          mmWidth = 47096
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
  object plFisicoExistenca: TppDBPipeline
    DataSource = dsFisicoExistencia
    UserName = 'plFisicoExistenca'
    Left = 146
    Top = 222
  end
  object mErrores: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'idProducto'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Cantidad'
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
    DefaultFormat = kbmCSVStreamFormat1
    CommaTextFormat = kbmCSVStreamFormat1
    AllDataFormat = kbmCSVStreamFormat1
    FormFormat = kbmCSVStreamFormat1
    Left = 356
    Top = 172
    object mErroresCodigo: TStringField
      FieldName = 'Codigo'
      Size = 30
    end
    object mErroresError: TStringField
      FieldName = 'Error'
      Size = 300
    end
    object mErroresLinea: TIntegerField
      FieldName = 'Linea'
    end
  end
  object dsErr: TDataSource
    DataSet = mErrores
    Left = 440
    Top = 226
  end
  object sd: TSaveDialog
    DefaultExt = 'xls'
    FileName = 'fisico.xls'
    Left = 620
    Top = 162
  end
  object cxStyleRepository1: TcxStyleRepository
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object rsDet2Copy: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforePost = RSDetBeforePost
    OnNewRecord = RSDetNewRecord
    CommandText = 'rsFisicoDet;1'
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
        Name = '@idFis'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 520
    Top = 296
    object rsDet2CopyidFisicoDet: TGuidField
      FieldName = 'idFisicoDet'
      FixedChar = True
      Size = 38
    end
    object rsDet2CopyidFisico: TGuidField
      FieldName = 'idFisico'
      FixedChar = True
      Size = 38
    end
    object rsDet2CopyidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object rsDet2CopyProducto: TStringField
      FieldName = 'Producto'
      Size = 60
    end
    object rsDet2CopyExistencia: TFloatField
      FieldName = 'Existencia'
    end
    object rsDet2CopyCosto: TBCDField
      FieldName = 'Costo'
      Precision = 18
      Size = 2
    end
    object rsDet2CopyLinea: TIntegerField
      FieldName = 'Linea'
    end
  end
  object rs2Copy: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = RSAfterScroll
    OnNewRecord = RSNewRecord
    CommandText = 'rsFisico;1'
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
        Name = '@idFis'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 344
    Top = 224
    object rs2CopyidFisico: TGuidField
      FieldName = 'idFisico'
      FixedChar = True
      Size = 38
    end
    object rs2CopyFisico: TStringField
      FieldName = 'Fisico'
      Size = 50
    end
    object rs2CopyFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rs2CopyHora: TDateTimeField
      FieldName = 'Hora'
    end
    object rs2CopyidAlmacen: TStringField
      FieldName = 'idAlmacen'
      Size = 16
    end
    object rs2CopyPosteado: TBooleanField
      FieldName = 'Posteado'
    end
    object rs2CopyUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object rs2CopyidCompania: TIntegerField
      FieldName = 'idCompania'
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 132
    Top = 310
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWindowText
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWindowText
    end
  end
end

inherited InvReq: TInvReq
  Left = 339
  Top = 158
  ActiveControl = dxDBEdit4
  Caption = 'Requisiciones de almacen'
  ClientHeight = 481
  ClientWidth = 647
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 56
    Width = 55
    Height = 13
    Caption = 'Requisicion'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 80
    Width = 29
    Height = 13
    Caption = 'Depto'
  end
  object Label3: TLabel [2]
    Left = 186
    Top = 54
    Width = 30
    Height = 13
    Caption = 'Fecha'
  end
  object Label4: TLabel [3]
    Left = 353
    Top = 52
    Width = 52
    Height = 13
    Caption = 'Referencia'
  end
  inherited Bevel1: TBevel
    Width = 647
  end
  object Label5: TLabel [5]
    Left = 362
    Top = 106
    Width = 43
    Height = 13
    Caption = 'Conduce'
  end
  object Label8: TLabel [6]
    Left = 356
    Top = 78
    Width = 49
    Height = 13
    Caption = 'Solicitante'
  end
  object Label9: TLabel [7]
    Left = 34
    Top = 151
    Width = 28
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Notas'
  end
  object Label7: TLabel [8]
    Left = 16
    Top = 462
    Width = 97
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Datos del Producto :'
  end
  object Label10: TLabel [9]
    Left = 323
    Top = 127
    Width = 82
    Height = 13
    Caption = 'Fecha Requerido'
  end
  object Label6: TLabel [10]
    Left = 8
    Top = 104
    Width = 38
    Height = 13
    Caption = 'Suplidor'
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 647
    inherited nuevo: TwwNavButton
      Width = 81
    end
    inherited editar: TwwNavButton
      Left = 81
      Width = 81
    end
    inherited guardar: TwwNavButton
      Left = 162
      Width = 81
    end
    inherited cancelar: TwwNavButton
      Left = 243
      Width = 81
    end
    inherited borrar: TwwNavButton
      Left = 324
      Width = 81
    end
    inherited BLocalizarx: TwwNavButton
      Left = 405
      Width = 81
    end
    object bPrint: TwwNavButton [6]
      Left = 486
      Top = 0
      Width = 81
      Height = 42
      Action = Aprint
      ImageIndex = 11
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 6
      Style = nbsCustom
    end
    inherited salir: TwwNavButton
      Left = 567
      Width = 80
      Index = 7
    end
  end
  object dxDBEdit1: TdxDBEdit [12]
    Left = 72
    Top = 48
    Width = 97
    TabOrder = 0
    TabStop = False
    DataField = 'InvReq'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit2: TdxDBEdit [13]
    Left = 72
    Top = 72
    Width = 241
    TabOrder = 3
    Anchors = [akLeft, akTop, akRight]
    DataField = 'Departamento'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit3: TdxDBEdit [14]
    Left = 224
    Top = 48
    Width = 89
    TabOrder = 1
    TabStop = False
    DataField = 'Fecha'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit4: TdxDBEdit [15]
    Left = 408
    Top = 48
    Width = 105
    TabOrder = 2
    Anchors = [akLeft, akTop, akRight]
    DataField = 'Referencia'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit5: TdxDBEdit [16]
    Left = 574
    Top = 160
    Width = 71
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    Style.BorderStyle = xbsNone
    Style.ButtonTransparence = ebtAlways
    TabOrder = 10
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
    Left = 1
    Top = 178
    Width = 643
    Height = 273
    ControlType.Strings = (
      'TipoDescripcion;CustomEdit;wwDBLookupComboDlg1;F')
    Selected.Strings = (
      'idProducto'#9'14'#9'Producto'
      'Producto'#9'44'#9'Descripcion'
      'Cantidad'#9'8'#9'Cantidad'
      'idUnidad'#9'8'#9'Unidad'
      'CentroCosto'#9'16'#9'CentroCosto'
      'CantidadEntregada'#9'7'#9'Entreg')
    KeyOptions = []
    TabOrder = 7
    OnColExit = GridColExit
    OnDblClick = GridDblClick
    OnKeyDown = GridKeyDown
  end
  object dxDBEdit7: TdxDBEdit [18]
    Left = 96
    Top = 121
    Width = 217
    TabOrder = 9
    Anchors = [akLeft, akTop, akRight]
    DataField = 'AutorizadoPor'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit8: TdxDBEdit [19]
    Left = 72
    Top = 146
    Width = 443
    TabOrder = 8
    Anchors = [akLeft, akRight, akBottom]
    AutoSize = False
    DataField = 'Nota'
    DataSource = DS
    StyleController = dm.dxEstilo
    Height = 20
  end
  object dxDBEdit9: TdxDBEdit [20]
    Left = 408
    Top = 72
    Width = 231
    TabOrder = 4
    Anchors = [akLeft, akTop, akRight]
    DataField = 'Solicitante'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBPickEdit1: TdxDBPickEdit [21]
    Left = 328
    Top = -8
    Width = 233
    TabOrder = 5
    Visible = False
    DataField = 'InvReqStatus'
    DataSource = DS
    StyleController = dm.dxEstilo
    Items.Strings = (
      'Riquerido'
      'Aprobado'
      'En Proceso'
      'Despachado')
  end
  object dxDBCheckEdit1: TdxDBCheckEdit [22]
    Left = 8
    Top = 121
    Width = 81
    TabOrder = 6
    Alignment = taRightJustify
    Caption = 'Recibido'
    DataField = 'Autorizado'
    DataSource = DS
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    StoredValues = 1
  end
  object dxDBEdit10: TdxDBEdit [23]
    Left = 122
    Top = 457
    Width = 521
    TabOrder = 12
    Anchors = [akLeft, akRight, akBottom]
    AutoSize = False
    DataField = 'Notas'
    DataSource = DS2
    StyleController = dm.dxEstilo
    Height = 20
  end
  object dxDBEdit11: TdxDBEdit [24]
    Left = 408
    Top = 123
    Width = 105
    TabOrder = 13
    TabStop = False
    DataField = 'FechaRequerido'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object cxDBCheckBox1: TcxDBCheckBox [25]
    Left = 550
    Top = 48
    Width = 87
    Height = 21
    Caption = 'Completado'
    DataBinding.DataField = 'Entregado'
    DataBinding.DataSource = DS
    Properties.Alignment = taRightJustify
    Properties.ReadOnly = True
    TabOrder = 14
  end
  object dxDBEdit6: TdxDBEdit [26]
    Left = 408
    Top = 99
    Width = 229
    TabOrder = 15
    TabStop = False
    DataField = 'Conduce'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit14: TdxDBEdit [27]
    Left = 140
    Top = 96
    Width = 198
    TabOrder = 16
    TabStop = False
    DataField = 'Suplidor'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object cxDBButtonEdit1: TdxDBButtonEdit [28]
    Left = 71
    Top = 96
    Width = 71
    TabOrder = 17
    DataField = 'idSuplidor'
    DataSource = DS
    StyleController = dm.dxEstilo
    Buttons = <
      item
        Default = True
      end>
    OnButtonClick = cxDBButtonEdit1ButtonClick
    ExistButtons = True
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
    object AGetProduct: TAction
      Caption = 'AGetProduct'
      OnExecute = AGetProductExecute
    end
    object AGetCentroCosto: TAction
      Caption = 'AGetCentroCosto'
      OnExecute = AGetCentroCostoExecute
    end
  end
  inherited RS: TADODataSet
    Active = True
    OnNewRecord = RSNewRecord
    CommandText = 'rsInvReq;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idInvReq'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 376
    Top = 296
    object RSidInvReq: TGuidField
      FieldName = 'idInvReq'
      FixedChar = True
      Size = 38
    end
    object RSInvReq: TStringField
      FieldName = 'InvReq'
      Size = 16
    end
    object RSFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object RSDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 16
    end
    object RSSolicitante: TStringField
      FieldName = 'Solicitante'
      Required = True
      Size = 50
    end
    object RSReferencia: TStringField
      FieldName = 'Referencia'
      Size = 16
    end
    object RSInvReqStatus: TStringField
      FieldName = 'InvReqStatus'
      Size = 16
    end
    object RSAutorizado: TBooleanField
      FieldName = 'Autorizado'
    end
    object RSAutorizadoPor: TStringField
      FieldName = 'AutorizadoPor'
      Size = 30
    end
    object RSNota: TStringField
      FieldName = 'Nota'
      Size = 200
    end
    object RSUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object RSEntregado: TBooleanField
      FieldName = 'Entregado'
    end
    object RSFechaRequerido: TDateTimeField
      DisplayLabel = 'Fecha Requerido'
      FieldName = 'FechaRequerido'
      Required = True
    end
    object RSidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
      OnValidate = RSidSuplidorValidate
    end
    object RSConduce: TStringField
      FieldName = 'Conduce'
      Size = 30
    end
    object RSSuplidor: TStringField
      FieldName = 'Suplidor'
      Size = 200
    end
  end
  inherited DS2: TwwDataSource
    Left = 445
    Top = 345
  end
  inherited RSDet: TADODataSet
    BeforePost = RSDetBeforePost
    OnCalcFields = RSDetCalcFields
    OnNewRecord = RSDetNewRecord
    CommandText = 'rsInvReqDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idInvReq'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 494
    Top = 198
    object RSDetidProducto: TStringField
      DisplayLabel = 'Producto'
      DisplayWidth = 14
      FieldName = 'idProducto'
      OnValidate = RSDetidProductoValidate
      Size = 25
    end
    object RSDetProducto: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 44
      FieldName = 'Producto'
      Size = 120
    end
    object RSDetCantidad: TBCDField
      DisplayWidth = 8
      FieldName = 'Cantidad'
      OnValidate = RSDetCantidadValidate
      Precision = 16
      Size = 2
    end
    object RSDetidUnidad: TStringField
      DisplayLabel = 'Unidad'
      DisplayWidth = 8
      FieldName = 'idUnidad'
      Size = 16
    end
    object RSDetCentroCosto: TStringField
      DisplayWidth = 16
      FieldName = 'CentroCosto'
      Size = 16
    end
    object RSDetCantidadEntregada: TBCDField
      DisplayLabel = 'Entreg'
      DisplayWidth = 7
      FieldName = 'CantidadEntregada'
      Precision = 18
      Size = 2
    end
    object RSDetNotas: TStringField
      DisplayWidth = 14
      FieldName = 'Notas'
      Visible = False
      Size = 200
    end
    object RSDetidInvReqDet: TGuidField
      DisplayWidth = 38
      FieldName = 'idInvReqDet'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object RSDetidInvReq: TGuidField
      DisplayWidth = 38
      FieldName = 'idInvReq'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object RSDetInvReqDet: TIntegerField
      DisplayWidth = 10
      FieldName = 'InvReqDet'
      Visible = False
    end
    object RSDetLinea: TIntegerField
      FieldName = 'Linea'
      Visible = False
    end
    object RSDetIdCentroCosto: TGuidField
      FieldName = 'IdCentroCosto'
      Visible = False
      OnValidate = RSDetIdCentroCostoValidate
      FixedChar = True
      Size = 38
    end
  end
  object ProductoAct: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'ProductoAct'
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
  end
  object dsProductoAct: TDataSource
    DataSet = ProductoAct
    Left = 224
    Top = 352
  end
  object RPTInvReq: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'RPTInvReq;1'
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
        Name = '@idInvReq'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 112
    Top = 216
    object RPTInvReqidInvReq: TGuidField
      FieldName = 'idInvReq'
      FixedChar = True
      Size = 38
    end
    object RPTInvReqInvReq: TStringField
      FieldName = 'InvReq'
      Size = 16
    end
    object RPTInvReqFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object RPTInvReqAutorizado: TBooleanField
      FieldName = 'Autorizado'
    end
    object RPTInvReqReferencia: TStringField
      FieldName = 'Referencia'
      Size = 16
    end
    object RPTInvReqOrdTrab: TStringField
      FieldName = 'OrdTrab'
      Size = 16
    end
    object RPTInvReqSolicitante: TStringField
      FieldName = 'Solicitante'
      Size = 50
    end
    object RPTInvReqAutorizadoPor: TStringField
      FieldName = 'AutorizadoPor'
      Size = 30
    end
    object RPTInvReqNota: TStringField
      FieldName = 'Nota'
      Size = 200
    end
    object RPTInvReqInvReqStatus: TStringField
      FieldName = 'InvReqStatus'
      Size = 16
    end
    object RPTInvReqidInvReqDet: TGuidField
      FieldName = 'idInvReqDet'
      FixedChar = True
      Size = 38
    end
    object RPTInvReqDetInvReqDet: TIntegerField
      FieldName = 'DetInvReqDet'
    end
    object RPTInvReqDetidProducto: TStringField
      FieldName = 'DetidProducto'
      Size = 25
    end
    object RPTInvReqDetProducto: TStringField
      FieldName = 'DetProducto'
      Size = 80
    end
    object RPTInvReqDetCantidad: TBCDField
      FieldName = 'DetCantidad'
      Precision = 18
    end
    object RPTInvReqcoCompania: TStringField
      FieldName = 'coCompania'
      Size = 50
    end
    object RPTInvReqcoDireccion: TStringField
      FieldName = 'coDireccion'
      Size = 120
    end
    object RPTInvReqcoTelefono: TStringField
      FieldName = 'coTelefono'
      Size = 15
    end
    object RPTInvReqcoFax: TStringField
      FieldName = 'coFax'
      Size = 15
    end
    object RPTInvReqcoRNC: TStringField
      FieldName = 'coRNC'
    end
    object RPTInvReqDetidUnidad: TStringField
      FieldName = 'DetidUnidad'
      Size = 16
    end
    object RPTInvReqDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 16
    end
  end
  object InvReqRPT: TppReport
    AutoStop = False
    DataPipeline = plRPTInvReq
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 139700
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 125
    Template.FileName = 'C:\Desarrollo\JMB\PDV\FacturaRPT.rtm'
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
    Left = 348
    Top = 216
    Version = '15.02'
    mmColumnWidth = 203200
    DataPipelineName = 'plRPTInvReq'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 53181
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Pen.Color = clGray
        Pen.Width = 2
        mmHeight = 16933
        mmLeft = 71702
        mmTop = 13229
        mmWidth = 130704
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 18
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 7408
        mmLeft = 1323
        mmTop = 0
        mmWidth = 106363
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'RNC'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 12171
        mmWidth = 44186
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Direccion'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 7938
        mmWidth = 105834
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Telefono'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 16404
        mmWidth = 29369
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Fax'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 31750
        mmTop = 16404
        mmWidth = 31750
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Color = 15461355
        Pen.Color = clGray
        Pen.Width = 2
        mmHeight = 23019
        mmLeft = 265
        mmTop = 30163
        mmWidth = 202142
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        Caption = 'Producto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 2646
        mmTop = 48154
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        Caption = 'Descripcion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 29633
        mmTop = 48154
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        Caption = 'Cantidad'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 152665
        mmTop = 48154
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'CONCEPTO :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 2381
        mmTop = 32808
        mmWidth = 21431
        BandType = 0
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkEnabled = False
        DataField = 'Nota'
        DataPipeline = plRPTInvReq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        WordWrap = True
        DataPipelineName = 'plRPTInvReq'
        mmHeight = 12435
        mmLeft = 24871
        mmTop = 32808
        mmWidth = 175419
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Color = clGray
        Weight = 1.000000000000000000
        mmHeight = 1588
        mmLeft = 529
        mmTop = 46567
        mmWidth = 201084
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Referencia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 73025
        mmTop = 14817
        mmWidth = 24077
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = plRPTInvReq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plRPTInvReq'
        mmHeight = 3704
        mmLeft = 73025
        mmTop = 19315
        mmWidth = 24077
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Status'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 97896
        mmTop = 14817
        mmWidth = 41275
        BandType = 0
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkEnabled = False
        DataField = 'InvReqStatus'
        DataPipeline = plRPTInvReq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plRPTInvReq'
        mmHeight = 3704
        mmLeft = 97896
        mmTop = 19315
        mmWidth = 41275
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plRPTInvReq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plRPTInvReq'
        mmHeight = 3704
        mmLeft = 140229
        mmTop = 19315
        mmWidth = 26194
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 140229
        mmTop = 14817
        mmWidth = 26194
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'O / T'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 166952
        mmTop = 14817
        mmWidth = 33602
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'OrdTrab'
        DataPipeline = plRPTInvReq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plRPTInvReq'
        mmHeight = 3704
        mmLeft = 166952
        mmTop = 19315
        mmWidth = 33602
        BandType = 0
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkEnabled = False
        DataField = 'InvReq'
        DataPipeline = plRPTInvReq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plRPTInvReq'
        mmHeight = 11113
        mmLeft = 141817
        mmTop = 794
        mmWidth = 60325
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        Caption = 'Unidad'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 184680
        mmTop = 48154
        mmWidth = 15346
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 71702
        mmTop = 23813
        mmWidth = 129911
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Depto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 73025
        mmTop = 24871
        mmWidth = 24077
        BandType = 0
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkEnabled = False
        DataField = 'Departamento'
        DataPipeline = plRPTInvReq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRPTInvReq'
        mmHeight = 3969
        mmLeft = 97896
        mmTop = 24871
        mmWidth = 102659
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        Caption = 'REQUISICION:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 116152
        mmTop = 794
        mmWidth = 24342
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'DetCantidad'
        DataPipeline = plRPTInvReq
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRPTInvReq'
        mmHeight = 3704
        mmLeft = 152665
        mmTop = 529
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'DetidProducto'
        DataPipeline = plRPTInvReq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRPTInvReq'
        mmHeight = 3704
        mmLeft = 2646
        mmTop = 529
        mmWidth = 26194
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'DetProducto'
        DataPipeline = plRPTInvReq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'plRPTInvReq'
        mmHeight = 3704
        mmLeft = 30163
        mmTop = 529
        mmWidth = 120915
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        DataField = 'DetidUnidad'
        DataPipeline = plRPTInvReq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRPTInvReq'
        mmHeight = 3704
        mmLeft = 177800
        mmTop = 529
        mmWidth = 22490
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 29898
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 39423
        mmTop = 18256
        mmWidth = 59267
        BandType = 8
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        Caption = 'Solicitado por'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 59267
        mmTop = 19315
        mmWidth = 18627
        BandType = 8
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 106363
        mmTop = 17992
        mmWidth = 59267
        BandType = 8
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        Caption = 'Autorizado por'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 125148
        mmTop = 19050
        mmWidth = 20108
        BandType = 8
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 794
        mmTop = 265
        mmWidth = 200819
        BandType = 8
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'Solicitante'
        DataPipeline = plRPTInvReq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'plRPTInvReq'
        mmHeight = 4763
        mmLeft = 41275
        mmTop = 13758
        mmWidth = 55563
        BandType = 8
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'AutorizadoPor'
        DataPipeline = plRPTInvReq
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'plRPTInvReq'
        mmHeight = 4763
        mmLeft = 108744
        mmTop = 13494
        mmWidth = 53975
        BandType = 8
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 163777
        mmTop = 25400
        mmWidth = 38629
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
  object dsRPTInvReq: TDataSource
    DataSet = RPTInvReq
    Left = 188
    Top = 216
  end
  object plRPTInvReq: TppDBPipeline
    DataSource = dsRPTInvReq
    UserName = 'plRPTInvReq'
    Left = 264
    Top = 216
    object plRPTInvReqppField1: TppField
      FieldAlias = 'idInvReq'
      FieldName = 'idInvReq'
      FieldLength = 38
      DisplayWidth = 38
      Position = 0
    end
    object plRPTInvReqppField2: TppField
      FieldAlias = 'InvReq'
      FieldName = 'InvReq'
      FieldLength = 16
      DisplayWidth = 16
      Position = 1
    end
    object plRPTInvReqppField3: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object plRPTInvReqppField4: TppField
      FieldAlias = 'Autorizado'
      FieldName = 'Autorizado'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 3
    end
    object plRPTInvReqppField5: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 16
      DisplayWidth = 16
      Position = 4
    end
    object plRPTInvReqppField6: TppField
      FieldAlias = 'OrdTrab'
      FieldName = 'OrdTrab'
      FieldLength = 16
      DisplayWidth = 16
      Position = 5
    end
    object plRPTInvReqppField7: TppField
      FieldAlias = 'Solicitante'
      FieldName = 'Solicitante'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
    object plRPTInvReqppField8: TppField
      FieldAlias = 'AutorizadoPor'
      FieldName = 'AutorizadoPor'
      FieldLength = 30
      DisplayWidth = 30
      Position = 7
    end
    object plRPTInvReqppField9: TppField
      FieldAlias = 'Nota'
      FieldName = 'Nota'
      FieldLength = 200
      DisplayWidth = 200
      Position = 8
    end
    object plRPTInvReqppField10: TppField
      FieldAlias = 'InvReqStatus'
      FieldName = 'InvReqStatus'
      FieldLength = 16
      DisplayWidth = 16
      Position = 9
    end
    object plRPTInvReqppField11: TppField
      FieldAlias = 'idInvReqDet'
      FieldName = 'idInvReqDet'
      FieldLength = 38
      DisplayWidth = 38
      Position = 10
    end
    object plRPTInvReqppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'DetInvReqDet'
      FieldName = 'DetInvReqDet'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object plRPTInvReqppField13: TppField
      FieldAlias = 'DetidProducto'
      FieldName = 'DetidProducto'
      FieldLength = 25
      DisplayWidth = 25
      Position = 12
    end
    object plRPTInvReqppField14: TppField
      FieldAlias = 'DetProducto'
      FieldName = 'DetProducto'
      FieldLength = 80
      DisplayWidth = 80
      Position = 13
    end
    object plRPTInvReqppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'DetCantidad'
      FieldName = 'DetCantidad'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 14
    end
    object plRPTInvReqppField16: TppField
      FieldAlias = 'coCompania'
      FieldName = 'coCompania'
      FieldLength = 50
      DisplayWidth = 50
      Position = 15
    end
    object plRPTInvReqppField17: TppField
      FieldAlias = 'coDireccion'
      FieldName = 'coDireccion'
      FieldLength = 120
      DisplayWidth = 120
      Position = 16
    end
    object plRPTInvReqppField18: TppField
      FieldAlias = 'coTelefono'
      FieldName = 'coTelefono'
      FieldLength = 15
      DisplayWidth = 15
      Position = 17
    end
    object plRPTInvReqppField19: TppField
      FieldAlias = 'coFax'
      FieldName = 'coFax'
      FieldLength = 15
      DisplayWidth = 15
      Position = 18
    end
    object plRPTInvReqppField20: TppField
      FieldAlias = 'coRNC'
      FieldName = 'coRNC'
      FieldLength = 20
      DisplayWidth = 20
      Position = 19
    end
    object plRPTInvReqppField21: TppField
      FieldAlias = 'DetidUnidad'
      FieldName = 'DetidUnidad'
      FieldLength = 16
      DisplayWidth = 16
      Position = 20
    end
    object plRPTInvReqppField22: TppField
      FieldAlias = 'Departamento'
      FieldName = 'Departamento'
      FieldLength = 16
      DisplayWidth = 16
      Position = 21
    end
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'InvRequisicionAlmDetCreate'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdInvReq'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@IdProducto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@Producto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Cantidad'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 18
        Value = Null
      end
      item
        Name = '@IdUnidad'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 116
    Top = 352
  end
  object CentroCostoAct: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'CostCentroCostoAct;1'
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
        Name = '@idCentroCosto'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@CentroCosto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 528
    Top = 250
    object CentroCostoActidCentroCosto: TGuidField
      FieldName = 'idCentroCosto'
      FixedChar = True
      Size = 38
    end
    object CentroCostoActCentroCosto: TStringField
      FieldName = 'CentroCosto'
      Size = 16
    end
    object CentroCostoActCentroCostoDesc: TStringField
      FieldName = 'CentroCostoDesc'
      Size = 300
    end
    object CentroCostoActActivo: TBooleanField
      FieldName = 'Activo'
    end
    object CentroCostoActTipo: TStringField
      FieldName = 'Tipo'
      Size = 16
    end
    object CentroCostoActReferencia: TStringField
      FieldName = 'Referencia'
      Size = 25
    end
    object CentroCostoActidCentroCostoParent: TGuidField
      FieldName = 'idCentroCostoParent'
      FixedChar = True
      Size = 38
    end
    object CentroCostoActOrden: TIntegerField
      FieldName = 'Orden'
    end
    object CentroCostoActNivel: TIntegerField
      FieldName = 'Nivel'
    end
    object CentroCostoActStatus: TStringField
      FieldName = 'Status'
      Size = 16
    end
    object CentroCostoActNota: TStringField
      FieldName = 'Nota'
      Size = 500
    end
  end
  object SuplidorAct: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'svSuplidorAct;1'
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
        Name = '@idSuplidor'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 502
    Top = 240
    object SuplidorActidSuplidor: TAutoIncField
      FieldName = 'idSuplidor'
      ReadOnly = True
    end
    object SuplidorActNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object SuplidorActEstatus: TBooleanField
      FieldName = 'Estatus'
    end
  end
end

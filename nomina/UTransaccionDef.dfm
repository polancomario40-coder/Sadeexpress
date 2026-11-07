inherited TransaccionDef: TTransaccionDef
  Left = 588
  Top = 275
  Caption = 'Definicon de Transaccion de Ingresos y Descuentos'
  ClientHeight = 416
  ClientWidth = 606
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 53
    Width = 37
    Height = 13
    Caption = 'Numero'
    FocusControl = DBEdit1
  end
  object Label3: TLabel [1]
    Left = 8
    Top = 101
    Width = 36
    Height = 13
    Caption = 'Descrip'
    FocusControl = DBEdit3
  end
  object Label5: TLabel [2]
    Left = 350
    Top = 133
    Width = 42
    Height = 13
    Caption = 'Cantidad'
    FocusControl = DBEdit5
  end
  object Label8: TLabel [3]
    Left = 8
    Top = 77
    Width = 21
    Height = 13
    Caption = 'Tipo'
  end
  object Label2: TLabel [4]
    Left = 150
    Top = 53
    Width = 30
    Height = 13
    Caption = 'Fecha'
    FocusControl = DBEdit1
  end
  inherited Bevel1: TBevel
    Width = 606
  end
  object Label4: TLabel [6]
    Left = 532
    Top = 133
    Width = 26
    Height = 13
    Caption = 'Clase'
    FocusControl = wwDBEdit1
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 606
    inherited nuevo: TwwNavButton
      Width = 68
    end
    inherited editar: TwwNavButton
      Left = 68
      Width = 68
    end
    inherited guardar: TwwNavButton
      Left = 136
      Width = 68
    end
    inherited cancelar: TwwNavButton
      Left = 204
      Width = 67
    end
    inherited borrar: TwwNavButton
      Left = 271
      Width = 67
    end
    inherited BLocalizarx: TwwNavButton
      Left = 338
      Width = 67
    end
    object BusqEmpleado: TwwNavButton [6]
      Left = 405
      Top = 0
      Width = 67
      Height = 42
      Action = ABusqEmpleado
      ImageIndex = 5
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 6
      Style = nbsCustom
    end
    object wwDBNavigator1Button: TwwNavButton [7]
      Left = 472
      Top = 0
      Width = 67
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
      Left = 539
      Width = 67
      Index = 8
    end
  end
  object DBEdit1: TwwDBEdit [8]
    Left = 56
    Top = 48
    Width = 81
    Height = 19
    Ctl3D = False
    DataField = 'TransaccionDefID'
    DataSource = DS
    Enabled = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object DBEdit3: TwwDBEdit [9]
    Left = 56
    Top = 96
    Width = 273
    Height = 49
    AutoSize = False
    Ctl3D = False
    DataField = 'TransaccionDef'
    DataSource = DS
    ParentCtl3D = False
    TabOrder = 3
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = True
  end
  object DBEdit5: TwwDBEdit [10]
    Left = 398
    Top = 128
    Width = 73
    Height = 19
    Ctl3D = False
    DataField = 'Cantidad'
    DataSource = DS
    ParentCtl3D = False
    TabOrder = 4
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object wwDBLookupCombo1: TwwDBLookupCombo [11]
    Left = 56
    Top = 72
    Width = 273
    Height = 19
    Ctl3D = False
    DisableThemes = False
    ControlType.Strings = (
      'Debito;CheckBox;true;false'
      'Cotizable;CheckBox;true;false')
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'TipoTransaccion'#9'50'#9'Tipo de Transaccion'#9'F'
      'Debito'#9'6'#9'Ingreso'#9#9
      'Tipo'#9'4'#9'Tipo'#9'F'
      'Cotizable'#9'5'#9'Cotizable'#9'F')
    DataField = 'TipoTransaccionID'
    DataSource = DS
    LookupTable = TipoTransaccion
    LookupField = 'TipoTransaccionID'
    Navigator = False
    ParentCtl3D = False
    TabOrder = 5
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = False
    ShowMatchText = True
  end
  object GroupBox1: TGroupBox [12]
    Left = 352
    Top = 46
    Width = 237
    Height = 75
    Caption = 'Periodo'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 7
    object Fijo: TDBCheckBox
      Left = 11
      Top = 24
      Width = 46
      Height = 17
      Caption = 'Fijo'
      Ctl3D = False
      DataField = 'Fijo'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object Panel4: TPanel
      Left = 72
      Top = 11
      Width = 160
      Height = 58
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      object Label6: TLabel
        Left = 8
        Top = 12
        Width = 31
        Height = 13
        Caption = 'Desde'
      end
      object Label7: TLabel
        Left = 11
        Top = 36
        Width = 28
        Height = 13
        Caption = 'Hasta'
      end
      object wwDBDateTimePicker2: TwwDBDateTimePicker
        Left = 41
        Top = 8
        Width = 109
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'Desde'
        DataSource = DS
        Epoch = 1950
        ShowButton = True
        TabOrder = 0
      end
      object wwDBDateTimePicker3: TwwDBDateTimePicker
        Left = 41
        Top = 32
        Width = 109
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'Hasta'
        DataSource = DS
        Epoch = 1950
        ShowButton = True
        TabOrder = 1
      end
    end
  end
  object wwDBDateTimePicker1: TwwDBDateTimePicker [13]
    Left = 184
    Top = 48
    Width = 145
    Height = 19
    BorderStyle = bsNone
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    DataField = 'Fecha'
    DataSource = DS
    Epoch = 1950
    Frame.Enabled = True
    Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
    ShowButton = True
    TabOrder = 6
  end
  inherited Grid: TwwDBGrid
    Left = 8
    Top = 152
    Width = 597
    Height = 257
    ControlType.Strings = (
      'Fijo;CheckBox;True;False'
      'PorcientoBruto;CheckBox;true;false')
    Selected.Strings = (
      'EmpleadoID'#9'8'#9'Emp Cod'
      'Cantidad'#9'12'#9'Cantidad'
      'Fijo'#9'5'#9'Fijo'
      'Desde'#9'17'#9'Desde'
      'Hasta'#9'15'#9'Hasta'
      'Empleado'#9'32'#9'Empleado')
  end
  object wwDBEdit1: TwwDBEdit [15]
    Left = 565
    Top = 128
    Width = 25
    Height = 19
    Ctl3D = False
    DataField = 'Clase'
    DataSource = DS
    ParentCtl3D = False
    TabOrder = 8
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  inherited DS: TwwDataSource
    Top = 285
  end
  inherited ImageList: TImageList
    Top = 184
  end
  inherited Acciones: TActionList
    Top = 280
    object ABusqEmpleado: TAction
      Caption = 'Empleado'
      ImageIndex = 5
      OnExecute = ABusqEmpleadoExecute
    end
  end
  inherited RS: TADODataSet
    Active = True
    OnNewRecord = RSNewRecord
    CommandText = 'rsTransaccionDef;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idTransaccionDef'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Top = 240
    object RSTransaccionDefID: TAutoIncField
      DisplayLabel = 'Tran Fija'
      FieldName = 'TransaccionDefID'
      ReadOnly = True
    end
    object RSTipoTransaccionID: TIntegerField
      FieldName = 'TipoTransaccionID'
      OnChange = RSTipoTransaccionIDChange
    end
    object RSTransaccionDef: TStringField
      FieldName = 'TransaccionDef'
      Size = 60
    end
    object RSFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object RSCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 19
    end
    object RSFijo: TBooleanField
      FieldName = 'Fijo'
      OnValidate = RSFijoValidate
    end
    object RSDesde: TDateTimeField
      FieldName = 'Desde'
    end
    object RSHasta: TDateTimeField
      FieldName = 'Hasta'
    end
    object RSClase: TIntegerField
      FieldName = 'Clase'
      OnValidate = RSClaseValidate
    end
  end
  inherited DS2: TwwDataSource
    Top = 289
  end
  inherited RSDet: TADODataSet
    Active = True
    OnCalcFields = RSDetCalcFields
    OnNewRecord = RSDetNewRecord
    CommandText = 'rsTranDefDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idTransaccionDef'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Top = 240
    object RSDetEmpleadoID: TIntegerField
      DisplayLabel = 'Emp Cod'
      DisplayWidth = 8
      FieldName = 'EmpleadoID'
    end
    object RSDetCantidad: TBCDField
      DisplayWidth = 12
      FieldName = 'Cantidad'
      Precision = 19
    end
    object RSDetFijo: TBooleanField
      DisplayWidth = 5
      FieldName = 'Fijo'
      OnValidate = RSDetFijoValidate
    end
    object RSDetDesde: TDateTimeField
      DisplayWidth = 17
      FieldName = 'Desde'
    end
    object RSDetHasta: TDateTimeField
      DisplayWidth = 15
      FieldName = 'Hasta'
    end
    object RSDetEmpleado: TStringField
      DisplayWidth = 32
      FieldKind = fkCalculated
      FieldName = 'Empleado'
      Calculated = True
    end
    object RSDetTransaccionDefID: TIntegerField
      DisplayWidth = 10
      FieldName = 'TransaccionDefID'
      Visible = False
    end
  end
  object TipoTransaccion: TADOTable
    Connection = dm.Coneccion
    CursorType = ctStatic
    TableName = 'TipoTransaccion'
    Left = 238
    Top = 190
    object TipoTransaccionTipoTransaccionID: TIntegerField
      DisplayLabel = 'Tipo'
      DisplayWidth = 4
      FieldName = 'TipoTransaccionID'
    end
    object TipoTransaccionTipoTransaccion: TStringField
      DisplayWidth = 17
      FieldName = 'TipoTransaccion'
    end
    object TipoTransaccionDebito: TBooleanField
      DisplayLabel = 'Ingreso'
      DisplayWidth = 6
      FieldName = 'Debito'
    end
    object TipoTransaccionCotizable: TBooleanField
      DisplayLabel = 'Cotiza ARS/AFP'
      DisplayWidth = 13
      FieldName = 'Cotizable'
    end
    object TipoTransaccionTipo: TStringField
      DisplayWidth = 7
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object TipoTransaccionValor: TBCDField
      DisplayWidth = 7
      FieldName = 'Valor'
      Precision = 18
    end
    object TipoTransaccionMultiplo: TBCDField
      DisplayWidth = 6
      FieldName = 'Multiplo'
      Precision = 16
      Size = 2
    end
    object TipoTransaccionAdelanto: TBooleanField
      DisplayLabel = 'Solo ISR'
      DisplayWidth = 7
      FieldName = 'Adelanto'
    end
    object TipoTransaccionProgramada: TBooleanField
      DisplayLabel = 'Prog'
      DisplayWidth = 5
      FieldName = 'Programada'
      ReadOnly = True
    end
    object TipoTransaccionNota: TStringField
      DisplayWidth = 13
      FieldName = 'Nota'
      Size = 60
    end
    object TipoTransaccionOrden: TIntegerField
      DisplayWidth = 5
      FieldName = 'Orden'
    end
    object TipoTransaccionClasificacion: TIntegerField
      DisplayLabel = 'Clasif'
      DisplayWidth = 4
      FieldName = 'Clasificacion'
    end
    object TipoTransaccionRegalia: TBooleanField
      DisplayWidth = 6
      FieldName = 'Regalia'
    end
    object TipoTransaccionISRno: TBooleanField
      DisplayLabel = 'No ISR'
      DisplayWidth = 7
      FieldName = 'ISRno'
    end
  end
  object plMaster: TppDBPipeline
    DataSource = DS
    UserName = 'plMaster'
    Left = 26
    Top = 304
    object plMasterppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'TransaccionDefID'
      FieldName = 'TransaccionDefID'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 0
      Position = 0
    end
    object plMasterppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'TipoTransaccionID'
      FieldName = 'TipoTransaccionID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object plMasterppField3: TppField
      FieldAlias = 'TransaccionDef'
      FieldName = 'TransaccionDef'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object plMasterppField4: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object plMasterppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cantidad'
      FieldName = 'Cantidad'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 4
    end
    object plMasterppField6: TppField
      FieldAlias = 'Fijo'
      FieldName = 'Fijo'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 5
    end
    object plMasterppField7: TppField
      FieldAlias = 'Desde'
      FieldName = 'Desde'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 6
    end
    object plMasterppField8: TppField
      FieldAlias = 'Hasta'
      FieldName = 'Hasta'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 7
    end
    object plMasterppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Clase'
      FieldName = 'Clase'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
  end
  object plDetail: TppDBPipeline
    DataSource = DS2
    UserName = 'plDetail'
    Left = 26
    Top = 358
    object plDetailppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'EmpleadoID'
      FieldName = 'EmpleadoID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object plDetailppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cantidad'
      FieldName = 'Cantidad'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 12
      Position = 1
    end
    object plDetailppField3: TppField
      FieldAlias = 'Fijo'
      FieldName = 'Fijo'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 2
    end
    object plDetailppField4: TppField
      FieldAlias = 'Desde'
      FieldName = 'Desde'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 17
      Position = 3
    end
    object plDetailppField5: TppField
      FieldAlias = 'Hasta'
      FieldName = 'Hasta'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 15
      Position = 4
    end
    object plDetailppField6: TppField
      FieldAlias = 'Empleado'
      FieldName = 'Empleado'
      FieldLength = 20
      DisplayWidth = 32
      Position = 5
    end
    object plDetailppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'TransaccionDefID'
      FieldName = 'TransaccionDefID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
  end
  object rptTransFijas: TppReport
    AutoStop = False
    DataPipeline = plDetail
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
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 114
    Top = 308
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plDetail'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 44186
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = 13881809
        Pen.Color = clWhite
        mmHeight = 13229
        mmLeft = 529
        mmTop = 21696
        mmWidth = 202671
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = 14671839
        Pen.Width = 2
        mmHeight = 6615
        mmLeft = 0
        mmTop = 37571
        mmWidth = 202936
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 6085
        mmLeft = 1852
        mmTop = 794
        mmWidth = 150284
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3429
        mmLeft = 169863
        mmTop = 1058
        mmWidth = 31835
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3429
        mmLeft = 184468
        mmTop = 5292
        mmWidth = 17145
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        Caption = 'Transacciones Fijas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 78317
        mmTop = 13229
        mmWidth = 46567
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Descripci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 2910
        mmTop = 24342
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 171715
        mmTop = 24342
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Clase'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 171715
        mmTop = 29369
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'EmpleadoID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 38894
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Empleado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 21960
        mmTop = 38894
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cantidad'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 187590
        mmTop = 38894
        mmWidth = 13494
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'TransaccionDef'
        DataPipeline = plMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMaster'
        mmHeight = 3704
        mmLeft = 2910
        mmTop = 28840
        mmWidth = 125148
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMaster'
        mmHeight = 3704
        mmLeft = 182034
        mmTop = 24342
        mmWidth = 20108
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Clase'
        DataPipeline = plMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plMaster'
        mmHeight = 3704
        mmLeft = 182034
        mmTop = 29369
        mmWidth = 7408
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'EmpleadoID'
        DataPipeline = plDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDetail'
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 265
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Empleado'
        DataPipeline = plDetail
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDetail'
        mmHeight = 3704
        mmLeft = 22754
        mmTop = 265
        mmWidth = 134938
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Cantidad'
        DataPipeline = plDetail
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDetail'
        mmHeight = 3704
        mmLeft = 171715
        mmTop = 265
        mmWidth = 29633
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
      mmHeight = 8996
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 2646
        mmLeft = 794
        mmTop = 0
        mmWidth = 201613
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        DataField = 'Cantidad'
        DataPipeline = plDetail
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDetail'
        mmHeight = 3704
        mmLeft = 168805
        mmTop = 794
        mmWidth = 32808
        BandType = 7
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 148432
        mmTop = 794
        mmWidth = 9525
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        DataPipeline = plDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'plDetail'
        mmHeight = 3810
        mmLeft = 31485
        mmTop = 1058
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        Caption = 'Cantidad'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 15409
        mmTop = 1058
        mmWidth = 14224
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object Emp: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 
      'SELECT     EmpleadoID, TipoEmpleadoID, DepartamentoID, SecionID,' +
      ' Apellido + '#39', '#39' + Nombre AS Empleado, Cedula, Posicion, Sueldo,' +
      ' Inicio,   '#13#10'                      Fin, Nacimiento, Sexo, Estado' +
      'Civil, Direccion, Ciudad, Telefono1, Telefono2, TipoCuenta, Nume' +
      'roCuenta, AFP, SueldoFijo, Activo, SS, ISR, PuntoA,   '#13#10'        ' +
      '              PuntoB, PuntoC, Nombre, Apellido, HorasDia, Numero' +
      'SS  '#13#10'FROM         dbo.Empleado  '#13#10'ORDER BY EmpleadoID  '#13#10'  '
    Parameters = <>
    Left = 294
    Top = 212
    object EmpEmpleadoID: TIntegerField
      FieldName = 'EmpleadoID'
    end
    object EmpTipoEmpleadoID: TIntegerField
      FieldName = 'TipoEmpleadoID'
    end
    object EmpDepartamentoID: TIntegerField
      FieldName = 'DepartamentoID'
    end
    object EmpSecionID: TIntegerField
      FieldName = 'SecionID'
    end
    object EmpEmpleado: TStringField
      FieldName = 'Empleado'
      ReadOnly = True
      Size = 62
    end
    object EmpCedula: TStringField
      FieldName = 'Cedula'
    end
    object EmpPosicion: TStringField
      FieldName = 'Posicion'
      Size = 60
    end
    object EmpSueldo: TBCDField
      FieldName = 'Sueldo'
      Precision = 18
      Size = 2
    end
    object EmpInicio: TDateTimeField
      FieldName = 'Inicio'
    end
    object EmpFin: TDateTimeField
      FieldName = 'Fin'
    end
    object EmpNacimiento: TDateTimeField
      FieldName = 'Nacimiento'
    end
    object EmpSexo: TStringField
      FieldName = 'Sexo'
      FixedChar = True
      Size = 1
    end
    object EmpEstadoCivil: TStringField
      FieldName = 'EstadoCivil'
      FixedChar = True
      Size = 1
    end
    object EmpDireccion: TStringField
      FieldName = 'Direccion'
      Size = 70
    end
    object EmpCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object EmpTelefono1: TStringField
      FieldName = 'Telefono1'
      Size = 15
    end
    object EmpTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 15
    end
    object EmpTipoCuenta: TStringField
      FieldName = 'TipoCuenta'
      FixedChar = True
      Size = 1
    end
    object EmpNumeroCuenta: TStringField
      FieldName = 'NumeroCuenta'
    end
    object EmpAFP: TBooleanField
      FieldName = 'AFP'
    end
    object EmpSueldoFijo: TBooleanField
      FieldName = 'SueldoFijo'
    end
    object EmpActivo: TBooleanField
      FieldName = 'Activo'
    end
    object EmpSS: TBooleanField
      FieldName = 'SS'
    end
    object EmpISR: TBooleanField
      FieldName = 'ISR'
    end
    object EmpPuntoA: TBCDField
      FieldName = 'PuntoA'
      Precision = 18
      Size = 2
    end
    object EmpPuntoB: TBCDField
      FieldName = 'PuntoB'
      Precision = 18
      Size = 2
    end
    object EmpPuntoC: TBCDField
      FieldName = 'PuntoC'
      Precision = 18
      Size = 2
    end
    object EmpNombre: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
    object EmpApellido: TStringField
      FieldName = 'Apellido'
      Size = 30
    end
    object EmpHorasDia: TBCDField
      FieldName = 'HorasDia'
      Precision = 18
      Size = 2
    end
    object EmpNumeroSS: TStringField
      FieldName = 'NumeroSS'
    end
  end
end

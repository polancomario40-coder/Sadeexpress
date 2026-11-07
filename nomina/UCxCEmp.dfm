inherited CxCEmp: TCxCEmp
  Left = 342
  Top = 187
  Caption = 'Cuentas por Cobrar Empleados'
  ClientHeight = 416
  ClientWidth = 501
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 22
    Top = 85
    Width = 37
    Height = 13
    Caption = 'Numero'
    FocusControl = DBEdit1
  end
  object Label3: TLabel [1]
    Left = 23
    Top = 144
    Width = 36
    Height = 13
    Caption = 'Descrip'
    FocusControl = DBEdit3
  end
  object Label8: TLabel [2]
    Left = 38
    Top = 117
    Width = 21
    Height = 13
    Caption = 'Tipo'
  end
  object Label2: TLabel [3]
    Left = 149
    Top = 82
    Width = 30
    Height = 13
    Caption = 'Fecha'
    FocusControl = DBEdit1
  end
  object SpeedButton1: TSpeedButton [4]
    Left = 4
    Top = 48
    Width = 58
    Height = 19
    Caption = 'Em&pleado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  inherited Bevel1: TBevel
    Width = 501
  end
  object Label6: TLabel [6]
    Left = 243
    Top = 195
    Width = 26
    Height = 13
    Caption = 'Clase'
    FocusControl = wwDBEdit7
  end
  object DBEdit1: TwwDBEdit [7]
    Left = 64
    Top = 80
    Width = 73
    Height = 19
    Ctl3D = False
    DataField = 'CxCEmpID'
    DataSource = DS
    Enabled = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 9
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object DBEdit3: TwwDBEdit [8]
    Left = 64
    Top = 144
    Width = 241
    Height = 41
    AutoSize = False
    Ctl3D = False
    DataField = 'CxCEmp'
    DataSource = DS
    ParentCtl3D = False
    TabOrder = 2
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = True
  end
  object wwDBLookupCombo1: TwwDBLookupCombo [9]
    Left = 64
    Top = 112
    Width = 241
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
    TabOrder = 3
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = False
    ShowMatchText = True
  end
  object GroupBox1: TGroupBox [10]
    Left = 313
    Top = 69
    Width = 181
    Height = 145
    Caption = 'Valores'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 5
    object Label5: TLabel
      Left = 28
      Top = 21
      Width = 30
      Height = 13
      Caption = 'Monto'
      FocusControl = DBEdit5
    end
    object Label4: TLabel
      Left = 28
      Top = 45
      Width = 33
      Height = 13
      Caption = 'Cuotas'
      FocusControl = wwDBEdit1
    end
    object Label9: TLabel
      Left = 12
      Top = 69
      Width = 52
      Height = 13
      Caption = 'Descuento'
      FocusControl = wwDBEdit2
    end
    object Panel4: TPanel
      Left = 0
      Top = 88
      Width = 181
      Height = 57
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label10: TLabel
        Left = 8
        Top = 8
        Width = 58
        Height = 13
        Caption = 'Descontado'
        FocusControl = wwDBEdit3
      end
      object Label11: TLabel
        Left = 28
        Top = 33
        Width = 39
        Height = 13
        Caption = 'Balance'
        FocusControl = wwDBEdit4
      end
      object wwDBEdit3: TwwDBEdit
        Left = 74
        Top = 6
        Width = 97
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'Descontado'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit4: TwwDBEdit
        Left = 74
        Top = 31
        Width = 97
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'Balance'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object DBEdit5: TwwDBEdit
      Left = 76
      Top = 16
      Width = 97
      Height = 19
      Ctl3D = False
      DataField = 'Total'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit1: TwwDBEdit
      Left = 76
      Top = 40
      Width = 97
      Height = 19
      Ctl3D = False
      DataField = 'Cuotas'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit2: TwwDBEdit
      Left = 76
      Top = 64
      Width = 97
      Height = 19
      TabStop = False
      Ctl3D = False
      DataField = 'Descuento'
      DataSource = DS
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object wwDBDateTimePicker1: TwwDBDateTimePicker [11]
    Left = 192
    Top = 80
    Width = 113
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
    TabOrder = 4
  end
  object wwDBEdit5: TwwDBEdit [12]
    Left = 64
    Top = 48
    Width = 65
    Height = 19
    Ctl3D = False
    DataField = 'EmpleadoID'
    DataSource = DS
    ParentCtl3D = False
    TabOrder = 7
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object wwDBEdit6: TwwDBEdit [13]
    Left = 136
    Top = 48
    Width = 361
    Height = 19
    Ctl3D = False
    DataField = 'Empleado'
    DataSource = dsEmpleadoAct
    ParentCtl3D = False
    TabOrder = 6
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object DBCheckBox1: TDBCheckBox [14]
    Left = 20
    Top = 194
    Width = 57
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Activo'
    Ctl3D = False
    DataField = 'Activo'
    DataSource = DS
    ParentCtl3D = False
    TabOrder = 8
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 501
    inherited nuevo: TwwNavButton
      Width = 63
    end
    inherited editar: TwwNavButton
      Left = 63
      Width = 63
    end
    inherited guardar: TwwNavButton
      Left = 126
      Width = 63
    end
    inherited cancelar: TwwNavButton
      Left = 189
      Width = 63
    end
    inherited borrar: TwwNavButton
      Left = 252
      Width = 63
    end
    inherited BLocalizarx: TwwNavButton
      Left = 315
      Width = 62
    end
    object BImprimir: TwwNavButton [6]
      Left = 377
      Top = 0
      Width = 62
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
      Left = 439
      Width = 62
      Index = 7
    end
  end
  inherited Grid: TwwDBGrid
    Top = 223
    Width = 497
    Height = 194
    Selected.Strings = (
      'Fecha'#9'12'#9'Fecha'
      'Monto'#9'12'#9'Monto'
      'Notas'#9'43'#9'Notas'
      'NominaID'#9'8'#9'Nomina')
    ParentCtl3D = False
  end
  object DBCheckBox2: TDBCheckBox [17]
    Left = 96
    Top = 194
    Width = 125
    Height = 17
    Alignment = taLeftJustify
    Caption = 'No Desc por Nomina'
    Ctl3D = False
    DataField = 'NoPorNomina'
    DataSource = DS
    ParentCtl3D = False
    TabOrder = 10
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object wwDBEdit7: TwwDBEdit [18]
    Left = 279
    Top = 190
    Width = 25
    Height = 19
    Ctl3D = False
    DataField = 'Clase'
    DataSource = DS
    ParentCtl3D = False
    TabOrder = 11
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  inherited DS: TwwDataSource
    Top = 285
  end
  inherited ImageList: TImageList
    Left = 366
    Top = 344
  end
  inherited Acciones: TActionList
    Left = 296
    Top = 248
  end
  inherited RS: TADODataSet
    BeforePost = RSBeforePost
    OnNewRecord = RSNewRecord
    CommandText = 'rsCxCEmp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@CxCEmpID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Top = 240
    object RSCxCEmpID: TIntegerField
      DisplayLabel = 'CxC Emp'
      FieldName = 'CxCEmpID'
    end
    object RSEmpleadoID: TIntegerField
      FieldName = 'EmpleadoID'
      OnChange = RSEmpleadoIDChange
    end
    object RSTipoTransaccionID: TIntegerField
      FieldName = 'TipoTransaccionID'
    end
    object RSCxCEmp: TStringField
      FieldName = 'CxCEmp'
      Size = 100
    end
    object RSFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object RSTotal: TBCDField
      FieldName = 'Total'
      OnChange = RSTotalChange
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object RSCuotas: TIntegerField
      FieldName = 'Cuotas'
      OnChange = RSTotalChange
    end
    object RSDescuento: TBCDField
      FieldName = 'Descuento'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object RSDescontado: TBCDField
      FieldName = 'Descontado'
      DisplayFormat = '#,0.00'
      Precision = 18
    end
    object RSBalance: TBCDField
      FieldName = 'Balance'
      ReadOnly = True
      Precision = 19
    end
    object RSActivo: TBooleanField
      FieldName = 'Activo'
    end
    object RSNoPorNomina: TBooleanField
      FieldName = 'NoPorNomina'
    end
    object RSClase: TIntegerField
      FieldName = 'Clase'
      OnValidate = RSClaseValidate
    end
  end
  inherited RSDet: TADODataSet
    OnNewRecord = RSDetNewRecord
    CommandText = 'rsCxCEmpDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@CxCEmpID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    object RSDetFecha: TDateTimeField
      DisplayWidth = 12
      FieldName = 'Fecha'
    end
    object RSDetMonto: TBCDField
      DisplayWidth = 12
      FieldName = 'Monto'
      DisplayFormat = '#,#0.00##'
      Precision = 18
      Size = 2
    end
    object RSDetNotas: TStringField
      DisplayWidth = 43
      FieldName = 'Notas'
      Size = 100
    end
    object RSDetNominaID: TIntegerField
      DisplayLabel = 'Nomina'
      DisplayWidth = 8
      FieldName = 'NominaID'
    end
    object RSDetCxCEmpDetID: TGuidField
      DisplayLabel = 'Num'
      DisplayWidth = 38
      FieldName = 'CxCEmpDetID'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object RSDetCxCEmpID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CxCEmpID'
      Visible = False
    end
  end
  object EmpleadoAct: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'EmpleadoAct;1'
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
        Name = '@EmpleadoID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 120
    Top = 264
  end
  object dsEmpleadoAct: TDataSource
    DataSet = EmpleadoAct
    Left = 112
    Top = 312
  end
  object TipoTransaccion: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 
      'select * from TipoTransaccion'#13#10'where '#13#10'  Debito = 0 '#13#10'  and Tipo' +
      ' = '#39'M'#39#13#10'  and Adelanto = 0'
    Parameters = <>
    Left = 224
    Top = 264
  end
  object RptSta: TppReport
    AutoStop = False
    DataPipeline = stadet
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
    Left = 32
    Top = 264
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'stadet'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 47625
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Monto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 26194
        mmTop = 43656
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Notas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 50800
        mmTop = 43656
        mmWidth = 80698
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Nomina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 132821
        mmTop = 43656
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 43392
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 133086
        mmTop = 0
        mmWidth = 34396
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = sta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'sta'
        mmHeight = 3704
        mmLeft = 133086
        mmTop = 5027
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'EmpleadoID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 1588
        mmWidth = 19579
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'EmpleadoID'
        DataPipeline = sta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'sta'
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 6615
        mmWidth = 19579
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'CxCEmp'
        DataPipeline = sta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'sta'
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 33338
        mmWidth = 186267
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 76465
        mmTop = 14023
        mmWidth = 36248
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = sta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'sta'
        mmHeight = 3704
        mmLeft = 76465
        mmTop = 18256
        mmWidth = 36248
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cuotas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 4233
        mmTop = 14023
        mmWidth = 19579
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'Cuotas'
        DataPipeline = sta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'sta'
        mmHeight = 3704
        mmLeft = 4233
        mmTop = 18256
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Descuento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 29104
        mmTop = 14023
        mmWidth = 36248
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'Descuento'
        DataPipeline = sta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'sta'
        mmHeight = 3704
        mmLeft = 29104
        mmTop = 18256
        mmWidth = 36248
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Descontado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 116946
        mmTop = 14023
        mmWidth = 36248
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'Descontado'
        DataPipeline = sta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'sta'
        mmHeight = 3704
        mmLeft = 116946
        mmTop = 18256
        mmWidth = 36248
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Balance'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 154517
        mmTop = 14023
        mmWidth = 38100
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'Balance'
        DataPipeline = sta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'sta'
        mmHeight = 3704
        mmLeft = 154517
        mmTop = 18256
        mmWidth = 38100
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Act'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 194734
        mmTop = 14023
        mmWidth = 6615
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'Activo'
        DataPipeline = sta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'sta'
        mmHeight = 3704
        mmLeft = 194734
        mmTop = 18256
        mmWidth = 6615
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Monto'
        DataPipeline = stadet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'stadet'
        mmHeight = 3704
        mmLeft = 26194
        mmTop = 529
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Notas'
        DataPipeline = stadet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'stadet'
        mmHeight = 3704
        mmLeft = 50800
        mmTop = 529
        mmWidth = 80698
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'NominaID'
        DataPipeline = stadet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'stadet'
        mmHeight = 3704
        mmLeft = 132821
        mmTop = 529
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = stadet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'stadet'
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 529
        mmWidth = 23283
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
  object stadet: TppDBPipeline
    DataSource = DS2
    UserName = 'stadet'
    Left = 32
    Top = 368
    object stadetppField1: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 12
      Position = 0
    end
    object stadetppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Monto'
      FieldName = 'Monto'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 12
      Position = 1
    end
    object stadetppField3: TppField
      FieldAlias = 'Notas'
      FieldName = 'Notas'
      FieldLength = 100
      DisplayWidth = 43
      Position = 2
    end
    object stadetppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'NominaID'
      FieldName = 'NominaID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 8
      Position = 3
    end
    object stadetppField5: TppField
      FieldAlias = 'CxCEmpDetID'
      FieldName = 'CxCEmpDetID'
      FieldLength = 38
      DisplayWidth = 38
      Position = 4
    end
    object stadetppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'CxCEmpID'
      FieldName = 'CxCEmpID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
  end
  object sta: TppDBPipeline
    DataSource = DS
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'sta'
    Left = 32
    Top = 320
  end
  object Update: TADOCommand
    CommandText = 'CxCEmpUpdate;1'
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
        Name = '@CxcEmpID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 216
    Top = 344
  end
end

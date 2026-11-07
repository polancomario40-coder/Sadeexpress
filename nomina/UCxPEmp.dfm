inherited CxPEmp: TCxPEmp
  Left = 342
  Top = 187
  Caption = 'Cuentas por Pagar Empleados'
  ClientHeight = 416
  ClientWidth = 501
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 22
    Top = 77
    Width = 37
    Height = 13
    Caption = 'Numero'
    FocusControl = DBEdit1
  end
  object Label3: TLabel [1]
    Left = 23
    Top = 120
    Width = 36
    Height = 13
    Caption = 'Descrip'
    FocusControl = DBEdit3
  end
  object Label8: TLabel [2]
    Left = 38
    Top = 101
    Width = 21
    Height = 13
    Caption = 'Tipo'
  end
  object Label2: TLabel [3]
    Left = 149
    Top = 74
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
  object Label4: TLabel [6]
    Left = 120
    Top = 169
    Width = 53
    Height = 13
    Caption = 'Frecuencia'
  end
  object DBEdit1: TwwDBEdit [7]
    Left = 64
    Top = 72
    Width = 73
    Height = 19
    DisableThemes = False
    Ctl3D = False
    DataField = 'CxPEmpID'
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
    Top = 120
    Width = 241
    Height = 41
    DisableThemes = False
    AutoSize = False
    Ctl3D = False
    DataField = 'CxPEmp'
    DataSource = DS
    ParentCtl3D = False
    TabOrder = 2
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = True
  end
  object wwDBLookupCombo1: TwwDBLookupCombo [9]
    Left = 64
    Top = 96
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
    Height = 116
    Caption = 'Valores'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 5
    object Label5: TLabel
      Left = 26
      Top = 27
      Width = 30
      Height = 13
      Caption = 'Monto'
      FocusControl = DBEdit5
    end
    object Panel4: TPanel
      Left = 0
      Top = 59
      Width = 181
      Height = 57
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label11: TLabel
        Left = 28
        Top = 20
        Width = 39
        Height = 13
        Caption = 'Balance'
        FocusControl = wwDBEdit4
      end
      object wwDBEdit4: TwwDBEdit
        Left = 74
        Top = 18
        Width = 97
        Height = 19
        TabStop = False
        DisableThemes = False
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
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object DBEdit5: TwwDBEdit
      Left = 74
      Top = 22
      Width = 97
      Height = 19
      DisableThemes = False
      Ctl3D = False
      DataField = 'Monto'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object wwDBDateTimePicker1: TwwDBDateTimePicker [11]
    Left = 192
    Top = 72
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
    DisableThemes = False
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
    DisableThemes = False
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
    Left = 28
    Top = 167
    Width = 49
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
  inherited Grid: TwwDBGrid
    Top = 192
    Width = 497
    Height = 225
    ControlType.Strings = (
      'Debito;CheckBox;true;false')
    Selected.Strings = (
      'Fecha'#9'11'#9'Fecha'
      'Monto'#9'14'#9'Monto'
      'Debito'#9'6'#9'Debito'
      'NominaID'#9'10'#9'NominaID'
      'Nota'#9'32'#9'Nota')
    ParentCtl3D = False
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
  object cxDBImageComboBox1: TcxDBImageComboBox [17]
    Left = 184
    Top = 166
    Width = 113
    Height = 21
    DataBinding.DataField = 'Frecuencia'
    DataBinding.DataSource = DS
    Properties.Items = <
      item
        Description = 'Semanal'
        ImageIndex = 0
        Value = 'S'
      end
      item
        Description = 'Quincenal'
        Value = 'Q'
      end
      item
        Description = 'Mensual'
        Value = 'M'
      end
      item
        Description = 'Bimestral'
        Value = 'B'
      end
      item
        Description = 'Trimestral'
        Value = 'T'
      end>
    TabOrder = 10
  end
  inherited DS: TwwDataSource
    Top = 285
  end
  inherited ImageList: TImageList
    Left = 366
    Top = 344
  end
  inherited Acciones: TActionList
    Left = 304
    Top = 240
  end
  inherited RS: TADODataSet
    Active = True
    BeforePost = RSBeforePost
    OnNewRecord = RSNewRecord
    CommandText = 'rsCxPEmp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@CxPEmpID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Top = 240
    object RSEmpleadoID: TIntegerField
      FieldName = 'EmpleadoID'
      OnChange = RSEmpleadoIDChange
    end
    object RSTipoTransaccionID: TIntegerField
      FieldName = 'TipoTransaccionID'
    end
    object RSFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object RSActivo: TBooleanField
      FieldName = 'Activo'
    end
    object RSCxPEmpID: TIntegerField
      FieldName = 'CxPEmpID'
    end
    object RSCxPEmp: TStringField
      FieldName = 'CxPEmp'
      Size = 100
    end
    object RSFrecuencia: TStringField
      FieldName = 'Frecuencia'
      FixedChar = True
      Size = 1
    end
    object RSMonto: TBCDField
      FieldName = 'Monto'
      Precision = 18
      Size = 2
    end
    object RSPagar: TBooleanField
      FieldName = 'Pagar'
    end
    object RSBalance: TBCDField
      FieldName = 'Balance'
      Precision = 18
      Size = 2
    end
  end
  inherited RSDet: TADODataSet
    Active = True
    OnNewRecord = RSDetNewRecord
    CommandText = 'rsCxPEmpDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@CxPEmpID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    object RSDetFecha: TDateTimeField
      DisplayWidth = 11
      FieldName = 'Fecha'
    end
    object RSDetMonto: TBCDField
      DisplayWidth = 14
      FieldName = 'Monto'
      Precision = 18
      Size = 2
    end
    object RSDetDebito: TBooleanField
      DisplayWidth = 6
      FieldName = 'Debito'
    end
    object RSDetNominaID: TIntegerField
      DisplayWidth = 10
      FieldName = 'NominaID'
    end
    object RSDetNota: TStringField
      DisplayWidth = 32
      FieldName = 'Nota'
      Size = 100
    end
    object RSDetCxPEmpDetID: TGuidField
      DisplayWidth = 38
      FieldName = 'CxPEmpDetID'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object RSDetCxPEmpID: TIntegerField
      DisplayWidth = 10
      FieldName = 'CxPEmpID'
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
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = False
    Left = 32
    Top = 264
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'stadet'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 47625
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label2'
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
        DataField = 'CxPEmp'
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
        AutoSize = False
        Caption = 'Monto'
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
        DataField = 'Monto'
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
      object ppLabel11: TppLabel
        UserName = 'Label11'
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
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Debito'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 151077
        mmTop = 43921
        mmWidth = 15875
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
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
        DataField = 'Nota'
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
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = stadet
        DataField = 'Debito'
        Transparent = True
        DataPipelineName = 'stadet'
        mmHeight = 4763
        mmLeft = 156369
        mmTop = 0
        mmWidth = 6350
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object stadet: TppDBPipeline
    DataSource = DS2
    UserName = 'stadet'
    Left = 32
    Top = 368
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
    CommandText = 'CxPEmpUpdate;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@CxPEmpID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 224
    Top = 320
  end
end

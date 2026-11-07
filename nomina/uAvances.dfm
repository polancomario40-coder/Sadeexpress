inherited Avances: TAvances
  Left = 424
  Top = 270
  Caption = 'Avances'
  ClientHeight = 469
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [2]
    Left = 10
    Top = 39
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label4: TLabel [3]
    Left = 12
    Top = 63
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object Gradient4: TGradient [4]
    Left = 5
    Top = 83
    Width = 658
    Height = 6
    Align = alCustom
    ColorBegin = 14898176
    ColorEnd = 16511468
    Style = gsReflectedH
  end
  object Gradient3: TGradient [5]
    Left = 5
    Top = 430
    Width = 658
    Height = 6
    Align = alCustom
    ColorBegin = 14898176
    ColorEnd = 16511468
    Style = gsReflectedH
  end
  object Label2: TLabel [6]
    Left = 576
    Top = 4
    Width = 86
    Height = 25
    Caption = 'Avances'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel [7]
    Left = 168
    Top = 41
    Width = 58
    Height = 13
    Caption = 'Trans. Ing.:'
  end
  object Label5: TLabel [8]
    Left = 168
    Top = 65
    Width = 65
    Height = 13
    Caption = 'Trans. Desc.:'
  end
  object Label6: TLabel [9]
    Left = 464
    Top = 64
    Width = 33
    Height = 13
    Caption = 'Grupo:'
  end
  object Label7: TLabel [10]
    Left = 466
    Top = 36
    Width = 84
    Height = 21
    AutoSize = False
    Caption = 'Guardar y Filtrar por el siguiente grupo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -9
    Font.Name = 'Small Fonts'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Label8: TLabel [11]
    Left = 444
    Top = 445
    Width = 33
    Height = 13
    Caption = 'Grupo:'
  end
  object Label9: TLabel [12]
    Left = 366
    Top = 442
    Width = 75
    Height = 21
    AutoSize = False
    Caption = 'Asterisco (*) para todos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -9
    Font.Name = 'Small Fonts'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object cxGrid1: TcxGrid [13]
    Left = 4
    Top = 91
    Width = 659
    Height = 337
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = ds
      DataController.KeyFieldNames = 'IdAvance'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoInsertOnNewItemRowFocusing]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1IdAvance: TcxGridDBColumn
        DataBinding.FieldName = 'IdAvance'
        Visible = False
      end
      object cxGrid1DBTableView1EmpleadoId: TcxGridDBColumn
        DataBinding.FieldName = 'EmpleadoId'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGrid1DBTableView1EmpleadoIdPropertiesButtonClick
        Options.Filtering = False
        Width = 77
      end
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        Caption = 'Empleado'
        DataBinding.FieldName = 'EmpleadoId'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'EmpleadoId'
        Properties.ListColumns = <
          item
            FieldName = 'Empleado'
          end>
        Properties.ListSource = dsEmpleado
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 205
      end
      object cxGrid1DBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Options.Filtering = False
        Width = 85
      end
      object cxGrid1DBTableView1TipoTransaccionIdIn: TcxGridDBColumn
        DataBinding.FieldName = 'TipoTransaccionIdIn'
        Visible = False
      end
      object cxGrid1DBTableView1TipoTransaccionIdOut: TcxGridDBColumn
        DataBinding.FieldName = 'TipoTransaccionIdOut'
        Visible = False
      end
      object cxGrid1DBTableView1Monto: TcxGridDBColumn
        DataBinding.FieldName = 'Monto'
        Options.Filtering = False
        Width = 91
      end
      object cxGrid1DBTableView1IdCentroCosto: TcxGridDBColumn
        DataBinding.FieldName = 'IdCentroCosto'
        Visible = False
      end
      object cxGrid1DBTableView1CentroCosto: TcxGridDBColumn
        DataBinding.FieldName = 'CentroCosto'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGrid1DBTableView1CentroCostoPropertiesButtonClick
        Options.Filtering = False
        Width = 133
      end
      object cxGrid1DBTableView1Cerrado: TcxGridDBColumn
        DataBinding.FieldName = 'Cerrado'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 47
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object dtpDesde: TcxDateEdit [14]
    Left = 46
    Top = 35
    Width = 108
    Height = 21
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object dtpHasta: TcxDateEdit [15]
    Left = 46
    Top = 59
    Width = 108
    Height = 21
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object cxButton1: TcxButton [16]
    Left = 563
    Top = 36
    Width = 99
    Height = 44
    Caption = 'Filtrar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    WordWrap = True
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton [17]
    Left = 592
    Top = 439
    Width = 72
    Height = 26
    Caption = 'Salir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    WordWrap = True
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object edtTipoTransIn: TcxTextEdit [18]
    Left = 236
    Top = 36
    Width = 32
    Height = 21
    TabStop = False
    Enabled = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  object edtTipoTransOut: TcxTextEdit [19]
    Left = 236
    Top = 60
    Width = 32
    Height = 21
    TabStop = False
    Enabled = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 6
  end
  object edtTipoTransOutDesc: TcxTextEdit [20]
    Left = 269
    Top = 60
    Width = 185
    Height = 21
    TabStop = False
    Enabled = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 7
  end
  object edtTipoTransInDesc: TcxTextEdit [21]
    Left = 269
    Top = 36
    Width = 185
    Height = 21
    TabStop = False
    Enabled = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 8
  end
  object cxButton3: TcxButton [22]
    Left = 503
    Top = 439
    Width = 88
    Height = 26
    Caption = 'Borrar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    WordWrap = True
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton4: TcxButton [23]
    Left = 5
    Top = 436
    Width = 119
    Height = 32
    Caption = 'Generar Archivo para el Banco'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Small Fonts'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    WordWrap = True
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton5: TcxButton [24]
    Left = 125
    Top = 436
    Width = 119
    Height = 32
    Caption = 'Incrementar Secuencia Banco'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Small Fonts'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    Visible = False
    WordWrap = True
    OnClick = cxButton5Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton6: TcxButton [25]
    Left = 246
    Top = 436
    Width = 119
    Height = 32
    Caption = 'Imprimir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    WordWrap = True
    OnClick = cxButton6Click
    LookAndFeel.NativeStyle = True
  end
  object edtGrupo: TcxTextEdit [26]
    Left = 504
    Top = 61
    Width = 37
    Height = 21
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 13
    Text = '1'
  end
  object edtGrupoRpt: TcxTextEdit [27]
    Left = 482
    Top = 442
    Width = 18
    Height = 21
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 14
    Text = '*'
  end
  inherited ds: TDataSource
    DataSet = spAvance
    Left = 526
    Top = 176
  end
  object spAvance: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    OnNewRecord = spAvanceNewRecord
    CommandText = 'nomRsAvance;1'
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
        Name = '@Grupo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end>
    Left = 450
    Top = 182
    object spAvanceIdAvance: TGuidField
      FieldName = 'IdAvance'
      FixedChar = True
      Size = 38
    end
    object spAvanceFecha: TDateTimeField
      FieldName = 'Fecha'
      OnValidate = spAvanceFechaValidate
    end
    object spAvanceTipoTransaccionIdIn: TIntegerField
      FieldName = 'TipoTransaccionIdIn'
    end
    object spAvanceTipoTransaccionIdOut: TIntegerField
      FieldName = 'TipoTransaccionIdOut'
    end
    object spAvanceEmpleadoId: TIntegerField
      FieldName = 'EmpleadoId'
      OnValidate = spAvanceEmpleadoIdValidate
    end
    object spAvanceMonto: TBCDField
      FieldName = 'Monto'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object spAvanceCerrado: TBooleanField
      FieldName = 'Cerrado'
    end
    object spAvanceIdCentroCosto: TGuidField
      FieldName = 'IdCentroCosto'
      OnValidate = spAvanceIdCentroCostoValidate
      FixedChar = True
      Size = 38
    end
    object spAvanceCentroCosto: TStringField
      FieldName = 'CentroCosto'
      OnValidate = spAvanceCentroCostoValidate
      Size = 16
    end
    object spAvancelkEmpleado: TStringField
      FieldKind = fkLookup
      FieldName = 'lkEmpleado'
      LookupDataSet = EmpleadoList
      LookupKeyFields = 'EmpleadoId'
      LookupResultField = 'Empleado'
      KeyFields = 'EmpleadoId'
      Size = 80
      Lookup = True
    end
    object spAvanceGrupo: TStringField
      FieldName = 'Grupo'
      Size = 2
    end
  end
  object dsEmpleado: TDataSource
    DataSet = EmpleadoList
    Left = 122
    Top = 208
  end
  object EmpleadoList: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'NomEmpleadoList;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 126
    Top = 262
    object EmpleadoListEmpleadoId: TIntegerField
      FieldName = 'EmpleadoId'
    end
    object EmpleadoListEmpleado: TStringField
      FieldName = 'Empleado'
      ReadOnly = True
      Size = 62
    end
  end
  object spGetCentroCostoEmp: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'nomGetCentroCostoEmp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@EmpleadoID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 496
    Top = 264
    object spGetCentroCostoEmpidCentroCosto: TGuidField
      FieldName = 'idCentroCosto'
      FixedChar = True
      Size = 38
    end
    object spGetCentroCostoEmpCentroCosto: TStringField
      FieldName = 'CentroCosto'
      Size = 16
    end
  end
  object rsCentroCosto: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'CostCentroCostoList;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 114
    Top = 328
    object rsCentroCostoidCentroCosto: TGuidField
      FieldName = 'idCentroCosto'
      FixedChar = True
      Size = 38
    end
    object rsCentroCostoCentroCosto: TStringField
      FieldName = 'CentroCosto'
      Size = 16
    end
  end
  object dsCentroCosto: TDataSource
    DataSet = rsCentroCosto
    Left = 112
    Top = 380
  end
  object spAvanceToBanco: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'nomAvanceToBanco;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
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
        Name = '@Grupo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end>
    Left = 290
    Top = 320
    object spAvanceToBancoCadena: TStringField
      FieldName = 'Cadena'
      ReadOnly = True
      Size = 8000
    end
    object spAvanceToBancoNombreArchivo: TStringField
      FieldName = 'NombreArchivo'
      ReadOnly = True
      Size = 40
    end
  end
  object save: TSaveDialog
    Ctl3D = False
    DefaultExt = 'txt'
    FileName = 'Nomina.txt'
    Filter = 'csv|*.csv|prn|*.prn|txt|*.txt|todos|*.*'
    FilterIndex = 3
    Options = [ofHideReadOnly, ofExtensionDifferent, ofPathMustExist, ofEnableSizing]
    Title = 'Guardar'
    Left = 344
    Top = 88
  end
  object spIncContador: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'nomNextCounter;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@XContador'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 256
    Top = 142
  end
  object rptAvance: TppReport
    AutoStop = False
    DataPipeline = plAvance
    PassSetting = psTwoPass
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
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 146
    Top = 142
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'plAvance'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 36248
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Pen.Width = 2
        mmHeight = 6615
        mmLeft = 265
        mmTop = 29633
        mmWidth = 202671
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1852
        mmTop = 30956
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'EmpleadoId'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 30956
        mmTop = 30956
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Empleado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 53446
        mmTop = 30956
        mmWidth = 115888
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Monto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 171715
        mmTop = 30956
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Avances'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 93134
        mmTop = 16669
        mmWidth = 17463
        BandType = 0
      end
      object lDelAl: TppLabel
        OnPrint = lDelAlPrint
        UserName = 'lDelAl'
        Caption = 'lDelAl'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 96573
        mmTop = 24342
        mmWidth = 9260
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 170657
        mmTop = 1852
        mmWidth = 31221
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 184680
        mmTop = 6350
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 24
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 10319
        mmLeft = 1588
        mmTop = 1058
        mmWidth = 128323
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'Fecha'
        DataPipeline = plAvance
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plAvance'
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 0
        mmWidth = 28046
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'EmpleadoId'
        DataPipeline = plAvance
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAvance'
        mmHeight = 3969
        mmLeft = 30692
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Empleado'
        DataPipeline = plAvance
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plAvance'
        mmHeight = 3969
        mmLeft = 47890
        mmTop = 0
        mmWidth = 121973
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'Monto'
        DataPipeline = plAvance
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAvance'
        mmHeight = 3969
        mmLeft = 171186
        mmTop = 0
        mmWidth = 30956
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 2381
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 794
        mmWidth = 202671
        BandType = 7
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Total avances:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3831
        mmLeft = 254
        mmTop = 1588
        mmWidth = 23029
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'Monto'
        DataPipeline = plAvance
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAvance'
        mmHeight = 3704
        mmLeft = 137319
        mmTop = 1588
        mmWidth = 65352
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataPipeline = plAvance
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'plAvance'
        mmHeight = 3704
        mmLeft = 25929
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Departamento'
      DataPipeline = plAvance
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plAvance'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape2'
          Brush.Color = 14211288
          Pen.Color = clSilver
          Pen.Width = 2
          mmHeight = 7144
          mmLeft = 0
          mmTop = 265
          mmWidth = 203730
          BandType = 3
          GroupNo = 0
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          DataField = 'Departamento'
          DataPipeline = plAvance
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 11
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plAvance'
          mmHeight = 4763
          mmLeft = 4498
          mmTop = 1323
          mmWidth = 75406
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6879
        mmPrintPosition = 0
        object ppLine2: TppLine
          UserName = 'Line2'
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 2117
          mmLeft = 0
          mmTop = 265
          mmWidth = 202671
          BandType = 5
          GroupNo = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          Caption = 'Total departamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3831
          mmLeft = 0
          mmTop = 1058
          mmWidth = 32745
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'Monto'
          DataPipeline = plAvance
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plAvance'
          mmHeight = 3704
          mmLeft = 137319
          mmTop = 1058
          mmWidth = 65352
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          DataPipeline = plAvance
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'plAvance'
          mmHeight = 3704
          mmLeft = 34660
          mmTop = 1058
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object plAvance: TppDBPipeline
    DataSource = dsAvenceRpt
    UserName = 'plAvance'
    Left = 40
    Top = 130
    object plAvanceppField1: TppField
      FieldAlias = 'IdAvance'
      FieldName = 'IdAvance'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plAvanceppField2: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plAvanceppField3: TppField
      FieldAlias = 'TipoTransaccionIdIn'
      FieldName = 'TipoTransaccionIdIn'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object plAvanceppField4: TppField
      FieldAlias = 'TipoTransaccionIdOut'
      FieldName = 'TipoTransaccionIdOut'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object plAvanceppField5: TppField
      FieldAlias = 'EmpleadoId'
      FieldName = 'EmpleadoId'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object plAvanceppField6: TppField
      FieldAlias = 'Monto'
      FieldName = 'Monto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object plAvanceppField7: TppField
      FieldAlias = 'Cerrado'
      FieldName = 'Cerrado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object plAvanceppField8: TppField
      FieldAlias = 'IdCentroCosto'
      FieldName = 'IdCentroCosto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object plAvanceppField9: TppField
      FieldAlias = 'CentroCosto'
      FieldName = 'CentroCosto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object plAvanceppField10: TppField
      FieldAlias = 'Grupo'
      FieldName = 'Grupo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object plAvanceppField11: TppField
      FieldAlias = 'Departamento'
      FieldName = 'Departamento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object plAvanceppField12: TppField
      FieldAlias = 'Empleado'
      FieldName = 'Empleado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
  end
  object spAvanceRpt: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    ProcedureName = 'nomAvanceRpt;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
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
        Name = '@Grupo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end>
    Left = 36
    Top = 186
    object spAvanceRptIdAvance: TGuidField
      FieldName = 'IdAvance'
      FixedChar = True
      Size = 38
    end
    object spAvanceRptFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object spAvanceRptTipoTransaccionIdIn: TIntegerField
      FieldName = 'TipoTransaccionIdIn'
    end
    object spAvanceRptTipoTransaccionIdOut: TIntegerField
      FieldName = 'TipoTransaccionIdOut'
    end
    object spAvanceRptEmpleadoId: TIntegerField
      FieldName = 'EmpleadoId'
    end
    object spAvanceRptMonto: TBCDField
      FieldName = 'Monto'
      Precision = 18
      Size = 2
    end
    object spAvanceRptCerrado: TBooleanField
      FieldName = 'Cerrado'
    end
    object spAvanceRptIdCentroCosto: TGuidField
      FieldName = 'IdCentroCosto'
      FixedChar = True
      Size = 38
    end
    object spAvanceRptCentroCosto: TStringField
      FieldName = 'CentroCosto'
      Size = 16
    end
    object spAvanceRptGrupo: TStringField
      FieldName = 'Grupo'
      Size = 2
    end
    object spAvanceRptDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 30
    end
    object spAvanceRptEmpleado: TStringField
      FieldName = 'Empleado'
      ReadOnly = True
      Size = 62
    end
  end
  object dsAvenceRpt: TDataSource
    DataSet = spAvanceRpt
    Left = 42
    Top = 238
  end
end

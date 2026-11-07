inherited TransParaNomina: TTransParaNomina
  Left = 358
  Top = 241
  Caption = 'Transacciones Para N'#243'mina'
  ClientHeight = 461
  ClientWidth = 622
  Color = 16311512
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Width = 622
  end
  inherited Gradient2: TGradient
    Width = 622
  end
  object Label16: TLabel [2]
    Left = 8
    Top = 55
    Width = 39
    Height = 13
    Caption = 'N'#243'mina:'
  end
  object Label2: TLabel [3]
    Left = 324
    Top = 4
    Width = 290
    Height = 25
    Caption = 'Transacciones para N'#243'mina'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel [4]
    Left = 8
    Top = 84
    Width = 84
    Height = 13
    Caption = 'Tipo Transacci'#243'n:'
  end
  object Label3: TLabel [5]
    Left = 186
    Top = 41
    Width = 26
    Height = 11
    Caption = 'Fecha'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Small Fonts'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [6]
    Left = 278
    Top = 41
    Width = 27
    Height = 11
    Caption = 'Desde'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Small Fonts'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [7]
    Left = 360
    Top = 41
    Width = 25
    Height = 11
    Caption = 'Hasta'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Small Fonts'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel [8]
    Left = 462
    Top = 41
    Width = 19
    Height = 11
    Caption = 'Mes'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Small Fonts'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel [9]
    Left = 492
    Top = 84
    Width = 35
    Height = 13
    Caption = 'Factor:'
  end
  object Label8: TLabel [10]
    Left = 8
    Top = 112
    Width = 58
    Height = 13
    Caption = 'Descripci'#243'n:'
  end
  object Gradient5: TGradient [11]
    Left = 5
    Top = 134
    Width = 608
    Height = 6
    Align = alCustom
    ColorBegin = 16746818
    ColorEnd = 16511468
    Style = gsReflectedH
  end
  object Gradient3: TGradient [12]
    Left = 6
    Top = 405
    Width = 608
    Height = 6
    Align = alCustom
    ColorBegin = 16746818
    ColorEnd = 16511468
    Style = gsReflectedH
  end
  inherited btImprimir: TcxButton
    Top = 414
    Action = Aprint
  end
  inherited btLocalizar: TcxButton
    Top = 414
  end
  inherited btNuevo: TcxButton
    Top = 414
  end
  inherited btCancelar: TcxButton
    Top = 414
  end
  inherited btGuardar: TcxButton
    Top = 414
  end
  inherited btBorrar: TcxButton
    Left = 351
    Top = 414
  end
  inherited btSalir: TcxButton
    Left = 564
    Top = 414
  end
  inherited btEditar: TcxButton
    Top = 415
  end
  object cxDBTextEdit1: TcxDBTextEdit [21]
    Left = 102
    Top = 108
    Width = 489
    Height = 21
    DataBinding.DataField = 'TransParaNomina'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 8
  end
  object cxDBButtonEdit1: TcxDBButtonEdit [22]
    Left = 102
    Top = 80
    Width = 80
    Height = 21
    DataBinding.DataField = 'TipoTransaccionId'
    DataBinding.DataSource = DS
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 9
  end
  object cxDBCheckBox1: TcxDBCheckBox [23]
    Left = 525
    Top = 52
    Width = 75
    Height = 24
    TabStop = False
    Caption = 'Cerrada'
    DataBinding.DataField = 'Cerrada'
    DataBinding.DataSource = dsNomina
    ParentFont = False
    Properties.ReadOnly = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 10
  end
  object cxDBSpinEdit1: TcxDBSpinEdit [24]
    Left = 532
    Top = 80
    Width = 42
    Height = 21
    DataBinding.DataField = 'Factor'
    DataBinding.DataSource = DS
    Properties.MinValue = 1.000000000000000000
    Properties.SpinButtons.Position = sbpHorzLeftRight
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 11
  end
  object cxDBButtonEdit2: TcxDBButtonEdit [25]
    Left = 102
    Top = 52
    Width = 79
    Height = 21
    DataBinding.DataField = 'NominaId'
    DataBinding.DataSource = DS
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = cxDBButtonEdit2PropertiesButtonClick
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 12
  end
  object cxDBTextEdit2: TcxDBTextEdit [26]
    Left = 185
    Top = 52
    Width = 90
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Fecha'
    DataBinding.DataSource = dsNomina
    Style.Color = 13361867
    Style.LookAndFeel.NativeStyle = True
    Style.Shadow = False
    TabOrder = 13
  end
  object cxDBTextEdit3: TcxDBTextEdit [27]
    Left = 277
    Top = 52
    Width = 80
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Desde'
    DataBinding.DataSource = dsNomina
    Style.Color = 13361867
    Style.LookAndFeel.NativeStyle = True
    Style.Shadow = False
    TabOrder = 14
  end
  object cxDBTextEdit4: TcxDBTextEdit [28]
    Left = 359
    Top = 52
    Width = 100
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Hasta'
    DataBinding.DataSource = dsNomina
    Style.Color = 13361867
    Style.LookAndFeel.NativeStyle = True
    Style.Shadow = False
    TabOrder = 15
  end
  object cxDBTextEdit5: TcxDBTextEdit [29]
    Left = 461
    Top = 52
    Width = 52
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Mescalendario'
    DataBinding.DataSource = dsNomina
    Style.Color = 13361867
    Style.LookAndFeel.NativeStyle = True
    Style.Shadow = False
    TabOrder = 16
  end
  object cxDBTextEdit6: TcxDBTextEdit [30]
    Left = 186
    Top = 80
    Width = 273
    Height = 21
    TabStop = False
    DataBinding.DataField = 'cfTipoTransaccion'
    DataBinding.DataSource = DS
    Style.Color = 13361867
    Style.LookAndFeel.NativeStyle = True
    Style.Shadow = False
    TabOrder = 17
  end
  object cxGrid1: TcxGrid [31]
    Left = 6
    Top = 142
    Width = 610
    Height = 260
    TabOrder = 18
    OnEnter = cxGrid1Enter
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsDet
      DataController.KeyFieldNames = 'IdTransParaNominaDet'
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
      object cxGrid1DBTableView1IdTransParaNominaDet: TcxGridDBColumn
        DataBinding.FieldName = 'IdTransParaNominaDet'
        Visible = False
        Options.Filtering = False
      end
      object cxGrid1DBTableView1IdTransParaNomina: TcxGridDBColumn
        DataBinding.FieldName = 'IdTransParaNomina'
        Visible = False
        Options.Filtering = False
      end
      object cxGrid1DBTableView1EmpleadoId: TcxGridDBColumn
        Caption = 'Empleado Id'
        DataBinding.FieldName = 'EmpleadoId'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGrid1DBTableView1EmpleadoIdPropertiesButtonClick
        Options.Filtering = False
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
        Options.Filtering = False
        Options.Focusing = False
        Width = 330
      end
      object cxGrid1DBTableView1Valor: TcxGridDBColumn
        DataBinding.FieldName = 'Valor'
        Options.Filtering = False
        Width = 89
      end
      object cxGrid1DBTableView1cfValorXFactor: TcxGridDBColumn
        Caption = 'Valor X Factor'
        DataBinding.FieldName = 'cfValorXFactor'
        Options.Filtering = False
        Options.Focusing = False
        Width = 106
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object bFromExcel: TcxButton [32]
    Left = 467
    Top = 414
    Width = 92
    Height = 43
    Caption = 'Cargar (Excel)'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
    WordWrap = True
    OnClick = bFromExcelClick
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    DataSet = spTransParaNomina
  end
  object spTransParaNomina: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    OnNewRecord = spTransParaNominaNewRecord
    ProcedureName = 'nomRsTransParaNomina;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@IdTransParaNomina'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 390
    Top = 246
    object spTransParaNominaIdTransParaNomina: TGuidField
      FieldName = 'IdTransParaNomina'
      OnValidate = spTransParaNominaIdTransParaNominaValidate
      FixedChar = True
      Size = 38
    end
    object spTransParaNominaTipoTransaccionId: TIntegerField
      FieldName = 'TipoTransaccionId'
      Required = True
    end
    object spTransParaNominaNominaId: TIntegerField
      FieldName = 'NominaId'
      Required = True
      OnValidate = spTransParaNominaNominaIdValidate
    end
    object spTransParaNominaTransParaNomina: TStringField
      FieldName = 'TransParaNomina'
      Required = True
      Size = 200
    end
    object spTransParaNominaFactor: TBCDField
      FieldName = 'Factor'
      Required = True
      Precision = 18
      Size = 2
    end
    object spTransParaNominaCerrado: TBooleanField
      FieldName = 'Cerrado'
    end
    object spTransParaNominacfTipoTransaccion: TStringField
      FieldKind = fkLookup
      FieldName = 'cfTipoTransaccion'
      LookupDataSet = qryTipoTransaccion
      LookupKeyFields = 'TipoTransaccionId'
      LookupResultField = 'TipoTransaccion'
      KeyFields = 'TipoTransaccionId'
      Size = 150
      Lookup = True
    end
  end
  object dsDet: TDataSource
    AutoEdit = False
    DataSet = spTransParaNominaDet
    Left = 150
    Top = 328
  end
  object spTransParaNominaDet: TADOStoredProc
    Connection = dm.Coneccion
    LockType = ltBatchOptimistic
    OnCalcFields = spTransParaNominaDetCalcFields
    OnNewRecord = spTransParaNominaDetNewRecord
    ProcedureName = 'nomRsTransParaNominaDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdTransParaNomina'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 158
    Top = 276
    object spTransParaNominaDetIdTransParaNominaDet: TGuidField
      FieldName = 'IdTransParaNominaDet'
      FixedChar = True
      Size = 38
    end
    object spTransParaNominaDetIdTransParaNomina: TGuidField
      FieldName = 'IdTransParaNomina'
      FixedChar = True
      Size = 38
    end
    object spTransParaNominaDetEmpleadoId: TIntegerField
      FieldName = 'EmpleadoId'
      OnValidate = spTransParaNominaDetEmpleadoIdValidate
    end
    object spTransParaNominaDetValor: TBCDField
      FieldName = 'Valor'
      DisplayFormat = '#'
      Precision = 18
      Size = 2
    end
    object spTransParaNominaDetcfValorXFactor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'cfValorXFactor'
      DisplayFormat = '#'
      Calculated = True
    end
  end
  object spNominasAbiertas: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'nomNominasAbiertasList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 552
    Top = 210
    object spNominasAbiertasNominaId: TIntegerField
      FieldName = 'NominaId'
    end
    object spNominasAbiertasDesde: TDateTimeField
      FieldName = 'Desde'
    end
    object spNominasAbiertasHasta: TDateTimeField
      FieldName = 'Hasta'
    end
    object spNominasAbiertasFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object spNominasAbiertasTipoEmpleado: TStringField
      FieldName = 'TipoEmpleado'
      Size = 10
    end
  end
  object dsNominasAbiertas: TDataSource
    DataSet = spNominasAbiertas
    Left = 552
    Top = 264
  end
  object qryNomina: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NominaId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      '  NominaId,'
      '  Fecha,'
      '  Desde,'
      '  Hasta,'
      '  Mescalendario,'
      '  Cerrada'
      'from '
      '  nomina'
      'where'
      '  NominaId = :NominaId')
    Left = 476
    Top = 180
    object qryNominaNominaId: TIntegerField
      FieldName = 'NominaId'
    end
    object qryNominaFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qryNominaDesde: TDateTimeField
      FieldName = 'Desde'
    end
    object qryNominaHasta: TDateTimeField
      FieldName = 'Hasta'
    end
    object qryNominaMescalendario: TSmallintField
      FieldName = 'Mescalendario'
    end
    object qryNominaCerrada: TBooleanField
      FieldName = 'Cerrada'
    end
  end
  object dsNomina: TDataSource
    DataSet = qryNomina
    Left = 478
    Top = 228
  end
  object qryTipoTransaccion: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  TipoTransaccionId,'
      '  TipoTransaccion,'
      '  Debito'
      'FROM'
      '  TipoTransaccion')
    Left = 362
    Top = 332
    object qryTipoTransaccionTipoTransaccionId: TIntegerField
      FieldName = 'TipoTransaccionId'
    end
    object qryTipoTransaccionTipoTransaccion: TStringField
      FieldName = 'TipoTransaccion'
      Size = 50
    end
    object qryTipoTransaccionDebito: TBooleanField
      FieldName = 'Debito'
    end
  end
  object dsTipoTransaccion: TDataSource
    DataSet = qryTipoTransaccion
    Left = 362
    Top = 376
  end
  object qryEmpleados: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  EmpleadoId,'
      '  Empleado'
      'From'
      '  Empleado')
    Left = 74
    Top = 198
    object qryEmpleadosEmpleadoId: TIntegerField
      FieldName = 'EmpleadoId'
    end
    object qryEmpleadosEmpleado: TStringField
      FieldName = 'Empleado'
      ReadOnly = True
      Size = 62
    end
  end
  object dsEmpleado: TDataSource
    DataSet = qryEmpleados
    Left = 72
    Top = 244
  end
  object qryEmpleadoSelect: TADOQuery
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = 'EmpleadoId'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      '  EmpleadoId,'
      '  Empleado'
      'from'
      '  Empleado'
      'where'
      '  EmpleadoId = :EmpleadoId And'
      '  Activo = 1')
    Left = 260
    Top = 340
  end
  object qryNominasAbiertas: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NominaId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      '  NominaId'
      'from'
      '  nomina'
      'where'
      '  NominaId = :NominaId And'
      '  Cerrada = 0')
    Left = 46
    Top = 344
  end
  object spTransParaNominaRpt: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    ProcedureName = 'nomTransParaNominaRpt;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@IdTransParaNomina'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 160
    Top = 172
    object spTransParaNominaRptNominaId: TIntegerField
      FieldName = 'NominaId'
    end
    object spTransParaNominaRptDesde: TDateTimeField
      FieldName = 'Desde'
    end
    object spTransParaNominaRptHasta: TDateTimeField
      FieldName = 'Hasta'
    end
    object spTransParaNominaRptFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object spTransParaNominaRptCerrada: TBooleanField
      FieldName = 'Cerrada'
    end
    object spTransParaNominaRptTipoTransaccion: TStringField
      FieldName = 'TipoTransaccion'
      Size = 50
    end
    object spTransParaNominaRptEmpleadoId: TIntegerField
      FieldName = 'EmpleadoId'
    end
    object spTransParaNominaRptEmpleado: TStringField
      FieldName = 'Empleado'
      ReadOnly = True
      Size = 62
    end
    object spTransParaNominaRptTipoTransaccionId: TIntegerField
      FieldName = 'TipoTransaccionId'
    end
    object spTransParaNominaRptFactor: TBCDField
      FieldName = 'Factor'
      Precision = 18
      Size = 2
    end
    object spTransParaNominaRptValor: TBCDField
      FieldName = 'Valor'
      Precision = 18
      Size = 2
    end
    object spTransParaNominaRptValorXFactor: TBCDField
      FieldName = 'ValorXFactor'
      ReadOnly = True
      Precision = 32
    end
    object spTransParaNominaRptTransParaNomina: TStringField
      FieldName = 'TransParaNomina'
      Size = 200
    end
  end
  object rptTransParaNomina: TppReport
    AutoStop = False
    DataPipeline = plTransParaNomina
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
    Left = 218
    Top = 168
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'plTransParaNomina'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 69056
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Pen.Width = 2
        mmHeight = 7673
        mmLeft = 1058
        mmTop = 61383
        mmWidth = 201613
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'LISTADO DE (TRANSACCIONES PARA NOMINA)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 16669
        mmWidth = 93134
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 5027
        mmLeft = 794
        mmTop = 794
        mmWidth = 144198
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 166688
        mmTop = 2381
        mmWidth = 35190
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageSetDesc
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 182827
        mmTop = 6615
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'EmpleadoId'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 2910
        mmTop = 63236
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Empleado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 25400
        mmTop = 63236
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 152136
        mmTop = 63236
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Valo X Factor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 177271
        mmTop = 63236
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'Factor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 77258
        mmTop = 46038
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Cerrada:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 163248
        mmTop = 34131
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'NominaId:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 115888
        mmTop = 34131
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'Desde:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 115888
        mmTop = 40217
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'Hasta:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 163248
        mmTop = 40217
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'Fecha pago:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 115888
        mmTop = 46038
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 'TipoTransaccion:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 2117
        mmTop = 40217
        mmWidth = 27781
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'NominaId'
        DataPipeline = plTransParaNomina
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plTransParaNomina'
        mmHeight = 3704
        mmLeft = 136790
        mmTop = 34131
        mmWidth = 15610
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'Desde'
        DataPipeline = plTransParaNomina
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plTransParaNomina'
        mmHeight = 3704
        mmLeft = 136790
        mmTop = 40217
        mmWidth = 19844
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'Hasta'
        DataPipeline = plTransParaNomina
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plTransParaNomina'
        mmHeight = 3704
        mmLeft = 178330
        mmTop = 40217
        mmWidth = 21167
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'Fecha'
        DataPipeline = plTransParaNomina
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plTransParaNomina'
        mmHeight = 3704
        mmLeft = 136790
        mmTop = 46038
        mmWidth = 21167
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'TipoTransaccion'
        DataPipeline = plTransParaNomina
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plTransParaNomina'
        mmHeight = 3704
        mmLeft = 30956
        mmTop = 40217
        mmWidth = 76465
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'Factor'
        DataPipeline = plTransParaNomina
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plTransParaNomina'
        mmHeight = 3704
        mmLeft = 91281
        mmTop = 46038
        mmWidth = 16140
        BandType = 0
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = plTransParaNomina
        DataField = 'Cerrada'
        Transparent = True
        DataPipelineName = 'plTransParaNomina'
        mmHeight = 5292
        mmLeft = 178065
        mmTop = 33867
        mmWidth = 7144
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1852
        mmLeft = 115888
        mmTop = 32544
        mmWidth = 85196
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Datos de n'#243'mina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 115888
        mmTop = 28575
        mmWidth = 32015
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 2381
        mmLeft = 115888
        mmTop = 50800
        mmWidth = 84402
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'TransParaNomina'
        DataPipeline = plTransParaNomina
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plTransParaNomina'
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 34131
        mmWidth = 105304
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = 'Descripci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 2381
        mmTop = 28575
        mmWidth = 25665
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1852
        mmLeft = 1852
        mmTop = 32544
        mmWidth = 106627
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 2381
        mmLeft = 2117
        mmTop = 50800
        mmWidth = 106363
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'EmpleadoId'
        DataPipeline = plTransParaNomina
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plTransParaNomina'
        mmHeight = 3704
        mmLeft = 1852
        mmTop = 0
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Empleado'
        DataPipeline = plTransParaNomina
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plTransParaNomina'
        mmHeight = 3704
        mmLeft = 25400
        mmTop = 0
        mmWidth = 101865
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'Valor'
        DataPipeline = plTransParaNomina
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransParaNomina'
        mmHeight = 3704
        mmLeft = 132821
        mmTop = 0
        mmWidth = 29633
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'ValorXFactor'
        DataPipeline = plTransParaNomina
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransParaNomina'
        mmHeight = 3704
        mmLeft = 166159
        mmTop = 0
        mmWidth = 34131
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1852
        mmLeft = 1323
        mmTop = 265
        mmWidth = 200555
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'Valor'
        DataPipeline = plTransParaNomina
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransParaNomina'
        mmHeight = 3704
        mmLeft = 133086
        mmTop = 1323
        mmWidth = 29369
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'ValorXFactor'
        DataPipeline = plTransParaNomina
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransParaNomina'
        mmHeight = 3704
        mmLeft = 166159
        mmTop = 1323
        mmWidth = 34131
        BandType = 7
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Caption = 'Totales'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 117475
        mmTop = 1323
        mmWidth = 13229
        BandType = 7
      end
    end
  end
  object plTransParaNomina: TppDBPipeline
    DataSource = dsTransParaNomina
    UserName = 'plTransParaNomina'
    Left = 268
    Top = 168
  end
  object dsTransParaNomina: TDataSource
    DataSet = spTransParaNominaRpt
    Left = 162
    Top = 218
  end
end

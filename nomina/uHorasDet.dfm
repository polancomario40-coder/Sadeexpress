inherited HorasDet: THorasDet
  Left = 361
  Top = 134
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Detalle de Horas'
  ClientHeight = 554
  ClientWidth = 684
  KeyPreview = False
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Top = 20
    Width = 684
  end
  inherited Gradient2: TGradient
    Width = 684
    Height = 20
  end
  object Label2: TLabel [2]
    Left = 228
    Top = 62
    Width = 50
    Height = 13
    Caption = 'Empleado:'
  end
  object Label3: TLabel [3]
    Left = 241
    Top = 40
    Width = 33
    Height = 13
    Caption = 'Fecha:'
  end
  object bSalir: TSpeedButton [4]
    Left = 567
    Top = 516
    Width = 111
    Height = 31
    Anchors = [akRight, akBottom]
    Caption = '&Salir'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = bSalirClick
  end
  object Label1: TLabel [5]
    Left = 22
    Top = 38
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label4: TLabel [6]
    Left = 24
    Top = 60
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object Cargar: TSpeedButton [7]
    Left = 8
    Top = 516
    Width = 247
    Height = 31
    Anchors = [akLeft, akBottom]
    Caption = '&Cargar Horas Desde Ponchador'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = CargarClick
  end
  object cxGrid1: TcxGrid [8]
    Left = 7
    Top = 86
    Width = 671
    Height = 420
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = ds
      DataController.KeyFieldNames = 'IdHorasDet'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.ColumnAutoWidth = True
      object cxGrid1DBTableView1IdHorasDet: TcxGridDBColumn
        DataBinding.FieldName = 'IdHorasDet'
        Visible = False
      end
      object cxGrid1DBTableView1NominaId: TcxGridDBColumn
        DataBinding.FieldName = 'NominaId'
        Visible = False
      end
      object cxGrid1DBTableView1EmpleadoId: TcxGridDBColumn
        Caption = 'Cod Emp'
        DataBinding.FieldName = 'EmpleadoId'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGrid1DBTableView1EmpleadoIdPropertiesButtonClick
        Options.Sorting = False
        Width = 69
      end
      object cxGrid1DBTableView1Cantidad: TcxGridDBColumn
        DataBinding.FieldName = 'Cantidad'
        Options.Filtering = False
        Options.Sorting = False
        Width = 54
      end
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Options.Filtering = False
        Options.Sorting = False
        Width = 107
      end
      object cxGrid1DBTableView1Desde: TcxGridDBColumn
        DataBinding.FieldName = 'Desde'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ArrowsForYear = False
        Properties.Kind = ckDateTime
        Properties.YearsInMonthList = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 84
      end
      object cxGrid1DBTableView1Hasta: TcxGridDBColumn
        DataBinding.FieldName = 'Hasta'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ArrowsForYear = False
        Properties.Kind = ckDateTime
        Properties.YearsInMonthList = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 74
      end
      object cxGrid1DBTableView1DBColumn3: TcxGridDBColumn
        Caption = 'Empleado'
        DataBinding.FieldName = 'EmpleadoId'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'EmpleadoId'
        Properties.ListColumns = <
          item
            FieldName = 'Empleado'
          end>
        Properties.ListSource = dsEmpleado
        Width = 143
      end
      object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
        Caption = 'Centro de Costos'
        DataBinding.FieldName = 'CentroCosto'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGrid1DBTableView1DBColumn2PropertiesButtonClick
        Options.Filtering = False
        Width = 138
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cbAutoGenerar: TcxCheckBox [9]
    Left = 486
    Top = 35
    Width = 106
    Height = 21
    Caption = 'Auto Generar'
    TabOrder = 1
  end
  object dtpFecha: TcxDateEdit [10]
    Left = 285
    Top = 36
    Width = 136
    Height = 21
    TabOrder = 2
  end
  object cxLookupComboBox2: TcxLookupComboBox [11]
    Left = 286
    Top = 58
    Width = 389
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    Properties.KeyFieldNames = 'EmpleadoId'
    Properties.ListColumns = <
      item
        FieldName = 'Empleado'
      end>
    Properties.ListSource = dsEmpleado
    Properties.OnEditValueChanged = cxLookupComboBox2PropertiesEditValueChanged
    TabOrder = 3
  end
  object dtpDesde: TcxDateEdit [12]
    Left = 58
    Top = 34
    Width = 136
    Height = 21
    Properties.OnChange = dtpDesdePropertiesChange
    TabOrder = 4
  end
  object dtpHasta: TcxDateEdit [13]
    Left = 58
    Top = 56
    Width = 136
    Height = 21
    Properties.OnChange = dtpHastaPropertiesChange
    TabOrder = 5
  end
  inherited ds: TDataSource
    DataSet = rsHorasDet
    Left = 204
    Top = 204
  end
  object rsHorasDet: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    BeforePost = rsHorasDetBeforePost
    AfterScroll = rsHorasDetAfterScroll
    OnNewRecord = rsHorasDetNewRecord
    CommandText = 'rsNomHorasDet;1'
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
      end>
    Left = 213
    Top = 264
    object rsHorasDetIdHorasDet: TGuidField
      FieldName = 'IdHorasDet'
      FixedChar = True
      Size = 38
    end
    object rsHorasDetEmpleadoId: TIntegerField
      FieldName = 'EmpleadoId'
      OnValidate = rsHorasDetEmpleadoIdValidate
    end
    object rsHorasDetCantidad: TBCDField
      FieldName = 'Cantidad'
      OnValidate = rsHorasDetCantidadValidate
      Precision = 18
      Size = 2
    end
    object rsHorasDetDesde: TDateTimeField
      FieldName = 'Desde'
      OnValidate = rsHorasDetDesdeValidate
      DisplayFormat = 'HH:mm'
    end
    object rsHorasDetHasta: TDateTimeField
      FieldName = 'Hasta'
      OnValidate = rsHorasDetHastaValidate
      DisplayFormat = 'HH:mm'
    end
    object rsHorasDetFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsHorasDetIdCentroCosto: TGuidField
      FieldName = 'IdCentroCosto'
      OnValidate = rsHorasDetIdCentroCostoValidate
      FixedChar = True
      Size = 38
    end
    object rsHorasDetCentroCosto: TStringField
      FieldName = 'CentroCosto'
      OnValidate = rsHorasDetCentroCostoValidate
      Size = 16
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
    LockType = ltReadOnly
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
  object Nominas: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = NominasCalcFields
    CommandText = 'NomNominasList;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 35
    Top = 270
    object NominasNominaID: TAutoIncField
      FieldName = 'NominaID'
      ReadOnly = True
    end
    object NominasTipoNomina: TStringField
      FieldName = 'TipoNomina'
      Size = 10
    end
    object NominasTipoEmpleado: TStringField
      FieldName = 'TipoEmpleado'
      Size = 10
    end
    object NominasFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object NominasDesde: TDateTimeField
      FieldName = 'Desde'
    end
    object NominasHasta: TDateTimeField
      FieldName = 'Hasta'
    end
    object NominasProdDesde: TDateTimeField
      FieldName = 'ProdDesde'
    end
    object NominasProdHasta: TDateTimeField
      FieldName = 'ProdHasta'
    end
    object NominasDiaFeriado: TIntegerField
      FieldName = 'DiaFeriado'
    end
    object NominasCerrada: TBooleanField
      FieldName = 'Cerrada'
    end
    object NominasTipoNominaID: TIntegerField
      FieldName = 'TipoNominaID'
    end
    object NominasTipoEmpleadoID: TAutoIncField
      FieldName = 'TipoEmpleadoID'
      ReadOnly = True
    end
    object NominasNumero: TSmallintField
      FieldName = 'Numero'
    end
    object NominasMes: TSmallintField
      FieldName = 'Mes'
    end
    object NominasISR: TBooleanField
      FieldName = 'ISR'
    end
    object NominasDatosNomina: TStringField
      FieldKind = fkCalculated
      FieldName = 'DatosNomina'
      Size = 50
      Calculated = True
    end
  end
  object dsNominas: TDataSource
    DataSet = Nominas
    Left = 32
    Top = 211
  end
  object rsCentroCosto: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
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
    Left = 68
    Top = 404
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
    Left = 66
    Top = 456
  end
  object qryHorario: TADOQuery
    Parameters = <>
    Left = 158
    Top = 350
  end
  object spHorarioFechaInicio: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    ProcedureName = 'nomHorarioInicio;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@EmpleadoId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Horas'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end>
    Left = 262
    Top = 378
    object spHorarioFechaInicioFechaInicio: TDateTimeField
      FieldName = 'FechaInicio'
      ReadOnly = True
    end
    object spHorarioFechaInicioFechaFinal: TDateTimeField
      FieldName = 'FechaFinal'
      ReadOnly = True
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
    Left = 172
    Top = 450
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
  object Openx: TOpenDialog
    DefaultExt = '*.csv'
    Left = 496
    Top = 232
  end
  object EmpleadoCodExternoAct: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'nomEmpleadoCodExternoAct;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@CodExterno'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 468
    Top = 186
    object EmpleadoCodExternoActEmpleadoID: TIntegerField
      FieldName = 'EmpleadoID'
    end
    object EmpleadoCodExternoActEmpleado: TStringField
      FieldName = 'Empleado'
      ReadOnly = True
      Size = 62
    end
  end
  object mTrans: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'EmpleadoId'
        DataType = ftInteger
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentFile = 'C:\CBSDG2007\Nomina\data.csv'
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
    PersistentFormat = kbmCSVStreamFormat1
    AllDataFormat = kbmCSVStreamFormat1
    FormFormat = kbmCSVStreamFormat1
    Left = 312
    Top = 240
    object mTransEmpleadoId: TIntegerField
      FieldName = 'EmpleadoId'
    end
    object mTransFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object mTransDesde: TDateTimeField
      FieldName = 'Desde'
    end
    object mTransHasta: TDateTimeField
      FieldName = 'Hasta'
    end
    object mTransCantidad: TFloatField
      FieldName = 'Cantidad'
    end
  end
  object dsmtrans: TDataSource
    DataSet = mTrans
    Left = 320
    Top = 298
  end
  object kbmCSVStreamFormat1: TkbmCSVStreamFormat
    CSVQuote = '"'
    CSVFieldDelimiter = ','
    CSVRecordDelimiter = #0
    CSVTrueString = 'True'
    CSVFalseString = 'False'
    sfLocalFormat = []
    sfQuoteOnlyStrings = []
    sfNoHeader = [sfLoadNoHeader]
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
    Left = 422
    Top = 308
  end
end

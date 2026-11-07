inherited CargarTxTexto: TCargarTxTexto
  Left = 463
  Top = 246
  BorderIcons = [biSystemMenu]
  Caption = 'Importar transacciones desde un archivo de texto'
  ClientHeight = 535
  ClientWidth = 733
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 6
    Top = 4
    Width = 62
    Height = 13
    Caption = 'Archivo CSV:'
  end
  object edFileName: TcxButtonEdit [1]
    Left = 6
    Top = 20
    Width = 535
    Height = 21
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
    Properties.OnEditValueChanged = edFileNamePropertiesEditValueChanged
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object cbHeaders: TcxCheckBox [2]
    Left = 548
    Top = 20
    Width = 175
    Height = 21
    TabStop = False
    Caption = 'El archivo incluye encabezados'
    Properties.ImmediatePost = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object cxButton1: TcxButton [3]
    Left = 6
    Top = 67
    Width = 103
    Height = 27
    Caption = 'Ver datos'
    TabOrder = 2
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid [4]
    Left = 6
    Top = 96
    Width = 721
    Height = 225
    TabOrder = 3
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataModeController.GridMode = True
      DataController.DataSource = DS
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1CodigoExterno: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'CodigoExterno'
        Options.Filtering = False
        Width = 113
      end
      object cxGrid1DBTableView1Nombre: TcxGridDBColumn
        DataBinding.FieldName = 'Nombre'
        Options.Filtering = False
        Width = 246
      end
      object cxGrid1DBTableView1TipoTransaccionId: TcxGridDBColumn
        Caption = 'Codigo Trans'
        DataBinding.FieldName = 'TipoTransaccionId'
        Options.Filtering = False
        Width = 47
      end
      object cxGrid1DBTableView1xCantidad: TcxGridDBColumn
        Caption = 'Cantidad'
        DataBinding.FieldName = 'xCantidad'
        Options.Filtering = False
        Width = 53
      end
      object cxGrid1DBTableView1Transaccion: TcxGridDBColumn
        Caption = 'Valor'
        DataBinding.FieldName = 'Transaccion'
        Options.Filtering = False
        Width = 67
      end
      object cxGrid1DBTableView1Nota: TcxGridDBColumn
        DataBinding.FieldName = 'Nota'
        Options.Filtering = False
        Width = 176
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxMemo1: TcxMemo [5]
    Left = 6
    Top = 324
    Width = 721
    Height = 201
    Lines.Strings = (
      'cxMemo1')
    Properties.ScrollBars = ssVertical
    Style.LookAndFeel.NativeStyle = True
    Style.TextColor = clMaroon
    TabOrder = 4
  end
  object cxButton2: TcxButton [6]
    Left = 140
    Top = 67
    Width = 103
    Height = 27
    Caption = 'Importar'
    TabOrder = 5
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [7]
    Left = 624
    Top = 67
    Width = 103
    Height = 27
    Caption = 'Salir'
    TabOrder = 6
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object pbar: TProgressBar [8]
    Left = 258
    Top = 73
    Width = 353
    Height = 17
    TabOrder = 7
  end
  object cbCodExt: TcxCheckBox [9]
    Left = 6
    Top = 41
    Width = 175
    Height = 21
    TabStop = False
    Caption = 'Usar codigo externo'
    Properties.ImmediatePost = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 8
  end
  inherited DS: TwwDataSource
    DataSet = mTrans
  end
  object Openx: TOpenDialog
    DefaultExt = '*.txt'
    Left = 560
    Top = 130
  end
  object spInsTrans: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'nomInsTransaccion;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@NominaId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@EmpleadoId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Monto'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@TipoTransaccionId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Nota'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@xCantidad'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 218
    Top = 130
  end
  object mTrans: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'CodigoExterno'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TipoTransaccionId'
        DataType = ftInteger
      end
      item
        Name = 'Transaccion'
        DataType = ftFloat
      end
      item
        Name = 'Nota'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'xCantidad'
        DataType = ftFloat
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
    DefaultFormat = kbmFormatTrans
    CommaTextFormat = kbmFormatTrans
    PersistentFormat = kbmFormatTrans
    AllDataFormat = kbmFormatTrans
    FormFormat = kbmFormatTrans
    Left = 332
    Top = 88
    object mTransCodigoExterno: TStringField
      FieldName = 'CodigoExterno'
      Size = 30
    end
    object mTransNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object mTransTipoTransaccionId: TIntegerField
      FieldName = 'TipoTransaccionId'
    end
    object mTransTransaccion: TStringField
      FieldName = 'Transaccion'
    end
    object mTransNota: TStringField
      FieldName = 'Nota'
      Size = 50
    end
    object mTransxCantidad: TFloatField
      FieldName = 'xCantidad'
    end
  end
  object kbmFormatTrans: TkbmCSVStreamFormat
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
    Left = 333
    Top = 136
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
    Left = 52
    Top = 302
    object EmpleadoCodExternoActEmpleadoID: TIntegerField
      FieldName = 'EmpleadoID'
    end
    object EmpleadoCodExternoActEmpleado: TStringField
      FieldName = 'Empleado'
      ReadOnly = True
      Size = 62
    end
  end
  object rsBuscarTrans: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'select * from tipotransaccion'
    Parameters = <>
    Left = 58
    Top = 182
    object rsBuscarTransTipoTransaccionID: TIntegerField
      FieldName = 'TipoTransaccionID'
    end
    object rsBuscarTransTipoTransaccion: TStringField
      FieldName = 'TipoTransaccion'
      Size = 50
    end
    object rsBuscarTransDebito: TBooleanField
      FieldName = 'Debito'
    end
    object rsBuscarTransCotizable: TBooleanField
      FieldName = 'Cotizable'
    end
    object rsBuscarTransTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object rsBuscarTransValor: TFloatField
      FieldName = 'Valor'
    end
    object rsBuscarTransAdelanto: TBooleanField
      FieldName = 'Adelanto'
    end
    object rsBuscarTransProgramada: TBooleanField
      FieldName = 'Programada'
    end
    object rsBuscarTransMultiplo: TBCDField
      FieldName = 'Multiplo'
      Precision = 16
      Size = 6
    end
    object rsBuscarTransNota: TStringField
      FieldName = 'Nota'
      Size = 60
    end
    object rsBuscarTransOrden: TIntegerField
      FieldName = 'Orden'
    end
    object rsBuscarTransClasificacion: TIntegerField
      FieldName = 'Clasificacion'
    end
    object rsBuscarTransRegalia: TBooleanField
      FieldName = 'Regalia'
    end
    object rsBuscarTransISRno: TBooleanField
      FieldName = 'ISRno'
    end
    object rsBuscarTransLiquidacion: TBooleanField
      FieldName = 'Liquidacion'
    end
    object rsBuscarTransuidTipoTransaccion: TGuidField
      FieldName = 'uidTipoTransaccion'
      FixedChar = True
      Size = 38
    end
    object rsBuscarTransProyectarIngreso: TBooleanField
      FieldName = 'ProyectarIngreso'
    end
  end
  object rsBuscarTx: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 
      'select * from transaccion'#13#10'where nominaid=:NominaID and Empleado' +
      'ID = :EmpleadoID'#13#10'and TipoTransaccionID = :TipoTransaccionID'
    Parameters = <
      item
        Name = 'NominaID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'EmpleadoID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'TipoTransaccionID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 438
    Top = 202
  end
end

inherited EntradaDiario: TEntradaDiario
  Left = 799
  Top = 192
  Caption = 'Entrada de Diario para Nomina'
  ClientHeight = 569
  ClientWidth = 868
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 295
    Top = 6
    Width = 477
    Height = 31
    Caption = 
      'Las configuraciones generales seran heredadas por los departamen' +
      'tos y secciones a menos que se ponga la configuracion es los mis' +
      'mos especificamente'
    WordWrap = True
  end
  object Label1: TLabel [1]
    Left = 295
    Top = 38
    Width = 477
    Height = 39
    Caption = 
      'Las configuraciones de los departamentos seran usadas por sus se' +
      'cciones a menos que se ponga la configuracion en la seccion espe' +
      'cifica '
    WordWrap = True
  end
  object Label3: TLabel [2]
    Left = 294
    Top = 98
    Width = 517
    Height = 13
    Caption = 
      'Configuracion general de Cuentas (Heredada por los departamentos' +
      ' y secciones que no tienen configuracion)'
  end
  object Label4: TLabel [3]
    Left = 294
    Top = 245
    Width = 509
    Height = 13
    Caption = 
      'Configuracion departamental de Cuentas (heredada por sus seccion' +
      'es si no tienen configuracion especifica)'
  end
  object Label5: TLabel [4]
    Left = 295
    Top = 70
    Width = 564
    Height = 16
    Caption = 
      'No es requerido codificar la cuenta de nomina por pagar pues est' +
      'o se hace automaticamente'
    WordWrap = True
  end
  object Button1: TButton [5]
    Left = 784
    Top = 12
    Width = 67
    Height = 53
    Caption = '&Salir'
    TabOrder = 0
    OnClick = Button1Click
  end
  object cxGrid1: TcxGrid [6]
    Left = 10
    Top = 8
    Width = 273
    Height = 231
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    LookAndFeel.NativeStyle = True
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      DataController.DataSource = dsTipoTransaccion
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ScrollBars = ssVertical
      OptionsView.ColumnAutoWidth = True
      OptionsView.GridLines = glVertical
      OptionsView.GroupByBox = False
      OptionsView.BandHeaders = False
      Bands = <
        item
        end>
      object cxGrid1DBBandedTableView1TipoTransaccionID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TipoTransaccionID'
        Options.Filtering = False
        Width = 69
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1TipoTransaccion: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TipoTransaccion'
        Options.Filtering = False
        Width = 273
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Debito: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Debito'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Options.Filtering = False
        Width = 88
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Tipo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Tipo'
        Options.Filtering = False
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView1
    end
  end
  object cxGrid2: TcxGrid [7]
    Left = 10
    Top = 260
    Width = 275
    Height = 139
    TabOrder = 2
    LookAndFeel.NativeStyle = True
    object cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
      DataController.DataSource = DS
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ScrollBars = ssVertical
      OptionsView.GridLines = glVertical
      OptionsView.GroupByBox = False
      OptionsView.BandHeaders = False
      Bands = <
        item
        end
        item
        end>
      object cxGrid2DBBandedTableView1DepartamentoID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DepartamentoID'
        Options.Filtering = False
        Width = 47
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid2DBBandedTableView1Departamento: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Departamento'
        Options.Filtering = False
        Width = 184
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBBandedTableView1
    end
  end
  object cxGrid3: TcxGrid [8]
    Left = 8
    Top = 413
    Width = 279
    Height = 150
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 3
    LookAndFeel.NativeStyle = True
    object cxGrid3DBBandedTableView1: TcxGridDBBandedTableView
      DataController.DataSource = DsSeccion
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ScrollBars = ssVertical
      OptionsView.GridLines = glVertical
      OptionsView.GroupByBox = False
      OptionsView.BandHeaders = False
      Bands = <
        item
        end
        item
        end>
      object cxGrid3DBBandedTableView1SeccionID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SeccionID'
        Options.Filtering = False
        Width = 46
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid3DBBandedTableView1Seccion: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Seccion'
        Options.Filtering = False
        Width = 187
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object cxGrid3Level1: TcxGridLevel
      GridView = cxGrid3DBBandedTableView1
    end
  end
  object cxGrid4: TcxGrid [9]
    Left = 294
    Top = 259
    Width = 567
    Height = 140
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 4
    OnEnter = cxGrid4Enter
    LookAndFeel.NativeStyle = True
    object cxGrid4DBBandedTableView1: TcxGridDBBandedTableView
      DataController.DataSource = dsEntradaDiariosd
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsSelection.HideSelection = True
      OptionsView.ScrollBars = ssVertical
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.BandHeaders = False
      Bands = <
        item
        end>
      object cxGrid4DBBandedTableView1Cuenta: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Cuenta'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGrid4DBBandedTableView1CuentaPropertiesButtonClick
        Options.Filtering = False
        Width = 109
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid4DBBandedTableView1Debito: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Debito'
        Options.Filtering = False
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid4DBBandedTableView1Porciento: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Porciento'
        Options.Filtering = False
        Width = 35
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid4DBBandedTableView1idFactorDistrib: TcxGridDBBandedColumn
        DataBinding.FieldName = 'idFactorDistrib'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'idFactorDistrib'
        Properties.ListColumns = <
          item
            FieldName = 'Descripcion'
          end>
        Properties.ListSource = dsFactores
        Options.Filtering = False
        Width = 181
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid4DBBandedTableView1Descripcion: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Descripcion'
        Options.Filtering = False
        Width = 115
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid4DBBandedTableView1Maximo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Maximo'
        Options.Filtering = False
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object cxGrid4Level1: TcxGridLevel
      GridView = cxGrid4DBBandedTableView1
    end
  end
  object cxGrid5: TcxGrid [10]
    Left = 294
    Top = 414
    Width = 567
    Height = 148
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 5
    OnEnter = cxGrid5Enter
    LookAndFeel.NativeStyle = True
    object cxGrid5DBBandedTableView1: TcxGridDBBandedTableView
      DataController.DataSource = dsEntradaDiarioss
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsSelection.HideSelection = True
      OptionsView.ScrollBars = ssVertical
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.BandHeaders = False
      Bands = <
        item
        end>
      object cxGrid5DBBandedTableView1Cuenta: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Cuenta'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGrid5DBBandedTableView1CuentaPropertiesButtonClick
        Options.Filtering = False
        Width = 114
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid5DBBandedTableView1Debito: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Debito'
        Options.Filtering = False
        Width = 68
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid5DBBandedTableView1Porciento: TcxGridDBBandedColumn
        Caption = '%'
        DataBinding.FieldName = 'Porciento'
        Options.Filtering = False
        Width = 31
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid5DBBandedTableView1idFactorDistrib: TcxGridDBBandedColumn
        Caption = 'Factor Dist'
        DataBinding.FieldName = 'idFactorDistrib'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'idFactorDistrib'
        Properties.ListColumns = <
          item
            FieldName = 'Descripcion'
          end>
        Properties.ListSource = dsFactores
        Options.Filtering = False
        Width = 192
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid5DBBandedTableView1Descripcion: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Descripcion'
        Options.Filtering = False
        Width = 105
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid5DBBandedTableView1Maximo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Maximo'
        Options.Filtering = False
        Width = 55
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object cxGrid5Level1: TcxGridLevel
      GridView = cxGrid5DBBandedTableView1
    end
  end
  object cxGrid6: TcxGrid [11]
    Left = 294
    Top = 111
    Width = 567
    Height = 128
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 6
    OnEnter = cxGrid6Enter
    LookAndFeel.NativeStyle = True
    object cxGridDBBandedTableView1: TcxGridDBBandedTableView
      DataController.DataSource = dsEntradadiarioE
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsSelection.HideSelection = True
      OptionsView.ScrollBars = ssVertical
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.BandHeaders = False
      Bands = <
        item
        end>
      object cxGridDBBandedColumn1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Cuenta'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGridDBBandedColumn1PropertiesButtonClick
        Options.Filtering = False
        Width = 106
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Debito'
        Options.Filtering = False
        Width = 66
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn3: TcxGridDBBandedColumn
        Caption = '%'
        DataBinding.FieldName = 'Porciento'
        Options.Filtering = False
        Width = 33
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn4: TcxGridDBBandedColumn
        Caption = 'Factor'
        DataBinding.FieldName = 'idFactorDistrib'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'idFactorDistrib'
        Properties.ListColumns = <
          item
            FieldName = 'Descripcion'
          end>
        Properties.ListSource = dsFactores
        Options.Filtering = False
        Width = 178
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn5: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Descripcion'
        Options.Filtering = False
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn6: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Maximo'
        Options.Filtering = False
        Width = 62
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBBandedTableView1
    end
  end
  object EntradaDiariod: TADODataSet [12]
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    BeforePost = EntradaDiariodBeforePost
    OnNewRecord = EntradaDiariodNewRecord
    CommandText = 'nomEntradaDiarioD;1'
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
        Name = '@DepartamentoID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@TipoTransaccionID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 316
    Top = 305
    object EntradaDiariodPorciento: TBCDField
      DisplayLabel = '%'
      DisplayWidth = 4
      FieldName = 'Porciento'
      Precision = 18
      Size = 2
    end
    object EntradaDiariodCuenta: TStringField
      DisplayWidth = 10
      FieldName = 'Cuenta'
      OnValidate = EntradaDiariodCuentaValidate
      Size = 50
    end
    object EntradaDiariodDebito: TBooleanField
      DisplayWidth = 5
      FieldName = 'Debito'
    end
    object EntradaDiariodDescripcion: TStringField
      DisplayWidth = 17
      FieldName = 'Descripcion'
      Size = 50
    end
    object EntradaDiariodMaximo: TBCDField
      DisplayWidth = 12
      FieldName = 'Maximo'
      Precision = 19
      Size = 2
    end
    object EntradaDiariodidFactorDistrib: TStringField
      DisplayLabel = 'Factor Dist'
      DisplayWidth = 10
      FieldName = 'idFactorDistrib'
      Visible = False
      Size = 16
    end
    object EntradaDiariodSeccionID: TIntegerField
      DisplayWidth = 10
      FieldName = 'SeccionID'
      Visible = False
    end
    object EntradaDiariodidEntradaDiario: TGuidField
      DisplayWidth = 38
      FieldName = 'idEntradaDiario'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object EntradaDiariodTipoTransaccionID: TIntegerField
      DisplayWidth = 10
      FieldName = 'TipoTransaccionID'
      Visible = False
    end
    object EntradaDiariodDepartamentoID: TIntegerField
      FieldName = 'DepartamentoID'
    end
  end
  object dsEntradaDiariosd: TDataSource [13]
    DataSet = EntradaDiariod
    Left = 352
    Top = 359
  end
  inherited DS: TwwDataSource
    DataSet = Departamento
    Left = 165
    Top = 303
  end
  object DsSeccion: TwwDataSource
    DataSet = Seccion
    Left = 138
    Top = 406
  end
  object Seccion: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = SeccionAfterScroll
    CommandText = 'Seccion'
    CommandType = cmdTable
    DataSource = DS
    IndexFieldNames = 'DepartamentoID'
    MasterFields = 'DepartamentoID'
    Parameters = <>
    Left = 66
    Top = 410
    object SeccionSeccionID: TIntegerField
      DisplayLabel = 'Sec'
      DisplayWidth = 8
      FieldName = 'SeccionID'
    end
    object SeccionSeccion: TStringField
      DisplayWidth = 28
      FieldName = 'Seccion'
    end
    object SeccionDepartamentoID: TIntegerField
      DisplayWidth = 10
      FieldName = 'DepartamentoID'
      Visible = False
    end
    object SeccionOrden: TIntegerField
      DisplayWidth = 10
      FieldName = 'Orden'
      Visible = False
    end
  end
  object Departamento: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = SeccionAfterScroll
    CommandText = 'Departamento'
    CommandType = cmdTable
    Parameters = <>
    Left = 224
    Top = 278
    object DepartamentoDepartamentoID: TIntegerField
      DisplayLabel = 'Dep'
      DisplayWidth = 8
      FieldName = 'DepartamentoID'
    end
    object DepartamentoDepartamento: TStringField
      DisplayWidth = 28
      FieldName = 'Departamento'
      Size = 30
    end
    object DepartamentoOrden: TIntegerField
      DisplayWidth = 10
      FieldName = 'Orden'
      Visible = False
    end
  end
  object TipoTransaccion: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = SeccionAfterScroll
    CommandText = 'TipoTransaccion'
    CommandType = cmdTable
    Parameters = <>
    Left = 42
    Top = 48
    object TipoTransaccionTipoTransaccionID: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'TipoTransaccionID'
    end
    object TipoTransaccionTipoTransaccion: TStringField
      DisplayLabel = 'Transaccion'
      DisplayWidth = 27
      FieldName = 'TipoTransaccion'
      Size = 50
    end
    object TipoTransaccionDebito: TBooleanField
      DisplayLabel = 'Ingreso'
      DisplayWidth = 6
      FieldName = 'Debito'
    end
    object TipoTransaccionTipo: TStringField
      DisplayWidth = 4
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object TipoTransaccionCotizable: TBooleanField
      DisplayWidth = 5
      FieldName = 'Cotizable'
      Visible = False
    end
    object TipoTransaccionValor: TBCDField
      DisplayWidth = 19
      FieldName = 'Valor'
      Visible = False
      Precision = 18
    end
    object TipoTransaccionAdelanto: TBooleanField
      DisplayWidth = 5
      FieldName = 'Adelanto'
      Visible = False
    end
    object TipoTransaccionProgramada: TBooleanField
      DisplayWidth = 5
      FieldName = 'Programada'
      Visible = False
    end
    object TipoTransaccionMultiplo: TBCDField
      DisplayWidth = 17
      FieldName = 'Multiplo'
      Visible = False
      Precision = 16
      Size = 2
    end
    object TipoTransaccionNota: TStringField
      DisplayWidth = 60
      FieldName = 'Nota'
      Visible = False
      Size = 60
    end
    object TipoTransaccionOrden: TIntegerField
      DisplayWidth = 10
      FieldName = 'Orden'
      Visible = False
    end
  end
  object dsTipoTransaccion: TDataSource
    DataSet = TipoTransaccion
    Left = 72
    Top = 102
  end
  object Factores: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'Select * from FactorDistrib order by idfactordistrib'
    Parameters = <>
    Left = 506
    Top = 152
  end
  object dsFactores: TDataSource
    DataSet = Factores
    Left = 556
    Top = 170
  end
  object dsEntradaDiarioss: TDataSource
    DataSet = EntradaDiarios
    Left = 406
    Top = 497
  end
  object EntradaDiarios: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    BeforePost = EntradaDiariosBeforePost
    OnNewRecord = EntradaDiariosNewRecord
    CommandText = 'nomEntradaDiarioS;1'
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
        Name = '@SeccionID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@TipoTransaccionID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 340
    Top = 481
    object EntradaDiariosidEntradaDiario: TGuidField
      FieldName = 'idEntradaDiario'
      FixedChar = True
      Size = 38
    end
    object EntradaDiariosSeccionID: TIntegerField
      FieldName = 'SeccionID'
    end
    object EntradaDiariosDepartamentoID: TIntegerField
      FieldName = 'DepartamentoID'
    end
    object EntradaDiariosTipoTransaccionID: TIntegerField
      FieldName = 'TipoTransaccionID'
    end
    object EntradaDiariosPorciento: TBCDField
      FieldName = 'Porciento'
      Precision = 18
    end
    object EntradaDiariosCuenta: TStringField
      FieldName = 'Cuenta'
      OnValidate = EntradaDiariosCuentaValidate
      Size = 50
    end
    object EntradaDiariosDebito: TBooleanField
      FieldName = 'Debito'
    end
    object EntradaDiariosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object EntradaDiariosidFactorDistrib: TStringField
      FieldName = 'idFactorDistrib'
      Size = 16
    end
    object EntradaDiariosMaximo: TBCDField
      FieldName = 'Maximo'
      Precision = 19
      Size = 2
    end
  end
  object EntradadiarioE: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    BeforePost = EntradadiarioEBeforePost
    OnNewRecord = EntradadiarioENewRecord
    CommandText = 'nomEntradaDiarioE;1'
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
        Name = '@TipoTransaccionID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 336
    Top = 143
    object EntradadiarioEidEntradaDiario: TGuidField
      FieldName = 'idEntradaDiario'
      FixedChar = True
      Size = 38
    end
    object EntradadiarioESeccionID: TIntegerField
      FieldName = 'SeccionID'
    end
    object EntradadiarioEDepartamentoID: TIntegerField
      FieldName = 'DepartamentoID'
    end
    object EntradadiarioETipoTransaccionID: TIntegerField
      FieldName = 'TipoTransaccionID'
    end
    object EntradadiarioEPorciento: TBCDField
      FieldName = 'Porciento'
      Precision = 18
    end
    object EntradadiarioECuenta: TStringField
      FieldName = 'Cuenta'
      OnValidate = EntradadiarioECuentaValidate
      Size = 16
    end
    object EntradadiarioEDebito: TBooleanField
      FieldName = 'Debito'
    end
    object EntradadiarioEDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object EntradadiarioEidFactorDistrib: TStringField
      FieldName = 'idFactorDistrib'
      Size = 16
    end
    object EntradadiarioEMaximo: TBCDField
      FieldName = 'Maximo'
      Precision = 19
      Size = 2
    end
  end
  object dsEntradadiarioE: TDataSource
    DataSet = EntradadiarioE
    Left = 396
    Top = 175
  end
end

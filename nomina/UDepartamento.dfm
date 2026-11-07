inherited Departamento: TDepartamento
  Left = 524
  Top = 205
  Caption = 'Departamentos'
  ClientHeight = 504
  ClientWidth = 623
  Color = clBtnFace
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton [0]
    Left = 473
    Top = 478
    Width = 145
    Height = 25
    Caption = '&Salir'
    TabOrder = 0
    OnClick = Button1Click
  end
  object cxGrid1: TcxGrid [1]
    Left = 8
    Top = 4
    Width = 611
    Height = 225
    TabOrder = 1
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.KeyFieldNames = 'DepartamentoID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1DepartamentoID: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'DepartamentoID'
        Options.Filtering = False
        Width = 48
      end
      object cxGrid1DBTableView1Departamento: TcxGridDBColumn
        DataBinding.FieldName = 'Departamento'
        Options.Filtering = False
        Width = 190
      end
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'UsuarioSuperv'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'idSegUserGrp'
        Properties.ListColumns = <
          item
            FieldName = 'idSegUserGrp'
          end>
        Properties.ListSource = dsusuarios
        Width = 133
      end
      object cxGrid1DBTableView1idDireccion: TcxGridDBColumn
        Caption = 'Direccion'
        DataBinding.FieldName = 'idDireccion'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'idDireccion'
        Properties.ListColumns = <
          item
            FieldName = 'Direccion'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsDir
        Options.Filtering = False
        Width = 133
      end
      object cxGrid1DBTableView1Orden: TcxGridDBColumn
        DataBinding.FieldName = 'Orden'
        Options.Filtering = False
        Width = 46
      end
      object cxGrid1DBTableView1PorcPropina: TcxGridDBColumn
        Caption = '% Propina'
        DataBinding.FieldName = 'PorcPropina'
        Options.Filtering = False
        Width = 59
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGrid2: TcxGrid [2]
    Left = 8
    Top = 234
    Width = 611
    Height = 239
    TabOrder = 2
    LookAndFeel.NativeStyle = True
    object cxGridDBTableView1: TcxGridDBTableView
      DataController.DataSource = DsSeccion
      DataController.KeyFieldNames = 'SeccionID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGridDBTableView1SeccionID: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'SeccionID'
        Options.Filtering = False
      end
      object cxGridDBTableView1Seccion: TcxGridDBColumn
        DataBinding.FieldName = 'Seccion'
        Options.Filtering = False
        Width = 151
      end
      object cxGridDBTableView1DBColumn1: TcxGridDBColumn
        Caption = 'Descripci'#243'n Larga'
        DataBinding.FieldName = 'SeccionDesc'
        Options.Filtering = False
        Width = 309
      end
      object cxGridDBTableView1Orden: TcxGridDBColumn
        DataBinding.FieldName = 'Orden'
        Options.Filtering = False
      end
      object cxGridDBTableView1DBColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'CentroCosto'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGridDBTableView1DBColumn2PropertiesButtonClick
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  inherited DS: TwwDataSource
    AutoEdit = True
    DataSet = Departamento
    Left = 101
    Top = 101
  end
  object DsSeccion: TwwDataSource
    DataSet = Seccion
    Left = 144
    Top = 392
  end
  object Departamento: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    BeforePost = DepartamentoBeforePost
    OnNewRecord = DepartamentoNewRecord
    CommandText = 'Departamento'
    CommandType = cmdTable
    Parameters = <>
    Left = 104
    Top = 160
    object DepartamentoDepartamentoID: TIntegerField
      DisplayWidth = 13
      FieldName = 'DepartamentoID'
    end
    object DepartamentoDepartamento: TStringField
      DisplayWidth = 35
      FieldName = 'Departamento'
      Size = 30
    end
    object DepartamentoOrden: TIntegerField
      DisplayWidth = 10
      FieldName = 'Orden'
    end
    object DepartamentoPorcPropina: TFloatField
      DisplayWidth = 10
      FieldName = 'PorcPropina'
    end
    object DepartamentoidDireccion: TGuidField
      DisplayWidth = 38
      FieldName = 'idDireccion'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object DepartamentouDepartamento: TGuidField
      DisplayWidth = 38
      FieldName = 'uDepartamento'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object DepartamentoUsuarioSuperv: TStringField
      DisplayLabel = 'Supervisor'
      FieldName = 'UsuarioSuperv'
      Size = 30
    end
  end
  object Seccion: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    BeforePost = SeccionBeforePost
    OnNewRecord = SeccionNewRecord
    CommandText = 'Seccion'
    CommandType = cmdTable
    DataSource = DS
    IndexFieldNames = 'DepartamentoID'
    MasterFields = 'DepartamentoID'
    Parameters = <>
    Left = 144
    Top = 336
    object SeccionSeccionID: TIntegerField
      DisplayWidth = 10
      FieldName = 'SeccionID'
    end
    object SeccionSeccion: TStringField
      DisplayWidth = 45
      FieldName = 'Seccion'
      Size = 16
    end
    object SeccionOrden: TIntegerField
      DisplayWidth = 10
      FieldName = 'Orden'
    end
    object SeccionDepartamentoID: TIntegerField
      DisplayWidth = 10
      FieldName = 'DepartamentoID'
      Visible = False
    end
    object SeccionuSeccion: TGuidField
      DisplayWidth = 38
      FieldName = 'uSeccion'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object SeccionSeccionDesc: TStringField
      FieldName = 'SeccionDesc'
      Size = 50
    end
    object SeccionidCentroCosto: TGuidField
      FieldName = 'idCentroCosto'
      OnValidate = SeccionidCentroCostoValidate
      FixedChar = True
      Size = 38
    end
    object SeccionCentroCosto: TStringField
      FieldName = 'CentroCosto'
      OnValidate = SeccionCentroCostoValidate
      Size = 16
    end
  end
  object rsDir: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'nomrsDireccion'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 282
    Top = 82
    object rsDiridDireccion: TGuidField
      FieldName = 'idDireccion'
      FixedChar = True
      Size = 38
    end
    object rsDirDireccion: TStringField
      FieldName = 'Direccion'
      Size = 100
    end
  end
  object dsDir: TDataSource
    DataSet = rsDir
    Left = 282
    Top = 134
  end
  object dsusuarios: TDataSource
    DataSet = Usuario
    Left = 280
    Top = 288
  end
  object Usuario: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select * from cbsrepository..SegUserGrp where esGrupo = 0'
    Parameters = <>
    Left = 280
    Top = 348
    object UsuarioidSegUserGrp: TStringField
      FieldName = 'idSegUserGrp'
      Size = 30
    end
    object UsuarioClave: TStringField
      FieldName = 'Clave'
      Size = 10
    end
    object UsuarioesGrupo: TBooleanField
      FieldName = 'esGrupo'
    end
    object UsuarioObjetoDefault: TStringField
      FieldName = 'ObjetoDefault'
      Size = 50
    end
    object UsuarioActivo: TBooleanField
      FieldName = 'Activo'
    end
    object UsuarioNivel: TIntegerField
      FieldName = 'Nivel'
    end
  end
  object spCentroCostoAct: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'CostCentroCostoAct;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
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
    Left = 530
    Top = 302
    object spCentroCostoActidCentroCosto: TGuidField
      FieldName = 'idCentroCosto'
      FixedChar = True
      Size = 38
    end
    object spCentroCostoActCentroCosto: TStringField
      FieldName = 'CentroCosto'
      Size = 16
    end
  end
end

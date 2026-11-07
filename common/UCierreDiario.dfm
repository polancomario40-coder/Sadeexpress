inherited CierreDiario: TCierreDiario
  Left = 352
  Top = 208
  Caption = 'Cierre Diario'
  ClientHeight = 308
  ClientWidth = 704
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 36
    Top = 24
    Width = 30
    Height = 13
    Caption = 'Fecha'
  end
  object Desde: TdxDateEdit [1]
    Left = 74
    Top = 20
    Width = 121
    TabOrder = 0
    StyleController = dm.dxEstilo
    Date = -700000.000000000000000000
  end
  object BitBtn1: TBitBtn [2]
    Left = 124
    Top = 276
    Width = 84
    Height = 25
    Caption = 'Salir'
    TabOrder = 1
    Kind = bkCancel
  end
  object BitBtn2: TBitBtn [3]
    Left = 6
    Top = 276
    Width = 84
    Height = 25
    Caption = 'Procesar'
    TabOrder = 2
    OnClick = BitBtn2Click
    Kind = bkOK
  end
  object Cerrar: TdxCheckEdit [4]
    Left = 75
    Top = 52
    Width = 120
    TabOrder = 3
    Alignment = taRightJustify
    Caption = 'Cerrar'
    StyleController = dm.dxEstilo
    OnChange = CerrarChange
    State = cbsChecked
    StoredValues = 1
  end
  object cxGrid1: TcxGrid [5]
    Left = 222
    Top = 4
    Width = 481
    Height = 299
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 4
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsModuloCierre
      DataController.KeyFieldNames = 'Modulo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Cerrar: TcxGridDBColumn
        DataBinding.FieldName = 'Cerrar'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Width = 66
      end
      object cxGrid1DBTableView1Modulo: TcxGridDBColumn
        DataBinding.FieldName = 'Modulo'
        Options.Editing = False
        Width = 72
      end
      object cxGrid1DBTableView1nombre: TcxGridDBColumn
        Caption = 'Descripcion'
        DataBinding.FieldName = 'nombre'
        Options.Editing = False
        Width = 129
      end
      object cxGrid1DBTableView1DiaCierre: TcxGridDBColumn
        Caption = 'Ult Cierre'
        DataBinding.FieldName = 'DiaCierre'
        Options.Editing = False
        Width = 96
      end
      object cxGrid1DBTableView1Activo: TcxGridDBColumn
        DataBinding.FieldName = 'Activo'
        Options.Editing = False
        Width = 42
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited DS: TwwDataSource
    DataSet = Modulo
    Left = 45
  end
  object CerrarAbrirModulo: TADOCommand
    CommandText = 'SPCerrarAbrirModulo;1'
    CommandTimeout = 120
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@Modulo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
      end
      item
        Name = '@Cierre'
        Attributes = [paNullable]
        DataType = ftDateTime
      end
      item
        Name = '@Accion'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end>
    Left = 54
    Top = 86
  end
  object Modulo: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cgCierreModulo;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 52
    Top = 132
    object ModuloNombre: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
    object ModuloActivo: TBooleanField
      FieldName = 'Activo'
    end
    object ModuloModulo: TStringField
      FieldName = 'Modulo'
      Size = 15
    end
    object ModuloDiaCierre: TDateTimeField
      FieldName = 'DiaCierre'
    end
  end
  object dsModuloCierre: TDataSource
    DataSet = ModuloCierre
    Left = 160
    Top = 148
  end
  object ModuloCierre: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'nombre'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Activo'
        Attributes = [faFixed]
        DataType = ftBoolean
      end
      item
        Name = 'Modulo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DiaCierre'
        Attributes = [faFixed]
        DataType = ftDateTime
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
    BeforeEdit = ModuloCierreBeforeEdit
    Left = 160
    Top = 86
    object ModuloCierreCerrar: TBooleanField
      DefaultExpression = 'false'
      FieldName = 'Cerrar'
    end
    object ModuloCierreModulo: TStringField
      FieldName = 'Modulo'
    end
    object ModuloCierrenombre: TStringField
      FieldName = 'nombre'
    end
    object ModuloCierreActivo: TBooleanField
      FieldName = 'Activo'
    end
    object ModuloCierreDiaCierre: TDateTimeField
      FieldName = 'DiaCierre'
    end
  end
end

inherited ClienteDireccion: TClienteDireccion
  Left = 464
  Top = 255
  Caption = 'Direcciones'
  ClientHeight = 388
  ClientWidth = 811
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 5
    Top = 52
    Width = 37
    Height = 13
    Caption = 'Codigo:'
  end
  object Label3: TLabel [1]
    Left = 185
    Top = 52
    Width = 47
    Height = 13
    Caption = 'Direccion:'
  end
  object Label4: TLabel [2]
    Left = 388
    Top = 76
    Width = 35
    Height = 13
    Caption = 'Sector:'
  end
  object Label5: TLabel [3]
    Left = 5
    Top = 76
    Width = 37
    Height = 13
    Caption = 'Ciudad:'
  end
  object Label6: TLabel [4]
    Left = 5
    Top = 100
    Width = 46
    Height = 13
    Caption = 'Telefono:'
  end
  object Label7: TLabel [5]
    Left = 188
    Top = 100
    Width = 22
    Height = 13
    Caption = 'Fax:'
  end
  object Label8: TLabel [6]
    Left = 388
    Top = 100
    Width = 37
    Height = 13
    Caption = 'Celular:'
  end
  object Label9: TLabel [7]
    Left = 5
    Top = 124
    Width = 48
    Height = 13
    Caption = 'Contacto:'
  end
  object Label11: TLabel [8]
    Left = 388
    Top = 124
    Width = 24
    Height = 13
    Caption = 'Zona'
  end
  object cxDBLabel1: TcxDBLabel [9]
    Left = 8
    Top = 8
    Width = 162
    Height = 37
    AutoSize = True
    DataBinding.DataField = 'Cliente'
    DataBinding.DataSource = dsClienteAct
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = 16753994
    Style.Font.Height = -27
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
  end
  object cxGrid2: TcxGrid [10]
    Left = 6
    Top = 145
    Width = 804
    Height = 202
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 9
    LookAndFeel.NativeStyle = True
    object cxGridDBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.KeyFieldNames = 'idClienteObra'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGridDBTableView1DireccionObra: TcxGridDBColumn
        Caption = 'Direccion'
        DataBinding.FieldName = 'DireccionObra'
        Options.Filtering = False
        Width = 188
      end
      object cxGridDBTableView1CiudadObra: TcxGridDBColumn
        Caption = 'Ciudad'
        DataBinding.FieldName = 'CiudadObra'
        Options.Filtering = False
        Width = 55
      end
      object cxGridDBTableView1SectorObra: TcxGridDBColumn
        Caption = 'Sector'
        DataBinding.FieldName = 'SectorObra'
        Options.Filtering = False
        Width = 54
      end
      object cxGridDBTableView1ContactoObra: TcxGridDBColumn
        Caption = 'Contacto'
        DataBinding.FieldName = 'ContactoObra'
        Options.Filtering = False
        Width = 68
      end
      object cxGridDBTableView1TelefonoObra: TcxGridDBColumn
        Caption = 'Telefono'
        DataBinding.FieldName = 'TelefonoObra'
        Options.Filtering = False
        Width = 55
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object edCod: TcxDBTextEdit [11]
    Left = 56
    Top = 48
    Width = 121
    Height = 21
    DataBinding.DataField = 'idClienteObra'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object cxDBTextEdit2: TcxDBTextEdit [12]
    Left = 236
    Top = 48
    Width = 567
    Height = 21
    DataBinding.DataField = 'DireccionObra'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object cxDBTextEdit3: TcxDBTextEdit [13]
    Left = 56
    Top = 72
    Width = 303
    Height = 21
    DataBinding.DataField = 'CiudadObra'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object cxDBTextEdit4: TcxDBTextEdit [14]
    Left = 428
    Top = 72
    Width = 305
    Height = 21
    DataBinding.DataField = 'SectorObra'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  object cxDBTextEdit5: TcxDBTextEdit [15]
    Left = 56
    Top = 96
    Width = 121
    Height = 21
    DataBinding.DataField = 'TelefonoObra'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object cxDBTextEdit6: TcxDBTextEdit [16]
    Left = 238
    Top = 96
    Width = 121
    Height = 21
    DataBinding.DataField = 'FaxObra'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  object cxDBTextEdit7: TcxDBTextEdit [17]
    Left = 428
    Top = 96
    Width = 121
    Height = 21
    DataBinding.DataField = 'CelularObra'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 15
  end
  object cxDBTextEdit8: TcxDBTextEdit [18]
    Left = 56
    Top = 120
    Width = 303
    Height = 21
    DataBinding.DataField = 'ContactoObra'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 7
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [19]
    Left = 428
    Top = 120
    Width = 145
    Height = 21
    DataBinding.DataField = 'idZona'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'idZona'
    Properties.ListColumns = <
      item
        FieldName = 'Zona'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsZonaTrans
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 8
  end
  object btNew: TcxButton [20]
    Left = 4
    Top = 351
    Width = 91
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Nueva'
    TabOrder = 10
    OnClick = btNewClick
    LookAndFeel.NativeStyle = True
  end
  object btEdit: TcxButton [21]
    Left = 128
    Top = 351
    Width = 91
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Editar'
    TabOrder = 11
    OnClick = btEditClick
    LookAndFeel.NativeStyle = True
  end
  object btSave: TcxButton [22]
    Left = 242
    Top = 351
    Width = 91
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Guardar'
    TabOrder = 12
    OnClick = btSaveClick
    LookAndFeel.NativeStyle = True
  end
  object btCancel: TcxButton [23]
    Left = 352
    Top = 351
    Width = 91
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Cancelar'
    TabOrder = 13
    OnClick = btCancelClick
    LookAndFeel.NativeStyle = True
  end
  object btExit: TcxButton [24]
    Left = 719
    Top = 351
    Width = 91
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Salir'
    TabOrder = 14
    OnClick = btExitClick
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    DataSet = rsDir
    OnStateChange = DSStateChange
  end
  object rsClienteAct: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'ClienteAct;1'
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
        Name = '@idCliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 132
    Top = 268
  end
  object dsClienteAct: TDataSource
    DataSet = rsClienteAct
    Left = 230
    Top = 266
  end
  object rsDir: TADODataSet
    Connection = dm.Coneccion
    OnNewRecord = rsDirNewRecord
    CommandText = 'rsClienteDet;1'
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
        Name = '@idCliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 76
    Top = 234
    object rsDiridClienteObra: TStringField
      FieldName = 'idClienteObra'
      Size = 25
    end
    object rsDiridCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object rsDirDireccionObra: TStringField
      FieldName = 'DireccionObra'
      Size = 120
    end
    object rsDirSectorObra: TStringField
      FieldName = 'SectorObra'
      Size = 50
    end
    object rsDirCiudadObra: TStringField
      FieldName = 'CiudadObra'
    end
    object rsDirTelefonoObra: TStringField
      FieldName = 'TelefonoObra'
    end
    object rsDirFaxObra: TStringField
      FieldName = 'FaxObra'
    end
    object rsDirCelularObra: TStringField
      FieldName = 'CelularObra'
    end
    object rsDirContactoObra: TStringField
      FieldName = 'ContactoObra'
      Size = 40
    end
    object rsDirActivoObra: TBooleanField
      FieldName = 'ActivoObra'
    end
    object rsDiruidClienteObra: TGuidField
      FieldName = 'uidClienteObra'
      FixedChar = True
      Size = 38
    end
    object rsDiridZona: TStringField
      FieldName = 'idZona'
      Size = 16
    end
  end
  object rsZonaTransp: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'lgZonaFind;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@orden'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 46
    Top = 226
    object rsZonaTranspidZona: TStringField
      FieldName = 'idZona'
      Size = 16
    end
    object rsZonaTranspZona: TStringField
      FieldName = 'Zona'
      Size = 100
    end
  end
  object dsZonaTrans: TDataSource
    DataSet = rsZonaTransp
    Left = 118
    Top = 226
  end
end

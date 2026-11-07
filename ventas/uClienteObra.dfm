inherited ClienteObra: TClienteObra
  Left = 407
  Top = 351
  Caption = 'Mantenimiento de Clientes'
  ClientHeight = 324
  ClientWidth = 880
  Color = 16114392
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Width = 880
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 880
    inherited nuevo: TwwNavButton
      Width = 126
    end
    inherited editar: TwwNavButton
      Left = 126
      Width = 126
    end
    inherited guardar: TwwNavButton
      Left = 252
      Width = 126
    end
    inherited cancelar: TwwNavButton
      Left = 378
      Width = 126
    end
    inherited borrar: TwwNavButton
      Left = 504
      Width = 126
    end
    inherited BLocalizarx: TwwNavButton
      Left = 630
      Width = 125
    end
    inherited salir: TwwNavButton
      Left = 755
      Width = 125
    end
  end
  inherited Grid: TwwDBGrid
    Top = 332
    Width = 875
    Height = 0
    ControlType.Strings = (
      'ActivoObra;CheckBox;true;false')
    Selected.Strings = (
      'idClienteObra'#9'16'#9'Obra'#9#9
      'ContactoObra'#9'13'#9'Contacto'#9#9
      'DireccionObra'#9'44'#9'Direccion'#9#9
      'SectorObra'#9'15'#9'Sector'#9#9
      'CiudadObra'#9'11'#9'Ciudad'#9#9
      'TelefonoObra'#9'11'#9'Telefono'#9#9
      'CelularObra'#9'9'#9'Celular'#9#9
      'FaxObra'#9'11'#9'Fax'#9#9
      'ActivoObra'#9'4'#9'Act'#9#9)
    Font.Charset = ANSI_CHARSET
    Font.Name = 'Tahoma'
    ParentFont = False
    Visible = False
  end
  object cxGrid2: TcxGrid [3]
    Left = 1
    Top = 44
    Width = 876
    Height = 275
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    OnEnter = cxGrid2Enter
    OnExit = cxGrid2Exit
    LookAndFeel.NativeStyle = True
    object cxGridDBTableView1: TcxGridDBTableView
      DataController.DataSource = DS2
      DataController.KeyFieldNames = 'idClienteObra'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.Navigator = True
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      object cxGridDBTableView1idClienteObra: TcxGridDBColumn
        DataBinding.FieldName = 'idClienteObra'
        Options.Filtering = False
        Width = 88
      end
      object cxGridDBTableView1DireccionObra: TcxGridDBColumn
        DataBinding.FieldName = 'DireccionObra'
        Options.Filtering = False
        Width = 222
      end
      object cxGridDBTableView1CiudadObra: TcxGridDBColumn
        DataBinding.FieldName = 'CiudadObra'
        Options.Filtering = False
        Width = 125
      end
      object cxGridDBTableView1SectorObra: TcxGridDBColumn
        DataBinding.FieldName = 'SectorObra'
        Options.Filtering = False
        Width = 102
      end
      object cxGridDBTableView1ContactoObra: TcxGridDBColumn
        DataBinding.FieldName = 'ContactoObra'
        Options.Filtering = False
        Width = 132
      end
      object cxGridDBTableView1TelefonoObra: TcxGridDBColumn
        DataBinding.FieldName = 'TelefonoObra'
        Options.Filtering = False
        Width = 65
      end
      object cxGridDBTableView1CelularObra: TcxGridDBColumn
        DataBinding.FieldName = 'CelularObra'
        Options.Filtering = False
        Width = 92
      end
      object cxGridDBTableView1FaxObra: TcxGridDBColumn
        DataBinding.FieldName = 'FaxObra'
        Options.Filtering = False
        Width = 115
      end
      object cxGridDBTableView1idZona: TcxGridDBColumn
        Caption = 'Zona'
        DataBinding.FieldName = 'idZona'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
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
        Options.Filtering = False
        Width = 117
      end
      object cxGridDBTableView1ActivoObra: TcxGridDBColumn
        DataBinding.FieldName = 'ActivoObra'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Options.Filtering = False
        Width = 26
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  inherited DS: TwwDataSource
    Left = 271
    Top = 205
  end
  inherited ImageList: TImageList
    Left = 80
    Top = 254
  end
  inherited Acciones: TActionList
    Left = 400
    Top = 164
    inherited ANuevo: TAction
      Visible = False
    end
    inherited ABorrar: TAction
      Visible = False
    end
    inherited ALocalizar: TAction
      Visible = False
    end
  end
  inherited RS: TADODataSet
    OnCalcFields = RSCalcFields
    CommandText = 'rsCliente'
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
    Left = 146
    Top = 142
    object RSidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object RSCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object RSContacto: TStringField
      FieldName = 'Contacto'
      Size = 40
    end
    object RSDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object RSSector: TStringField
      FieldName = 'Sector'
    end
    object RSCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object RSTelefono: TStringField
      FieldName = 'Telefono'
    end
    object RSFax: TStringField
      FieldName = 'Fax'
    end
    object RSBeeper: TStringField
      FieldName = 'Beeper'
    end
    object RSEMail: TStringField
      FieldName = 'EMail'
      Size = 80
    end
    object RSLimiteCredito: TBCDField
      FieldName = 'LimiteCredito'
      Precision = 19
      Size = 2
    end
    object RSidClienteTipo: TIntegerField
      FieldName = 'idClienteTipo'
    end
    object RSidClienteStatus: TIntegerField
      FieldName = 'idClienteStatus'
    end
    object RSUidCliente: TGuidField
      FieldName = 'UidCliente'
      FixedChar = True
      Size = 38
    end
    object RSidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object RSidClienteGrupo: TIntegerField
      FieldName = 'idClienteGrupo'
    end
    object RSRNC_Cedula: TStringField
      FieldName = 'RNC_Cedula'
    end
    object RSNotas: TStringField
      FieldName = 'Notas'
      Size = 2000
    end
    object RSDescuento: TFloatField
      FieldName = 'Descuento'
    end
    object RSidListaPrecio: TStringField
      FieldName = 'idListaPrecio'
      Size = 16
    end
    object RSCondicion: TIntegerField
      FieldName = 'Condicion'
    end
    object RSFechaActivo: TDateTimeField
      FieldName = 'FechaActivo'
    end
    object RSFechaInactivo: TDateTimeField
      FieldName = 'FechaInactivo'
    end
    object RSidTarifa: TStringField
      FieldName = 'idTarifa'
      Size = 16
    end
    object RSidTasaTipo: TStringField
      FieldName = 'idTasaTipo'
      Size = 16
    end
    object RSPassword: TStringField
      FieldName = 'Password'
      Size = 16
    end
    object RSGrupo: TStringField
      FieldName = 'Grupo'
      Size = 10
    end
    object RSUserName: TStringField
      FieldName = 'UserName'
      Size = 30
    end
    object RSidCuenta: TStringField
      FieldName = 'idCuenta'
    end
    object RSidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
    end
    object RSidZona: TStringField
      FieldName = 'idZona'
      Size = 16
    end
    object RSidCondicion: TStringField
      FieldName = 'idCondicion'
      Size = 16
    end
    object RSComisionFactor: TBCDField
      FieldName = 'ComisionFactor'
      Precision = 18
      Size = 2
    end
    object RSidCuentaContado: TStringField
      FieldName = 'idCuentaContado'
    end
    object RSIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
    end
    object RSNumeroSuplidor: TStringField
      FieldName = 'NumeroSuplidor'
      Size = 16
    end
    object RSidClienteParent: TIntegerField
      FieldName = 'idClienteParent'
    end
    object RSIdTipoIdentificacion: TStringField
      FieldName = 'IdTipoIdentificacion'
      Size = 2
    end
    object RSRepresentante: TStringField
      FieldName = 'Representante'
      Size = 100
    end
    object RSRepresentanteCedula: TStringField
      FieldName = 'RepresentanteCedula'
    end
    object RSidClienteObra: TStringField
      FieldKind = fkCalculated
      FieldName = 'idClienteObra'
      Size = 16
      Calculated = True
    end
  end
  inherited DS2: TwwDataSource
    Left = 329
    Top = 207
  end
  inherited RSDet: TADODataSet
    Active = True
    OnNewRecord = RSDetNewRecord
    CommandText = 'rsClienteDet;1'
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
    Left = 328
    Top = 146
    object RSDetidClienteObra: TStringField
      DisplayLabel = 'Obra'
      DisplayWidth = 16
      FieldName = 'idClienteObra'
      Size = 25
    end
    object RSDetContactoObra: TStringField
      DisplayLabel = 'Contacto'
      DisplayWidth = 13
      FieldName = 'ContactoObra'
      Size = 40
    end
    object RSDetDireccionObra: TStringField
      DisplayLabel = 'Direccion'
      DisplayWidth = 44
      FieldName = 'DireccionObra'
      Size = 120
    end
    object RSDetSectorObra: TStringField
      DisplayLabel = 'Sector'
      DisplayWidth = 15
      FieldName = 'SectorObra'
      Size = 50
    end
    object RSDetCiudadObra: TStringField
      DisplayLabel = 'Ciudad'
      DisplayWidth = 11
      FieldName = 'CiudadObra'
    end
    object RSDetTelefonoObra: TStringField
      DisplayLabel = 'Telefono'
      DisplayWidth = 11
      FieldName = 'TelefonoObra'
    end
    object RSDetCelularObra: TStringField
      DisplayLabel = 'Celular'
      DisplayWidth = 9
      FieldName = 'CelularObra'
    end
    object RSDetFaxObra: TStringField
      DisplayLabel = 'Fax'
      DisplayWidth = 11
      FieldName = 'FaxObra'
    end
    object RSDetActivoObra: TBooleanField
      DisplayLabel = 'Act'
      DisplayWidth = 4
      FieldName = 'ActivoObra'
    end
    object RSDetidCliente: TIntegerField
      DisplayWidth = 10
      FieldName = 'idCliente'
      Visible = False
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
    Left = 214
    Top = 266
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
    Left = 286
    Top = 266
  end
end

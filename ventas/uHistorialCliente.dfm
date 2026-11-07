inherited HistorialCliente: THistorialCliente
  Left = 428
  Top = 233
  Caption = 'HistorialCliente'
  ClientHeight = 429
  ClientWidth = 814
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 132
    Top = 12
    Width = 66
    Height = 13
    Caption = 'Desde/Hasta:'
  end
  object beCodigo: TcxButtonEdit [1]
    Left = 6
    Top = 8
    Width = 121
    Height = 21
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = beCodigoPropertiesButtonClick
    Properties.OnEditValueChanged = beCodigoPropertiesEditValueChanged
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object edProducto: TcxTextEdit [2]
    Left = 6
    Top = 32
    Width = 621
    Height = 21
    TabStop = False
    Properties.ReadOnly = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object cxButton1: TcxButton [3]
    Left = 6
    Top = 56
    Width = 141
    Height = 33
    Caption = 'Mostrar'
    TabOrder = 2
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxGrid2: TcxGrid [4]
    Left = 2
    Top = 94
    Width = 809
    Height = 330
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = True
    object cxGridDBTableView2: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OnCellDblClick = cxGridDBTableView2CellDblClick
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.IncSearch = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      Preview.LeftIndent = 0
      Preview.RightIndent = 0
      object cxGridDBTableView2Documento: TcxGridDBColumn
        DataBinding.FieldName = 'Documento'
        Width = 121
      end
      object cxGridDBTableView2Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        PropertiesClassName = 'TcxDateEditProperties'
        Width = 91
      end
      object cxGridDBTableView2Tipo: TcxGridDBColumn
        DataBinding.FieldName = 'Tipo'
        Visible = False
        GroupIndex = 0
      end
      object cxGridDBTableView2Valor: TcxGridDBColumn
        DataBinding.FieldName = 'Valor'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.ReadOnly = True
        Width = 61
      end
      object cxGridDBTableView2Tasa: TcxGridDBColumn
        DataBinding.FieldName = 'Tasa'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.ReadOnly = True
        Width = 67
      end
      object cxGridDBTableView2ValorRD: TcxGridDBColumn
        Caption = 'Valor RD$'
        DataBinding.FieldName = 'ValorRD'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.ReadOnly = True
        Width = 118
      end
      object cxGridDBTableView2Concepto: TcxGridDBColumn
        DataBinding.FieldName = 'Concepto'
        Width = 334
      end
    end
    object cxGridLevel2: TcxGridLevel
      GridView = cxGridDBTableView2
    end
  end
  object cxButton2: TcxButton [5]
    Left = 197
    Top = 56
    Width = 143
    Height = 33
    Caption = 'Excel'
    TabOrder = 4
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [6]
    Left = 388
    Top = 56
    Width = 145
    Height = 33
    Caption = 'Salir'
    TabOrder = 5
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object deDesde: TcxDateEdit [7]
    Left = 202
    Top = 8
    Width = 121
    Height = 21
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 6
  end
  object deHasta: TcxDateEdit [8]
    Left = 330
    Top = 8
    Width = 122
    Height = 21
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 7
  end
  inherited DS: TwwDataSource
    DataSet = rs
    Left = 311
    Top = 199
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'svHistoricoCliente;1'
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
      end
      item
        Name = '@desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 214
    Top = 150
    object rsID: TGuidField
      FieldName = 'ID'
      FixedChar = True
      Size = 38
    end
    object rsDocumento: TStringField
      FieldName = 'Documento'
    end
    object rsFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsTipo: TStringField
      FieldName = 'Tipo'
      Size = 16
    end
    object rsConcepto: TStringField
      FieldName = 'Concepto'
      Size = 200
    end
    object rsValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object rsTasa: TBCDField
      FieldName = 'Tasa'
      Precision = 19
      Size = 2
    end
    object rsValorRD: TBCDField
      FieldName = 'ValorRD'
      ReadOnly = True
      Precision = 32
    end
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
    Left = 368
    Top = 164
    object rsClienteActidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object rsClienteActCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object rsClienteActContacto: TStringField
      FieldName = 'Contacto'
      Size = 40
    end
    object rsClienteActLimiteCredito: TBCDField
      FieldName = 'LimiteCredito'
      Precision = 19
      Size = 2
    end
    object rsClienteActActivo: TBooleanField
      FieldName = 'Activo'
    end
    object rsClienteActidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object rsClienteActDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object rsClienteActSector: TStringField
      FieldName = 'Sector'
    end
    object rsClienteActCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object rsClienteActTelefono: TStringField
      FieldName = 'Telefono'
    end
    object rsClienteActNoPagaItbis: TBooleanField
      FieldName = 'NoPagaItbis'
    end
    object rsClienteActDescuento: TFloatField
      FieldName = 'Descuento'
    end
    object rsClienteActFax: TStringField
      FieldName = 'Fax'
    end
    object rsClienteActeMail: TStringField
      FieldName = 'eMail'
      Size = 80
    end
    object rsClienteActidListaPrecio: TStringField
      FieldName = 'idListaPrecio'
      Size = 16
    end
    object rsClienteActCondicion: TIntegerField
      FieldName = 'Condicion'
    end
    object rsClienteActidCuenta: TStringField
      FieldName = 'idCuenta'
    end
    object rsClienteActidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
    end
    object rsClienteActRNC_Cedula: TStringField
      FieldName = 'RNC_Cedula'
    end
    object rsClienteActidCondicion: TStringField
      FieldName = 'idCondicion'
      Size = 16
    end
    object rsClienteActNotas: TStringField
      FieldName = 'Notas'
      Size = 2000
    end
    object rsClienteActIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
    end
  end
  object sd: TSaveDialog
    DefaultExt = 'xls'
    FileName = 'Solcitudes.xls'
    Left = 198
    Top = 226
  end
end

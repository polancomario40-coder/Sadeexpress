inherited FacturasAbiertas: TFacturasAbiertas
  Left = 354
  Top = 122
  BorderIcons = [biMaximize]
  Caption = 'Caja'
  ClientHeight = 615
  ClientWidth = 992
  Font.Height = -16
  Font.Name = 'Verdana'
  PixelsPerInch = 96
  TextHeight = 18
  object cxButton1: TcxButton [0]
    Left = 14
    Top = 569
    Width = 107
    Height = 37
    Anchors = [akLeft, akBottom]
    Caption = 'Cobrar'
    Default = True
    TabOrder = 0
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object Grid: TcxGrid [1]
    Left = 8
    Top = 20
    Width = 977
    Height = 541
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    LookAndFeel.NativeStyle = True
    object GridDBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.KeyFieldNames = 'idFactura'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OnCellDblClick = GridDBTableView1CellDblClick
      OptionsBehavior.IncSearch = True
      OptionsBehavior.IncSearchItem = GridDBTableView1Numero
      OptionsSelection.CellSelect = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      Styles.ContentEven = cxStyle1
      Styles.Selection = cxStyle2
      object GridDBTableView1Numero: TcxGridDBColumn
        DataBinding.FieldName = 'Factura'
        Options.Filtering = False
        Width = 106
      end
      object GridDBTableView1Nombre: TcxGridDBColumn
        DataBinding.FieldName = 'Cliente'
        Options.Filtering = False
        Width = 449
      end
      object GridDBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.SaveTime = False
        Properties.ShowTime = False
        Options.Filtering = False
        Width = 127
      end
      object GridDBTableView1Hora: TcxGridDBColumn
        DataBinding.FieldName = 'Hora'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.AssignedValues.MinValue = True
        Properties.TimeFormat = tfHourMin
        Options.Filtering = False
        Width = 71
      end
      object GridDBTableView1idCliente: TcxGridDBColumn
        DataBinding.FieldName = 'idCliente'
        Visible = False
      end
      object GridDBTableView1GranTotal: TcxGridDBColumn
        Caption = 'Total factura'
        DataBinding.FieldName = 'Total'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '$,0.00;($,0.00)'
        Properties.ValidateOnEnter = True
        Options.Filtering = False
        Width = 137
      end
      object GridDBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'Usuario'
        Options.Filtering = False
        Width = 77
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridDBTableView1
    end
  end
  object cxButton2: TcxButton [2]
    Left = 876
    Top = 569
    Width = 107
    Height = 37
    Anchors = [akRight, akBottom]
    Caption = 'Salir'
    TabOrder = 2
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    DataSet = rs
    Left = 86
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'svFacturasAbiertas;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 340
    Top = 256
    object rsidFactura: TGuidField
      FieldName = 'idFactura'
      FixedChar = True
      Size = 38
    end
    object rsFactura: TStringField
      FieldName = 'Factura'
      Size = 16
    end
    object rsFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsHora: TDateTimeField
      FieldName = 'Hora'
    end
    object rsIdCliente: TIntegerField
      FieldName = 'IdCliente'
    end
    object rsCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object rsUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object rsTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
      Size = 2
    end
  end
  object Timer: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = TimerTimer
    Left = 326
    Top = 184
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 172
    Top = 132
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15922418
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 9516803
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
    end
  end
  object cMarcarFact: TADOCommand
    CommandText = 'svMarcarFacturaCobrada'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idfactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 220
    Top = 226
  end
  object rsFacturaCobro: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'svRSFacturaCobro'
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
        Name = '@idFactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 300
    Top = 94
    object rsFacturaCobroidFactura: TGuidField
      FieldName = 'idFactura'
      FixedChar = True
      Size = 38
    end
    object rsFacturaCobroTotal: TBCDField
      FieldName = 'Total'
      Precision = 18
      Size = 2
    end
    object rsFacturaCobroPagadoCon: TBCDField
      FieldName = 'PagadoCon'
      Precision = 18
      Size = 2
    end
    object rsFacturaCobroEfectivo: TBCDField
      FieldName = 'Efectivo'
      Precision = 18
      Size = 2
    end
    object rsFacturaCobroTarjeta: TBCDField
      FieldName = 'Tarjeta'
      Precision = 18
      Size = 2
    end
    object rsFacturaCobroCheque: TBCDField
      FieldName = 'Cheque'
      Precision = 18
      Size = 2
    end
    object rsFacturaCobroOtros: TBCDField
      FieldName = 'Otros'
      Precision = 18
      Size = 2
    end
    object rsFacturaCobroNota: TStringField
      FieldName = 'Nota'
      Size = 200
    end
  end
  object cRenumerarFactura: TADOCommand
    CommandText = 'svRenumerarFactura'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idfact'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@ultimo'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 16
        Value = Null
      end
      item
        Name = '@ncf'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 19
        Value = Null
      end>
    Left = 442
    Top = 100
  end
end

inherited FacturarPresupCXC: TFacturarPresupCXC
  Left = 368
  Top = 193
  Caption = 'Facturar prespuestos'
  ClientHeight = 502
  ClientWidth = 846
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid [0]
    Left = 4
    Top = 6
    Width = 839
    Height = 454
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.KeyFieldNames = 'idCotizacion'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OnCellDblClick = cxGrid1DBTableView1CellDblClick
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      object cxGrid1DBTableView1Cotizacion: TcxGridDBColumn
        DataBinding.FieldName = 'Cotizacion'
        Width = 87
      end
      object cxGrid1DBTableView1Cliente: TcxGridDBColumn
        DataBinding.FieldName = 'Cliente'
        Width = 232
      end
      object cxGrid1DBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Width = 75
      end
      object cxGrid1DBTableView1Referencia: TcxGridDBColumn
        DataBinding.FieldName = 'Referencia'
        Width = 79
      end
      object cxGrid1DBTableView1Total: TcxGridDBColumn
        DataBinding.FieldName = 'Total'
        Width = 96
      end
      object cxGrid1DBTableView1Moneda: TcxGridDBColumn
        DataBinding.FieldName = 'Moneda'
        Width = 64
      end
      object cxGrid1DBTableView1Nota: TcxGridDBColumn
        DataBinding.FieldName = 'Nota'
        Width = 204
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton1: TcxButton [1]
    Left = 6
    Top = 466
    Width = 107
    Height = 33
    Caption = 'Generar ND'
    TabOrder = 1
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton [2]
    Left = 736
    Top = 466
    Width = 107
    Height = 33
    Caption = 'Salir'
    TabOrder = 2
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [3]
    Left = 134
    Top = 466
    Width = 107
    Height = 33
    Caption = 'Facturar'
    TabOrder = 3
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    DataSet = rs
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxcPresupuestosPendientes'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 124
    Top = 72
    object rsidCotizacion: TGuidField
      FieldName = 'idCotizacion'
      FixedChar = True
      Size = 38
    end
    object rsCotizacion: TStringField
      FieldName = 'Cotizacion'
      Size = 16
    end
    object rsidCotizacionStatus: TStringField
      FieldName = 'idCotizacionStatus'
      Size = 16
    end
    object rsidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object rsCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object rsContacto: TStringField
      FieldName = 'Contacto'
      Size = 50
    end
    object rsDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object rsSector: TStringField
      FieldName = 'Sector'
    end
    object rsCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object rsTelefono: TStringField
      FieldName = 'Telefono'
    end
    object rsSolicitadoPor: TStringField
      FieldName = 'SolicitadoPor'
      Size = 30
    end
    object rsidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object rsFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsHora: TDateTimeField
      FieldName = 'Hora'
    end
    object rsReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object rsCredito: TBooleanField
      FieldName = 'Credito'
    end
    object rsidCompania: TIntegerField
      FieldName = 'idCompania'
    end
    object rsSubTotal: TBCDField
      FieldName = 'SubTotal'
      Precision = 18
      Size = 2
    end
    object rsItbis: TBCDField
      FieldName = 'Itbis'
      Precision = 18
      Size = 2
    end
    object rsDescuento: TBCDField
      FieldName = 'Descuento'
      Precision = 19
      Size = 2
    end
    object rsTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
      Size = 2
    end
    object rsNota: TStringField
      FieldName = 'Nota'
      Size = 600
    end
    object rsUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object rsValidoHasta: TDateTimeField
      FieldName = 'ValidoHasta'
    end
    object rsidClienteObra: TStringField
      FieldName = 'idClienteObra'
      Size = 25
    end
    object rsPagaItbis: TBooleanField
      FieldName = 'PagaItbis'
    end
    object rsElemento: TStringField
      FieldName = 'Elemento'
      Size = 50
    end
    object rsFax: TStringField
      FieldName = 'Fax'
    end
    object rseMail: TStringField
      FieldName = 'eMail'
      Size = 80
    end
    object rsPorcDesc: TFloatField
      FieldName = 'PorcDesc'
    end
    object rsCondicion: TIntegerField
      FieldName = 'Condicion'
    end
    object rsidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsFechaAprobado: TDateTimeField
      FieldName = 'FechaAprobado'
    end
    object rsidCondicion: TStringField
      FieldName = 'idCondicion'
      Size = 16
    end
    object rsFechaEnviado: TDateTimeField
      FieldName = 'FechaEnviado'
    end
    object rsObservacion: TStringField
      FieldName = 'Observacion'
      Size = 200
    end
    object rsNotaReferencia: TStringField
      FieldName = 'NotaReferencia'
      Size = 2000
    end
    object rsMoneda: TStringField
      FieldName = 'Moneda'
    end
  end
  object cFacturar: TADOCommand
    CommandText = 'svFacturarNDPresupuesto'
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
        Name = '@idCxc'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@Usuario'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@idFactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Direction = pdInputOutput
        Value = Null
      end>
    Left = 166
    Top = 208
  end
  object cGenND: TADOCommand
    CommandText = 'svGenNDPresupuesto'
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
        Name = '@idCotizacion'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@Usuario'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 78
    Top = 174
  end
end

inherited VentaVendedorMes: TVentaVendedorMes
  Left = 348
  Top = 122
  Caption = 'Totales vendidos por vendedor (comisiones)'
  ClientHeight = 439
  ClientWidth = 700
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 12
    Top = 14
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object deHasta: TcxDateEdit [1]
    Left = 52
    Top = 10
    Width = 121
    Height = 21
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object cxButton1: TcxButton [2]
    Left = 180
    Top = 7
    Width = 93
    Height = 27
    Caption = 'Mostrar'
    TabOrder = 1
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid [3]
    Left = 8
    Top = 40
    Width = 685
    Height = 393
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      object cxGrid1DBTableView1idEmpleado: TcxGridDBColumn
        Caption = 'Vendedor #'
        DataBinding.FieldName = 'idEmpleado'
        Width = 82
      end
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        Caption = 'Nombre'
        DataBinding.FieldName = 'idEmpleado'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'idEmpleado'
        Properties.ListColumns = <
          item
            FieldName = 'Empleado'
          end>
        Properties.ListSource = dsEmpleados
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 256
      end
      object cxGrid1DBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Width = 87
      end
      object cxGrid1DBTableView1TotalVenta: TcxGridDBColumn
        Caption = 'Vendido'
        DataBinding.FieldName = 'TotalVenta'
        Width = 89
      end
      object cxGrid1DBTableView1Comision: TcxGridDBColumn
        DataBinding.FieldName = 'Comision'
        Width = 66
      end
      object cxGrid1DBTableView1ComisionNuevos: TcxGridDBColumn
        Caption = 'Comision Nuevos'
        DataBinding.FieldName = 'ComisionNuevos'
        Width = 97
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton3: TcxButton [4]
    Left = 600
    Top = 7
    Width = 93
    Height = 27
    Caption = 'Cerrar'
    TabOrder = 3
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    AutoEdit = True
    DataSet = rs
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    CommandText = 'svRSComisionVendedor;1'
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
        Name = '@fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 180
    Top = 120
    object rsidComisionVendedor: TGuidField
      FieldName = 'idComisionVendedor'
      FixedChar = True
      Size = 38
    end
    object rsidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object rsFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsTotalVenta: TBCDField
      FieldName = 'TotalVenta'
      Precision = 19
      Size = 2
    end
    object rsComision: TBCDField
      FieldName = 'Comision'
      Precision = 19
      Size = 2
    end
    object rsComisionNuevos: TBCDField
      FieldName = 'ComisionNuevos'
      Precision = 19
      Size = 2
    end
  end
  object rsListaEmpleados: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'select * from svEmpleado'
    Parameters = <>
    Left = 94
    Top = 206
    object rsListaEmpleadosidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object rsListaEmpleadosidNomina: TIntegerField
      FieldName = 'idNomina'
    end
    object rsListaEmpleadosEmpleado: TStringField
      FieldName = 'Empleado'
      Size = 40
    end
    object rsListaEmpleadosDireccion: TStringField
      FieldName = 'Direccion'
      Size = 60
    end
    object rsListaEmpleadosCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object rsListaEmpleadosTelefono: TStringField
      FieldName = 'Telefono'
    end
    object rsListaEmpleadosBeeper: TStringField
      FieldName = 'Beeper'
    end
    object rsListaEmpleadosNotas: TStringField
      FieldName = 'Notas'
      Size = 200
    end
    object rsListaEmpleadosesVendedor: TBooleanField
      FieldName = 'esVendedor'
    end
    object rsListaEmpleadosinactivo: TBooleanField
      FieldName = 'inactivo'
    end
    object rsListaEmpleadosUidEmpleado: TGuidField
      FieldName = 'UidEmpleado'
      FixedChar = True
      Size = 38
    end
    object rsListaEmpleadosidEmpleadoRoll: TStringField
      FieldName = 'idEmpleadoRoll'
      Size = 16
    end
    object rsListaEmpleadosGrupoTrabajo: TIntegerField
      FieldName = 'GrupoTrabajo'
    end
    object rsListaEmpleadosidPlanta: TStringField
      FieldName = 'idPlanta'
      Size = 16
    end
    object rsListaEmpleadosIdEmpleadoGrupo: TIntegerField
      FieldName = 'IdEmpleadoGrupo'
    end
    object rsListaEmpleadosEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
  end
  object dsEmpleados: TwwDataSource
    AutoEdit = False
    DataSet = rsListaEmpleados
    OnUpdateData = DSUpdateData
    Left = 135
    Top = 295
  end
end

inherited Rol: TRol
  Left = 200
  Top = 155
  Caption = 'Rol'
  ClientHeight = 390
  ClientWidth = 700
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 30
    Top = 368
    Width = 16
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Rol'
  end
  inherited wwDBGrid1: TwwDBGrid
    Top = 42
    Width = 700
    Height = 315
    ControlType.Strings = (
      'Activo;CheckBox;true;false'
      'Ventas;CheckBox;true;false'
      'VentaGral;CheckBox;true;false'
      'Cobros;CheckBox;true;false'
      'DespachoGral;CheckBox;true;false'
      'DespachoPlanta;CheckBox;true;false'
      'DespachoConduce;CheckBox;true;false'
      'Viaje;CheckBox;true;false'
      'VentaGrupoProd;CheckBox;true;false'
      'VentaGrupoProdFact;CheckBox;true;false')
    Selected.Strings = (
      'idEmpleadoRoll'#9'13'#9'Cod'
      'Activo'#9'6'#9'Activo'
      'Ventas'#9'9'#9'Vendedores'
      'VentaGral'#9'8'#9'Venta Gral'
      'Cobros'#9'6'#9'Cobros'
      'DespachoGral'#9'8'#9'Desp Gral'
      'DespachoPlanta'#9'9'#9'Desp Planta'
      'DespachoConduce'#9'12'#9'Desp Conduce'
      'Viaje'#9'6'#9'por Viaje'
      'VentaGrupoProd'#9'13'#9'GrpProdCobrado'
      'VentaGrupoProdFact'#9'10'#9'GrpProdFact')
    Align = alTop
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 700
    Height = 42
    inherited banterior: TwwNavButton
      Width = 88
      Height = 42
    end
    inherited wwDBNavigator1Button1: TwwNavButton
      Left = 88
      Width = 88
      Height = 42
    end
    inherited wwDBNavigator1Button2: TwwNavButton
      Left = 176
      Width = 88
      Height = 42
    end
    inherited wwDBNavigator1Button3: TwwNavButton
      Left = 264
      Width = 88
      Height = 42
    end
    inherited wwDBNavigator1Button4: TwwNavButton
      Left = 352
      Width = 87
      Height = 42
    end
    inherited wwDBNavigator1Button6: TwwNavButton
      Left = 439
      Width = 87
      Height = 42
    end
    inherited wwDBNavigator1Button7: TwwNavButton
      Left = 526
      Width = 87
      Height = 42
    end
    inherited wwDBNavigator1Button9: TwwNavButton
      Left = 613
      Width = 87
      Height = 42
    end
  end
  object DBEdit1: TDBEdit [3]
    Left = 66
    Top = 366
    Width = 627
    Height = 19
    Anchors = [akLeft, akBottom]
    DataField = 'EmpleadoRoll'
    DataSource = DS
    TabOrder = 2
  end
  inherited DS: TwwDataSource
    DataSet = rs
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    AfterPost = rsAfterPost
    OnNewRecord = rsNewRecord
    CommandText = 'select * from empleadoroll'#13#10'order by empleadoroll'
    Parameters = <>
    Left = 424
    Top = 72
    object rsidEmpleadoRoll: TStringField
      DisplayLabel = 'Cod'
      DisplayWidth = 13
      FieldName = 'idEmpleadoRoll'
      Size = 16
    end
    object rsActivo: TBooleanField
      DisplayWidth = 6
      FieldName = 'Activo'
    end
    object rsVentas: TBooleanField
      DisplayLabel = 'Vendedores'
      DisplayWidth = 9
      FieldName = 'Ventas'
    end
    object rsVentaGral: TBooleanField
      DisplayLabel = 'Venta Gral'
      DisplayWidth = 8
      FieldName = 'VentaGral'
    end
    object rsCobros: TBooleanField
      DisplayWidth = 6
      FieldName = 'Cobros'
    end
    object rsDespachoGral: TBooleanField
      DisplayLabel = 'Desp Gral'
      DisplayWidth = 8
      FieldName = 'DespachoGral'
    end
    object rsDespachoPlanta: TBooleanField
      DisplayLabel = 'Desp Planta'
      DisplayWidth = 9
      FieldName = 'DespachoPlanta'
    end
    object rsDespachoConduce: TBooleanField
      DisplayLabel = 'Desp Conduce'
      DisplayWidth = 12
      FieldName = 'DespachoConduce'
    end
    object rsViaje: TBooleanField
      DisplayLabel = 'por Viaje'
      DisplayWidth = 6
      FieldName = 'Viaje'
    end
    object rsVentaGrupoProd: TBooleanField
      DisplayLabel = 'GrpProdCobrado'
      DisplayWidth = 13
      FieldName = 'VentaGrupoProd'
    end
    object rsVentaGrupoProdFact: TBooleanField
      DisplayLabel = 'GrpProdFact'
      DisplayWidth = 10
      FieldName = 'VentaGrupoProdFact'
    end
    object rsEmpleadoRoll: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 22
      FieldName = 'EmpleadoRoll'
      Visible = False
      Size = 50
    end
    object rsSueldoHora: TBCDField
      DisplayWidth = 19
      FieldName = 'SueldoHora'
      Visible = False
      Precision = 18
      Size = 2
    end
  end
end

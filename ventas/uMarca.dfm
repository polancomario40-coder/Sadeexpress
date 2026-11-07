inherited Marca: TMarca
  Caption = 'Marcas de Productos'
  ClientHeight = 331
  ClientWidth = 514
  PixelsPerInch = 96
  TextHeight = 13
  inherited wwDBGrid1: TwwDBGrid
    Width = 514
    Height = 297
    Selected.Strings = (
      'idMarca'#9'16'#9'Cod Marca'
      'Marca'#9'46'#9'Marca'
      'Abrev'#9'16'#9'Abrev')
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 514
    inherited banterior: TwwNavButton
      Width = 65
    end
    inherited wwDBNavigator1Button1: TwwNavButton
      Left = 65
      Width = 65
    end
    inherited wwDBNavigator1Button2: TwwNavButton
      Left = 130
      Width = 64
    end
    inherited wwDBNavigator1Button3: TwwNavButton
      Left = 194
      Width = 64
    end
    inherited wwDBNavigator1Button4: TwwNavButton
      Left = 258
      Width = 64
    end
    inherited wwDBNavigator1Button6: TwwNavButton
      Left = 322
      Width = 64
    end
    inherited wwDBNavigator1Button7: TwwNavButton
      Left = 386
      Width = 64
    end
    inherited wwDBNavigator1Button9: TwwNavButton
      Left = 450
      Width = 64
    end
  end
  inherited DS: TwwDataSource
    DataSet = rsMarca
  end
  object rsMarca: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    OnNewRecord = rsMarcaNewRecord
    CommandText = 'Select * from marca order by idmarca'
    Parameters = <>
    Left = 184
    Top = 96
    object rsMarcaidMarca: TStringField
      DisplayLabel = 'Cod Marca'
      DisplayWidth = 16
      FieldName = 'idMarca'
      Size = 16
    end
    object rsMarcaMarca: TStringField
      DisplayWidth = 46
      FieldName = 'Marca'
      Size = 50
    end
    object rsMarcaAbrev: TStringField
      DisplayWidth = 16
      FieldName = 'Abrev'
      Size = 16
    end
    object rsMarcaUidMarca: TGuidField
      DisplayWidth = 38
      FieldName = 'UidMarca'
      Visible = False
      FixedChar = True
      Size = 38
    end
  end
end

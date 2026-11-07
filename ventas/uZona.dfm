inherited Zona: TZona
  Caption = 'Zonas'
  ClientWidth = 512
  PixelsPerInch = 96
  TextHeight = 13
  inherited wwDBGrid1: TwwDBGrid
    Width = 512
    Selected.Strings = (
      'idZona'#9'16'#9'Codigo'
      'Zona'#9'50'#9'Zona'
      'idEmpleado'#9'10'#9'Cod Empleado')
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 512
    inherited banterior: TwwNavButton
      Width = 64
    end
    inherited wwDBNavigator1Button1: TwwNavButton
      Left = 64
      Width = 64
    end
    inherited wwDBNavigator1Button2: TwwNavButton
      Left = 128
      Width = 64
    end
    inherited wwDBNavigator1Button3: TwwNavButton
      Left = 192
      Width = 64
    end
    inherited wwDBNavigator1Button4: TwwNavButton
      Left = 256
      Width = 64
    end
    inherited wwDBNavigator1Button6: TwwNavButton
      Left = 320
      Width = 64
    end
    inherited wwDBNavigator1Button7: TwwNavButton
      Left = 384
      Width = 64
    end
    inherited wwDBNavigator1Button9: TwwNavButton
      Left = 448
      Width = 64
    end
  end
  inherited DS: TwwDataSource
    DataSet = RS
  end
  object RS: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from zona'
    Parameters = <>
    Left = 202
    Top = 94
  end
end

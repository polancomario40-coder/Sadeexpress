inherited MantCategoria: TMantCategoria
  Left = 438
  Top = 227
  Caption = 'Categorias de activos'
  ClientHeight = 308
  ClientWidth = 466
  PixelsPerInch = 96
  TextHeight = 13
  inherited wwDBGrid1: TwwDBGrid
    Width = 466
    Height = 274
    Selected.Strings = (
      'idCategoria'#9'10'#9'Numero'#9#9
      'Categoria'#9'50'#9'Categoria'#9#9
      'Porcentaje'#9'10'#9'Porcentaje'#9#9)
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 466
    inherited banterior: TwwNavButton
      Width = 59
    end
    inherited wwDBNavigator1Button1: TwwNavButton
      Left = 59
      Width = 59
    end
    inherited wwDBNavigator1Button2: TwwNavButton
      Left = 118
      Width = 58
    end
    inherited wwDBNavigator1Button3: TwwNavButton
      Left = 176
      Width = 58
    end
    inherited wwDBNavigator1Button4: TwwNavButton
      Left = 234
      Width = 58
    end
    inherited wwDBNavigator1Button6: TwwNavButton
      Left = 292
      Width = 58
    end
    inherited wwDBNavigator1Button7: TwwNavButton
      Left = 350
      Width = 58
    end
    inherited wwDBNavigator1Button9: TwwNavButton
      Left = 408
      Width = 58
    end
  end
  inherited DS: TwwDataSource
    DataSet = rs
    Left = 355
  end
  inherited ImageList: TImageList
    Left = 276
    Top = 124
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'afRSCategoria;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 216
    Top = 104
    object rsidCategoria: TAutoIncField
      DisplayLabel = 'Numero'
      DisplayWidth = 10
      FieldName = 'idCategoria'
      ReadOnly = True
    end
    object rsCategoria: TStringField
      DisplayWidth = 50
      FieldName = 'Categoria'
      Size = 50
    end
    object rsPorcentaje: TFloatField
      DisplayWidth = 10
      FieldName = 'Porcentaje'
    end
  end
end

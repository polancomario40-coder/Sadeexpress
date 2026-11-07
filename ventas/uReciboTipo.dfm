inherited ReciboTipo: TReciboTipo
  Caption = 'Conceptos de Recibos de Ingresos'
  ClientHeight = 278
  ClientWidth = 545
  PixelsPerInch = 96
  TextHeight = 13
  inherited wwDBGrid1: TwwDBGrid
    Width = 545
    Height = 244
    ControlType.Strings = (
      'esCxC;CheckBox;true;false'
      'esAvance;CheckBox;True;False')
    Selected.Strings = (
      'idReciboTipo'#9'11'#9'Cod'#9#9
      'ReciboTipo'#9'29'#9'Descripcion'#9#9
      'CC'#9'14'#9'CC'#9#9
      'esCxC'#9'5'#9'CxC'#9'F'#9
      'esAvance'#9'6'#9'Avance'#9#9
      'CtaAplicacion'#9'16'#9'Cta aplicacion'#9#9)
    OnDblClick = wwDBGrid1DblClick
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 545
    inherited banterior: TwwNavButton
      Width = 69
    end
    inherited wwDBNavigator1Button1: TwwNavButton
      Left = 69
      Width = 68
    end
    inherited wwDBNavigator1Button2: TwwNavButton
      Left = 137
      Width = 68
    end
    inherited wwDBNavigator1Button3: TwwNavButton
      Left = 205
      Width = 68
    end
    inherited wwDBNavigator1Button4: TwwNavButton
      Left = 273
      Width = 68
    end
    inherited wwDBNavigator1Button6: TwwNavButton
      Left = 341
      Width = 68
    end
    inherited wwDBNavigator1Button7: TwwNavButton
      Left = 409
      Width = 68
    end
    inherited wwDBNavigator1Button9: TwwNavButton
      Left = 477
      Width = 68
    end
  end
  inherited DS: TwwDataSource
    DataSet = RS
    Left = 371
    Top = 183
  end
  inherited ImageList: TImageList
    Left = 334
    Top = 112
  end
  object RS: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from recibotipo order by recibotipo'
    Parameters = <>
    Left = 136
    Top = 88
    object RSidReciboTipo: TStringField
      DisplayLabel = 'Cod'
      DisplayWidth = 11
      FieldName = 'idReciboTipo'
      Size = 16
    end
    object RSReciboTipo: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 29
      FieldName = 'ReciboTipo'
      Size = 50
    end
    object RSCC: TStringField
      DisplayWidth = 14
      FieldName = 'CC'
    end
    object RSesCxC: TBooleanField
      DisplayLabel = 'CxC'
      DisplayWidth = 5
      FieldName = 'esCxC'
    end
    object RSesAvance: TBooleanField
      DisplayLabel = 'Avance'
      DisplayWidth = 6
      FieldName = 'esAvance'
    end
    object RSCtaAplicacion: TStringField
      DisplayLabel = 'Cta aplicacion'
      DisplayWidth = 16
      FieldName = 'CtaAplicacion'
      Size = 16
    end
  end
end

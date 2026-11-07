inherited CxcTipo: TCxcTipo
  Left = 356
  Top = 147
  Caption = 'CxcTipo'
  ClientHeight = 336
  ClientWidth = 459
  PixelsPerInch = 96
  TextHeight = 13
  inherited wwDBGrid1: TwwDBGrid
    Width = 459
    Height = 302
    ControlType.Strings = (
      'esCredito;CheckBox;true;false'
      'Interno;CheckBox;true;false')
    Selected.Strings = (
      'idCxcTipo'#9'6'#9'Cod'
      'CxcTipo'#9'33'#9'Descripcion'
      'CC'#9'15'#9'Cuenta '
      'esCredito'#9'5'#9'Credito'
      'Interno'#9'7'#9'Interno')
    OnDblClick = wwDBGrid1DblClick
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 459
    inherited banterior: TwwNavButton
      Width = 58
    end
    inherited wwDBNavigator1Button1: TwwNavButton
      Left = 58
      Width = 58
    end
    inherited wwDBNavigator1Button2: TwwNavButton
      Left = 116
      Width = 58
    end
    inherited wwDBNavigator1Button3: TwwNavButton
      Left = 174
      Width = 57
    end
    inherited wwDBNavigator1Button4: TwwNavButton
      Left = 231
      Width = 57
    end
    inherited wwDBNavigator1Button6: TwwNavButton
      Left = 288
      Width = 57
    end
    inherited wwDBNavigator1Button7: TwwNavButton
      Left = 345
      Width = 57
    end
    inherited wwDBNavigator1Button9: TwwNavButton
      Left = 402
      Width = 57
    end
  end
  inherited DS: TwwDataSource
    DataSet = rsCxcTipo
  end
  object rsCxcTipo: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'Select * from CxcTipo Order by esCredito '
    Parameters = <>
    Left = 104
    Top = 96
    object rsCxcTipoidCxcTipo: TIntegerField
      FieldName = 'idCxcTipo'
    end
    object rsCxcTipoCxcTipo: TStringField
      FieldName = 'CxcTipo'
      Size = 50
    end
    object rsCxcTipoesCredito: TBooleanField
      FieldName = 'esCredito'
    end
    object rsCxcTipoCC: TStringField
      FieldName = 'CC'
    end
    object rsCxcTipouidCxcTipo: TGuidField
      FieldName = 'uidCxcTipo'
      FixedChar = True
      Size = 38
    end
    object rsCxcTipoInterno: TBooleanField
      FieldName = 'Interno'
    end
  end
end

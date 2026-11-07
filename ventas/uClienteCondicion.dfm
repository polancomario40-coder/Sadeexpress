inherited ClienteCondicion: TClienteCondicion
  Caption = 'Condici'#243'n del Cliente'
  ClientWidth = 580
  PixelsPerInch = 96
  TextHeight = 13
  inherited wwDBGrid1: TwwDBGrid
    Width = 580
    ControlType.Strings = (
      'Credito;CheckBox;true;false'
      'PrecioContado;CheckBox;true;false'
      'NoCreditoCheck;CheckBox;true;false')
    Selected.Strings = (
      'idCondicion'#9'14'#9'IdCondici'#243'n'#9'F'
      'Condicion'#9'27'#9'Condici'#243'n'#9#9
      'Credito'#9'5'#9'Cr'#233'dito'#9'F'
      'Dias'#9'4'#9'D'#237'as'#9'F'
      'PrecioContado'#9'10'#9'PrecioContado'#9#9
      'NoCreditoCheck'#9'5'#9'No Chequear Cr'#233'dito'#9'F')
    Font.Charset = ANSI_CHARSET
    Font.Name = 'Verdana'
    ParentFont = False
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 580
    inherited banterior: TwwNavButton
      Width = 73
    end
    inherited wwDBNavigator1Button1: TwwNavButton
      Left = 73
      Width = 73
    end
    inherited wwDBNavigator1Button2: TwwNavButton
      Left = 146
      Width = 73
    end
    inherited wwDBNavigator1Button3: TwwNavButton
      Left = 219
      Width = 73
    end
    inherited wwDBNavigator1Button4: TwwNavButton
      Left = 292
      Width = 72
    end
    inherited wwDBNavigator1Button6: TwwNavButton
      Left = 364
      Width = 72
    end
    inherited wwDBNavigator1Button7: TwwNavButton
      Left = 436
      Width = 72
    end
    inherited wwDBNavigator1Button9: TwwNavButton
      Left = 508
      Width = 72
    end
  end
  inherited DS: TwwDataSource
    DataSet = qryCondicion
  end
  object qryCondicion: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  svCondicion'
      'ORDER BY'
      '  IdCondicion')
    Left = 164
    Top = 94
    object qryCondicionidCondicion: TStringField
      DisplayLabel = 'IdCondici'#243'n'
      DisplayWidth = 14
      FieldName = 'idCondicion'
      Size = 16
    end
    object qryCondicionCondicion: TStringField
      DisplayLabel = 'Condici'#243'n'
      DisplayWidth = 27
      FieldName = 'Condicion'
      Size = 50
    end
    object qryCondicionCredito: TBooleanField
      DisplayLabel = 'Cr'#233'dito'
      DisplayWidth = 5
      FieldName = 'Credito'
    end
    object qryCondicionDias: TIntegerField
      DisplayLabel = 'D'#237'as'
      DisplayWidth = 4
      FieldName = 'Dias'
    end
    object qryCondicionPrecioContado: TBooleanField
      DisplayWidth = 10
      FieldName = 'PrecioContado'
    end
    object qryCondicionNoCreditoCheck: TBooleanField
      DisplayLabel = 'No Chequear Cr'#233'dito'
      DisplayWidth = 5
      FieldName = 'NoCreditoCheck'
    end
  end
end

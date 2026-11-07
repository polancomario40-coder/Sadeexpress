inherited PagoForma: TPagoForma
  Left = 395
  Top = 233
  Caption = 'Formas de Pago'
  ClientHeight = 324
  ClientWidth = 580
  PixelsPerInch = 96
  TextHeight = 13
  inherited wwDBGrid1: TwwDBGrid
    Width = 580
    Height = 290
    ControlType.Strings = (
      'esTarjeta;CheckBox;true;false')
    Selected.Strings = (
      'idPagoForma'#9'16'#9'Forma de Pago'
      'CC'#9'13'#9'Cuenta Caja'
      'esTarjeta'#9'7'#9'esTarjeta'
      'Comision'#9'10'#9'Comision Tarj'
      'CtaComision'#9'13'#9'CtaComision'
      'PorcImpuesto'#9'10'#9'% Impuesto'
      'CtaImpuesto'#9'15'#9'Cuenta Imp.')
    OnDblClick = wwDBGrid1DblClick
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
    DataSet = PagoForma
  end
  object PagoForma: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    OnNewRecord = PagoFormaNewRecord
    CommandText = 'select * from PagoForma'
    Parameters = <>
    Left = 184
    Top = 112
    object PagoFormaidPagoForma: TStringField
      DisplayLabel = 'Forma de Pago'
      DisplayWidth = 16
      FieldName = 'idPagoForma'
      Size = 16
    end
    object PagoFormaCC: TStringField
      DisplayLabel = 'Cuenta Caja'
      DisplayWidth = 13
      FieldName = 'CC'
    end
    object PagoFormaesTarjeta: TBooleanField
      DisplayWidth = 7
      FieldName = 'esTarjeta'
    end
    object PagoFormaComision: TFloatField
      DisplayLabel = 'Comision Tarj'
      DisplayWidth = 10
      FieldName = 'Comision'
    end
    object PagoFormaCtaComision: TStringField
      DisplayWidth = 13
      FieldName = 'CtaComision'
    end
    object PagoFormaPorcImpuesto: TFloatField
      DisplayLabel = '% Impuesto'
      DisplayWidth = 10
      FieldName = 'PorcImpuesto'
    end
    object PagoFormaCtaImpuesto: TStringField
      DisplayLabel = 'Cuenta Imp.'
      DisplayWidth = 15
      FieldName = 'CtaImpuesto'
      Size = 16
    end
  end
end

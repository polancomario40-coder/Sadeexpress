inherited GenerarFactRec: TGenerarFactRec
  Left = 349
  Top = 207
  Caption = 'Generar Facturas Recurrentes'
  ClientHeight = 150
  ClientWidth = 246
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 24
    Width = 105
    Height = 13
    Caption = 'Fecha de las facturas:'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 48
    Width = 72
    Height = 13
    Caption = 'Dia a procesar:'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 74
    Width = 75
    Height = 13
    Caption = 'Factura Rec. #:'
  end
  object deFecha: TcxDateEdit [3]
    Left = 117
    Top = 21
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object seDia: TcxSpinEdit [4]
    Left = 117
    Top = 48
    Width = 121
    Height = 21
    Properties.MaxValue = 31.000000000000000000
    Properties.MinValue = 1.000000000000000000
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Value = 30
  end
  object cxButton1: TcxButton [5]
    Left = 8
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Generar'
    TabOrder = 2
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton [6]
    Left = 161
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Salir'
    TabOrder = 3
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object seFact: TcxSpinEdit [7]
    Left = 117
    Top = 74
    Width = 121
    Height = 21
    Properties.MaxValue = 999999.000000000000000000
    Properties.MinValue = 1.000000000000000000
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
    Value = 1
  end
  inherited DS: TwwDataSource
    Left = 117
    Top = 109
  end
  object cGenerar: TADOCommand
    CommandText = 'frGenerarFactsRec;1'
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
        Name = '@dia'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@fec'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@usuario'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@fact'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 84
    Top = 108
  end
end

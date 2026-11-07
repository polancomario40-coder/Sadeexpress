object GenCheques: TGenCheques
  Left = 513
  Top = 338
  Width = 370
  Height = 128
  Caption = 'Imprimir cheques de nomina'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxButton1: TcxButton
    Left = 6
    Top = 54
    Width = 119
    Height = 35
    Caption = 'Generar cheques'
    TabOrder = 0
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton
    Left = 234
    Top = 54
    Width = 119
    Height = 35
    Caption = 'Salir'
    TabOrder = 1
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxDBLabel1: TcxDBLabel
    Left = 6
    Top = 6
    Width = 61
    Height = 21
    DataBinding.DataField = 'Numero'
  end
  object cxDBLabel2: TcxDBLabel
    Left = 114
    Top = 6
    Width = 61
    Height = 21
    DataBinding.DataField = 'TipoNomina'
  end
  object cxDBLabel3: TcxDBLabel
    Left = 6
    Top = 26
    Width = 61
    Height = 21
    DataBinding.DataField = 'Desde'
  end
  object cxDBLabel4: TcxDBLabel
    Left = 114
    Top = 26
    Width = 61
    Height = 21
    DataBinding.DataField = 'Hasta'
  end
  object ds: TDataSource
    DataSet = dmNom.Nominas
    Left = 172
    Top = 44
  end
  object cGenerar: TADOCommand
    CommandText = 'nomChequesNomina;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@idNomina'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@CtaBco'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@Fec'
        Attributes = [paNullable]
        DataType = ftDateTime
      end>
    Left = 280
    Top = 8
  end
end

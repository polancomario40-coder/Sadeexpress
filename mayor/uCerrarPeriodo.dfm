object fCerrarPeriodo: TfCerrarPeriodo
  Left = 345
  Top = 289
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cerrar periodo'
  ClientHeight = 88
  ClientWidth = 362
  Color = 14870499
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 10
    Top = 16
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object dtHasta: TcxDateEdit
    Left = 50
    Top = 12
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Style.BorderColor = 13161162
    Style.ButtonStyle = btsSimple
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 46
    Width = 147
    Height = 33
    Caption = 'Cerrar Perido'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 208
    Top = 46
    Width = 147
    Height = 33
    Caption = 'Salir'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object cCierre: TADOCommand
    CommandText = 'cgCerrarMes;1'
    CommandTimeout = 240
    CommandType = cmdStoredProc
    Connection = gldm.glConn
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@corte'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@nots'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
        Value = Null
      end>
    Left = 224
    Top = 14
  end
end

object fGenEDCierre: TfGenEDCierre
  Left = 807
  Top = 334
  Width = 403
  Height = 123
  Caption = 'Generar Entrada de Cierre'
  Color = 14870499
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 10
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label2: TLabel
    Left = 222
    Top = 10
    Width = 31
    Height = 13
    Caption = 'Hasta:'
  end
  object edDesde: TdxDateEdit
    Left = 48
    Top = 6
    Width = 121
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.HotTrack = True
    TabOrder = 0
    StyleController = StyleController
    Date = -700000.000000000000000000
    SaveTime = False
  end
  object edHasta: TdxDateEdit
    Left = 258
    Top = 6
    Width = 121
    Style.BorderStyle = xbsSingle
    Style.ButtonStyle = btsSimple
    Style.HotTrack = True
    TabOrder = 1
    StyleController = StyleController
    Date = -700000.000000000000000000
    SaveTime = False
  end
  object BitBtn1: TBitBtn
    Left = 6
    Top = 46
    Width = 157
    Height = 29
    Caption = 'Generar'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 228
    Top = 44
    Width = 157
    Height = 29
    Caption = 'Salir'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object StyleController: TdxEditStyleController
    BorderColor = 12109242
    BorderStyle = xbsSingle
    ButtonStyle = btsSimple
    HotTrack = True
    Left = 190
    Top = 53
  end
  object cGenerarED: TADOCommand
    CommandText = 'cgGenerarEDCierre;1'
    CommandTimeout = 240
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
        Name = '@desde'
        Attributes = [paNullable]
        DataType = ftDateTime
      end
      item
        Name = '@hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
      end
      item
        Name = '@usuario'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
      end
      item
        Name = '@ED'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
      end>
    Left = 198
    Top = 38
  end
end

object MantClassBco: TMantClassBco
  Left = 531
  Top = 347
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 415
  ClientWidth = 624
  Color = 14870499
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Gradient1: TGradient
    Left = 0
    Top = 29
    Width = 624
    Height = 4
    Align = alTop
    ColorBegin = 4227327
    ColorEnd = 16767681
    Style = gsReflectedV
  end
  object Gradient2: TGradient
    Left = 0
    Top = 0
    Width = 624
    Height = 29
    Align = alTop
    ColorEnd = 14898176
    Style = gsLinearH
  end
  object StyleController: TdxEditStyleController
    BorderColor = 12109242
    BorderStyle = xbsSingle
    ButtonStyle = btsSimple
    HotTrack = True
    Left = 558
    Top = 46
  end
  object ds: TDataSource
    Left = 100
    Top = 42
  end
end

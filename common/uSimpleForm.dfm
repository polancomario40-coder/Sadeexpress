object SimpleForm: TSimpleForm
  Left = 257
  Top = 182
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 457
  ClientWidth = 666
  Color = 14870499
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Gradient1: TGradient
    Left = 0
    Top = 29
    Width = 666
    Height = 4
    Align = alTop
    ColorBegin = 4227327
    ColorEnd = 16767681
    Style = gsReflectedV
  end
  object Gradient2: TGradient
    Left = 0
    Top = 0
    Width = 666
    Height = 29
    Align = alTop
    ColorEnd = 14898176
    Style = gsLinearH
  end
  object ds: TDataSource
    Left = 108
    Top = 30
  end
end

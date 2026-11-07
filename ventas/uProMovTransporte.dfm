inherited ProMovTransporte: TProMovTransporte
  Left = 303
  Top = 190
  Caption = 'Entrada de almacen'
  ClientHeight = 399
  ClientWidth = 545
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  inline ViajeFrame1: TViajeFrame [0]
    Left = 3
    Top = 3
    Width = 535
    Height = 346
    Color = 15922418
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
  end
  object Cerrar: TcxButton
    Left = 420
    Top = 354
    Width = 115
    Height = 39
    Caption = 'Cerrar'
    TabOrder = 1
    OnClick = CerrarClick
    LookAndFeel.NativeStyle = True
  end
end

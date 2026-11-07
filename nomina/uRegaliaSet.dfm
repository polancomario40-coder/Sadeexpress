inherited RegaliaSet: TRegaliaSet
  Left = 395
  Top = 321
  BorderIcons = []
  Caption = 'Parametros para generar regalia'
  ClientHeight = 197
  ClientWidth = 251
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Tahoma'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 88
    Width = 99
    Height = 13
    Caption = 'N'#243'minas a Proyectar'
  end
  object Gradient1: TGradient
    Left = 0
    Top = 29
    Width = 251
    Height = 4
    Align = alTop
    ColorBegin = 4227327
    ColorEnd = 16767681
    Style = gsReflectedV
  end
  object Gradient2: TGradient
    Left = 0
    Top = 0
    Width = 251
    Height = 29
    Align = alTop
    ColorEnd = 14898176
    Style = gsLinearH
  end
  object Label2: TLabel
    Left = 123
    Top = 4
    Width = 123
    Height = 25
    Caption = 'Par'#225'metros'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Gradient4: TGradient
    Left = 1
    Top = 160
    Width = 244
    Height = 6
    Align = alCustom
    ColorBegin = 14898176
    ColorEnd = 16511468
    Style = gsReflectedH
  end
  object Acti: TcxRadioGroup
    Left = 8
    Top = 38
    Width = 235
    Height = 41
    Caption = 'Grupo'
    ItemIndex = 1
    ParentColor = False
    Properties.Columns = 2
    Properties.Items = <
      item
        Caption = 'Inactivos'
        Value = '0'
      end
      item
        Caption = 'Activos'
        Value = '1'
      end>
    Properties.OnChange = ActiPropertiesChange
    Style.Color = clBlack
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object Proy: TcxRadioGroup
    Left = 138
    Top = 84
    Width = 105
    Height = 69
    Caption = 'Proyecci'#243'n'
    ItemIndex = 1
    Properties.Items = <
      item
        Caption = 'Ultima Nomina'
        Value = '0'
      end
      item
        Caption = 'Salario '
        Value = '1'
      end>
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object Cant: TcxSpinEdit
    Left = 8
    Top = 102
    Width = 103
    Height = 21
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
    Value = 2
  end
  object cxButton1: TcxButton
    Left = 95
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    Default = True
    ModalResult = 1
    TabOrder = 3
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton
    Left = 171
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    ModalResult = 1
    TabOrder = 4
    LookAndFeel.NativeStyle = True
  end
end

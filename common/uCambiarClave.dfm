object CambiarClave: TCambiarClave
  Left = 388
  Top = 251
  BorderStyle = bsDialog
  Caption = 'Cambiar clave'
  ClientHeight = 154
  ClientWidth = 282
  Color = 15922418
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 63
    Height = 13
    Caption = 'Clave actual:'
  end
  object Label2: TLabel
    Left = 8
    Top = 42
    Width = 64
    Height = 13
    Caption = 'Clave nueva:'
  end
  object Label3: TLabel
    Left = 8
    Top = 68
    Width = 112
    Height = 13
    Caption = 'Confirmar clave nueva:'
  end
  object edVieja: TcxTextEdit
    Left = 132
    Top = 12
    Width = 143
    Height = 21
    Properties.EchoMode = eemPassword
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object edConfirm: TcxTextEdit
    Left = 132
    Top = 38
    Width = 143
    Height = 21
    Properties.EchoMode = eemPassword
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object edNueva: TcxTextEdit
    Left = 132
    Top = 64
    Width = 143
    Height = 21
    Properties.EchoMode = eemPassword
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object cxButton1: TcxButton
    Left = 8
    Top = 100
    Width = 111
    Height = 39
    Caption = 'Cambiar'
    TabOrder = 3
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton
    Left = 164
    Top = 98
    Width = 111
    Height = 39
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
end

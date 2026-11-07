object FacturaDetEspec: TFacturaDetEspec
  Left = 269
  Top = 133
  Width = 598
  Height = 474
  Caption = 'Especificaciones Tecnicas del Producto en el Documento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  OnShow = FormShow
  DesignSize = (
    590
    440)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 12
    Top = 14
    Width = 30
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Fecha'
  end
  object Label5: TLabel
    Left = 12
    Top = 222
    Width = 3
    Height = 13
  end
  object Espec: TcxDBMemo
    Left = 3
    Top = 42
    Width = 583
    Height = 394
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataBinding.DataField = 'Especificacion'
    DataBinding.DataSource = DS
    Properties.WantTabs = True
    Style.LookAndFeel.NativeStyle = True
    Style.StyleController = dm.cxEstilo
    TabOrder = 1
  end
  object cxDBDateEdit1: TcxDBDateEdit
    Left = 48
    Top = 10
    Width = 121
    Height = 21
    Anchors = [akTop, akRight]
    DataBinding.DataField = 'FechaEspec'
    DataBinding.DataSource = DS
    Style.StyleController = dm.cxEstilo
    TabOrder = 0
  end
  object bok: TcxButton
    Left = 326
    Top = 8
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 2
    OnClick = bokClick
    LookAndFeel.NativeStyle = True
  end
  object bCancelar: TcxButton
    Left = 508
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    ModalResult = 5
    TabOrder = 3
    OnClick = bCancelarClick
    LookAndFeel.NativeStyle = True
  end
  object bborrar: TcxButton
    Left = 417
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Borrar'
    ModalResult = 2
    TabOrder = 4
    OnClick = bborrarClick
    LookAndFeel.NativeStyle = True
  end
  object DS: TDataSource
    AutoEdit = False
    Left = 202
    Top = 164
  end
end

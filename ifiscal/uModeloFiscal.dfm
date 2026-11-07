object ModeloFiscal: TModeloFiscal
  Left = 397
  Top = 167
  Width = 418
  Height = 387
  BorderIcons = [biSystemMenu]
  Caption = 'Modelo Fiscal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 226
    Width = 32
    Height = 13
    Caption = 'GUID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 10
    Top = 252
    Width = 37
    Height = 13
    Caption = 'Desde'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 10
    Top = 279
    Width = 58
    Height = 13
    Caption = 'Fecha Ini.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 223
    Top = 253
    Width = 34
    Height = 13
    Caption = 'Hasta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 223
    Top = 279
    Width = 57
    Height = 13
    Caption = 'Fecha Fin'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object rgTipoNCF: TRadioGroup
    Left = 10
    Top = 12
    Width = 179
    Height = 70
    Caption = 'Comprobantes'
    ItemIndex = 0
    Items.Strings = (
      'Comprobante Factura'
      'NC o Devolucion'
      'Pedido NO Venta')
    TabOrder = 0
  end
  object rgTipoCancelacion: TRadioGroup
    Left = 194
    Top = 12
    Width = 207
    Height = 71
    Caption = 'Procesos'
    ItemIndex = 0
    Items.Strings = (
      'Cancelar Ultimo Comprobante'
      'Cancelar Ultimo Reporte Z')
    TabOrder = 1
  end
  object rgTipoReporte: TRadioGroup
    Left = 10
    Top = 86
    Width = 391
    Height = 87
    Caption = 'Reportes'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Informe de Cajero'
      'Realizar Cierre X'
      'Realizar Cierre Z'
      'Informe de Cierres Z por Fecha'
      'Informe de Cierres Z por Numero')
    TabOrder = 2
  end
  object rgOperacion: TRadioGroup
    Left = 10
    Top = 173
    Width = 391
    Height = 47
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'Comprobantes'
      'Procesos'
      'Reportes')
    TabOrder = 3
  end
  object edGUID: TEdit
    Left = 71
    Top = 225
    Width = 330
    Height = 21
    TabOrder = 4
    Text = '162B626D-DD19-4C30-B24F-2C0151C30E48'
  end
  object edInicio: TEdit
    Left = 71
    Top = 249
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '0'
  end
  object edFinal: TEdit
    Left = 280
    Top = 249
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '0'
  end
  object dtpInicio: TDateTimePicker
    Left = 71
    Top = 274
    Width = 113
    Height = 21
    Date = 41675.449842731480000000
    Time = 41675.449842731480000000
    TabOrder = 7
  end
  object dtpFinal: TDateTimePicker
    Left = 288
    Top = 274
    Width = 113
    Height = 21
    Date = 41675.449842731480000000
    Time = 41675.449842731480000000
    TabOrder = 8
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 309
    Width = 410
    Height = 44
    Align = alBottom
    ButtonHeight = 39
    Caption = 'ToolBar1'
    TabOrder = 9
    object btnGenerar: TButton
      Left = 0
      Top = 2
      Width = 75
      Height = 39
      Caption = 'Generar'
      TabOrder = 1
      OnClick = btnGenerarClick
    end
    object ToolButton2: TToolButton
      Left = 75
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object btnSalir: TButton
      Left = 83
      Top = 2
      Width = 75
      Height = 39
      Caption = 'Salir'
      TabOrder = 0
      OnClick = btnSalirClick
    end
  end
end

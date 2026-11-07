object Parametros: TParametros
  Left = 279
  Top = 223
  Width = 417
  Height = 246
  Caption = 'Parametros'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 11
    Top = 181
    Width = 75
    Height = 25
    TabOrder = 0
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 324
    Top = 181
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkCancel
  end
  object oCheck: TCheckBox
    Left = 77
    Top = 137
    Width = 64
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Activos'
    Checked = True
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    State = cbChecked
    TabOrder = 2
    Visible = False
  end
  object Paginas: TPageControl
    Left = 8
    Top = 8
    Width = 393
    Height = 169
    ActivePage = TabSheet7
    MultiLine = True
    TabOrder = 3
    TabPosition = tpBottom
    object TabSheet1: TTabSheet
      Tag = 1
      Caption = 'Periodo'
      object Label4: TLabel
        Left = 64
        Top = 34
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 68
        Top = 61
        Width = 34
        Height = 13
        Alignment = taRightJustify
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Desde: TwwDBDateTimePicker
        Left = 110
        Top = 30
        Width = 153
        Height = 19
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        ButtonStyle = cbsEllipsis
        Epoch = 1950
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        Frame.Enabled = True
        ShowButton = True
        TabOrder = 0
        OnChange = DesdeChange
      end
      object Hasta: TwwDBDateTimePicker
        Left = 110
        Top = 57
        Width = 153
        Height = 19
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        ButtonStyle = cbsEllipsis
        Epoch = 1950
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        Frame.Enabled = True
        ShowButton = True
        TabOrder = 1
        OnChange = HastaChange
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Fecha'
      ImageIndex = 3
      object Label1: TLabel
        Left = 66
        Top = 53
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Fecha: TwwDBDateTimePicker
        Left = 110
        Top = 49
        Width = 153
        Height = 19
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        ButtonStyle = cbsEllipsis
        Epoch = 1950
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        Frame.Enabled = True
        ShowButton = True
        TabOrder = 0
        OnChange = FechaChange
      end
    end
    object TabSheet2: TTabSheet
      Tag = 2
      Caption = 'Detallado'
      ImageIndex = 1
      object Detalle: TCheckBox
        Left = 130
        Top = 56
        Width = 63
        Height = 17
        Caption = 'Detalle'
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Grupo'
      ImageIndex = 2
      object Grupo: TLabeledEdit
        Left = 136
        Top = 55
        Width = 65
        Height = 19
        AutoSize = False
        Ctl3D = False
        EditLabel.Width = 35
        EditLabel.Height = 13
        EditLabel.Caption = 'Grupo'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        LabelPosition = lpLeft
        LabelSpacing = 8
        ParentCtl3D = False
        TabOrder = 0
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Rango Dias'
      ImageIndex = 4
      object TrackBar1: TTrackBar
        Left = 8
        Top = 40
        Width = 313
        Height = 45
        Max = 120
        Position = 30
        TabOrder = 0
        OnChange = TrackBar1Change
      end
      object Dias: TEdit
        Left = 264
        Top = 104
        Width = 49
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        Text = '30'
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Cliente'
      ImageIndex = 5
      object Label2: TLabel
        Left = 112
        Top = 64
        Width = 32
        Height = 13
        Caption = 'Cliente'
      end
      object Cliente: TEdit
        Left = 160
        Top = 61
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        Text = '-1'
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Empleado'
      ImageIndex = 6
      object Label3: TLabel
        Left = 96
        Top = 64
        Width = 47
        Height = 13
        Caption = 'Empleado'
      end
      object Vendedor: TEdit
        Left = 152
        Top = 60
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        Text = '-1'
      end
    end
    object Entradas: TTabSheet
      Caption = 'Entradas'
      ImageIndex = 7
      object CVentas: TdxCheckEdit
        Left = 40
        Top = 24
        Width = 83
        TabOrder = 0
        Caption = 'Ventas'
        State = cbsChecked
      end
      object cIngreso: TdxCheckEdit
        Left = 40
        Top = 56
        Width = 83
        TabOrder = 1
        Caption = 'Ingresos'
        State = cbsChecked
      end
      object cND: TdxCheckEdit
        Left = 154
        Top = 24
        Width = 66
        TabOrder = 2
        Caption = 'ND'
        State = cbsChecked
      end
      object cNC: TdxCheckEdit
        Left = 154
        Top = 56
        Width = 66
        TabOrder = 3
        Caption = 'NC'
        State = cbsChecked
      end
      object CInv: TdxCheckEdit
        Left = 256
        Top = 24
        Width = 97
        TabOrder = 4
        Caption = 'Inventario'
        State = cbsChecked
      end
    end
    object Tipo: TTabSheet
      Caption = 'Tipo Doc'
      ImageIndex = 8
      object Label6: TLabel
        Left = 67
        Top = 53
        Width = 65
        Height = 13
        Caption = 'Tipo Doc Cxc'
      end
      object cxcDoc: TcxImageComboBox
        Left = 144
        Top = 48
        Width = 121
        Height = 21
        EditValue = '%'
        Properties.Items = <
          item
            Description = 'Todos'
            ImageIndex = 0
            Value = '%'
          end
          item
            Description = 'Facturas'
            Value = 'FT'
          end
          item
            Description = 'Recibos'
            Value = 'RC'
          end
          item
            Description = 'Nota Credito'
            Value = 'NC'
          end
          item
            Description = 'Nota Debito'
            Value = 'ND'
          end
          item
            Description = 'Cheque Devuelto'
            Value = 'CD'
          end>
        TabOrder = 0
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Activos/Inactivos'
      ImageIndex = 9
      object Activo: TcxImageComboBox
        Left = 120
        Top = 48
        Width = 121
        Height = 21
        EditValue = True
        Properties.Items = <
          item
            Description = 'Todos'
            ImageIndex = 0
          end
          item
            Description = 'Activos'
            Value = True
          end
          item
            Description = 'Inactivos'
            Value = False
          end>
        TabOrder = 0
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'Frecuencia'
      ImageIndex = 10
      object Frecuencia: TcxImageComboBox
        Left = 120
        Top = 48
        Width = 137
        Height = 21
        EditValue = 'Q'
        Properties.Items = <
          item
            Description = 'Quincenal'
            ImageIndex = 0
            Value = 'Q'
          end
          item
            Description = 'Mensual'
            Value = 'M'
          end
          item
            Description = 'Semanal'
            Value = 'S'
          end>
        TabOrder = 0
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'Entradas/Salidas'
      ImageIndex = 11
      object EntSal: TcxImageComboBox
        Left = 120
        Top = 48
        Width = 121
        Height = 21
        Properties.Items = <
          item
            Description = 'Todos'
            ImageIndex = 0
          end
          item
            Description = 'Salidas'
            Value = True
          end
          item
            Description = 'Entradas'
            Value = False
          end>
        TabOrder = 0
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'Producto'
      ImageIndex = 12
      object Label7: TLabel
        Left = 72
        Top = 46
        Width = 58
        Height = 13
        Caption = 'Codigo Prod'
      end
      object Producto: TEdit
        Left = 144
        Top = 40
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
      end
    end
    object tsPeriodoConds: TTabSheet
      Caption = 'Periodo y condiciones'
      ImageIndex = 13
      object Label8: TLabel
        Left = 10
        Top = 11
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 10
        Top = 38
        Width = 34
        Height = 13
        Alignment = taRightJustify
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 10
        Top = 62
        Width = 58
        Height = 13
        Caption = 'Condiciones'
      end
      object wwDBDateTimePicker1: TwwDBDateTimePicker
        Left = 84
        Top = 7
        Width = 153
        Height = 19
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        ButtonStyle = cbsEllipsis
        Epoch = 1950
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        Frame.Enabled = True
        ShowButton = True
        TabOrder = 0
        OnChange = wwDBDateTimePicker1Change
      end
      object wwDBDateTimePicker2: TwwDBDateTimePicker
        Left = 84
        Top = 34
        Width = 153
        Height = 19
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        ButtonStyle = cbsEllipsis
        Epoch = 1950
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        Frame.Enabled = True
        ShowButton = True
        TabOrder = 1
        OnChange = wwDBDateTimePicker2Change
      end
      object cbConds: TcxImageComboBox
        Left = 82
        Top = 57
        Width = 121
        Height = 21
        EditValue = '%'
        Properties.Items = <
          item
            Description = 'Todos'
            ImageIndex = 0
            Value = 2
          end
          item
            Description = 'Credito'
            Value = 1
          end
          item
            Description = 'Contado'
            Value = 0
          end>
        TabOrder = 2
      end
    end
    object TabSheet12: TTabSheet
      Caption = 'Negocio'
      ImageIndex = 14
      object Label11: TLabel
        Left = 72
        Top = 46
        Width = 40
        Height = 13
        Caption = 'Negocio'
      end
      object Negocio: TEdit
        Left = 124
        Top = 42
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        Text = '-1'
      end
    end
    object TabSheet13: TTabSheet
      Caption = 'Tipo Transacci'#243'n'
      ImageIndex = 15
      object Label12: TLabel
        Left = 8
        Top = 34
        Width = 95
        Height = 13
        Caption = 'Tipo de Transacci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 6
        Top = 14
        Width = 184
        Height = 11
        Caption = 'Fije el Valor a -1 para todas las transacciones'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
      end
      object edtTipoTransaccion: TEdit
        Left = 110
        Top = 32
        Width = 121
        Height = 19
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Text = '-1'
      end
    end
  end
end

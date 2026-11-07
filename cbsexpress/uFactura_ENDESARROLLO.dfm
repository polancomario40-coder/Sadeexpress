inherited Factura: TFactura
  Left = 317
  Top = 12
  Caption = 'Factura'
  ClientHeight = 664
  ClientWidth = 886
  Color = 16381422
  DesignSize = (
    886
    664)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 702
    Top = 503
    Width = 46
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Sub Total'
  end
  object Label2: TLabel [1]
    Left = 702
    Top = 524
    Width = 52
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Descuento'
  end
  object Label3: TLabel [2]
    Left = 702
    Top = 547
    Width = 27
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'ITBIS'
  end
  object Label4: TLabel [3]
    Left = 702
    Top = 570
    Width = 41
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'TOTAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 169
    Width = 36
    Height = 13
    Caption = 'Factura'
  end
  object Label6: TLabel [5]
    Left = 166
    Top = 169
    Width = 30
    Height = 13
    Caption = 'Fecha'
  end
  object Label9: TLabel [6]
    Left = 8
    Top = 193
    Width = 32
    Height = 13
    Caption = 'Cliente'
  end
  inherited Bevel1: TBevel
    Width = 886
  end
  object Label10: TLabel [8]
    Left = 8
    Top = 217
    Width = 43
    Height = 13
    Caption = 'Contacto'
  end
  object Label11: TLabel [9]
    Left = 710
    Top = 217
    Width = 38
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Cotizac.'
  end
  object Label16: TLabel [10]
    Left = 689
    Top = 193
    Width = 59
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Pedido / OC'
  end
  object Label21: TLabel [11]
    Left = 553
    Top = 501
    Width = 39
    Height = 13
    Caption = 'Moneda'
  end
  object Label22: TLabel [12]
    Left = 762
    Top = 643
    Width = 35
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Imprimir'
  end
  object SpeedButton1: TSpeedButton [13]
    Left = 560
    Top = 639
    Width = 80
    Height = 22
    Anchors = [akRight, akBottom]
    Caption = 'Recibo'
    OnClick = SpeedButton1Click
  end
  object Label26: TLabel [14]
    Left = 395
    Top = 217
    Width = 21
    Height = 13
    Caption = 'NCF'
  end
  object Label27: TLabel [15]
    Left = 217
    Top = 217
    Width = 56
    Height = 13
    Caption = 'Ced. / RNC'
  end
  object Label28: TLabel [16]
    Left = 701
    Top = 169
    Width = 47
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Condicion'
  end
  object Label29: TLabel [17]
    Left = 553
    Top = 523
    Width = 24
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Tasa'
  end
  object Label30: TLabel [18]
    Left = 448
    Top = 459
    Width = 71
    Height = 13
    Caption = 'Tipo Anulacion'
  end
  object SpeedButton2: TSpeedButton [19]
    Left = 784
    Top = 145
    Width = 79
    Height = 18
    Caption = 'No Gen Salida'
    Flat = True
    Visible = False
    OnClick = SpeedButton2Click
  end
  object Label18: TLabel [20]
    Left = 378
    Top = 166
    Width = 59
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Tipo Ingreso'
  end
  object Label7: TLabel [21]
    Left = 553
    Top = 604
    Width = 20
    Height = 13
    Caption = 'Ref.'
  end
  object SpeedButton3: TSpeedButton [22]
    Left = 646
    Top = 639
    Width = 80
    Height = 22
    Anchors = [akRight, akBottom]
    Caption = 'Ver Balance'
    OnClick = SpeedButton3Click
  end
  object Label23: TLabel [23]
    Left = 702
    Top = 616
    Width = 47
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Balance'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label32: TLabel [24]
    Left = 702
    Top = 594
    Width = 31
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Abono'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 886
    inherited nuevo: TwwNavButton
      Width = 74
    end
    inherited editar: TwwNavButton
      Left = 74
      Width = 74
    end
    inherited guardar: TwwNavButton
      Left = 148
      Width = 74
    end
    inherited cancelar: TwwNavButton
      Left = 222
      Width = 74
    end
    inherited borrar: TwwNavButton
      Left = 296
      Width = 74
    end
    inherited BLocalizarx: TwwNavButton
      Left = 370
      Width = 74
    end
    object bAnular: TwwNavButton [6]
      Left = 444
      Top = 0
      Width = 74
      Height = 42
      Action = AAnular
      ImageIndex = 3
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 6
      Style = nbsCustom
    end
    object BdeCotizacion: TwwNavButton [7]
      Left = 518
      Top = 0
      Width = 74
      Height = 42
      Action = ACotizacion
      ImageIndex = 5
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 7
      Style = nbsCustom
    end
    object BdeOrdComp: TwwNavButton [8]
      Left = 592
      Top = 0
      Width = 74
      Height = 42
      Action = AOrdComp2Factura
      ImageIndex = 5
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 8
      Style = nbsCustom
    end
    object bPrint: TwwNavButton [9]
      Left = 666
      Top = 0
      Width = 74
      Height = 42
      Action = Aprint
      ImageIndex = 11
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 9
      Style = nbsCustom
    end
    object bEvaluacion: TwwNavButton [10]
      Left = 740
      Top = 0
      Width = 73
      Height = 42
      Hint = 'Receta de Evaluacion'
      Action = Evaluacion
      ImageIndex = 5
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 10
      Style = nbsCustom
    end
    inherited salir: TwwNavButton
      Left = 813
      Width = 73
      Index = 11
    end
  end
  object cod: TdxDBEdit [26]
    Left = 54
    Top = 165
    Width = 105
    Color = 15066597
    TabOrder = 0
    TabStop = False
    DataField = 'Factura'
    DataSource = DS
    ReadOnly = False
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit2: TdxDBEdit [27]
    Left = 202
    Top = 165
    Width = 105
    TabOrder = 1
    TabStop = False
    DataField = 'Fecha'
    DataSource = DS
    ReadOnly = False
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object FindCliente: TButton [28]
    Left = 53
    Top = 189
    Width = 17
    Height = 21
    Caption = '...'
    TabOrder = 3
    TabStop = False
    OnClick = FindClienteClick
  end
  object dxDBEdit6: TdxDBEdit [29]
    Left = 70
    Top = 189
    Width = 87
    TabOrder = 4
    OnDblClick = dxDBEdit6DblClick
    DataField = 'idCliente'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBCheckEdit2: TdxDBCheckEdit [30]
    Left = 553
    Top = 562
    Width = 81
    TabOrder = 12
    TabStop = False
    Anchors = [akRight, akBottom]
    Caption = 'Anulado'
    DataField = 'Cancelado'
    DataSource = DS
    ReadOnly = True
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    StoredValues = 64
  end
  object dxDBEdit7: TdxDBEdit [31]
    Left = 755
    Top = 565
    Width = 121
    Color = 15066597
    TabOrder = 13
    TabStop = False
    Anchors = [akRight, akBottom]
    DataField = 'Total'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit8: TdxDBEdit [32]
    Left = 755
    Top = 498
    Width = 121
    Color = 15066597
    TabOrder = 15
    TabStop = False
    Anchors = [akRight, akBottom]
    DataField = 'SubTotal'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit9: TdxDBEdit [33]
    Left = 788
    Top = 520
    Width = 88
    Color = 15066597
    TabOrder = 16
    TabStop = False
    Anchors = [akRight, akBottom]
    DataField = 'Descuento'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit10: TdxDBEdit [34]
    Left = 755
    Top = 542
    Width = 121
    Color = 15066597
    TabOrder = 17
    TabStop = False
    Anchors = [akRight, akBottom]
    DataField = 'Itbis'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit11: TdxDBEdit [35]
    Left = 158
    Top = 190
    Width = 529
    TabOrder = 5
    Anchors = [akLeft, akTop, akRight]
    DataField = 'Cliente'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  inherited Grid: TwwDBGrid
    Left = 87
    Top = 417
    Width = 78
    Height = 123
    Hint = 'Ctrl-F1 Muestra Datos del Producto'
    ControlType.Strings = (
      'Oferta;CheckBox;true;false'
      'luAlmacen;CustomEdit;lcAlmacenDet;F')
    Selected.Strings = (
      'idProducto'#9'19'#9'Producto'#9#9
      'Producto'#9'47'#9'Descripcion'#9#9
      'Cantidad'#9'8'#9'Cantidad'#9#9
      'dias'#9'6'#9'Dias'#9'F'#9
      'PrecioDia'#9'15'#9'Precio'#9#9
      'idUnidad'#9'10'#9'Unidad'#9#9
      'Descuento'#9'11'#9'Desc'#9#9
      'Itbis'#9'10'#9'Itbis'#9#9
      'LineTotal'#9'17'#9'Importe'#9#9)
    DataSource = nil
    Font.Charset = ANSI_CHARSET
    Font.Height = -9
    Font.Name = 'Small Fonts'
    Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgWordWrap]
    ParentColor = True
    ParentFont = False
    ParentShowHint = False
    PopupMenu = PopupMenu1
    ShowHint = True
    TabOrder = 11
    Visible = False
  end
  object dxDBEdit5: TdxDBEdit [37]
    Left = 54
    Top = 213
    Width = 161
    TabOrder = 6
    DataField = 'Contacto'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object PageControl1: TPageControl [38]
    Left = 5
    Top = 496
    Width = 545
    Height = 140
    ActivePage = TabSheet1
    Anchors = [akLeft, akRight, akBottom]
    MultiLine = True
    TabOrder = 18
    object TabSheet1: TTabSheet
      Caption = 'Notas Facturas'
      DesignSize = (
        537
        94)
      object Label8: TLabel
        Left = 2
        Top = 74
        Width = 46
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'Vendedor'
      end
      object Label31: TLabel
        Left = 298
        Top = 76
        Width = 32
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'Doctor'
      end
      object lkEmpleado: TdxDBLookupEdit
        Left = 64
        Top = 74
        Width = 170
        TabOrder = 0
        Anchors = [akLeft, akRight, akBottom]
        DataField = 'idEmpleado'
        DataSource = DS
        ReadOnly = False
        StyleController = dm.dxEstilo
        ClearKey = 46
        ListFieldName = 'Empleado'
        CanDeleteText = True
        KeyFieldName = 'idEmpleado'
        ListSource = dsEmpleado
        LookupKeyValue = Null
        StoredValues = 64
      end
      object dxDBMemo1: TdxDBMemo
        Left = 1
        Top = 2
        Width = 514
        TabOrder = 1
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataField = 'Nota'
        DataSource = DS
        StyleController = dm.dxEstilo
        Height = 67
      end
      object Button1: TButton
        Left = 520
        Top = 4
        Width = 17
        Height = 21
        Hint = 'Agregar notas predefinidas'
        Caption = '...'
        TabOrder = 2
        TabStop = False
        OnClick = Button1Click
      end
      object dxDBLookupEdit5: TdxDBLookupEdit
        Left = 334
        Top = 74
        Width = 180
        TabOrder = 3
        Anchors = [akLeft, akRight, akBottom]
        DataField = 'idDoctor'
        DataSource = DS
        ReadOnly = False
        StyleController = dm.dxEstilo
        ClearKey = 46
        ListFieldName = 'Empleado'
        CanDeleteText = True
        KeyFieldName = 'idEmpleado'
        ListSource = dsEmpleado
        LookupKeyValue = Null
        StoredValues = 64
      end
    end
    object tsNota2: TTabSheet
      Caption = 'Notas Adicionales'
      ImageIndex = 6
      object dxDBMemo2: TdxDBMemo
        Left = 2
        Top = 4
        Width = 428
        TabOrder = 0
        DataField = 'Nota2'
        DataSource = DS
        StyleController = dm.dxEstilo
        Height = 90
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dir. Factura'
      ImageIndex = 1
      object Label12: TLabel
        Left = 9
        Top = 1
        Width = 45
        Height = 13
        Caption = 'Direccion'
      end
      object Label13: TLabel
        Left = 8
        Top = 51
        Width = 31
        Height = 13
        Caption = 'Sector'
      end
      object Label14: TLabel
        Left = 136
        Top = 51
        Width = 33
        Height = 13
        Caption = 'Ciudad'
      end
      object Label15: TLabel
        Left = 280
        Top = 51
        Width = 18
        Height = 13
        Caption = 'Tel.'
      end
      object Label19: TLabel
        Left = 8
        Top = 77
        Width = 17
        Height = 13
        Caption = 'Fax'
      end
      object Label20: TLabel
        Left = 144
        Top = 77
        Width = 25
        Height = 13
        Caption = 'eMail'
      end
      object dxDBEdit12: TdxDBEdit
        Left = 9
        Top = 13
        Width = 416
        TabOrder = 0
        AutoSize = False
        DataField = 'Direccion'
        DataSource = DS
        StyleController = dm.dxEstilo
        Height = 30
      end
      object dxDBEdit13: TdxDBEdit
        Left = 48
        Top = 48
        Width = 81
        TabOrder = 1
        DataField = 'Sector'
        DataSource = DS
        StyleController = dm.dxEstilo
      end
      object dxDBEdit14: TdxDBEdit
        Left = 176
        Top = 48
        Width = 97
        TabOrder = 2
        DataField = 'Ciudad'
        DataSource = DS
        StyleController = dm.dxEstilo
      end
      object dxDBEdit15: TdxDBEdit
        Left = 312
        Top = 48
        Width = 113
        TabOrder = 3
        DataField = 'Telefono'
        DataSource = DS
        StyleController = dm.dxEstilo
      end
      object dxDBEdit17: TdxDBEdit
        Left = 48
        Top = 73
        Width = 89
        TabOrder = 4
        DataField = 'Fax'
        DataSource = DS
        StyleController = dm.dxEstilo
      end
      object dxDBEdit18: TdxDBEdit
        Left = 176
        Top = 73
        Width = 249
        TabOrder = 5
        DataField = 'eMail'
        DataSource = DS
        StyleController = dm.dxEstilo
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Direc Envio / Obra'
      ImageIndex = 2
      object Label17: TLabel
        Left = 16
        Top = 24
        Width = 75
        Height = 13
        Caption = 'Direccion Envio'
      end
      object dxDBLookupEdit2: TdxDBLookupEdit
        Left = 16
        Top = 40
        Width = 345
        TabOrder = 0
        DataField = 'idClienteObra'
        DataSource = DS
        ReadOnly = False
        StyleController = dm.dxEstilo
        ListFieldName = 'idClienteObra'
        CanDeleteText = True
        KeyFieldName = 'idClienteObra'
        ListSource = dsClienteObra
        LookupKeyValue = Null
        StoredValues = 64
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Cobrador'
      ImageIndex = 4
      object Label24: TLabel
        Left = 8
        Top = 32
        Width = 43
        Height = 13
        Caption = 'Cobrador'
      end
      object dxDBLookupEdit1: TdxDBLookupEdit
        Left = 70
        Top = 24
        Width = 355
        TabOrder = 0
        DataField = 'idCobrador'
        DataSource = DS
        ReadOnly = False
        StyleController = dm.dxEstilo
        ClearKey = 46
        ListFieldName = 'Empleado'
        CanDeleteText = True
        KeyFieldName = 'idEmpleado'
        ListSource = dsEmpleado
        LookupKeyValue = Null
        StoredValues = 64
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Almacen'
      ImageIndex = 5
      DesignSize = (
        537
        94)
      object Label25: TLabel
        Left = 16
        Top = 24
        Width = 41
        Height = 13
        Caption = 'Almacen'
      end
      object dxDBLookupEdit3: TdxDBLookupEdit
        Left = 91
        Top = 20
        Width = 402
        TabOrder = 0
        Anchors = [akLeft, akTop, akRight]
        DataField = 'idAlmacen'
        DataSource = DS
        StyleController = dm.dxEstilo
        ListFieldName = 'Almacen'
        KeyFieldName = 'idAlmacen'
        ListSource = dsAlmacen
        LookupKeyValue = Null
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Notas del Cliente'
      ImageIndex = 7
      DesignSize = (
        537
        94)
      object dxDBMemo4: TdxDBMemo
        Left = 1
        Top = 2
        Width = 535
        TabOrder = 0
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataField = 'Notas'
        DataSource = dsClienteAct
        StyleController = dm.dxEstilo
        Height = 91
      end
    end
  end
  object dxDBEdit16: TdxDBEdit [39]
    Left = 751
    Top = 213
    Width = 126
    TabOrder = 10
    OnDblClick = dxDBEdit16DblClick
    Anchors = [akTop, akRight]
    DataField = 'Cotizacion'
    DataSource = DS
    ReadOnly = False
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object desc: TdxDBEdit [40]
    Left = 755
    Top = 520
    Width = 30
    TabOrder = 20
    Anchors = [akRight, akBottom]
    DataField = 'PorcDesc'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object PagaItbis: TdxDBCheckEdit [41]
    Left = 553
    Top = 542
    Width = 75
    TabOrder = 21
    OnClick = PagaItbisClick
    Anchors = [akRight, akBottom]
    Alignment = taLeftJustify
    Caption = 'Paga Itbis'
    DataField = 'PagaItbis'
    DataSource = DS
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    OnChange = PagaItbisClick
    StoredValues = 1
  end
  object dxDBEdit4: TdxDBEdit [42]
    Left = 751
    Top = 189
    Width = 126
    TabOrder = 7
    OnDblClick = dxDBEdit4DblClick
    Anchors = [akTop, akRight]
    DataField = 'OrdComp'
    DataSource = DS
    ReadOnly = False
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit19: TdxDBEdit [43]
    Left = 553
    Top = 581
    Width = 72
    TabOrder = 22
    Anchors = [akRight, akBottom]
    DataField = 'FechaCancelado'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [44]
    Left = 597
    Top = 496
    Width = 64
    Height = 21
    Anchors = [akRight, akBottom]
    DataBinding.DataField = 'idMoneda'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'idMoneda'
    Properties.ListColumns = <
      item
        FieldName = 'Moneda'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dm.dsMoneda
    Style.BorderStyle = ebsOffice11
    Style.LookAndFeel.NativeStyle = True
    Style.StyleController = dm.cxEstilo
    TabOrder = 19
  end
  object PrnFormat: TcxComboBox [45]
    Left = 799
    Top = 639
    Width = 77
    Height = 21
    TabStop = False
    Anchors = [akRight, akBottom]
    Properties.Items.Strings = (
      'Formato A'
      'Formato B')
    TabOrder = 23
    Text = 'Formato A'
  end
  object dxDBLookupEdit6: TdxDBLookupEdit [46]
    Left = 750
    Top = 165
    Width = 127
    TabOrder = 2
    Anchors = [akTop, akRight]
    DataField = 'idCondicion'
    DataSource = DS
    StyleController = dm.dxEstilo
    ListFieldName = 'Condicion'
    KeyFieldName = 'IdCondicion'
    ListSource = dslucondicion
    LookupKeyValue = Null
  end
  object dxDBEdit21: TdxDBEdit [47]
    Left = 417
    Top = 213
    Width = 166
    Color = 15066597
    TabOrder = 9
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    DataField = 'CompFiscal'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit22: TdxDBEdit [48]
    Left = 275
    Top = 213
    Width = 117
    TabOrder = 8
    DataField = 'ClienteRNC'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit24: TdxDBEdit [49]
    Left = 583
    Top = 518
    Width = 64
    TabOrder = 24
    Anchors = [akRight, akBottom]
    DataField = 'Tasa'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBMemo3: TdxDBMemo [50]
    Left = 100
    Top = 638
    Width = 450
    TabOrder = 25
    Anchors = [akLeft, akRight, akBottom]
    DataField = 'Observacion'
    DataSource = DS
    StyleController = dm.dxEstilo
    Height = 23
  end
  object cxButton1: TcxButton [51]
    Left = 4
    Top = 639
    Width = 93
    Height = 22
    Action = AObservacion
    Anchors = [akLeft, akBottom]
    TabOrder = 26
    LookAndFeel.NativeStyle = True
  end
  object dxDBEdit25: TdxDBEdit [52]
    Left = 306
    Top = 165
    Width = 62
    TabOrder = 27
    TabStop = False
    DataField = 'Hora'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit1: TdxDBEdit [53]
    Left = 628
    Top = 581
    Width = 30
    TabOrder = 28
    Anchors = [akRight, akBottom]
    DataField = 'TipoAnulacion'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object cxGrid1: TcxGrid [54]
    Left = 4
    Top = 376
    Width = 874
    Height = 114
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 29
    OnEnter = cxGrid1Enter
    OnExit = cxGrid1Exit
    LookAndFeel.NativeStyle = True
    object cxGrid: TcxGridDBBandedTableView
      PopupMenu = PopupMenu1
      DataController.DataModeController.GridMode = True
      DataController.DataSource = DS2
      DataController.KeyFieldNames = 'idFacturaDet'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Delete.Visible = True
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Refresh.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      OptionsBehavior.AlwaysShowEditor = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsSelection.HideSelection = True
      OptionsView.ScrollBars = ssVertical
      OptionsView.Navigator = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.BandHeaders = False
      Styles.Content = cxStyle3
      Bands = <
        item
        end>
      object cxGrididProducto: TcxGridDBBandedColumn
        DataBinding.FieldName = 'idProducto'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGrididProductoPropertiesButtonClick
        HeaderAlignmentHorz = taCenter
        MinWidth = 94
        Options.Filtering = False
        Options.HorzSizing = False
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridProducto: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Producto'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 222
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridCantidad: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Cantidad'
        HeaderAlignmentHorz = taCenter
        MinWidth = 68
        Options.Filtering = False
        Options.HorzSizing = False
        Width = 68
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridPrecio: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Precio'
        HeaderAlignmentHorz = taCenter
        MinWidth = 82
        Options.Filtering = False
        Options.HorzSizing = False
        Width = 82
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrididUnidad: TcxGridDBBandedColumn
        DataBinding.FieldName = 'idUnidad'
        HeaderAlignmentHorz = taCenter
        MinWidth = 62
        Options.Filtering = False
        Options.HorzSizing = False
        Width = 62
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGridDescuento: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Descuento'
        HeaderAlignmentHorz = taCenter
        MinWidth = 72
        Options.Filtering = False
        Options.HorzSizing = False
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGridItbis: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Itbis'
        HeaderAlignmentHorz = taCenter
        MinWidth = 69
        Options.Filtering = False
        Options.Focusing = False
        Options.HorzSizing = False
        Width = 69
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGridLineTotal: TcxGridDBBandedColumn
        Caption = 'Importe'
        DataBinding.FieldName = 'LineTotalExt'
        HeaderAlignmentHorz = taCenter
        MinWidth = 96
        Options.Filtering = False
        Options.Focusing = False
        Options.HorzSizing = False
        Width = 96
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGrididAlmacen: TcxGridDBBandedColumn
        Caption = 'Almacen'
        DataBinding.FieldName = 'idAlmacen'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'idAlmacen'
        Properties.ListColumns = <
          item
            FieldName = 'Almacen'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsAlmacen
        Options.Filtering = False
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid
    end
  end
  inline frBuscadorProds1: TfrBuscadorProds [55]
    Left = 8
    Top = 235
    Width = 877
    Height = 141
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 30
    inherited grListaProds: TdxDBGrid
      Left = 2
      Top = 30
      Width = 865
      Height = 105
      Filter.Criteria = {00000000}
      inherited dxDBGrid1ProductoID: TdxDBGridMaskColumn
        Width = 96
      end
      inherited dxDBGrid1Descripcion: TdxDBGridMaskColumn
        Width = 428
      end
      inherited dxDBGrid1CodigoFabricante: TdxDBGridMaskColumn
        Width = 108
      end
      inherited dxDBGrid1Referencia: TdxDBGridMaskColumn
        Width = 100
      end
      inherited dxDBGrid1Precio: TdxDBGridCurrencyColumn
        Width = 103
      end
    end
    inherited rsLista: TADODataSet
      Left = 401
      Top = 96
    end
    inherited ds: TDataSource
      Left = 447
      Top = 99
    end
  end
  object NoPromov: TcxCheckBox [56]
    Left = 864
    Top = 142
    Width = 22
    Height = 21
    Properties.ReadOnly = True
    TabOrder = 31
    Visible = False
  end
  object dxDBLookupEdit4: TdxDBLookupEdit [57]
    Left = 444
    Top = 162
    Width = 243
    TabOrder = 32
    Anchors = [akLeft, akRight, akBottom]
    DataField = 'idTipoIngreso'
    DataSource = DS
    ReadOnly = False
    StyleController = dm.dxEstilo
    ClearKey = 46
    ListFieldName = 'Tipo'
    CanDeleteText = True
    KeyFieldName = 'idTipo'
    ListSource = dsTipoIngreso
    LookupKeyValue = Null
    StoredValues = 64
  end
  object dxDBEdit3: TdxDBEdit [58]
    Left = 553
    Top = 617
    Width = 124
    TabOrder = 33
    Anchors = [akLeft, akTop, akRight]
    DataField = 'Referencia'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit20: TdxDBEdit [59]
    Left = 592
    Top = 213
    Width = 101
    Hint = 'Fecha de vencimiento del NCF'
    Color = 15066597
    ParentShowHint = False
    ShowHint = True
    TabOrder = 34
    TabStop = False
    DataField = 'FechaVenceNCF'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit23: TdxDBEdit [60]
    Left = 755
    Top = 609
    Width = 121
    Color = 15066597
    TabOrder = 35
    TabStop = False
    Anchors = [akRight, akBottom]
    DataField = 'Balance'
    DataSource = dsBalance
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit26: TdxDBEdit [61]
    Left = 755
    Top = 587
    Width = 121
    Color = 15066597
    TabOrder = 36
    TabStop = False
    Anchors = [akRight, akBottom]
    DataField = 'Abono'
    DataSource = dsBalance
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  inline BusquedaClientes1: TBusquedaClientes [62]
    Left = -480
    Top = -46
    Width = 320
    Height = 240
    Color = 15528173
    ParentColor = False
    TabOrder = 37
  end
  inline BusquedaClientes2: TBusquedaClientes [63]
    Left = 9
    Top = 43
    Width = 868
    Height = 110
    Color = 15528173
    ParentColor = False
    TabOrder = 38
    inherited grid: TDBGrid
      Width = 1321
      Height = 264
    end
    inherited BitBtn1: TBitBtn
      Left = 1253
      Top = 344
    end
    inherited BitBtn2: TBitBtn
      Left = 1163
      Top = 345
    end
    inherited edtBuscar: TEdit
      Width = 1274
    end
  end
  inherited DS: TwwDataSource [64]
    Left = 16
    Top = 493
  end
  inherited ImageList: TImageList [65]
    Left = 16
    Top = 440
  end
  inherited Acciones: TActionList [66]
    Left = 14
    Top = 65533
    inherited Asalir: TAction
      ShortCut = 16507
    end
    inherited AAnular: TAction
      Caption = 'Anular'
      ImageIndex = 3
    end
    object Clientes: TAction
      Caption = 'Clientes'
      Hint = 'F11 Lista Clientes'
      ShortCut = 122
      OnExecute = ClientesExecute
    end
    object ACotizacion: TAction
      Caption = 'Fact Cotiz'
      ImageIndex = 5
      OnExecute = ACotizacionExecute
    end
    object Conduce2Factura: TAction
      Caption = 'Facturar Conduces'
      ImageIndex = 5
    end
    object AGetProduct: TAction
      Caption = 'AGetProduct'
      ShortCut = 123
      OnExecute = AGetProductExecute
    end
    object AOrdComp2Factura: TAction
      Caption = 'Fact Pedido'
      OnExecute = AOrdComp2FacturaExecute
    end
    object SendMail: TAction
      Caption = 'eMail'
      Visible = False
      OnExecute = SendMailExecute
    end
    object AProductoDet: TAction
      Caption = 'Detalles del Producto'
      ShortCut = 16496
      OnExecute = AProductoDetExecute
    end
    object AFacturaDetEspec: TAction
      Caption = 'Especificaciones Tecnicas de Producto'
      OnExecute = AFacturaDetEspecExecute
    end
    object AObservacion: TAction
      Caption = 'Observaciones'
      OnExecute = AObservacionExecute
    end
    object Evaluacion: TAction
      Caption = 'Evaluacion'
      ImageIndex = 5
      OnExecute = EvaluacionExecute
    end
  end
  inherited RS: TADODataSet
    BeforePost = RSBeforePost
    OnNewRecord = RSNewRecord
    CommandText = 'rsFactura;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idFactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 79
    Top = 232
    object RSidFactura: TGuidField
      FieldName = 'idFactura'
      FixedChar = True
      Size = 38
    end
    object RSidCliente: TIntegerField
      FieldName = 'idCliente'
      Required = True
      OnValidate = RSidClienteValidate
    end
    object RSCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object RSDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object RSTelefono: TStringField
      FieldName = 'Telefono'
    end
    object RSidEmpleado: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'idEmpleado'
      Required = True
    end
    object RSFecha: TDateTimeField
      FieldName = 'Fecha'
      Required = True
      OnValidate = RSFechaValidate
    end
    object RSHora: TDateTimeField
      FieldName = 'Hora'
      DisplayFormat = 'HH:MM'
    end
    object RSReferencia: TStringField
      FieldName = 'Referencia'
    end
    object RSCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object RSCredito: TBooleanField
      FieldName = 'Credito'
    end
    object RSidCompania: TIntegerField
      FieldName = 'idCompania'
    end
    object RSSubTotal: TBCDField
      FieldName = 'SubTotal'
      Required = True
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSItbis: TBCDField
      FieldName = 'Itbis'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSDescuento: TBCDField
      FieldName = 'Descuento'
      OnValidate = RSDescuentoValidate
      DisplayFormat = '#,0.00'
      Precision = 19
      Size = 2
    end
    object RSTotal: TBCDField
      FieldName = 'Total'
      Required = True
      DisplayFormat = '#,0.00'
      Precision = 19
      Size = 2
    end
    object RSNota: TStringField
      DisplayWidth = 600
      FieldName = 'Nota'
      Size = 600
    end
    object RSUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object RSContacto: TStringField
      FieldName = 'Contacto'
      Size = 50
    end
    object RSSector: TStringField
      FieldName = 'Sector'
    end
    object RSCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object RSFactura: TStringField
      FieldName = 'Factura'
      Size = 16
    end
    object RSCotizacion: TStringField
      FieldName = 'Cotizacion'
      OnValidate = RSCotizacionValidate
      Size = 16
    end
    object RSidCotizacion: TGuidField
      FieldName = 'idCotizacion'
      FixedChar = True
      Size = 38
    end
    object RSidClienteObra: TStringField
      FieldName = 'idClienteObra'
      Size = 25
    end
    object RSPagaItbis: TBooleanField
      FieldName = 'PagaItbis'
      OnChange = RSPagaItbisChange
    end
    object RSidOrdComp: TGuidField
      FieldName = 'idOrdComp'
      FixedChar = True
      Size = 38
    end
    object RSOrdComp: TStringField
      FieldName = 'OrdComp'
      OnValidate = RSOrdCompValidate
      Size = 16
    end
    object RSFax: TStringField
      FieldName = 'Fax'
    end
    object RSeMail: TStringField
      FieldName = 'eMail'
      Size = 80
    end
    object RSPorcDesc: TFloatField
      FieldName = 'PorcDesc'
      OnValidate = RSPorcDescValidate
    end
    object RSCondicion: TIntegerField
      FieldName = 'Condicion'
      OnValidate = RSCondicionValidate
    end
    object RSFechaCancelado: TDateTimeField
      FieldName = 'FechaCancelado'
    end
    object RSidMoneda: TIntegerField
      FieldName = 'idMoneda'
      OnValidate = RSidMonedaValidate
    end
    object RSidCobrador: TIntegerField
      FieldName = 'idCobrador'
    end
    object RSidAlmacen: TStringField
      FieldName = 'idAlmacen'
      OnValidate = RSidAlmacenValidate
      Size = 16
    end
    object RSCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object RSNota2: TStringField
      FieldName = 'Nota2'
      Size = 600
    end
    object RSClienteRNC: TStringField
      FieldName = 'ClienteRNC'
      Required = True
    end
    object RSidCondicion: TStringField
      FieldName = 'idCondicion'
      Required = True
      OnValidate = RSidCondicionValidate
      Size = 16
    end
    object RSTasa: TBCDField
      FieldName = 'Tasa'
      Required = True
      Precision = 18
      Size = 2
    end
    object RSObservacion: TStringField
      FieldName = 'Observacion'
      Size = 200
    end
    object RSTipoAnulacion: TStringField
      FieldName = 'TipoAnulacion'
      Size = 2
    end
    object RSidReferencia: TGuidField
      FieldName = 'idReferencia'
      FixedChar = True
      Size = 38
    end
    object RSidTipoIngreso: TIntegerField
      FieldName = 'idTipoIngreso'
    end
    object RSFechaVenceNCF: TDateTimeField
      FieldName = 'FechaVenceNCF'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object RScomputer: TStringField
      FieldName = 'computer'
      Size = 200
    end
    object RSidDoctor: TIntegerField
      FieldName = 'idDoctor'
    end
  end
  inherited DS2: TwwDataSource
    Left = 248
    Top = 440
  end
  inherited RSDet: TADODataSet
    BeforePost = RSDetBeforePost
    AfterPost = RSDetAfterPost
    AfterDelete = RSDetAfterPost
    OnCalcFields = RSDetCalcFields
    OnNewRecord = RSDetNewRecord
    CommandText = 'rsFacturaDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idFactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 132
    Top = 228
    object RSDetidProducto: TStringField
      DisplayLabel = 'Producto'
      DisplayWidth = 19
      FieldName = 'idProducto'
      OnSetText = RSDetidProductoSetText
      OnValidate = RSDetidProductoValidate
      Size = 25
    end
    object RSDetProducto: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 47
      FieldName = 'Producto'
      Size = 120
    end
    object RSDetCantidad: TFloatField
      DisplayWidth = 8
      FieldName = 'Cantidad'
      OnValidate = RSDetCantidadValidate
    end
    object RSDetidUnidad: TStringField
      DisplayLabel = 'Unidad'
      DisplayWidth = 10
      FieldName = 'idUnidad'
      Size = 16
    end
    object RSDetDescuento: TBCDField
      DisplayLabel = 'Desc'
      DisplayWidth = 11
      FieldName = 'Descuento'
      OnValidate = RSDetDescuentoValidate
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSDetItbis: TBCDField
      DisplayWidth = 10
      FieldName = 'Itbis'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSDetLineTotal: TBCDField
      DisplayLabel = 'Importe'
      DisplayWidth = 17
      FieldName = 'LineTotal'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSDetPrecio: TBCDField
      FieldName = 'Precio'
      Visible = False
      OnValidate = RSDetPrecioValidate
      DisplayFormat = '#,0.00###'
      Precision = 19
      Size = 5
    end
    object RSDetidFacturaDet: TGuidField
      DisplayWidth = 38
      FieldName = 'idFacturaDet'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object RSDetidFactura: TGuidField
      DisplayWidth = 38
      FieldName = 'idFactura'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object RSDetLinea: TIntegerField
      FieldName = 'Linea'
      Visible = False
    end
    object RSDetidCargo: TGuidField
      FieldName = 'idCargo'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object RSDetidAlmacen: TStringField
      FieldName = 'idAlmacen'
      Visible = False
      Size = 16
    end
    object RSDetLineTotalExt: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'LineTotalExt'
      Calculated = True
    end
  end
  object ClienteAct: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'ClienteAct;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idCliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 16
    Top = 228
    object ClienteActidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object ClienteActCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object ClienteActContacto: TStringField
      FieldName = 'Contacto'
      Size = 40
    end
    object ClienteActLimiteCredito: TBCDField
      FieldName = 'LimiteCredito'
      Precision = 19
      Size = 2
    end
    object ClienteActActivo: TBooleanField
      FieldName = 'Activo'
    end
    object ClienteActidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object ClienteActDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object ClienteActSector: TStringField
      FieldName = 'Sector'
    end
    object ClienteActCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object ClienteActTelefono: TStringField
      FieldName = 'Telefono'
    end
    object ClienteActNoPagaItbis: TBooleanField
      FieldName = 'NoPagaItbis'
    end
    object ClienteActDescuento: TFloatField
      FieldName = 'Descuento'
    end
    object ClienteActFax: TStringField
      FieldName = 'Fax'
    end
    object ClienteActeMail: TStringField
      FieldName = 'eMail'
      Size = 80
    end
    object ClienteActidListaPrecio: TStringField
      FieldName = 'idListaPrecio'
      Size = 16
    end
    object ClienteActCondicion: TIntegerField
      FieldName = 'Condicion'
    end
    object ClienteActRNC_Cedula: TStringField
      FieldName = 'RNC_Cedula'
    end
    object ClienteActidCondicion: TStringField
      FieldName = 'idCondicion'
      Size = 16
    end
    object ClienteActNotas: TStringField
      FieldName = 'Notas'
      Size = 2000
    end
  end
  object dsEstacionAct: TDataSource
    DataSet = ClienteAct
    Left = 190
    Top = 387
  end
  object ProductoAct: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'ProductoAct;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idProducto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@Lista'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@idAlmacen'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@idMoneda'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 190
    Top = 175
    object ProductoActidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object ProductoActProducto: TStringField
      FieldName = 'Producto'
      Size = 100
    end
    object ProductoActAutoDescuento: TBooleanField
      FieldName = 'AutoDescuento'
    end
    object ProductoActExistencia: TBCDField
      FieldName = 'Existencia'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object ProductoActCostoPromedio: TBCDField
      FieldName = 'CostoPromedio'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object ProductoActInactivo: TBooleanField
      FieldName = 'Inactivo'
    end
    object ProductoActporciento: TFloatField
      FieldName = 'porciento'
    end
    object ProductoActidUnidad: TStringField
      FieldName = 'idUnidad'
      Size = 16
    end
    object ProductoActDescuento: TFloatField
      FieldName = 'Descuento'
    end
    object ProductoActExistenciaNeg: TBooleanField
      FieldName = 'ExistenciaNeg'
    end
    object ProductoActidListaPrecio: TStringField
      FieldName = 'idListaPrecio'
      ReadOnly = True
      Size = 16
    end
    object ProductoActMinimo: TFloatField
      FieldName = 'Minimo'
    end
    object ProductoActReorden: TFloatField
      FieldName = 'Reorden'
    end
    object ProductoActCambiarPrecio: TBooleanField
      FieldName = 'CambiarPrecio'
    end
    object ProductoActidPartida: TStringField
      FieldName = 'idPartida'
      Size = 16
    end
    object ProductoActidMoneda: TIntegerField
      FieldName = 'idMoneda'
      ReadOnly = True
    end
    object ProductoActCalcExistencia: TBooleanField
      FieldName = 'CalcExistencia'
    end
    object ProductoActMonedaProducto: TIntegerField
      FieldName = 'MonedaProducto'
    end
    object ProductoActPrecioContProd: TBCDField
      FieldName = 'PrecioContProd'
      Precision = 19
    end
    object ProductoActPrecioCredProd: TBCDField
      FieldName = 'PrecioCredProd'
      Precision = 19
    end
    object ProductoActDescNivel1: TFloatField
      FieldName = 'DescNivel1'
    end
    object ProductoActDescNivel2: TFloatField
      FieldName = 'DescNivel2'
    end
    object ProductoActDescNivel3: TFloatField
      FieldName = 'DescNivel3'
    end
    object ProductoActDescuentoPermitido: TFloatField
      FieldName = 'DescuentoPermitido'
    end
    object ProductoActDescuentoVence: TDateTimeField
      FieldName = 'DescuentoVence'
    end
    object ProductoActPrecioContado: TBCDField
      FieldName = 'PrecioContado'
      ReadOnly = True
      Precision = 21
    end
    object ProductoActPrecioCredito: TBCDField
      FieldName = 'PrecioCredito'
      ReadOnly = True
      Precision = 21
    end
    object ProductoActParaVender: TBooleanField
      FieldName = 'ParaVender'
    end
    object ProductoActGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
  end
  object dsProductoAct: TDataSource
    DataSet = ProductoAct
    Left = 350
    Top = 391
  end
  object SPTieneCredito: TADOCommand
    CommandText = 'SPTieneCredito;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idCliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@MasMonto'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@TieneCredito'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 132
    Top = 65533
  end
  object SPCreditoAutorizacion: TADOCommand
    CommandText = 'SPCreditoAutorizacion;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Autorizacion'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = '@Descripcion'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@Referencia'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Clase'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@CreditoAutorizacion'
        Attributes = [paNullable]
        DataType = ftBoolean
        Direction = pdInputOutput
        Value = Null
      end>
    Left = 336
    Top = 181
  end
  object AnularFact: TADOCommand
    CommandText = 'SPFacturaAnular;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idFactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@Anulado'
        Attributes = [paNullable]
        DataType = ftBoolean
        Direction = pdInputOutput
        Value = Null
      end
      item
        Name = '@TipoAnulacion'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end>
    Left = 190
    Top = 65533
  end
  object Empleado: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'spVendedores;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 248
    Top = 175
  end
  object dsEmpleado: TDataSource
    DataSet = Empleado
    Left = 248
    Top = 387
  end
  object Cotizacion2Fact: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'Cotizacion2Fact;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idCotizacion'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 190
    Top = 228
    object Cotizacion2FactidCotizacion: TGuidField
      FieldName = 'idCotizacion'
      FixedChar = True
      Size = 38
    end
    object Cotizacion2FactidCotizacionStatus: TStringField
      FieldName = 'idCotizacionStatus'
      Size = 16
    end
    object Cotizacion2FactidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object Cotizacion2FactCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object Cotizacion2FactContacto: TStringField
      FieldName = 'Contacto'
      Size = 50
    end
    object Cotizacion2FactDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object Cotizacion2FactSector: TStringField
      FieldName = 'Sector'
    end
    object Cotizacion2FactCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object Cotizacion2FactTelefono: TStringField
      FieldName = 'Telefono'
    end
    object Cotizacion2FactidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object Cotizacion2FactFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object Cotizacion2FactHora: TDateTimeField
      FieldName = 'Hora'
    end
    object Cotizacion2FactCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object Cotizacion2FactCredito: TBooleanField
      FieldName = 'Credito'
    end
    object Cotizacion2FactidCompania: TIntegerField
      FieldName = 'idCompania'
    end
    object Cotizacion2FactSubTotal: TBCDField
      FieldName = 'SubTotal'
      Precision = 18
      Size = 2
    end
    object Cotizacion2FactItbis: TBCDField
      FieldName = 'Itbis'
      Precision = 18
      Size = 2
    end
    object Cotizacion2FactDescuento: TBCDField
      FieldName = 'Descuento'
      Precision = 19
      Size = 2
    end
    object Cotizacion2FactNota: TStringField
      FieldName = 'Nota'
      Size = 50
    end
    object Cotizacion2FactUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object Cotizacion2FactTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
      Size = 2
    end
    object Cotizacion2FactidCotizacionDet: TGuidField
      FieldName = 'idCotizacionDet'
      FixedChar = True
      Size = 38
    end
    object Cotizacion2FactidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object Cotizacion2FactProducto: TStringField
      FieldName = 'Producto'
      Size = 120
    end
    object Cotizacion2FactCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object Cotizacion2FactPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 18
      Size = 2
    end
    object Cotizacion2FactidUnidad: TStringField
      FieldName = 'idUnidad'
      Size = 16
    end
    object Cotizacion2FactDescDet: TBCDField
      FieldName = 'DescDet'
      Precision = 18
      Size = 2
    end
    object Cotizacion2FactItbisDet: TBCDField
      FieldName = 'ItbisDet'
      Precision = 18
      Size = 2
    end
    object Cotizacion2FactLineTotal: TBCDField
      FieldName = 'LineTotal'
      Precision = 18
      Size = 2
    end
    object Cotizacion2FactCotizacion: TStringField
      FieldName = 'Cotizacion'
      Size = 16
    end
    object Cotizacion2FactidClienteObra: TStringField
      FieldName = 'idClienteObra'
      Size = 25
    end
    object Cotizacion2FactPorcDesc: TFloatField
      FieldName = 'PorcDesc'
    end
    object Cotizacion2FactCondicion: TIntegerField
      FieldName = 'Condicion'
    end
    object Cotizacion2FactidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object Cotizacion2FactCotizacionstatus: TStringField
      FieldName = 'Cotizacionstatus'
      Size = 50
    end
    object Cotizacion2Factfacturable: TBooleanField
      FieldName = 'facturable'
    end
    object Cotizacion2FactidCondicion: TStringField
      FieldName = 'idCondicion'
      Size = 16
    end
    object Cotizacion2Factpagaitbis: TBooleanField
      FieldName = 'pagaitbis'
    end
    object Cotizacion2Factreferencia: TStringField
      FieldName = 'referencia'
    end
  end
  object ClienteObra: TADODataSet
    Connection = dm.Coneccion
    CommandText = 'ClienteObraList;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idCliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 248
    Top = 228
    object ClienteObraidClienteObra: TStringField
      FieldName = 'idClienteObra'
      Size = 25
    end
    object ClienteObraidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object ClienteObraDireccionObra: TStringField
      FieldName = 'DireccionObra'
      Size = 120
    end
    object ClienteObraSectorObra: TStringField
      FieldName = 'SectorObra'
      Size = 50
    end
    object ClienteObraCiudadObra: TStringField
      FieldName = 'CiudadObra'
    end
    object ClienteObraTelefonoObra: TStringField
      FieldName = 'TelefonoObra'
    end
    object ClienteObraFaxObra: TStringField
      FieldName = 'FaxObra'
    end
    object ClienteObraCelularObra: TStringField
      FieldName = 'CelularObra'
    end
    object ClienteObraContactoObra: TStringField
      FieldName = 'ContactoObra'
      Size = 40
    end
  end
  object dsClienteObra: TDataSource
    DataSet = ClienteObra
    Left = 132
    Top = 334
  end
  object Factura2Cxc: TADOCommand
    CommandText = 'Factura2CxC;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idFactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 48
    Top = 228
  end
  object rptFactura: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    OnCalcFields = rptFacturaCalcFields
    CommandText = 'RPTFactura;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idFactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@balance'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end>
    Left = 462
    Top = 274
    object rptFacturaidFactura: TGuidField
      FieldName = 'idFactura'
      FixedChar = True
      Size = 38
    end
    object rptFacturaFactura: TStringField
      FieldName = 'Factura'
      Size = 16
    end
    object rptFacturaCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object rptFacturaContacto: TStringField
      FieldName = 'Contacto'
      Size = 50
    end
    object rptFacturaDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object rptFacturaSector: TStringField
      FieldName = 'Sector'
    end
    object rptFacturaCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object rptFacturaTelefono: TStringField
      FieldName = 'Telefono'
    end
    object rptFacturaEmpleado: TStringField
      FieldName = 'Empleado'
      Size = 40
    end
    object rptFacturaFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rptFacturaReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rptFacturaCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object rptFacturaCondicion: TStringField
      FieldName = 'Condicion'
      Size = 50
    end
    object rptFacturaCredito: TBooleanField
      FieldName = 'Credito'
    end
    object rptFacturaSubTotal: TBCDField
      FieldName = 'SubTotal'
      Precision = 18
      Size = 2
    end
    object rptFacturaItbis: TBCDField
      FieldName = 'Itbis'
      Precision = 18
      Size = 2
    end
    object rptFacturaDescuento: TBCDField
      FieldName = 'Descuento'
      Precision = 19
      Size = 2
    end
    object rptFacturaTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
      Size = 2
    end
    object rptFacturaNota: TStringField
      FieldName = 'Nota'
      Size = 600
    end
    object rptFacturaidClienteObra: TStringField
      FieldName = 'idClienteObra'
      Size = 25
    end
    object rptFacturaidFacturaDet: TGuidField
      FieldName = 'idFacturaDet'
      FixedChar = True
      Size = 38
    end
    object rptFacturaDetidProducto: TStringField
      FieldName = 'DetidProducto'
      Size = 25
    end
    object rptFacturaDetProducto: TStringField
      FieldName = 'DetProducto'
      Size = 120
    end
    object rptFacturaDetCantidad: TFloatField
      FieldName = 'DetCantidad'
    end
    object rptFacturaDetPrecio: TBCDField
      FieldName = 'DetPrecio'
      Precision = 18
      Size = 2
    end
    object rptFacturaDetDescuento: TBCDField
      FieldName = 'DetDescuento'
      Precision = 18
      Size = 2
    end
    object rptFacturaDetITBIS: TBCDField
      FieldName = 'DetITBIS'
      Precision = 18
      Size = 2
    end
    object rptFacturaDetLineTotal: TBCDField
      FieldName = 'DetLineTotal'
      Precision = 18
      Size = 2
    end
    object rptFacturacoCompania: TStringField
      FieldName = 'coCompania'
      Size = 50
    end
    object rptFacturacoDireccion: TStringField
      FieldName = 'coDireccion'
      Size = 120
    end
    object rptFacturacoTelefono: TStringField
      FieldName = 'coTelefono'
      Size = 15
    end
    object rptFacturacoFax: TStringField
      FieldName = 'coFax'
      Size = 15
    end
    object rptFacturacoRNC: TStringField
      FieldName = 'coRNC'
    end
    object rptFacturaOrdComp: TStringField
      FieldName = 'OrdComp'
      Size = 16
    end
    object rptFacturaidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object rptFacturaidUnidad: TStringField
      FieldName = 'idUnidad'
      Size = 16
    end
    object rptFacturaVencimiento: TDateTimeField
      FieldName = 'Vencimiento'
      ReadOnly = True
    end
    object rptFacturaNota2: TStringField
      FieldName = 'Nota2'
      Size = 600
    end
    object rptFacturaCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object rptFacturaClienteRNC: TStringField
      FieldName = 'ClienteRNC'
    end
    object rptFacturaTipoNCF: TStringField
      FieldName = 'TipoNCF'
      Size = 50
    end
    object rptFacturaEspecificacion: TStringField
      FieldName = 'Especificacion'
      Size = 5000
    end
    object rptFacturaidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rptFacturaMoneda: TStringField
      FieldName = 'Moneda'
    end
    object rptFacturaFax: TStringField
      FieldName = 'Fax'
    end
    object rptFacturaLinea: TIntegerField
      FieldName = 'Linea'
    end
    object rptFacturaNumeroSuplidor: TStringField
      FieldName = 'NumeroSuplidor'
      Size = 16
    end
    object rptFacturaPrecioDia: TBCDField
      FieldName = 'PrecioDia'
      Precision = 19
      Size = 2
    end
    object rptFacturaDias: TBCDField
      FieldName = 'Dias'
      Precision = 19
      Size = 2
    end
    object rptFacturaCelular: TStringField
      FieldName = 'Celular'
    end
    object rptFacturahora: TDateTimeField
      FieldName = 'hora'
    end
    object rptFacturaObservacion: TStringField
      FieldName = 'Observacion'
      Size = 200
    end
    object rptFacturaemail: TStringField
      FieldName = 'email'
      Size = 80
    end
    object rptFacturaUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object rptFacturaidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object rptFacturaClienteObra: TStringField
      FieldName = 'ClienteObra'
      Size = 100
    end
    object rptFacturaNetLineTotal: TBCDField
      FieldName = 'NetLineTotal'
      ReadOnly = True
      Precision = 20
      Size = 2
    end
    object rptFacturaDevuelta: TBCDField
      FieldName = 'Devuelta'
      ReadOnly = True
      Precision = 22
      Size = 2
    end
    object rptFacturaPagadoCon: TBCDField
      FieldName = 'PagadoCon'
      ReadOnly = True
      Precision = 21
      Size = 2
    end
    object rptFacturaFechaVenceNCF: TDateTimeField
      FieldName = 'FechaVenceNCF'
    end
    object rptFacturaSUCURSARDireccion: TStringField
      FieldName = 'SUCURSARDireccion'
      ReadOnly = True
      Size = 2000
    end
    object rptFacturaSUCURSARLTelefono: TStringField
      FieldName = 'SUCURSARLTelefono'
      ReadOnly = True
      Size = 2000
    end
    object rptFacturaBalance: TBCDField
      FieldName = 'Balance'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rptFacturaAbonopendiente: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Abonopendiente'
      Calculated = True
    end
  end
  object dsRptFactura: TDataSource
    DataSet = rptFactura
    Left = 74
    Top = 334
  end
  object FacturaRPT: TppReport
    AutoStop = False
    DataPipeline = plrptFactura
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Factura'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 12700
    PrinterSetup.mmMarginRight = 12700
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 139700
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 125
    Template.FileName = 'E:\cbsexpress\bin\Factura.rtm'
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Printer'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    ShowCancelDialog = False
    ShowPrintDialog = False
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 194
    Top = 439
    Version = '15.02'
    mmColumnWidth = 190500
    DataPipelineName = 'plrptFactura'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 56092
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        Shape = stRoundRect
        mmHeight = 30163
        mmLeft = 0
        mmTop = 25400
        mmWidth = 191030
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'coCompania'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Black'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 8932
        mmLeft = 0
        mmTop = 0
        mmWidth = 145786
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'coRNC'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'plrptFactura'
        mmHeight = 3704
        mmLeft = 7938
        mmTop = 11906
        mmWidth = 57944
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'SUCURSARDireccion'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 7938
        mmWidth = 131763
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'SUCURSARLTelefono'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3704
        mmLeft = 6350
        mmTop = 15875
        mmWidth = 24606
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'coFax'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3704
        mmLeft = 37291
        mmTop = 15875
        mmWidth = 31221
        BandType = 0
        LayerName = Foreground
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Shape = stRoundRect
        mmHeight = 12171
        mmLeft = 87842
        mmTop = 11906
        mmWidth = 102394
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fact. # :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 146050
        mmTop = 13229
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Factura'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 162454
        mmTop = 13229
        mmWidth = 26723
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cond/Dias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 89694
        mmTop = 13229
        mmWidth = 18256
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkEnabled = False
        DataField = 'Condicion'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4498
        mmLeft = 109009
        mmTop = 13229
        mmWidth = 35983
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        Caption = 'Producto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 51329
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        Caption = 'Descripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 25929
        mmTop = 51329
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        Caption = 'Cantidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 107156
        mmTop = 51329
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkEnabled = False
        Caption = 'Precio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 134144
        mmTop = 51329
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkEnabled = False
        Caption = 'Sub Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 172509
        mmTop = 51329
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cliente :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 32015
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'FACTURA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 160602
        mmTop = 0
        mmWidth = 28575
        BandType = 0
        LayerName = Foreground
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 1.000000000000000000
        mmHeight = 1058
        mmLeft = 530
        mmTop = 49742
        mmWidth = 189177
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 19844
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 11113
        mmTop = 19844
        mmWidth = 27781
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Ref / OP :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 145786
        mmTop = 18521
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4763
        mmLeft = 162454
        mmTop = 18256
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'Direccion'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3969
        mmLeft = 22754
        mmTop = 40222
        mmWidth = 109009
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Direccion :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 1323
        mmTop = 39423
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'Telefono'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3969
        mmLeft = 21696
        mmTop = 45244
        mmWidth = 34660
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Telefono :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 1324
        mmTop = 44454
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkEnabled = False
        DataField = 'Sector'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3704
        mmLeft = 86519
        mmTop = 45249
        mmWidth = 34660
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Sector :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 61119
        mmTop = 44450
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        HyperlinkEnabled = False
        DataField = 'idCliente'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3969
        mmLeft = 16669
        mmTop = 32279
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = plrptFactura
        DataField = 'Credito'
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 184944
        mmTop = 7408
        mmWidth = 3440
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'RNC Cliente :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 529
        mmTop = 28046
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkEnabled = False
        DataField = 'ClienteRNC'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3704
        mmLeft = 20108
        mmTop = 28046
        mmWidth = 34660
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkEnabled = False
        Caption = 'Itbis'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 154782
        mmTop = 51329
        mmWidth = 7144
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        UserName = 'Label201'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'NCF :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 134144
        mmTop = 38100
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        HyperlinkEnabled = False
        DataField = 'CompFiscal'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3704
        mmLeft = 143405
        mmTop = 38100
        mmWidth = 32808
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        UserName = 'Label22'
        HyperlinkEnabled = False
        Caption = 'Fax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 30941
        mmTop = 15875
        mmWidth = 6085
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkEnabled = False
        Caption = 'Tel.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 15875
        mmWidth = 6085
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkEnabled = False
        Caption = 'RNC:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 11906
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        HyperlinkEnabled = False
        DataField = 'TipoNCF'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4763
        mmLeft = 134144
        mmTop = 32279
        mmWidth = 55033
        BandType = 0
        LayerName = Foreground
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo3'
        CharWrap = False
        DataField = 'Cliente'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 7938
        mmLeft = 28310
        mmTop = 32279
        mmWidth = 103452
        BandType = 0
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Vencimiento :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 134144
        mmTop = 41804
        mmWidth = 22754
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkEnabled = False
        DataField = 'FechaVenceNCF'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3704
        mmLeft = 156106
        mmTop = 41804
        mmWidth = 26194
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Vendedor :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 89694
        mmTop = 18521
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        HyperlinkEnabled = False
        DataField = 'Empleado'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3704
        mmLeft = 109009
        mmTop = 18256
        mmWidth = 35719
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'DetCantidad'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4022
        mmLeft = 105569
        mmTop = 0
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'DetidProducto'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 1852
        mmTop = 0
        mmWidth = 22490
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkEnabled = False
        DataField = 'DetPrecio'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4022
        mmLeft = 123296
        mmTop = 0
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo2'
        CharWrap = False
        DataField = 'DetProducto'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 0
        mmWidth = 78581
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkEnabled = False
        DataField = 'DetITBIS'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3969
        mmLeft = 146050
        mmTop = 0
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkEnabled = False
        DataField = 'DetLineTotal'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3969
        mmLeft = 165629
        mmTop = 0
        mmWidth = 22764
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 28575
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Descuento :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 127794
        mmTop = 5027
        mmWidth = 26458
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Descuento'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 162454
        mmTop = 5027
        mmWidth = 27252
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'ITBIS :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 127794
        mmTop = 9525
        mmWidth = 26458
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Itbis'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 162455
        mmTop = 9525
        mmWidth = 27252
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Sub Total :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 127794
        mmTop = 529
        mmWidth = 26458
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkEnabled = False
        DataField = 'SubTotal'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 162455
        mmTop = 529
        mmWidth = 27252
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'TOTAL :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 127794
        mmTop = 14023
        mmWidth = 26458
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 162455
        mmTop = 14023
        mmWidth = 27252
        BandType = 8
        LayerName = Foreground
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 13229
        mmWidth = 59267
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Recibido Conforme'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 65617
        mmTop = 14023
        mmWidth = 59796
        BandType = 8
        LayerName = Foreground
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 65881
        mmTop = 13229
        mmWidth = 59267
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Despachado por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 14023
        mmWidth = 59267
        BandType = 8
        LayerName = Foreground
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 1852
        mmTop = 0
        mmWidth = 187855
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 0
        mmTop = 0
        mmWidth = 19727
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        UserName = 'Label23'
        HyperlinkEnabled = False
        Caption = '(Nombre y C'#233'dula)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 65617
        mmTop = 17727
        mmWidth = 59796
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        HyperlinkEnabled = False
        DataField = 'Moneda'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 154517
        mmTop = 529
        mmWidth = 7673
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        HyperlinkEnabled = False
        DataField = 'Moneda'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 154517
        mmTop = 5027
        mmWidth = 7673
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        HyperlinkEnabled = False
        DataField = 'Moneda'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 154517
        mmTop = 9525
        mmWidth = 7673
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        HyperlinkEnabled = False
        DataField = 'Moneda'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 154517
        mmTop = 14023
        mmWidth = 7673
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Original :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 7938
        mmTop = 23813
        mmWidth = 26458
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Copia :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 34660
        mmTop = 23813
        mmWidth = 26194
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 65617
        mmTop = 23813
        mmWidth = 26458
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel31: TppLabel
        UserName = 'Label301'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Contabilidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 93398
        mmTop = 23813
        mmWidth = 26458
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        HyperlinkEnabled = False
        DataField = 'Moneda'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 154782
        mmTop = 18784
        mmWidth = 7673
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        HyperlinkEnabled = False
        DataField = 'AbonoPendiente'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 162719
        mmTop = 18784
        mmWidth = 26988
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Balance Pend:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 127791
        mmTop = 24080
        mmWidth = 26458
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        HyperlinkEnabled = False
        DataField = 'Moneda'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 155043
        mmTop = 24080
        mmWidth = 7673
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        HyperlinkEnabled = False
        DataField = 'Balance'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4233
        mmLeft = 162719
        mmTop = 24080
        mmWidth = 26988
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Abono:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 127794
        mmTop = 18784
        mmWidth = 26458
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 19315
      mmPrintPosition = 0
      object ppDBMemo3: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Nota'
        DataPipeline = plrptFactura
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4498
        mmLeft = 794
        mmTop = 5035
        mmWidth = 190236
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        HyperlinkEnabled = False
        DataField = 'Nota2'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 8731
        mmLeft = 794
        mmTop = 10323
        mmWidth = 189971
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object OrdComp2Fact: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'OrdComp2Fact;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idOrdComp'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 528
    Top = 182
    object OrdComp2FactidOrdComp: TGuidField
      FieldName = 'idOrdComp'
      FixedChar = True
      Size = 38
    end
    object OrdComp2FactOrdComp: TStringField
      FieldName = 'OrdComp'
      Size = 16
    end
    object OrdComp2FactidOrdCompStatus: TStringField
      FieldName = 'idOrdCompStatus'
      Size = 16
    end
    object OrdComp2FactidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object OrdComp2FactCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object OrdComp2FactContacto: TStringField
      FieldName = 'Contacto'
      Size = 50
    end
    object OrdComp2FactDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object OrdComp2FactSector: TStringField
      FieldName = 'Sector'
    end
    object OrdComp2FactCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object OrdComp2FactTelefono: TStringField
      FieldName = 'Telefono'
    end
    object OrdComp2FactidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object OrdComp2FactFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object OrdComp2FactHora: TDateTimeField
      FieldName = 'Hora'
    end
    object OrdComp2FactCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object OrdComp2FactCredito: TBooleanField
      FieldName = 'Credito'
    end
    object OrdComp2FactidCompania: TIntegerField
      FieldName = 'idCompania'
    end
    object OrdComp2FactSubTotal: TBCDField
      FieldName = 'SubTotal'
      Precision = 18
      Size = 2
    end
    object OrdComp2FactItbis: TBCDField
      FieldName = 'Itbis'
      Precision = 18
      Size = 2
    end
    object OrdComp2FactDescuento: TBCDField
      FieldName = 'Descuento'
      Precision = 19
      Size = 2
    end
    object OrdComp2FactNota: TStringField
      FieldName = 'Nota'
      Size = 600
    end
    object OrdComp2FactUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object OrdComp2FactTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
      Size = 2
    end
    object OrdComp2FactidClienteObra: TStringField
      FieldName = 'idClienteObra'
      Size = 25
    end
    object OrdComp2FactidOrdCompDet: TGuidField
      FieldName = 'idOrdCompDet'
      FixedChar = True
      Size = 38
    end
    object OrdComp2FactidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object OrdComp2FactProducto: TStringField
      FieldName = 'Producto'
      Size = 120
    end
    object OrdComp2FactCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object OrdComp2FactPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 18
      Size = 2
    end
    object OrdComp2FactidUnidad: TStringField
      FieldName = 'idUnidad'
      Size = 16
    end
    object OrdComp2FactDescDet: TBCDField
      FieldName = 'DescDet'
      Precision = 18
      Size = 2
    end
    object OrdComp2FactItbisDet: TBCDField
      FieldName = 'ItbisDet'
      Precision = 18
      Size = 2
    end
    object OrdComp2FactLineTotal: TBCDField
      FieldName = 'LineTotal'
      Precision = 18
      Size = 2
    end
    object OrdComp2FactidCotizacion: TGuidField
      FieldName = 'idCotizacion'
      FixedChar = True
      Size = 38
    end
    object OrdComp2FactCotizacion: TStringField
      FieldName = 'Cotizacion'
      Size = 16
    end
    object OrdComp2FactPorcDesc: TFloatField
      FieldName = 'PorcDesc'
    end
    object OrdComp2Factcondicion: TIntegerField
      FieldName = 'condicion'
    end
    object OrdComp2FactidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object OrdComp2FactOrdCompStatus: TStringField
      FieldName = 'OrdCompStatus'
      Size = 50
    end
    object OrdComp2FactFacturable: TBooleanField
      FieldName = 'Facturable'
    end
    object OrdComp2FactidCondicion: TStringField
      FieldName = 'idCondicion'
      Size = 16
    end
    object OrdComp2Factreferencia: TStringField
      FieldName = 'referencia'
    end
    object OrdComp2Factpagaitbis: TBooleanField
      FieldName = 'pagaitbis'
    end
  end
  object Almacen: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'Almacenes;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 78
    Top = 173
    object AlmacenAlmacen: TStringField
      DisplayWidth = 50
      FieldName = 'Almacen'
      Size = 50
    end
    object AlmacenidAlmacen: TStringField
      FieldName = 'idAlmacen'
      Visible = False
      Size = 16
    end
  end
  object dsAlmacen: TDataSource
    DataSet = Almacen
    Left = 74
    Top = 387
  end
  object Factura2ProMov: TADOCommand
    CommandText = 'svFactura2ProMov;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idFactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 248
    Top = 65533
  end
  object PopupMenu1: TPopupMenu
    Left = 74
    Top = 440
    object ProductoDet1: TMenuItem
      Action = AProductoDet
    end
    object EspecificacionesTecnicasdeProducto1: TMenuItem
      Action = AFacturaDetEspec
    end
  end
  object qryCondicion: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  svCondicion'
      'ORDER BY'
      '  IdCondicion')
    Left = 16
    Top = 281
    object qryCondicionidCondicion: TStringField
      FieldName = 'idCondicion'
      Size = 16
    end
    object qryCondicionCondicion: TStringField
      FieldName = 'Condicion'
      Size = 50
    end
    object qryCondicionCredito: TBooleanField
      FieldName = 'Credito'
    end
    object qryCondicionDias: TIntegerField
      FieldName = 'Dias'
    end
    object qryCondicionPrecioContado: TBooleanField
      FieldName = 'PrecioContado'
    end
    object qryCondicionNoCreditoCheck: TBooleanField
      FieldName = 'NoCreditoCheck'
    end
  end
  object dsCondicion: TDataSource
    DataSet = qryCondicion
    Left = 248
    Top = 334
  end
  object rsEspec: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnNewRecord = rsEspecNewRecord
    CommandText = 'rsFacturaDetEspec;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idFactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 34
    Top = 181
    object rsEspecidFacturaDet: TGuidField
      FieldName = 'idFacturaDet'
      FixedChar = True
      Size = 38
    end
    object rsEspecidFactura: TGuidField
      FieldName = 'idFactura'
      FixedChar = True
      Size = 38
    end
    object rsEspecEspecificacion: TStringField
      FieldName = 'Especificacion'
      Size = 5000
    end
    object rsEspecFechaEspec: TDateTimeField
      FieldName = 'FechaEspec'
    end
  end
  object GetProductoEspec: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'GetProductoEspec;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idProducto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end>
    Left = 108
    Top = 181
    object GetProductoEspecEspecificacion: TStringField
      FieldName = 'Especificacion'
      Size = 5000
    end
    object GetProductoEspecFechaEspec: TDateTimeField
      FieldName = 'FechaEspec'
    end
  end
  object GetFacturaDetEspec: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'GetFacturaDetEspec;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idFacturaDet'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 192
    Top = 168
    object GetFacturaDetEspecEspecificacion: TStringField
      FieldName = 'Especificacion'
      Size = 5000
    end
    object GetFacturaDetEspecFechaEspec: TDateTimeField
      FieldName = 'FechaEspec'
    end
  end
  object dsClienteAct: TDataSource
    DataSet = ClienteAct
    Left = 132
    Top = 387
  end
  object cBuscarNCFFact: TADOCommand
    CommandText = 'svBuscarCompFiscal;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@NCF'
        Attributes = [paNullable]
        DataType = ftString
        Size = 19
        Value = Null
      end
      item
        Name = '@idFactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Direction = pdInputOutput
        Value = Null
      end>
    Left = 74
    Top = 65533
  end
  object OrdCompEnt2Fact: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'OrdCompEnt2Fact;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idOrdCompEnt'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 132
    Top = 223
    object OrdCompEnt2FactidOrdCompEnt: TGuidField
      FieldName = 'idOrdCompEnt'
      FixedChar = True
      Size = 38
    end
    object OrdCompEnt2FactOrdCompEnt: TStringField
      FieldName = 'OrdCompEnt'
      Size = 16
    end
    object OrdCompEnt2FactidOrdComp: TGuidField
      FieldName = 'idOrdComp'
      FixedChar = True
      Size = 38
    end
    object OrdCompEnt2FactOrdComp: TStringField
      FieldName = 'OrdComp'
      Size = 16
    end
    object OrdCompEnt2FactidOrdCompStatus: TStringField
      FieldName = 'idOrdCompStatus'
      Size = 16
    end
    object OrdCompEnt2FactidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object OrdCompEnt2FactCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object OrdCompEnt2FactContacto: TStringField
      FieldName = 'Contacto'
      Size = 50
    end
    object OrdCompEnt2FactDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object OrdCompEnt2FactSector: TStringField
      FieldName = 'Sector'
    end
    object OrdCompEnt2FactCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object OrdCompEnt2FactTelefono: TStringField
      FieldName = 'Telefono'
    end
    object OrdCompEnt2FactidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object OrdCompEnt2FactFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object OrdCompEnt2FactHora: TDateTimeField
      FieldName = 'Hora'
    end
    object OrdCompEnt2FactCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object OrdCompEnt2FactCredito: TBooleanField
      FieldName = 'Credito'
    end
    object OrdCompEnt2FactidCompania: TIntegerField
      FieldName = 'idCompania'
    end
    object OrdCompEnt2FactSubTotal: TBCDField
      FieldName = 'SubTotal'
      Precision = 18
      Size = 2
    end
    object OrdCompEnt2FactItbis: TBCDField
      FieldName = 'Itbis'
      Precision = 18
      Size = 2
    end
    object OrdCompEnt2FactidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object OrdCompEnt2FactDescuento: TBCDField
      FieldName = 'Descuento'
      Precision = 19
      Size = 2
    end
    object OrdCompEnt2FactNota: TStringField
      FieldName = 'Nota'
      Size = 600
    end
    object OrdCompEnt2FactUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object OrdCompEnt2FactTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
      Size = 2
    end
    object OrdCompEnt2FactidClienteObra: TStringField
      FieldName = 'idClienteObra'
      Size = 25
    end
    object OrdCompEnt2FactidCotizacion: TGuidField
      FieldName = 'idCotizacion'
      FixedChar = True
      Size = 38
    end
    object OrdCompEnt2FactCotizacion: TStringField
      FieldName = 'Cotizacion'
      Size = 16
    end
    object OrdCompEnt2FactPorcDesc: TFloatField
      FieldName = 'PorcDesc'
    end
    object OrdCompEnt2Factcondicion: TIntegerField
      FieldName = 'condicion'
    end
    object OrdCompEnt2FactidCondicion: TStringField
      FieldName = 'idCondicion'
      Size = 16
    end
    object OrdCompEnt2Factreferencia: TStringField
      FieldName = 'referencia'
    end
    object OrdCompEnt2Factpagaitbis: TBooleanField
      FieldName = 'pagaitbis'
    end
    object OrdCompEnt2FactidOrdCompDet: TGuidField
      FieldName = 'idOrdCompDet'
      FixedChar = True
      Size = 38
    end
    object OrdCompEnt2FactidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object OrdCompEnt2FactProducto: TStringField
      FieldName = 'Producto'
      Size = 120
    end
    object OrdCompEnt2FactCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object OrdCompEnt2FactPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 19
      Size = 5
    end
    object OrdCompEnt2FactidUnidad: TStringField
      FieldName = 'idUnidad'
      Size = 16
    end
    object OrdCompEnt2FactDescDet: TFloatField
      FieldName = 'DescDet'
      ReadOnly = True
    end
    object OrdCompEnt2FactItbisDet: TFloatField
      FieldName = 'ItbisDet'
      ReadOnly = True
    end
    object OrdCompEnt2FactLineTotal: TFloatField
      FieldName = 'LineTotal'
      ReadOnly = True
    end
    object OrdCompEnt2FactOrdCompStatus: TStringField
      FieldName = 'OrdCompStatus'
      Size = 50
    end
    object OrdCompEnt2FactFacturable: TBooleanField
      FieldName = 'Facturable'
    end
  end
  object GenCodif: TADOCommand
    CommandText = 'svGenCodifFactura;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idFactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 388
    Top = 185
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 190
    Top = 281
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15922418
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
      TextColor = clWindowText
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 132
    Top = 281
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15922418
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
      TextColor = clWindowText
    end
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 248
    Top = 281
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15922418
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
      TextColor = clWindowText
    end
  end
  object luCondicion: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  svCondicion'
      'ORDER BY'
      '  IdCondicion')
    Left = 74
    Top = 281
    object StringField1: TStringField
      FieldName = 'idCondicion'
      Size = 16
    end
    object StringField2: TStringField
      FieldName = 'Condicion'
      Size = 50
    end
    object BooleanField1: TBooleanField
      FieldName = 'Credito'
    end
    object IntegerField1: TIntegerField
      FieldName = 'Dias'
    end
    object BooleanField2: TBooleanField
      FieldName = 'PrecioContado'
    end
    object BooleanField3: TBooleanField
      FieldName = 'NoCreditoCheck'
    end
  end
  object dslucondicion: TDataSource
    DataSet = luCondicion
    Left = 190
    Top = 334
  end
  object cMarcarFact: TADOCommand
    CommandText = 'svMarcarFacturaCobrada;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idfactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 488
    Top = 227
  end
  object rsImpFact: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'svImpFactura;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@tipo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = 'CUOTA'
      end
      item
        Name = '@id'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8000
        Value = Null
      end>
    Left = 398
    Top = 159
    object rsImpFactidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object rsImpFactCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object rsImpFactidProducto: TStringField
      FieldName = 'idProducto'
      ReadOnly = True
      Size = 25
    end
    object rsImpFactProducto: TStringField
      FieldName = 'Producto'
      ReadOnly = True
      Size = 35
    end
    object rsImpFactPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 19
      Size = 2
    end
    object rsImpFactCantidad: TBCDField
      FieldName = 'Cantidad'
      ReadOnly = True
      Precision = 3
      Size = 2
    end
    object rsImpFactIdRow: TGuidField
      FieldName = 'IdRow'
      FixedChar = True
      Size = 38
    end
    object rsImpFactNota: TStringField
      DisplayWidth = 600
      FieldName = 'Nota'
      ReadOnly = True
      Size = 600
    end
  end
  object rsTipoIngreso: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'SELECT * FROM svTipoIngreso'
    Parameters = <>
    Left = 286
    Top = 203
  end
  object dsTipoIngreso: TDataSource
    DataSet = rsTipoIngreso
    Left = 16
    Top = 334
  end
  object rsRecibo: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'rsrecibo'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idRecibo'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 801
    Top = 214
    object rsReciboidRecibo: TGuidField
      FieldName = 'idRecibo'
      FixedChar = True
      Size = 38
    end
    object rsReciboRecibo: TStringField
      FieldName = 'Recibo'
      Size = 16
    end
    object rsReciboidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object rsReciboCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object rsReciboidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object rsReciboFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsReciboValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object rsReciboConcepto: TStringField
      FieldName = 'Concepto'
      Size = 2000
    end
    object rsReciboUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object rsReciboidPagoForma: TStringField
      FieldName = 'idPagoForma'
      Size = 16
    end
    object rsReciboidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsReciboTasa: TBCDField
      FieldName = 'Tasa'
      Precision = 18
      Size = 2
    end
  end
  object AplicarRecibo: TADOCommand
    CommandText = 'svAplicarRecibo'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idRecibo'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@factura'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@valor'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@tasa'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 732
    Top = 213
  end
  object InvReqdeApartado: TADOCommand
    CommandText = 'InvReqdeApartado'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idFactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 622
    Top = 222
  end
  object rsDatosEstado: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxcDatosEstado;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idCli'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Fec'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@idDir'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 654
    Top = 262
    object rsDatosEstadoBalance: TBCDField
      FieldName = 'Balance'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsDatosEstadoFecUltCargo: TDateTimeField
      FieldName = 'FecUltCargo'
      ReadOnly = True
    end
    object rsDatosEstadoRefUltCargo: TStringField
      FieldName = 'RefUltCargo'
      ReadOnly = True
    end
    object rsDatosEstadoTipoUltCargo: TStringField
      FieldName = 'TipoUltCargo'
      ReadOnly = True
      Size = 10
    end
    object rsDatosEstadoMtoUltCargo: TBCDField
      FieldName = 'MtoUltCargo'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsDatosEstadoFecUltPago: TDateTimeField
      FieldName = 'FecUltPago'
      ReadOnly = True
    end
    object rsDatosEstadoRefUltPago: TStringField
      FieldName = 'RefUltPago'
      ReadOnly = True
    end
    object rsDatosEstadoMtoUltPago: TBCDField
      FieldName = 'MtoUltPago'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsDatosEstadoPorDist: TBCDField
      FieldName = 'PorDist'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsDatosEstadoidCliente: TIntegerField
      FieldName = 'idCliente'
      ReadOnly = True
    end
    object rsDatosEstadoAbono: TBCDField
      FieldName = 'Abono'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
  end
  object dsBalance: TDataSource
    DataSet = rsDatosEstado
    Left = 557
    Top = 269
  end
  object plrptFactura: TppDBPipeline
    DataSource = dsRptFactura
    UserName = 'plRptFactura'
    Left = 132
    Top = 438
  end
  object rsCristales: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforePost = RSDetBeforePost
    AfterPost = RSDetAfterPost
    AfterDelete = RSDetAfterPost
    OnCalcFields = RSDetCalcFields
    OnNewRecord = RSDetNewRecord
    CommandText = 'rsCristale'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idFactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 432
    Top = 398
    object rsCristalesidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object rsCristalesProducto: TStringField
      FieldName = 'Producto'
      Size = 120
    end
    object rsCristalesCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object rsCristalesidUnidad: TStringField
      FieldName = 'idUnidad'
      Size = 16
    end
  end
end

inherited OrdComp: TOrdComp
  Left = 591
  Top = 219
  Caption = 'Pedidos de Clientes'
  ClientHeight = 572
  ClientWidth = 806
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Width = 806
  end
  object DBText1: TDBText [1]
    Left = 715
    Top = 512
    Width = 65
    Height = 15
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    DataField = 'Usuario'
    DataSource = DS
  end
  object Label1: TLabel [2]
    Left = 627
    Top = 413
    Width = 45
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Sub Total'
    Transparent = True
  end
  object Label5: TLabel [3]
    Left = 10
    Top = 54
    Width = 32
    Height = 13
    Caption = 'Pedido'
    Transparent = True
  end
  object Label6: TLabel [4]
    Left = 176
    Top = 54
    Width = 29
    Height = 13
    Caption = 'Fecha'
    Transparent = True
  end
  object Label7: TLabel [5]
    Left = 358
    Top = 54
    Width = 52
    Height = 13
    Caption = 'Referencia'
    Transparent = True
  end
  object Label9: TLabel [6]
    Left = 10
    Top = 78
    Width = 33
    Height = 13
    Caption = 'Cliente'
    Transparent = True
  end
  object Label10: TLabel [7]
    Left = 538
    Top = 104
    Width = 31
    Height = 13
    Caption = 'Status'
    Transparent = True
  end
  object Label11: TLabel [8]
    Left = 12
    Top = 105
    Width = 44
    Height = 13
    Caption = 'Contacto'
    Transparent = True
  end
  object Label20: TLabel [9]
    Left = 532
    Top = 130
    Width = 39
    Height = 13
    Caption = 'Cotizac.'
  end
  object Label16: TLabel [10]
    Left = 354
    Top = 105
    Width = 44
    Height = 13
    Caption = 'Elemento'
    Transparent = True
    Visible = False
  end
  object Label28: TLabel [11]
    Left = 521
    Top = 56
    Width = 46
    Height = 13
    Caption = 'Condicion'
    Transparent = True
  end
  object Label23: TLabel [12]
    Left = 10
    Top = 128
    Width = 70
    Height = 13
    Caption = 'Fecha Entrega'
    Transparent = True
  end
  object Label22: TLabel [13]
    Left = 535
    Top = 429
    Width = 38
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Moneda'
  end
  object Label4: TLabel [14]
    Left = 633
    Top = 477
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
    Transparent = True
  end
  object Label3: TLabel [15]
    Left = 646
    Top = 455
    Width = 26
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'ITBIS'
    Transparent = True
  end
  object Label2: TLabel [16]
    Left = 621
    Top = 433
    Width = 51
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Descuento'
    Transparent = True
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 806
    inherited nuevo: TwwNavButton
      Width = 90
    end
    inherited editar: TwwNavButton
      Left = 90
      Width = 90
    end
    inherited guardar: TwwNavButton
      Left = 180
      Width = 90
    end
    inherited cancelar: TwwNavButton
      Left = 270
      Width = 90
    end
    inherited borrar: TwwNavButton
      Left = 360
      Width = 90
    end
    inherited BLocalizarx: TwwNavButton
      Left = 450
      Width = 89
    end
    object bAnular: TwwNavButton [6]
      Left = 539
      Top = 0
      Width = 89
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
    object bCotizacion: TwwNavButton [7]
      Left = 628
      Top = 0
      Width = 89
      Height = 42
      Action = ACotizacion
      ImageIndex = 0
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      Caption = 'De Cotizacion'
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 7
      Style = nbsCustom
    end
    inherited salir: TwwNavButton
      Left = 717
      Width = 89
      Index = 8
    end
  end
  inherited Grid: TwwDBGrid
    Left = 334
    Top = 203
    Width = 20
    Height = 29
    ControlType.Strings = (
      'Oferta;CheckBox;true;false')
    Selected.Strings = (
      'idProducto'#9'21'#9'idProducto'#9#9
      'Producto'#9'50'#9'Producto'#9#9
      'Cantidad'#9'10'#9'Cantidad'#9#9
      'Precio'#9'13'#9'Precio'#9#9
      'idUnidad'#9'10'#9'Unidad'#9#9
      'Descuento'#9'8'#9'Desc.'#9#9
      'Itbis'#9'8'#9'Itbis'#9#9
      'LineTotal'#9'13'#9'LineTotal'#9#9)
    Font.Charset = ANSI_CHARSET
    Font.Height = -9
    Font.Name = 'Small Fonts'
    ParentColor = True
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Name = 'Tahoma'
    Visible = False
    OnDblClick = GridDblClick
    OnKeyDown = GridKeyDown
  end
  object cod: TdxDBEdit [19]
    Left = 74
    Top = 50
    Width = 83
    Color = 15066597
    TabOrder = 2
    TabStop = False
    OnEnter = codEnter
    OnExit = codExit
    DataField = 'OrdComp'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit2: TdxDBEdit [20]
    Left = 214
    Top = 50
    Width = 85
    TabOrder = 3
    TabStop = False
    DataField = 'Fecha'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit3: TdxDBEdit [21]
    Left = 416
    Top = 50
    Width = 97
    TabOrder = 4
    DataField = 'Referencia'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object FindCliente: TButton [22]
    Left = 74
    Top = 74
    Width = 16
    Height = 20
    Caption = '...'
    TabOrder = 5
    TabStop = False
    OnClick = FindClienteClick
  end
  object dxDBEdit6: TdxDBEdit [23]
    Left = 90
    Top = 74
    Width = 71
    TabOrder = 6
    OnDblClick = dxDBEdit6DblClick
    DataField = 'idCliente'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit11: TdxDBEdit [24]
    Left = 161
    Top = 74
    Width = 353
    TabOrder = 7
    DataField = 'Cliente'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object lStatus: TdxDBLookupEdit [25]
    Left = 578
    Top = 96
    Width = 139
    TabOrder = 8
    DataField = 'idOrdCompStatus'
    DataSource = DS
    ReadOnly = False
    StyleController = dm.dxEstilo
    ListFieldName = 'OrdCompStatus'
    KeyFieldName = 'idOrdCompStatus'
    ListSource = dsOrdCompStatus
    LookupKeyValue = Null
    StoredValues = 64
  end
  object dxDBEdit5: TdxDBEdit [26]
    Left = 74
    Top = 99
    Width = 271
    TabOrder = 9
    DataField = 'Contacto'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit20: TdxDBEdit [27]
    Left = 578
    Top = 122
    Width = 139
    TabOrder = 10
    OnDblClick = dxDBEdit20DblClick
    DataField = 'Cotizacion'
    DataSource = DS
    ReadOnly = False
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit4: TdxDBEdit [28]
    Left = 410
    Top = 99
    Width = 105
    TabOrder = 11
    Visible = False
    DataField = 'Elemento'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object LCondicion: TdxDBLookupEdit [29]
    Left = 576
    Top = 51
    Width = 142
    TabOrder = 12
    DataField = 'idCondicion'
    DataSource = DS
    ReadOnly = False
    StyleController = dm.dxEstilo
    ListFieldName = 'Condicion'
    KeyFieldName = 'IdCondicion'
    ListSource = dsCondicion
    LookupKeyValue = Null
    StoredValues = 64
  end
  object dxDBEdit18: TdxDBEdit [30]
    Left = 301
    Top = 50
    Width = 47
    TabOrder = 13
    TabStop = False
    DataField = 'Hora'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object cxDBTimeEdit1: TcxDBTimeEdit [31]
    Left = 215
    Top = 124
    Width = 71
    Height = 21
    DataBinding.DataField = 'FechaEntrega'
    DataBinding.DataSource = DS
    Properties.AssignedValues.MinValue = True
    Properties.TimeFormat = tfHourMin
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 14
  end
  object cxDBDateEdit1: TcxDBDateEdit [32]
    Left = 89
    Top = 124
    Width = 121
    Height = 21
    DataBinding.DataField = 'FechaEntrega'
    DataBinding.DataSource = DS
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 15
  end
  object Credito: TdxDBCheckEdit [33]
    Left = 730
    Top = 52
    Width = 63
    TabOrder = 16
    TabStop = False
    OnClick = CreditoChange
    Alignment = taRightJustify
    Caption = 'Credito'
    DataField = 'Credito'
    DataSource = DS
    ReadOnly = True
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    OnChange = CreditoChange
    OnValidate = CreditoValidate
    StoredValues = 65
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [34]
    Left = 535
    Top = 444
    Width = 80
    Height = 21
    Anchors = [akRight, akBottom]
    DataBinding.DataField = 'idMoneda'
    DataBinding.DataSource = DS
    Properties.KeyFieldNames = 'idMoneda'
    Properties.ListColumns = <
      item
        FieldName = 'Moneda'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dm.dsMoneda
    Style.BorderStyle = ebsOffice11
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 17
  end
  object PagaItbis: TdxDBCheckEdit [35]
    Left = 536
    Top = 465
    Width = 75
    TabOrder = 18
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
  object dxDBCheckEdit2: TdxDBCheckEdit [36]
    Left = 536
    Top = 481
    Width = 89
    TabOrder = 19
    TabStop = False
    Anchors = [akRight, akBottom]
    Caption = 'Cancelado'
    DataField = 'Cancelado'
    DataSource = DS
    ReadOnly = True
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    StoredValues = 64
  end
  object cxButton1: TcxButton [37]
    Left = 539
    Top = 511
    Width = 157
    Height = 32
    Action = AGenRequisicion
    Anchors = [akRight, akBottom]
    TabOrder = 20
    LookAndFeel.NativeStyle = True
  end
  object desc: TdxDBEdit [38]
    Left = 681
    Top = 433
    Width = 30
    TabOrder = 21
    Anchors = [akRight, akBottom]
    DataField = 'PorcDesc'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit8: TdxDBEdit [39]
    Left = 681
    Top = 411
    Width = 121
    Color = 15066597
    TabOrder = 22
    TabStop = False
    Anchors = [akRight, akBottom]
    DataField = 'SubTotal'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit9: TdxDBEdit [40]
    Left = 713
    Top = 433
    Width = 88
    Color = 15066597
    TabOrder = 23
    TabStop = False
    Anchors = [akRight, akBottom]
    DataField = 'Descuento'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit10: TdxDBEdit [41]
    Left = 680
    Top = 457
    Width = 121
    Color = 15066597
    TabOrder = 24
    TabStop = False
    Anchors = [akRight, akBottom]
    DataField = 'Itbis'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit7: TdxDBEdit [42]
    Left = 680
    Top = 480
    Width = 121
    Color = 15066597
    TabOrder = 25
    TabStop = False
    Anchors = [akRight, akBottom]
    DataField = 'Total'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBMemo2: TdxDBMemo [43]
    Left = 108
    Top = 546
    Width = 676
    TabOrder = 26
    Anchors = [akLeft, akRight, akBottom]
    DataField = 'Observacion'
    DataSource = DS
    StyleController = dm.dxEstilo
    Height = 21
  end
  object cxButton2: TcxButton [44]
    Left = 11
    Top = 546
    Width = 95
    Height = 21
    Action = AObservacion
    Anchors = [akLeft, akBottom]
    TabOrder = 27
    LookAndFeel.NativeStyle = True
  end
  object cAnotaciones: TcxCheckListBox [45]
    Left = 662
    Top = 157
    Width = 139
    Height = 244
    Anchors = [akTop, akRight, akBottom]
    IntegralHeight = True
    Items = <>
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 29
    Visible = False
    OnClickCheck = cAnotacionesClickCheck
  end
  object PageControl1: TPageControl [46]
    Left = 11
    Top = 411
    Width = 509
    Height = 129
    ActivePage = TabSheet1
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 30
    object TabSheet1: TTabSheet
      Caption = 'Notas Pedido'
      DesignSize = (
        501
        101)
      object Label8: TLabel
        Left = 8
        Top = 82
        Width = 46
        Height = 13
        Caption = 'Vendedor'
      end
      object Label21: TLabel
        Left = 242
        Top = 82
        Width = 32
        Height = 13
        Caption = 'Doctor'
      end
      object lkEmpleado: TdxDBLookupEdit
        Left = 64
        Top = 78
        Width = 151
        TabOrder = 0
        DataField = 'idEmpleado'
        DataSource = DS
        ReadOnly = False
        StyleController = dm.dxEstilo
        ListFieldName = 'Empleado'
        CanDeleteText = True
        KeyFieldName = 'idEmpleado'
        ListSource = dsEmpleado
        LookupKeyValue = Null
        StoredValues = 64
      end
      object dxDBMemo1: TdxDBMemo
        Left = 2
        Top = 2
        Width = 479
        TabOrder = 1
        DataField = 'Nota'
        DataSource = DS
        StyleController = dm.dxEstilo
        Height = 69
      end
      object dxDBLookupEdit5: TdxDBLookupEdit
        Left = 303
        Top = 78
        Width = 180
        TabOrder = 2
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
    object TabSheet2: TTabSheet
      Caption = 'Dir. Factura'
      ImageIndex = 1
      object Label12: TLabel
        Left = 8
        Top = -1
        Width = 43
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
        Left = 160
        Top = 51
        Width = 33
        Height = 13
        Caption = 'Ciudad'
      end
      object Label15: TLabel
        Left = 320
        Top = 51
        Width = 18
        Height = 13
        Caption = 'Tel.'
      end
      object Label19: TLabel
        Left = 16
        Top = 77
        Width = 18
        Height = 13
        Caption = 'Fax'
      end
      object Label18: TLabel
        Left = 168
        Top = 77
        Width = 24
        Height = 13
        Caption = 'eMail'
      end
      object dxDBEdit12: TdxDBEdit
        Left = 8
        Top = 12
        Width = 429
        TabOrder = 0
        AutoSize = False
        DataField = 'Direccion'
        DataSource = DS
        StyleController = dm.dxEstilo
        Height = 30
      end
      object dxDBEdit13: TdxDBEdit
        Left = 48
        Top = 47
        Width = 105
        TabOrder = 1
        DataField = 'Sector'
        DataSource = DS
        StyleController = dm.dxEstilo
      end
      object dxDBEdit14: TdxDBEdit
        Left = 200
        Top = 47
        Width = 113
        TabOrder = 2
        DataField = 'Ciudad'
        DataSource = DS
        StyleController = dm.dxEstilo
      end
      object dxDBEdit15: TdxDBEdit
        Left = 352
        Top = 47
        Width = 85
        TabOrder = 3
        DataField = 'Telefono'
        DataSource = DS
        StyleController = dm.dxEstilo
      end
      object dxDBEdit16: TdxDBEdit
        Left = 48
        Top = 73
        Width = 105
        TabOrder = 4
        DataField = 'Fax'
        DataSource = DS
        StyleController = dm.dxEstilo
      end
      object dxDBEdit17: TdxDBEdit
        Left = 200
        Top = 73
        Width = 237
        TabOrder = 5
        DataField = 'eMail'
        DataSource = DS
        StyleController = dm.dxEstilo
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Dir. Envio'
      ImageIndex = 2
      object Label17: TLabel
        Left = 14
        Top = 12
        Width = 72
        Height = 13
        Caption = 'Direccion Envio'
      end
      object dxDBLookupEdit2: TdxDBLookupEdit
        Left = 14
        Top = 28
        Width = 385
        TabOrder = 0
        DataField = 'idClienteObra'
        DataSource = DS
        ReadOnly = False
        StyleController = dm.dxEstilo
        ListFieldName = 'DireccionObra'
        CanDeleteText = True
        KeyFieldName = 'idClienteObra'
        ListSource = dsClienteObra
        LookupKeyValue = Null
        StoredValues = 64
      end
      object cxButton3: TcxButton
        Left = 14
        Top = 54
        Width = 75
        Height = 25
        Action = AClienteObra
        TabOrder = 1
        LookAndFeel.NativeStyle = True
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Notas del Cliente'
      ImageIndex = 3
      object dxDBMemo3: TdxDBMemo
        Left = 2
        Top = 2
        Width = 435
        TabOrder = 0
        DataField = 'Notas'
        DataSource = dsClienteAct
        StyleController = dm.dxEstilo
        Height = 97
      end
    end
    object tsNotaReferencia: TTabSheet
      Caption = 'Nota Referencia'
      ImageIndex = 4
      object dxDBMemo4: TdxDBMemo
        Left = 2
        Top = 2
        Width = 435
        TabOrder = 0
        DataField = 'NotaReferencia'
        DataSource = DS
        StyleController = dm.dxEstilo
        Height = 97
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Almacen'
      ImageIndex = 5
      DesignSize = (
        501
        101)
      object Label25: TLabel
        Left = 16
        Top = 40
        Width = 40
        Height = 13
        Caption = 'Almacen'
      end
      object dxDBLookupEdit3: TdxDBLookupEdit
        Left = 85
        Top = 38
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
  end
  object cxGrid1: TcxGrid [47]
    Left = 5
    Top = 157
    Width = 796
    Height = 245
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 28
    OnEnter = cxGrid1Enter
    OnExit = cxGrid1Exit
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      PopupMenu = PopupMenu1
      DataController.DataSource = DS2
      DataController.KeyFieldNames = 'idOrdCompDet'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1idProducto: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'idProducto'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGrid1DBTableView1idProductoPropertiesButtonClick
        Options.Filtering = False
        Width = 133
      end
      object cxGrid1DBTableView1Producto: TcxGridDBColumn
        DataBinding.FieldName = 'Producto'
        Options.Filtering = False
        Width = 286
      end
      object cxGrid1DBTableView1Cantidad: TcxGridDBColumn
        DataBinding.FieldName = 'Cantidad'
        HeaderAlignmentHorz = taRightJustify
        Options.Filtering = False
        Width = 70
      end
      object cxGrid1DBTableView1Precio: TcxGridDBColumn
        DataBinding.FieldName = 'Precio'
        HeaderAlignmentHorz = taRightJustify
        Options.Filtering = False
        Width = 87
      end
      object cxGrid1DBTableView1idUnidad: TcxGridDBColumn
        DataBinding.FieldName = 'idUnidad'
        Options.Filtering = False
        Width = 69
      end
      object cxGrid1DBTableView1Descuento: TcxGridDBColumn
        DataBinding.FieldName = 'Descuento'
        HeaderAlignmentHorz = taRightJustify
        Options.Filtering = False
        Width = 56
      end
      object cxGrid1DBTableView1Itbis: TcxGridDBColumn
        DataBinding.FieldName = 'Itbis'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 56
      end
      object cxGrid1DBTableView1LineTotal: TcxGridDBColumn
        Caption = 'Importe'
        DataBinding.FieldName = 'LineTotal'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 89
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited DS: TwwDataSource
    Left = 319
    Top = 325
  end
  inherited ImageList: TImageList
    Left = 376
    Top = 264
  end
  inherited Acciones: TActionList
    Left = 378
    Top = 320
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
      Caption = 'de Cotizacion'
      ImageIndex = 0
      OnExecute = ACotizacionExecute
    end
    object AGetProduct: TAction
      Caption = 'AGetProduct'
      OnExecute = AGetProductExecute
    end
    object AGenRequisicion: TAction
      Caption = 'Gen. Requisicion al Almacen'
      OnExecute = AGenRequisicionExecute
    end
    object AFacturaDetEspec: TAction
      Caption = 'Especificaciones Tecnicas del Producto'
      OnExecute = AFacturaDetEspecExecute
    end
    object AProductoDet: TAction
      Caption = 'Detalle del Producto'
      OnExecute = AProductoDetExecute
    end
    object AObservacion: TAction
      Caption = 'Observaciones'
      OnExecute = AObservacionExecute
    end
    object AClienteObra: TAction
      Caption = 'Direcciones'
      OnExecute = AClienteObraExecute
    end
  end
  inherited RS: TADODataSet
    OnNewRecord = RSNewRecord
    CommandText = 'rsOrdComp;1'
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
    Left = 316
    Top = 264
    object RSidCliente: TIntegerField
      FieldName = 'idCliente'
      Required = True
      OnValidate = RSidClienteValidate
    end
    object RSCliente: TStringField
      FieldName = 'Cliente'
      Required = True
      Size = 100
    end
    object RSDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object RSTelefono: TStringField
      FieldName = 'Telefono'
    end
    object RSidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
      Required = True
    end
    object RSFecha: TDateTimeField
      FieldName = 'Fecha'
      Required = True
    end
    object RSHora: TDateTimeField
      FieldName = 'Hora'
      DisplayFormat = 'HH:mm'
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
    object RSidOrdComp: TGuidField
      FieldName = 'idOrdComp'
      FixedChar = True
      Size = 38
    end
    object RSidOrdCompStatus: TStringField
      FieldName = 'idOrdCompStatus'
      Size = 16
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
    object RSidCotizacion: TGuidField
      FieldName = 'idCotizacion'
      FixedChar = True
      Size = 38
    end
    object RSCotizacion: TStringField
      FieldName = 'Cotizacion'
      OnValidate = RSCotizacionValidate
      Size = 16
    end
    object RSOrdComp: TStringField
      FieldName = 'OrdComp'
      Size = 16
    end
    object RSidClienteObra: TStringField
      FieldName = 'idClienteObra'
      Size = 25
    end
    object RSPagaItbis: TBooleanField
      FieldName = 'PagaItbis'
      OnChange = RSPagaItbisChange
      OnValidate = RSPagaItbisValidate
    end
    object RSElemento: TStringField
      FieldName = 'Elemento'
      Size = 50
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
    end
    object RSidMoneda: TIntegerField
      FieldName = 'idMoneda'
      OnValidate = RSidMonedaValidate
    end
    object RSidCondicion: TStringField
      FieldName = 'idCondicion'
      OnValidate = RSidCondicionValidate
      Size = 16
    end
    object RSObservacion: TStringField
      FieldName = 'Observacion'
      Size = 200
    end
    object RSNotaReferencia: TStringField
      FieldName = 'NotaReferencia'
      Size = 2000
    end
    object RSFechaEntrega: TDateTimeField
      FieldName = 'FechaEntrega'
    end
    object RSidAlmacen: TStringField
      FieldName = 'idAlmacen'
      Size = 16
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
    Left = 511
    Top = 313
  end
  inherited RSDet: TADODataSet
    BeforePost = RSDetBeforePost
    AfterPost = RSDetAfterPost
    AfterDelete = RSDetAfterPost
    BeforeScroll = RSDetBeforeScroll
    AfterScroll = RSDetAfterScroll
    OnNewRecord = RSDetNewRecord
    CommandText = 'rsOrdCompDet;1'
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
    Left = 514
    Top = 262
    object RSDetidProducto: TStringField
      DisplayWidth = 21
      FieldName = 'idProducto'
      OnValidate = RSDetidProductoValidate
      Size = 25
    end
    object RSDetProducto: TStringField
      DisplayWidth = 50
      FieldName = 'Producto'
      Size = 120
    end
    object RSDetCantidad: TFloatField
      DisplayWidth = 10
      FieldName = 'Cantidad'
      OnValidate = RSDetCantidadValidate
    end
    object RSDetPrecio: TBCDField
      DisplayWidth = 13
      FieldName = 'Precio'
      OnValidate = RSDetPrecioValidate
      DisplayFormat = '#,0.00###'
      Precision = 19
      Size = 5
    end
    object RSDetidUnidad: TStringField
      DisplayLabel = 'Unidad'
      DisplayWidth = 10
      FieldName = 'idUnidad'
      Size = 16
    end
    object RSDetDescuento: TBCDField
      DisplayLabel = 'Desc.'
      DisplayWidth = 8
      FieldName = 'Descuento'
      OnValidate = RSDetDescuentoValidate
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSDetItbis: TBCDField
      DisplayWidth = 8
      FieldName = 'Itbis'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSDetLineTotal: TBCDField
      DisplayWidth = 13
      FieldName = 'LineTotal'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSDetidOrdCompDet: TGuidField
      FieldName = 'idOrdCompDet'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object RSDetidOrdComp: TGuidField
      FieldName = 'idOrdComp'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object RSDetLinea: TIntegerField
      FieldName = 'Linea'
      Visible = False
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
    Left = 442
    Top = 264
    object ClienteActidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object ClienteActCliente: TStringField
      FieldName = 'Cliente'
      Size = 100
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
    Left = 424
    Top = 324
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
        Value = Null
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
    Left = 254
    Top = 264
    object ProductoActidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object ProductoActProducto: TStringField
      FieldName = 'Producto'
      Size = 100
    end
    object ProductoActExistencia: TFloatField
      FieldName = 'Existencia'
    end
    object ProductoActCostoPromedio: TBCDField
      FieldName = 'CostoPromedio'
      Precision = 19
      Size = 2
    end
    object ProductoActPrecioContado: TBCDField
      FieldName = 'PrecioContado'
      Precision = 19
      Size = 2
    end
    object ProductoActPrecioCredito: TBCDField
      FieldName = 'PrecioCredito'
      Precision = 19
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
    object ProductoActAutoDescuento: TBooleanField
      FieldName = 'AutoDescuento'
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
    object ProductoActMaximo: TFloatField
      FieldName = 'Maximo'
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
      Size = 5
    end
    object ProductoActPrecioCredProd: TBCDField
      FieldName = 'PrecioCredProd'
      Precision = 19
      Size = 5
    end
    object ProductoActDescuentoPermitido: TFloatField
      FieldName = 'DescuentoPermitido'
    end
    object ProductoActDescuentoVence: TDateTimeField
      FieldName = 'DescuentoVence'
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
    object ProductoActGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
    object ProductoActParaVender: TBooleanField
      FieldName = 'ParaVender'
    end
  end
  object dsProductoAct: TDataSource
    DataSet = ProductoAct
    Left = 250
    Top = 320
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
        Value = 0c
      end
      item
        Name = '@TieneCredito'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 90
    Top = 208
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
    Left = 90
    Top = 264
  end
  object Empleado: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'spVendedores;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 170
    Top = 264
  end
  object dsEmpleado: TDataSource
    DataSet = Empleado
    Left = 170
    Top = 328
  end
  object OrdCompStatus: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'Select * From OrdCompStatus order by OrdCompStatus'
    Parameters = <>
    Left = 586
    Top = 264
  end
  object dsOrdCompStatus: TDataSource
    DataSet = OrdCompStatus
    Left = 586
    Top = 320
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
    Left = 618
    Top = 208
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
    object Cotizacion2FactProcesable: TBooleanField
      FieldName = 'Procesable'
    end
  end
  object ClienteObra: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
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
    Left = 682
    Top = 264
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
    Left = 682
    Top = 320
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
    Left = 398
    Top = 370
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
    Left = 330
    Top = 368
  end
  object PopupMenu1: TPopupMenu
    Left = 546
    Top = 210
    object ProductoDet1: TMenuItem
      Action = AProductoDet
    end
    object EspecificacionesTecnicasdelProducto1: TMenuItem
      Action = AFacturaDetEspec
    end
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
    Left = 196
    Top = 210
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
    Left = 286
    Top = 206
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
    Left = 404
    Top = 206
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
    Left = 488
    Top = 376
  end
  object spDescuentoXCantidad: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'svGetDescuentoXCantidad;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdProducto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@Cantidad'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Descuento'
        Attributes = [paNullable]
        DataType = ftBCD
        Direction = pdInputOutput
        NumericScale = 2
        Precision = 18
        Value = Null
      end>
    Left = 612
    Top = 372
  end
  object cAnular: TADOCommand
    CommandText = 'svAnularPedido;1'
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
        Name = '@idOrdComp'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@Usuario'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@Nota'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end>
    Left = 82
    Top = 352
  end
  object rsDetAnotacion: TADODataSet
    Connection = dm.Coneccion
    LockType = ltBatchOptimistic
    CommandText = 'svRSAnotacionPedido'
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
        Name = '@guiddocumento'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 662
    Top = 186
    object rsDetAnotacionidAnotacionDocumento: TGuidField
      FieldName = 'idAnotacionDocumento'
      FixedChar = True
      Size = 38
    end
    object rsDetAnotacionGuidDocumento: TGuidField
      FieldName = 'GuidDocumento'
      FixedChar = True
      Size = 38
    end
    object rsDetAnotacionidAnotacion: TStringField
      FieldName = 'idAnotacion'
      Size = 16
    end
    object rsDetAnotacionAnotacion: TStringField
      FieldName = 'Anotacion'
      Size = 100
    end
    object rsDetAnotacionComentario: TStringField
      FieldName = 'Comentario'
      Size = 500
    end
  end
  object dsAnotaciones: TDataSource
    DataSet = rsAnotaciones
    Left = 580
    Top = 286
  end
  object rsAnotaciones: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'svRSAnotacion'
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
        Value = Null
      end>
    Left = 506
    Top = 316
    object rsAnotacionesidAnotacion: TStringField
      FieldName = 'idAnotacion'
      Size = 16
    end
    object rsAnotacionesTipo: TStringField
      FieldName = 'Tipo'
      Size = 16
    end
    object rsAnotacionesAnotacion: TStringField
      FieldName = 'Anotacion'
      Size = 100
    end
    object rsAnotacionesPorDefecto: TBooleanField
      FieldName = 'PorDefecto'
    end
  end
  object dsDetAnotacion: TDataSource
    DataSet = rsDetAnotacion
    Left = 578
    Top = 332
  end
  object Almacen: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'Almacenes;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 78
    Top = 72
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
    Left = 60
    Top = 319
  end
  object DescuProdSucursal: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'DescuentoProdxSucl;1'
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
        Name = '@idProducto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@idSucursal'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 419
    Top = 290
    object DescuProdSucursalidSucursal: TStringField
      FieldName = 'idSucursal'
      Size = 16
    end
    object DescuProdSucursalidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object DescuProdSucursalDescuentoPermitido: TBCDField
      FieldName = 'DescuentoPermitido'
      Precision = 19
      Size = 2
    end
    object DescuProdSucursalDescuentoVence: TDateTimeField
      FieldName = 'DescuentoVence'
    end
  end
end

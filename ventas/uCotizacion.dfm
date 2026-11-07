inherited Cotizacion: TCotizacion
  Left = 640
  Top = 520
  ActiveControl = dxDBEdit3
  Caption = 'Cotizacion'
  ClientHeight = 666
  ClientWidth = 892
  Color = cl3DLight
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 708
    Top = 526
    Width = 46
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Sub Total'
  end
  object Label2: TLabel [1]
    Left = 702
    Top = 547
    Width = 52
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Descuento'
  end
  object Label3: TLabel [2]
    Left = 727
    Top = 569
    Width = 27
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'ITBIS'
  end
  object Label4: TLabel [3]
    Left = 714
    Top = 591
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
    Top = 59
    Width = 38
    Height = 13
    Caption = 'Cotizac.'
    Color = 13561335
    ParentColor = False
  end
  object Label6: TLabel [5]
    Left = 182
    Top = 59
    Width = 30
    Height = 13
    Caption = 'Fecha'
  end
  object Label7: TLabel [6]
    Left = 363
    Top = 58
    Width = 52
    Height = 13
    Caption = 'Referencia'
  end
  object Label9: TLabel [7]
    Left = 8
    Top = 88
    Width = 32
    Height = 13
    Caption = 'Cliente'
  end
  inherited Bevel1: TBevel
    Width = 892
  end
  object Label10: TLabel [9]
    Left = 692
    Top = 85
    Width = 30
    Height = 13
    Anchors = [akTop]
    Caption = 'Status'
  end
  object Label11: TLabel [10]
    Left = 672
    Top = 114
    Width = 60
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Valido Hasta'
  end
  object Label12: TLabel [11]
    Left = 8
    Top = 111
    Width = 43
    Height = 13
    Caption = 'Contacto'
  end
  object Label18: TLabel [12]
    Left = 372
    Top = 109
    Width = 44
    Height = 13
    Caption = 'Elemento'
  end
  object Label22: TLabel [13]
    Left = 455
    Top = 402
    Width = 39
    Height = 13
    Caption = 'Moneda'
  end
  object Label23: TLabel [14]
    Left = 458
    Top = 559
    Width = 46
    Height = 13
    Caption = 'Aprobado'
  end
  object Label28: TLabel [15]
    Left = 676
    Top = 59
    Width = 47
    Height = 13
    Anchors = [akTop]
    Caption = 'Condicion'
  end
  object Label24: TLabel [16]
    Left = 460
    Top = 535
    Width = 39
    Height = 13
    Caption = 'Enviado'
  end
  object DBText1: TDBText [17]
    Left = 816
    Top = 620
    Width = 65
    Height = 15
    Alignment = taRightJustify
    DataField = 'Usuario'
    DataSource = DS
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 892
    inherited nuevo: TwwNavButton
      Width = 82
    end
    inherited editar: TwwNavButton
      Left = 82
      Width = 81
    end
    inherited guardar: TwwNavButton
      Left = 163
      Width = 81
    end
    inherited cancelar: TwwNavButton
      Left = 244
      Width = 81
    end
    inherited borrar: TwwNavButton
      Left = 325
      Width = 81
    end
    inherited BLocalizarx: TwwNavButton
      Left = 406
      Width = 81
    end
    object bAnular: TwwNavButton [6]
      Left = 487
      Top = 0
      Width = 81
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
    object bPrint: TwwNavButton [7]
      Left = 568
      Top = 0
      Width = 81
      Height = 42
      Action = Aprint
      ImageIndex = 11
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 7
      Style = nbsCustom
    end
    object bFax: TwwNavButton [8]
      Left = 649
      Top = 0
      Width = 81
      Height = 42
      Action = SendFax
      ImageIndex = -1
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 8
      Style = nbsCustom
    end
    object bMail: TwwNavButton [9]
      Left = 730
      Top = 0
      Width = 81
      Height = 42
      Action = SendMail
      ImageIndex = -1
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 9
      Style = nbsCustom
    end
    inherited salir: TwwNavButton
      Left = 811
      Width = 81
      Index = 10
    end
  end
  object cod: TdxDBEdit [19]
    Left = 56
    Top = 55
    Width = 105
    Style.BorderColor = 9426669
    TabOrder = 0
    TabStop = False
    DataField = 'Cotizacion'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit2: TdxDBEdit [20]
    Left = 218
    Top = 55
    Width = 84
    Style.BorderColor = 9426669
    TabOrder = 1
    TabStop = False
    DataField = 'Fecha'
    DataSource = DS
    ReadOnly = False
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit3: TdxDBEdit [21]
    Left = 422
    Top = 55
    Width = 113
    Style.BorderColor = 9426669
    TabOrder = 2
    DataField = 'Referencia'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object FindCliente: TButton [22]
    Left = 56
    Top = 80
    Width = 16
    Height = 20
    Caption = '...'
    TabOrder = 3
    TabStop = False
    OnClick = FindClienteClick
  end
  object dxDBEdit6: TdxDBEdit [23]
    Left = 71
    Top = 80
    Width = 89
    Style.BorderColor = 9426669
    TabOrder = 4
    OnDblClick = dxDBEdit6DblClick
    DataField = 'idCliente'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBCheckEdit2: TdxDBCheckEdit [24]
    Left = 452
    Top = 605
    Width = 81
    TabOrder = 6
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
  object dxDBEdit7: TdxDBEdit [25]
    Left = 761
    Top = 594
    Width = 121
    Color = 15066597
    Style.BorderColor = 9426669
    TabOrder = 7
    TabStop = False
    Anchors = [akRight, akBottom]
    DataField = 'Total'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit8: TdxDBEdit [26]
    Left = 761
    Top = 523
    Width = 121
    Color = 15066597
    Style.BorderColor = 9426669
    TabOrder = 9
    TabStop = False
    Anchors = [akRight, akBottom]
    DataField = 'SubTotal'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit9: TdxDBEdit [27]
    Left = 794
    Top = 547
    Width = 87
    Color = 15066597
    Style.BorderColor = 9426669
    TabOrder = 10
    TabStop = False
    Anchors = [akRight, akBottom]
    DataField = 'Descuento'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit10: TdxDBEdit [28]
    Left = 761
    Top = 571
    Width = 121
    Color = 15066597
    Style.BorderColor = 9426669
    TabOrder = 11
    TabStop = False
    Anchors = [akRight, akBottom]
    DataField = 'Itbis'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit11: TdxDBEdit [29]
    Left = 160
    Top = 80
    Width = 376
    Style.BorderColor = 9426669
    TabOrder = 12
    DataField = 'Cliente'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  inherited Grid: TwwDBGrid
    Top = 340
    Width = 886
    Height = 175
    Hint = 'Ctrl-F1 Mostrar Datos de Producto'
    ControlType.Strings = (
      'Oferta;CheckBox;true;false')
    Selected.Strings = (
      'idProducto'#9'22'#9'idProducto'#9#9
      'Producto'#9'53'#9'Producto'#9#9
      'Cantidad'#9'12'#9'Cantidad'#9#9
      'PrecioDia'#9'16'#9'Precio'#9#9
      'idUnidad'#9'10'#9'Unidad'#9#9
      'Descuento'#9'10'#9'Desc.'#9#9
      'DescuentoAdd'#9'11'#9'Desc. Ad.'#9#9
      'Itbis'#9'11'#9'Itbis'#9#9
      'LineTotalExt'#9'17'#9'Importe'#9#9)
    OnCellChanged = GridCellChanged
    Font.Charset = ANSI_CHARSET
    Font.Height = -9
    Font.Name = 'Small Fonts'
    ParentColor = True
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 5
    OnDblClick = GridDblClick
    OnKeyDown = GridKeyDown
  end
  object dxDBLookupEdit1: TdxDBLookupEdit [31]
    Left = 743
    Top = 81
    Width = 129
    Style.BorderColor = 9426669
    TabOrder = 13
    Anchors = [akTop]
    DataField = 'idCotizacionStatus'
    DataSource = DS
    StyleController = dm.dxEstilo
    ListFieldName = 'CotizacionStatus'
    KeyFieldName = 'idCotizacionStatus'
    ListSource = dsCotizacionStatus
    LookupKeyValue = Null
  end
  object dxDBDateEdit1: TdxDBDateEdit [32]
    Left = 744
    Top = 109
    Width = 127
    Style.BorderColor = 9426669
    TabOrder = 14
    Anchors = [akTop, akRight]
    DataField = 'ValidoHasta'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit5: TdxDBEdit [33]
    Left = 56
    Top = 105
    Width = 291
    Style.BorderColor = 9426669
    TabOrder = 15
    DataField = 'Contacto'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object PageControl1: TPageControl [34]
    Left = 5
    Top = 516
    Width = 441
    Height = 115
    ActivePage = TabSheet1
    Anchors = [akLeft, akBottom]
    MultiLine = True
    TabOrder = 17
    object TabSheet1: TTabSheet
      Caption = 'Notas Cotizacion'
      object Label8: TLabel
        Left = 16
        Top = 73
        Width = 46
        Height = 13
        Caption = 'Vendedor'
      end
      object lkEmpleado: TdxDBLookupEdit
        Left = 72
        Top = 65
        Width = 358
        Style.BorderColor = 9426669
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
        Width = 411
        Style.BorderColor = 9426669
        TabOrder = 1
        DataField = 'Nota'
        DataSource = DS
        StyleController = dm.dxEstilo
        Height = 59
      end
      object Button1: TButton
        Left = 416
        Top = 2
        Width = 17
        Height = 21
        Hint = 'Agregar notas predefinidas'
        Caption = '...'
        TabOrder = 2
        TabStop = False
        OnClick = Button1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dir. Factura'
      ImageIndex = 1
      object Label13: TLabel
        Left = 15
        Top = 1
        Width = 45
        Height = 13
        Caption = 'Direccion'
      end
      object Label14: TLabel
        Left = 16
        Top = 54
        Width = 31
        Height = 13
        Caption = 'Sector'
      end
      object Label15: TLabel
        Left = 152
        Top = 54
        Width = 33
        Height = 13
        Caption = 'Ciudad'
      end
      object Label16: TLabel
        Left = 296
        Top = 54
        Width = 18
        Height = 13
        Caption = 'Tel.'
      end
      object Label19: TLabel
        Left = 16
        Top = 77
        Width = 17
        Height = 13
        Caption = 'Fax'
      end
      object Label20: TLabel
        Left = 152
        Top = 77
        Width = 25
        Height = 13
        Caption = 'eMail'
      end
      object dxDBEdit12: TdxDBEdit
        Left = 15
        Top = 17
        Width = 402
        Style.BorderColor = 9426669
        TabOrder = 0
        AutoSize = False
        DataField = 'Direccion'
        DataSource = DS
        StyleController = dm.dxEstilo
        Height = 30
      end
      object dxDBEdit13: TdxDBEdit
        Left = 56
        Top = 50
        Width = 89
        Style.BorderColor = 9426669
        TabOrder = 1
        DataField = 'Sector'
        DataSource = DS
        StyleController = dm.dxEstilo
      end
      object dxDBEdit14: TdxDBEdit
        Left = 192
        Top = 50
        Width = 89
        Style.BorderColor = 9426669
        TabOrder = 2
        DataField = 'Ciudad'
        DataSource = DS
        StyleController = dm.dxEstilo
      end
      object dxDBEdit15: TdxDBEdit
        Left = 320
        Top = 50
        Width = 97
        Style.BorderColor = 9426669
        TabOrder = 3
        DataField = 'Telefono'
        DataSource = DS
        StyleController = dm.dxEstilo
      end
      object dxDBEdit16: TdxDBEdit
        Left = 56
        Top = 73
        Width = 89
        Style.BorderColor = 9426669
        TabOrder = 4
        DataField = 'Fax'
        DataSource = DS
        StyleController = dm.dxEstilo
      end
      object dxDBEdit17: TdxDBEdit
        Left = 192
        Top = 73
        Width = 225
        Style.BorderColor = 9426669
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
        Width = 109
        Height = 13
        Caption = 'Direccion Envio / Obra'
      end
      object dxDBLookupEdit2: TdxDBLookupEdit
        Left = 16
        Top = 40
        Width = 345
        Style.BorderColor = 9426669
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
    object TabSheet4: TTabSheet
      Caption = 'Notas del Cliente'
      ImageIndex = 3
      object dxDBMemo3: TdxDBMemo
        Left = 2
        Top = 2
        Width = 428
        Style.BorderColor = 9426669
        TabOrder = 0
        DataField = 'Notas'
        DataSource = dsClienteAct
        StyleController = dm.dxEstilo
        Height = 92
      end
    end
    object tsNotaReferencia: TTabSheet
      Caption = 'Nota Ref.'
      ImageIndex = 4
      object dxDBMemo4: TdxDBMemo
        Left = 2
        Top = 2
        Width = 428
        Style.BorderColor = 9426669
        TabOrder = 0
        DataField = 'NotaReferencia'
        DataSource = DS
        StyleController = dm.dxEstilo
        Height = 92
      end
    end
  end
  object desc: TdxDBEdit [35]
    Left = 762
    Top = 547
    Width = 30
    Style.BorderColor = 9426669
    TabOrder = 19
    Anchors = [akRight, akBottom]
    DataField = 'PorcDesc'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object PagaItbis: TdxDBCheckEdit [36]
    Left = 548
    Top = 83
    Width = 75
    TabOrder = 20
    OnClick = PagaItbisClick
    Alignment = taLeftJustify
    Caption = 'Paga Itbis'
    DataField = 'PagaItbis'
    DataSource = DS
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    OnChange = PagaItbisClick
    StoredValues = 1
  end
  object dxDBEdit4: TdxDBEdit [37]
    Left = 422
    Top = 105
    Width = 113
    Style.BorderColor = 9426669
    TabOrder = 16
    DataField = 'Elemento'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [38]
    Left = 544
    Top = 107
    Width = 80
    Height = 21
    DataBinding.DataField = 'idMoneda'
    DataBinding.DataSource = DS
    Properties.KeyFieldNames = 'idMoneda'
    Properties.ListColumns = <
      item
        FieldName = 'Moneda'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dm.dsMoneda
    Style.BorderColor = 9426669
    Style.BorderStyle = ebsOffice11
    Style.LookAndFeel.NativeStyle = True
    Style.StyleController = dm.cxEstilo
    TabOrder = 18
  end
  object dxDBEdit18: TdxDBEdit [39]
    Left = 510
    Top = 555
    Width = 127
    Style.BorderColor = 9426669
    TabOrder = 21
    TabStop = False
    DataField = 'FechaAprobado'
    DataSource = DS
    ReadOnly = False
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBLookupEdit6: TdxDBLookupEdit [40]
    Left = 744
    Top = 55
    Width = 128
    Style.BorderColor = 9426669
    TabOrder = 22
    Anchors = [akTop]
    DataField = 'idCondicion'
    DataSource = DS
    StyleController = dm.dxEstilo
    ListFieldName = 'Condicion'
    KeyFieldName = 'IdCondicion'
    ListSource = dsCondicion
    LookupKeyValue = Null
  end
  object dxDBEdit19: TdxDBEdit [41]
    Left = 510
    Top = 531
    Width = 125
    Style.BorderColor = 9426669
    TabOrder = 23
    TabStop = False
    DataField = 'FechaEnviado'
    DataSource = DS
    ReadOnly = False
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBMemo2: TdxDBMemo [42]
    Left = 104
    Top = 637
    Width = 577
    Style.BorderColor = 9426669
    TabOrder = 24
    Anchors = [akLeft, akBottom]
    DataField = 'Observacion'
    DataSource = DS
    StyleController = dm.dxEstilo
    Height = 23
  end
  object cxButton1: TcxButton [43]
    Left = 6
    Top = 638
    Width = 95
    Height = 21
    Action = Aobservacion
    Anchors = [akLeft, akBottom]
    TabOrder = 25
    LookAndFeel.NativeStyle = True
  end
  object dxDBEdit20: TdxDBEdit [44]
    Left = 301
    Top = 55
    Width = 45
    Style.BorderColor = 9426669
    TabOrder = 26
    TabStop = False
    DataField = 'Hora'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  inline frBuscadorProds1: TfrBuscadorProds [45]
    Left = 3
    Top = 140
    Width = 883
    Height = 193
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 27
    inherited grListaProds: TdxDBGrid
      Width = 881
      Height = 157
      Filter.Criteria = {00000000}
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoRowAutoHeight, edgoRowSelect, edgoUseBitmap]
      inherited dxDBGrid1ProductoID: TdxDBGridMaskColumn
        Width = 123
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
    inherited ds: TDataSource
      Left = 116
      Top = 116
    end
  end
  inherited DS: TwwDataSource [46]
    Left = 333
    Top = 277
  end
  inherited ImageList: TImageList [47]
    Left = 400
    Top = 184
  end
  inherited Acciones: TActionList [48]
    Left = 392
    Top = 272
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
    object AGetProduct: TAction
      Caption = 'AGetProduct'
      OnExecute = AGetProductExecute
    end
    object SendFax: TAction
      Caption = 'Fax'
      OnExecute = SendFaxExecute
    end
    object SendMail: TAction
      Caption = 'eMail'
      OnExecute = SendMailExecute
    end
    object AProductoDet: TAction
      Caption = 'Detalles del Producto'
      OnExecute = AProductoDetExecute
    end
    object ARecepcion: TAction
      Caption = 'Notas'
    end
    object AFacturaDetEspec: TAction
      Caption = 'Especificaciones Tecnicas del Producto'
      OnExecute = AFacturaDetEspecExecute
    end
    object Aobservacion: TAction
      Caption = 'Observaciones'
      OnExecute = AobservacionExecute
    end
  end
  inherited RS: TADODataSet [49]
    OnNewRecord = RSNewRecord
    CommandText = 'rsCotizacion;1'
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
    Left = 322
    Top = 200
    object RSidCotizacion: TGuidField
      FieldName = 'idCotizacion'
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
    end
    object RSFecha: TDateTimeField
      FieldName = 'Fecha'
      Required = True
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
    object RSItbis: TBCDField
      FieldName = 'Itbis'
      Required = True
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSSubTotal: TBCDField
      FieldName = 'SubTotal'
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
    object RSSolicitadoPor: TStringField
      FieldName = 'SolicitadoPor'
      Size = 30
    end
    object RSidCotizacionStatus: TStringField
      FieldName = 'idCotizacionStatus'
      OnValidate = RSidCotizacionStatusValidate
      Size = 16
    end
    object RSContacto: TStringField
      FieldName = 'Contacto'
      Size = 50
    end
    object RSValidoHasta: TDateTimeField
      FieldName = 'ValidoHasta'
    end
    object RSSector: TStringField
      FieldName = 'Sector'
    end
    object RSCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object RSCotizacion: TStringField
      FieldName = 'Cotizacion'
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
    object RSFechaAprobado: TDateTimeField
      FieldName = 'FechaAprobado'
    end
    object RSidCondicion: TStringField
      FieldName = 'idCondicion'
      OnValidate = RSidCondicionValidate
      Size = 16
    end
    object RSFechaEnviado: TDateTimeField
      FieldName = 'FechaEnviado'
    end
    object RSObservacion: TStringField
      FieldName = 'Observacion'
      Size = 200
    end
    object RSNotaReferencia: TStringField
      FieldName = 'NotaReferencia'
      Size = 2000
    end
  end
  inherited DS2: TwwDataSource [50]
    Left = 535
    Top = 265
  end
  inherited RSDet: TADODataSet
    BeforePost = RSDetBeforePost
    AfterPost = RSDetAfterPost
    AfterDelete = RSDetAfterPost
    OnCalcFields = RSDetCalcFields
    OnNewRecord = RSDetNewRecord
    CommandText = 'rsCotizacionDet;1'
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
    Left = 536
    Top = 218
    object RSDetidProducto: TStringField
      DisplayWidth = 22
      FieldName = 'idProducto'
      OnValidate = RSDetidProductoValidate
      Size = 25
    end
    object RSDetProducto: TStringField
      DisplayWidth = 53
      FieldName = 'Producto'
      Size = 120
    end
    object RSDetCantidad: TFloatField
      DisplayWidth = 12
      FieldName = 'Cantidad'
      OnValidate = RSDetCantidadValidate
    end
    object RSDetPrecioDia: TBCDField
      DisplayLabel = 'Precio'
      DisplayWidth = 16
      FieldName = 'PrecioDia'
      OnValidate = RSDetPrecioDiaValidate
      Precision = 19
      Size = 2
    end
    object RSDetidUnidad: TStringField
      DisplayLabel = 'Unidad'
      DisplayWidth = 10
      FieldName = 'idUnidad'
      Size = 16
    end
    object RSDetDescuento: TBCDField
      DisplayLabel = 'Desc.'
      DisplayWidth = 10
      FieldName = 'Descuento'
      OnValidate = RSDetDescuentoValidate
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSDetDescuentoAdd: TBCDField
      DisplayLabel = 'Desc. Ad.'
      DisplayWidth = 11
      FieldName = 'DescuentoAdd'
      OnValidate = RSDetDescuentoAddValidate
      Precision = 19
      Size = 2
    end
    object RSDetItbis: TBCDField
      DisplayWidth = 11
      FieldName = 'Itbis'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSDetLineTotalExt: TCurrencyField
      DisplayLabel = 'Importe'
      DisplayWidth = 17
      FieldKind = fkCalculated
      FieldName = 'LineTotalExt'
      Calculated = True
    end
    object RSDetLineTotal: TBCDField
      DisplayWidth = 16
      FieldName = 'LineTotal'
      Visible = False
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSDetDias: TIntegerField
      DisplayWidth = 7
      FieldName = 'Dias'
      Visible = False
      OnValidate = RSDetDiasValidate
    end
    object RSDetPrecio: TBCDField
      DisplayWidth = 13
      FieldName = 'Precio'
      Visible = False
      OnValidate = RSDetPrecioValidate
      DisplayFormat = '#,0.00###'
      Precision = 19
      Size = 5
    end
    object RSDetIdReferencia: TGuidField
      DisplayWidth = 38
      FieldName = 'IdReferencia'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object RSDetidCotizacionDet: TGuidField
      DisplayWidth = 38
      FieldName = 'idCotizacionDet'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object RSDetidCotizacion: TGuidField
      DisplayWidth = 38
      FieldName = 'idCotizacion'
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
    Left = 396
    Top = 232
    object ClienteActidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object ClienteActCliente: TStringField
      FieldName = 'Cliente'
      Size = 100
    end
    object ClienteActLimiteCredito: TBCDField
      FieldName = 'LimiteCredito'
      Precision = 19
      Size = 2
    end
    object ClienteActActivo: TBooleanField
      FieldName = 'Activo'
    end
    object ClienteActContacto: TStringField
      FieldName = 'Contacto'
      Size = 40
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
      Size = 50
    end
    object ClienteActidListaPrecio: TStringField
      FieldName = 'idListaPrecio'
      Size = 16
    end
    object ClienteActCondicion: TIntegerField
      FieldName = 'Condicion'
    end
    object ClienteActidCuenta: TStringField
      FieldName = 'idCuenta'
    end
    object ClienteActidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
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
    Left = 464
    Top = 248
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
    Left = 272
    Top = 216
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
  end
  object dsProductoAct: TDataSource
    DataSet = ProductoAct
    Left = 272
    Top = 272
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
    Left = 80
    Top = 160
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
    Left = 80
    Top = 216
  end
  object Anulable: TADOCommand
    CommandText = 'SPFacturaesAnulable;1'
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
        Name = '@Anulable'
        Attributes = [paNullable]
        DataType = ftBoolean
        Direction = pdInputOutput
        Value = Null
      end>
    Left = 80
    Top = 272
  end
  object Empleado: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'spVendedores;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 192
    Top = 216
  end
  object dsEmpleado: TDataSource
    DataSet = Empleado
    Left = 192
    Top = 280
  end
  object CotizacionStatus: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'Select * From CotizacionStatus order by CotizacionStatus'
    Parameters = <>
    Left = 594
    Top = 184
  end
  object dsCotizacionStatus: TDataSource
    DataSet = CotizacionStatus
    Left = 608
    Top = 272
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
    Left = 688
    Top = 216
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
    Left = 688
    Top = 272
  end
  object rptCotizacion: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'RPTCotizacion;1'
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
        Name = '@idCotizacion'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 48
    Top = 386
    object rptCotizacionidCotizacion: TGuidField
      FieldName = 'idCotizacion'
      FixedChar = True
      Size = 38
    end
    object rptCotizacionCotizacion: TStringField
      FieldName = 'Cotizacion'
      Size = 16
    end
    object rptCotizacionidCotizacionStatus: TStringField
      FieldName = 'idCotizacionStatus'
      Size = 16
    end
    object rptCotizacionCotizacionStatus: TStringField
      FieldName = 'CotizacionStatus'
      Size = 50
    end
    object rptCotizacionCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object rptCotizacionContacto: TStringField
      FieldName = 'Contacto'
      Size = 50
    end
    object rptCotizacionDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object rptCotizacionSector: TStringField
      FieldName = 'Sector'
    end
    object rptCotizacionCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object rptCotizacionTelefono: TStringField
      FieldName = 'Telefono'
    end
    object rptCotizacionSolicitadoPor: TStringField
      FieldName = 'SolicitadoPor'
      Size = 30
    end
    object rptCotizacionEmpleado: TStringField
      FieldName = 'Empleado'
      Size = 40
    end
    object rptCotizacionFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rptCotizacionReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rptCotizacionCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object rptCotizacionCredito: TBooleanField
      FieldName = 'Credito'
    end
    object rptCotizacionCondicion: TStringField
      FieldName = 'Condicion'
      ReadOnly = True
      Size = 30
    end
    object rptCotizacionSubTotal: TBCDField
      FieldName = 'SubTotal'
      Precision = 18
      Size = 2
    end
    object rptCotizacionItbis: TBCDField
      FieldName = 'Itbis'
      Precision = 18
      Size = 2
    end
    object rptCotizacionDescuento: TBCDField
      FieldName = 'Descuento'
      Precision = 19
      Size = 2
    end
    object rptCotizacionTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
      Size = 2
    end
    object rptCotizacionNota: TStringField
      FieldName = 'Nota'
      Size = 600
    end
    object rptCotizacionValidoHasta: TDateTimeField
      FieldName = 'ValidoHasta'
    end
    object rptCotizacionidClienteObra: TStringField
      FieldName = 'idClienteObra'
      Size = 25
    end
    object rptCotizacionidCotizacionDet: TGuidField
      FieldName = 'idCotizacionDet'
      FixedChar = True
      Size = 38
    end
    object rptCotizacionDetidProducto: TStringField
      FieldName = 'DetidProducto'
      Size = 25
    end
    object rptCotizacionDetProducto: TStringField
      FieldName = 'DetProducto'
      Size = 120
    end
    object rptCotizacionDetCantidad: TFloatField
      FieldName = 'DetCantidad'
    end
    object rptCotizacionDetPrecio: TBCDField
      FieldName = 'DetPrecio'
      Precision = 18
      Size = 2
    end
    object rptCotizacionDetDescuento: TBCDField
      FieldName = 'DetDescuento'
      Precision = 18
      Size = 2
    end
    object rptCotizacionDetITBIS: TBCDField
      FieldName = 'DetITBIS'
      Precision = 18
      Size = 2
    end
    object rptCotizacionDetLineTotal: TBCDField
      FieldName = 'DetLineTotal'
      Precision = 18
      Size = 2
    end
    object rptCotizacionEspecificacion: TStringField
      FieldName = 'Especificacion'
      Size = 5000
    end
    object rptCotizacionidmoneda: TIntegerField
      FieldName = 'idmoneda'
    end
    object rptCotizacionmoneda: TStringField
      FieldName = 'moneda'
    end
    object rptCotizacionFax: TStringField
      FieldName = 'Fax'
    end
    object rptCotizacionLinea: TIntegerField
      FieldName = 'Linea'
    end
    object rptCotizacionNumeroSuplidor: TStringField
      FieldName = 'NumeroSuplidor'
      Size = 16
    end
    object rptCotizacionIdUnidad: TStringField
      FieldName = 'IdUnidad'
      Size = 16
    end
    object rptCotizacionDias: TIntegerField
      FieldName = 'Dias'
    end
    object rptCotizacionPrecioDia: TBCDField
      FieldName = 'PrecioDia'
      Precision = 19
      Size = 2
    end
    object rptCotizacionDetPorcDescuento: TBCDField
      FieldName = 'DetPorcDescuento'
      ReadOnly = True
      Precision = 32
      Size = 16
    end
    object rptCotizacionDetNeto: TBCDField
      FieldName = 'DetNeto'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rptCotizacionPrecioNeto: TBCDField
      FieldName = 'PrecioNeto'
      ReadOnly = True
      Precision = 32
      Size = 20
    end
    object rptCotizacionDetDescuentoAdd: TBCDField
      FieldName = 'DetDescuentoAdd'
      Precision = 19
      Size = 2
    end
    object rptCotizacionDetPorcDescuentoAdd: TBCDField
      FieldName = 'DetPorcDescuentoAdd'
      ReadOnly = True
      Precision = 32
      Size = 15
    end
    object rptCotizacioncoCompania: TStringField
      FieldName = 'coCompania'
      Size = 200
    end
    object rptCotizacioncoDireccion: TStringField
      FieldName = 'coDireccion'
      Size = 200
    end
    object rptCotizacioncoTelefono: TStringField
      FieldName = 'coTelefono'
      Size = 15
    end
    object rptCotizacioncoFax: TStringField
      FieldName = 'coFax'
      Size = 15
    end
    object rptCotizacioncoRNC: TStringField
      FieldName = 'coRNC'
    end
    object rptCotizacionNetLineTotal: TBCDField
      FieldName = 'NetLineTotal'
      Precision = 19
      Size = 2
    end
    object rptCotizacionUsuario: TStringField
      FieldName = 'Usuario'
      Size = 100
    end
    object rptCotizacioncoEmail: TStringField
      FieldName = 'coEmail'
      Size = 100
    end
    object rptCotizacionEmail: TStringField
      FieldName = 'Email'
      Size = 80
    end
  end
  object dsRptcotizacion: TDataSource
    DataSet = rptCotizacion
    Left = 124
    Top = 386
  end
  object CotizacionRPT: TppReport
    AutoStop = False
    DataPipeline = plrptCotizacion
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'E:\cbsexpressOptica\bin\cotizacion.rtm'
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = False
    ThumbnailSettings.Visible = False
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
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 294
    Top = 386
    Version = '15.02'
    mmColumnWidth = 203200
    DataPipelineName = 'plrptCotizacion'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 69321
      mmPrintPosition = 0
      object ppShape5: TppShape
        UserName = 'Shape4'
        Brush.Color = clGray
        ParentWidth = True
        Pen.Color = clWindowText
        Pen.Style = psClear
        mmHeight = 9260
        mmLeft = 0
        mmTop = 28840
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground
      end
      object ppShape6: TppShape
        UserName = 'Shape2'
        Shape = stRoundRect
        mmHeight = 10054
        mmLeft = 150019
        mmTop = 2646
        mmWidth = 50800
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel44: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        Caption = 'CANTIDAD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 3175
        mmTop = 62971
        mmWidth = 18256
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel45: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        Caption = 'DESCRIPCION'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 30427
        mmTop = 62971
        mmWidth = 24342
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel52: TppLabel
        UserName = 'Label14'
        HyperlinkEnabled = False
        Caption = 'PRECIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 162454
        mmTop = 62971
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel53: TppLabel
        UserName = 'Label15'
        HyperlinkEnabled = False
        Caption = 'SUB-TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 182827
        mmTop = 62971
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel54: TppLabel
        UserName = 'Label16'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'CLIENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 3704
        mmTop = 42863
        mmWidth = 19050
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText41: TppDBText
        UserName = 'DBText21'
        HyperlinkEnabled = False
        DataField = 'Cliente'
        DataPipeline = plrptCotizacion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 3969
        mmLeft = 23548
        mmTop = 42863
        mmWidth = 71173
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel55: TppLabel
        UserName = 'Label34'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'COTIZACION'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7408
        mmLeft = 77258
        mmTop = 29633
        mmWidth = 50800
        BandType = 0
        LayerName = Foreground
      end
      object ppLine17: TppLine
        UserName = 'Line4'
        Weight = 1.000000000000000000
        mmHeight = 1588
        mmLeft = 1323
        mmTop = 61913
        mmWidth = 201613
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText53: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Cotizacion'
        DataPipeline = plrptCotizacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 16
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 6858
        mmLeft = 159015
        mmTop = 4233
        mmWidth = 34925
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel56: TppLabel
        UserName = 'Label17'
        HyperlinkEnabled = False
        Caption = 'CONTACTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 107421
        mmTop = 42863
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText54: TppDBText
        UserName = 'DBText23'
        HyperlinkEnabled = False
        DataField = 'Contacto'
        DataPipeline = plrptCotizacion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 3969
        mmLeft = 124884
        mmTop = 42863
        mmWidth = 74613
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel57: TppLabel
        UserName = 'Label18'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'TELEFONO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 3704
        mmTop = 47890
        mmWidth = 19050
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText55: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Telefono'
        DataPipeline = plrptCotizacion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 3969
        mmLeft = 23548
        mmTop = 47890
        mmWidth = 71173
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel58: TppLabel
        UserName = 'Label19'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'EMAIL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 3704
        mmTop = 53181
        mmWidth = 19050
        BandType = 0
        LayerName = Foreground
      end
      object ppLine18: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 23548
        mmTop = 56886
        mmWidth = 71173
        BandType = 0
        LayerName = Foreground
      end
      object ppLine19: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 23548
        mmTop = 52388
        mmWidth = 71173
        BandType = 0
        LayerName = Foreground
      end
      object ppLine20: TppLine
        UserName = 'Line7'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 23548
        mmTop = 47361
        mmWidth = 71173
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2879
        mmLeft = 172381
        mmTop = 13229
        mmWidth = 15071
        BandType = 0
        LayerName = Foreground
      end
      object ppLine21: TppLine
        UserName = 'Line8'
        Weight = 1.000000000000000000
        mmHeight = 1588
        mmLeft = 1323
        mmTop = 67469
        mmWidth = 201613
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel59: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'CELULAR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 103717
        mmTop = 47890
        mmWidth = 19050
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel60: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'OBSERVACION'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 99484
        mmTop = 53181
        mmWidth = 23548
        BandType = 0
        LayerName = Foreground
      end
      object ppLine22: TppLine
        UserName = 'Line9'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 124884
        mmTop = 56886
        mmWidth = 76200
        BandType = 0
        LayerName = Foreground
      end
      object ppLine23: TppLine
        UserName = 'Line10'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 124884
        mmTop = 52388
        mmWidth = 76200
        BandType = 0
        LayerName = Foreground
      end
      object ppLine24: TppLine
        UserName = 'Line101'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 124884
        mmTop = 47361
        mmWidth = 76200
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText56: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Nota'
        DataPipeline = plrptCotizacion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 3704
        mmLeft = 124884
        mmTop = 53181
        mmWidth = 75671
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Email'
        DataPipeline = plrptCotizacion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 3969
        mmLeft = 23548
        mmTop = 52652
        mmWidth = 71173
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'coCompania'
        DataPipeline = plrptCotizacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Black'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 8932
        mmLeft = 0
        mmTop = 0
        mmWidth = 145786
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'coRNC'
        DataPipeline = plrptCotizacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 3704
        mmLeft = 7938
        mmTop = 11906
        mmWidth = 57944
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'SUCURSARDireccion'
        DataPipeline = plrptCotizacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 7938
        mmWidth = 131763
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'SUCURSARLTelefono'
        DataPipeline = plrptCotizacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 3704
        mmLeft = 6350
        mmTop = 15875
        mmWidth = 24606
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText24'
        HyperlinkEnabled = False
        DataField = 'coFax'
        DataPipeline = plrptCotizacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 3704
        mmLeft = 39644
        mmTop = 15875
        mmWidth = 31221
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label10'
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
        UserName = 'DBText25'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plrptCotizacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 4233
        mmLeft = 11113
        mmTop = 19844
        mmWidth = 27781
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
        mmLeft = 33294
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
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText57: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'DetCantidad'
        DataPipeline = plrptCotizacion
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 3704
        mmLeft = 2646
        mmTop = 529
        mmWidth = 26194
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText58: TppDBText
        UserName = 'DBText19'
        HyperlinkEnabled = False
        DataField = 'DetPrecio'
        DataPipeline = plrptCotizacion
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 3704
        mmLeft = 149225
        mmTop = 529
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText59: TppDBText
        UserName = 'DBText20'
        HyperlinkEnabled = False
        DataField = 'DetLineTotal'
        DataPipeline = plrptCotizacion
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 3704
        mmLeft = 175155
        mmTop = 529
        mmWidth = 25929
        BandType = 4
        LayerName = Foreground
      end
      object ppDBMemo4: TppDBMemo
        UserName = 'DBMemo2'
        CharWrap = True
        DataField = 'Especificacion'
        DataPipeline = plrptCotizacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        RemoveEmptyLines = False
        ShiftRelativeTo = ppDBMemo6
        Stretch = True
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 265
        mmLeft = 529
        mmTop = 4498
        mmWidth = 201613
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBMemo6: TppDBMemo
        UserName = 'DBMemo3'
        CharWrap = False
        DataField = 'DetProducto'
        DataPipeline = plrptCotizacion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 3704
        mmLeft = 29369
        mmTop = 529
        mmWidth = 118004
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppFooterBand3: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 37042
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape1'
        Brush.Color = clSilver
        Pen.Color = clGray
        mmHeight = 17198
        mmLeft = 136790
        mmTop = 1058
        mmWidth = 65088
        BandType = 8
        LayerName = Foreground
      end
      object ppLine26: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 27781
        mmTop = 28840
        mmWidth = 78846
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel62: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        Caption = 'REALIZADO POR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 2910
        mmTop = 24606
        mmWidth = 24077
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel63: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 116946
        mmTop = 23813
        mmWidth = 11906
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText60: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plrptCotizacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 4233
        mmLeft = 132557
        mmTop = 23813
        mmWidth = 47361
        BandType = 8
        LayerName = Foreground
      end
      object ppLine27: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 130175
        mmTop = 28310
        mmWidth = 52917
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText61: TppDBText
        UserName = 'DBText51'
        HyperlinkEnabled = False
        DataField = 'Direccion'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4868682
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        Visible = False
        DataPipelineName = 'plConfig'
        mmHeight = 3969
        mmLeft = 6879
        mmTop = 32279
        mmWidth = 166688
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText62: TppDBText
        UserName = 'DBText52'
        HyperlinkEnabled = False
        AutoSize = True
        DataField = 'Telefono'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4868682
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        Visible = False
        DataPipelineName = 'plConfig'
        mmHeight = 4234
        mmLeft = 178330
        mmTop = 32279
        mmWidth = 20637
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel64: TppLabel
        UserName = 'Label50'
        HyperlinkEnabled = False
        Caption = 'C.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4868682
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 32279
        mmWidth = 3440
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel65: TppLabel
        UserName = 'Label51'
        HyperlinkEnabled = False
        Caption = 'T.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4868682
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 174625
        mmTop = 32279
        mmWidth = 2910
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel66: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'CONDICIONES DE PAGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 14023
        mmWidth = 43127
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText63: TppDBText
        UserName = 'DBText17'
        HyperlinkEnabled = False
        DataField = 'Condicion'
        DataPipeline = plrptCotizacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 4233
        mmLeft = 46831
        mmTop = 14023
        mmWidth = 88900
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel70: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'DESCUENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 144727
        mmTop = 5821
        mmWidth = 21696
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText64: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Descuento'
        DataPipeline = plrptCotizacion
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 3704
        mmLeft = 175155
        mmTop = 5821
        mmWidth = 25929
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel71: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'ITBIS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 152665
        mmTop = 9790
        mmWidth = 13758
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText65: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Itbis'
        DataPipeline = plrptCotizacion
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 3704
        mmLeft = 175155
        mmTop = 9790
        mmWidth = 25929
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel72: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'SUB-TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 147373
        mmTop = 1588
        mmWidth = 19050
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText66: TppDBText
        UserName = 'DBText15'
        HyperlinkEnabled = False
        DataField = 'SubTotal'
        DataPipeline = plrptCotizacion
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 3704
        mmLeft = 175155
        mmTop = 1588
        mmWidth = 25929
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel73: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 152136
        mmTop = 14288
        mmWidth = 14288
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText67: TppDBText
        UserName = 'DBText16'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plrptCotizacion
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 3704
        mmLeft = 175155
        mmTop = 14288
        mmWidth = 25929
        BandType = 8
        LayerName = Foreground
      end
      object ppLine28: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 794
        mmTop = 529
        mmWidth = 201084
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText68: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'moneda'
        DataPipeline = plrptCotizacion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 3704
        mmLeft = 166952
        mmTop = 1588
        mmWidth = 7938
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText69: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'moneda'
        DataPipeline = plrptCotizacion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 3704
        mmLeft = 166952
        mmTop = 5821
        mmWidth = 7938
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText70: TppDBText
        UserName = 'DBText18'
        HyperlinkEnabled = False
        DataField = 'moneda'
        DataPipeline = plrptCotizacion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 3704
        mmLeft = 166952
        mmTop = 9790
        mmWidth = 7938
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText71: TppDBText
        UserName = 'DBText22'
        HyperlinkEnabled = False
        DataField = 'moneda'
        DataPipeline = plrptCotizacion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptCotizacion'
        mmHeight = 3704
        mmLeft = 166952
        mmTop = 14288
        mmWidth = 7938
        BandType = 8
        LayerName = Foreground
      end
      object ppLine15: TppLine
        UserName = 'Line102'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 137054
        mmTop = 5292
        mmWidth = 64823
        BandType = 8
        LayerName = Foreground
      end
      object ppLine16: TppLine
        UserName = 'Line11'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 136790
        mmTop = 9525
        mmWidth = 65088
        BandType = 8
        LayerName = Foreground
      end
      object ppLine1: TppLine
        UserName = 'Line12'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 136790
        mmTop = 13758
        mmWidth = 65088
        BandType = 8
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
  object PopupMenu1: TPopupMenu
    Left = 536
    Top = 162
    object ProductoDet1: TMenuItem
      Action = AProductoDet
    end
    object EspecificacionesTecnicasdelProducto1: TMenuItem
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
    Left = 656
    Top = 172
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
    Left = 536
    Top = 294
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
    Left = 186
    Top = 162
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
    Left = 276
    Top = 158
    object GetProductoEspecEspecificacion: TStringField
      FieldName = 'Especificacion'
      Size = 5000
    end
    object GetProductoEspecFechaEspec: TDateTimeField
      FieldName = 'FechaEspec'
    end
  end
  object dsClienteAct: TDataSource
    DataSet = ClienteAct
    Left = 468
    Top = 210
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
    Left = 460
    Top = 292
  end
  object plrptCotizacion: TppDBPipeline
    DataSource = dsRptcotizacion
    UserName = 'plrptCotizacion'
    Left = 205
    Top = 430
    object plrptCotizacionppField1: TppField
      FieldAlias = 'idCotizacion'
      FieldName = 'idCotizacion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField2: TppField
      FieldAlias = 'Cotizacion'
      FieldName = 'Cotizacion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField3: TppField
      FieldAlias = 'idCotizacionStatus'
      FieldName = 'idCotizacionStatus'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField4: TppField
      FieldAlias = 'CotizacionStatus'
      FieldName = 'CotizacionStatus'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField5: TppField
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField6: TppField
      FieldAlias = 'Contacto'
      FieldName = 'Contacto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField7: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField8: TppField
      FieldAlias = 'Sector'
      FieldName = 'Sector'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField9: TppField
      FieldAlias = 'Ciudad'
      FieldName = 'Ciudad'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField10: TppField
      FieldAlias = 'Telefono'
      FieldName = 'Telefono'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField11: TppField
      FieldAlias = 'SolicitadoPor'
      FieldName = 'SolicitadoPor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField12: TppField
      FieldAlias = 'Empleado'
      FieldName = 'Empleado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField13: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField14: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField15: TppField
      FieldAlias = 'Cancelado'
      FieldName = 'Cancelado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField16: TppField
      FieldAlias = 'Credito'
      FieldName = 'Credito'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField17: TppField
      FieldAlias = 'Condicion'
      FieldName = 'Condicion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField18: TppField
      FieldAlias = 'SubTotal'
      FieldName = 'SubTotal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField19: TppField
      FieldAlias = 'Itbis'
      FieldName = 'Itbis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField20: TppField
      FieldAlias = 'Descuento'
      FieldName = 'Descuento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField21: TppField
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField22: TppField
      FieldAlias = 'Nota'
      FieldName = 'Nota'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField23: TppField
      FieldAlias = 'ValidoHasta'
      FieldName = 'ValidoHasta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField24: TppField
      FieldAlias = 'idClienteObra'
      FieldName = 'idClienteObra'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField25: TppField
      FieldAlias = 'idCotizacionDet'
      FieldName = 'idCotizacionDet'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField26: TppField
      FieldAlias = 'DetidProducto'
      FieldName = 'DetidProducto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField27: TppField
      FieldAlias = 'DetProducto'
      FieldName = 'DetProducto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField28: TppField
      FieldAlias = 'DetCantidad'
      FieldName = 'DetCantidad'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField29: TppField
      FieldAlias = 'DetPrecio'
      FieldName = 'DetPrecio'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField30: TppField
      FieldAlias = 'DetDescuento'
      FieldName = 'DetDescuento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField31: TppField
      FieldAlias = 'DetITBIS'
      FieldName = 'DetITBIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField32: TppField
      FieldAlias = 'DetLineTotal'
      FieldName = 'DetLineTotal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField33: TppField
      FieldAlias = 'Especificacion'
      FieldName = 'Especificacion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField34: TppField
      FieldAlias = 'idmoneda'
      FieldName = 'idmoneda'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField35: TppField
      FieldAlias = 'moneda'
      FieldName = 'moneda'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField36: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField37: TppField
      FieldAlias = 'Linea'
      FieldName = 'Linea'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField38: TppField
      FieldAlias = 'NumeroSuplidor'
      FieldName = 'NumeroSuplidor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField39: TppField
      FieldAlias = 'IdUnidad'
      FieldName = 'IdUnidad'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField40: TppField
      FieldAlias = 'Dias'
      FieldName = 'Dias'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField41: TppField
      FieldAlias = 'PrecioDia'
      FieldName = 'PrecioDia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField42: TppField
      FieldAlias = 'DetPorcDescuento'
      FieldName = 'DetPorcDescuento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField43: TppField
      FieldAlias = 'DetNeto'
      FieldName = 'DetNeto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField44: TppField
      FieldAlias = 'PrecioNeto'
      FieldName = 'PrecioNeto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField45: TppField
      FieldAlias = 'DetDescuentoAdd'
      FieldName = 'DetDescuentoAdd'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField46: TppField
      FieldAlias = 'DetPorcDescuentoAdd'
      FieldName = 'DetPorcDescuentoAdd'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField47: TppField
      FieldAlias = 'coCompania'
      FieldName = 'coCompania'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField48: TppField
      FieldAlias = 'coDireccion'
      FieldName = 'coDireccion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField49: TppField
      FieldAlias = 'coTelefono'
      FieldName = 'coTelefono'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField50: TppField
      FieldAlias = 'coFax'
      FieldName = 'coFax'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField51: TppField
      FieldAlias = 'coRNC'
      FieldName = 'coRNC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField52: TppField
      FieldAlias = 'NetLineTotal'
      FieldName = 'NetLineTotal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField53: TppField
      FieldAlias = 'Usuario'
      FieldName = 'Usuario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField54: TppField
      FieldAlias = 'coEmail'
      FieldName = 'coEmail'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object plrptCotizacionppField55: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
  end
end

inherited FacturaRec: TFacturaRec
  Left = 140
  Top = 154
  ActiveControl = dxDBEdit3
  Caption = 'Factura recurrente'
  ClientHeight = 438
  ClientWidth = 781
  Color = 15922418
  DesignSize = (
    781
    438)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 591
    Top = 310
    Width = 46
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Sub Total'
  end
  object Label2: TLabel [1]
    Left = 585
    Top = 333
    Width = 52
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Descuento'
  end
  object Label3: TLabel [2]
    Left = 610
    Top = 358
    Width = 27
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'ITBIS'
  end
  object Label4: TLabel [3]
    Left = 597
    Top = 383
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
    Top = 62
    Width = 36
    Height = 13
    Caption = 'Factura'
  end
  object Label6: TLabel [5]
    Left = 184
    Top = 62
    Width = 30
    Height = 13
    Caption = 'Fecha'
  end
  object Label7: TLabel [6]
    Left = 368
    Top = 62
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
    Width = 781
  end
  object Label10: TLabel [9]
    Left = 8
    Top = 114
    Width = 43
    Height = 13
    Caption = 'Contacto'
  end
  object Label11: TLabel [10]
    Left = 378
    Top = 113
    Width = 38
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Cotizac.'
  end
  object Label18: TLabel [11]
    Left = 703
    Top = 83
    Width = 21
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Dias'
  end
  object Label17: TLabel [12]
    Left = 461
    Top = 343
    Width = 39
    Height = 13
    Caption = 'Moneda'
  end
  object Label28: TLabel [13]
    Left = 597
    Top = 58
    Width = 47
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Condicion'
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 781
    inherited nuevo: TwwNavButton
      Width = 56
    end
    inherited editar: TwwNavButton
      Left = 56
      Width = 56
    end
    inherited guardar: TwwNavButton
      Left = 112
      Width = 56
    end
    inherited cancelar: TwwNavButton
      Left = 168
      Width = 56
    end
    inherited borrar: TwwNavButton
      Left = 224
      Width = 56
    end
    inherited BLocalizarx: TwwNavButton
      Left = 280
      Width = 56
    end
    object bAnular: TwwNavButton [6]
      Left = 336
      Top = 0
      Width = 56
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
      Left = 392
      Top = 0
      Width = 56
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
      Left = 448
      Top = 0
      Width = 56
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
    object BConduce2Factura: TwwNavButton [9]
      Left = 504
      Top = 0
      Width = 56
      Height = 42
      Action = Conduce2Factura
      ImageIndex = 5
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 9
      Style = nbsCustom
    end
    object bPrint: TwwNavButton [10]
      Left = 560
      Top = 0
      Width = 56
      Height = 42
      Action = Aprint
      ImageIndex = 11
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 10
      Style = nbsCustom
    end
    object bFax: TwwNavButton [11]
      Left = 616
      Top = 0
      Width = 55
      Height = 42
      Action = SendFax
      ImageIndex = -1
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 11
      Style = nbsCustom
    end
    object bMail: TwwNavButton [12]
      Left = 671
      Top = 0
      Width = 55
      Height = 42
      Action = SendMail
      ImageIndex = -1
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 12
      Style = nbsCustom
    end
    inherited salir: TwwNavButton
      Left = 726
      Width = 55
      Index = 13
    end
  end
  object cod: TdxDBEdit [15]
    Left = 64
    Top = 54
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
  object dxDBEdit2: TdxDBEdit [16]
    Left = 224
    Top = 54
    Width = 121
    TabOrder = 1
    TabStop = False
    DataField = 'Fecha'
    DataSource = DS
    ReadOnly = False
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit3: TdxDBEdit [17]
    Left = 424
    Top = 54
    Width = 155
    TabOrder = 2
    Anchors = [akLeft, akTop, akRight]
    DataField = 'Referencia'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object Credito: TdxDBCheckEdit [18]
    Left = 603
    Top = 80
    Width = 68
    TabOrder = 3
    OnClick = CreditoClick
    Anchors = [akTop, akRight]
    Alignment = taRightJustify
    Caption = 'Credito'
    DataField = 'Credito'
    DataSource = DS
    StyleController = dm.dxEstilo
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    OnChange = CreditoClick
    StoredValues = 1
  end
  object FindCliente: TButton [19]
    Left = 64
    Top = 81
    Width = 16
    Height = 20
    Caption = '...'
    TabOrder = 4
    TabStop = False
    OnClick = FindClienteClick
  end
  object dxDBEdit6: TdxDBEdit [20]
    Left = 80
    Top = 80
    Width = 89
    TabOrder = 5
    OnDblClick = dxDBEdit6DblClick
    DataField = 'idCliente'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit7: TdxDBEdit [21]
    Left = 644
    Top = 378
    Width = 121
    Color = 15066597
    TabOrder = 7
    TabStop = False
    Anchors = [akRight, akBottom]
    DataField = 'Total'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit1: TdxDBEdit [22]
    Left = 677
    Top = 406
    Width = 85
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    Style.BorderStyle = xbsNone
    Style.ButtonTransparence = ebtAlways
    TabOrder = 9
    TabStop = False
    Anchors = [akTop, akRight]
    Alignment = taRightJustify
    AutoSize = False
    DataField = 'Usuario'
    DataSource = DS
    ReadOnly = True
    Height = 16
    StoredValues = 65
  end
  object dxDBEdit8: TdxDBEdit [23]
    Left = 644
    Top = 305
    Width = 121
    Color = 15066597
    TabOrder = 10
    TabStop = False
    Anchors = [akRight, akBottom]
    DataField = 'SubTotal'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit9: TdxDBEdit [24]
    Left = 677
    Top = 329
    Width = 88
    Color = 15066597
    TabOrder = 11
    TabStop = False
    Anchors = [akRight, akBottom]
    DataField = 'Descuento'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit10: TdxDBEdit [25]
    Left = 644
    Top = 353
    Width = 121
    Color = 15066597
    TabOrder = 12
    TabStop = False
    Anchors = [akRight, akBottom]
    DataField = 'Itbis'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit11: TdxDBEdit [26]
    Left = 168
    Top = 80
    Width = 411
    TabOrder = 13
    Anchors = [akLeft, akTop, akRight]
    DataField = 'Cliente'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  inherited Grid: TwwDBGrid
    Left = 6
    Top = 134
    Width = 770
    Height = 167
    ControlType.Strings = (
      'Oferta;CheckBox;true;false')
    Selected.Strings = (
      'idProducto'#9'21'#9'Producto'
      'Producto'#9'63'#9'Descripcion'
      'Cantidad'#9'10'#9'Cantidad'
      'Precio'#9'13'#9'Precio'
      'Descuento'#9'11'#9'Desc.'
      'Itbis'#9'9'#9'Itbis'
      'LineTotal'#9'14'#9'LineTotal')
    OnCellChanged = GridCellChanged
    Font.Charset = ANSI_CHARSET
    Font.Height = -9
    Font.Name = 'Small Fonts'
    ParentColor = True
    ParentFont = False
    TabOrder = 6
    OnDblClick = GridDblClick
    OnKeyDown = GridKeyDown
  end
  object dxDBEdit5: TdxDBEdit [28]
    Left = 64
    Top = 106
    Width = 281
    TabOrder = 14
    Anchors = [akLeft, akTop, akRight]
    DataField = 'Contacto'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object PageControl1: TPageControl [29]
    Left = 5
    Top = 305
    Width = 449
    Height = 129
    ActivePage = TabSheet5
    Anchors = [akLeft, akBottom]
    MultiLine = True
    TabOrder = 15
    object TabSheet1: TTabSheet
      Caption = 'Notas'
      object Label8: TLabel
        Left = 8
        Top = 80
        Width = 46
        Height = 13
        Caption = 'Vendedor'
      end
      object lkEmpleado: TdxDBLookupEdit
        Left = 72
        Top = 72
        Width = 355
        TabOrder = 0
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
        Width = 428
        TabOrder = 1
        DataField = 'Nota'
        DataSource = DS
        StyleController = dm.dxEstilo
        Height = 69
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
    object TabSheet5: TTabSheet
      Caption = 'Recurrencia'
      ImageIndex = 4
      DesignSize = (
        441
        101)
      object Label21: TLabel
        Left = 8
        Top = 8
        Width = 25
        Height = 13
        Caption = 'Inicio'
      end
      object Label22: TLabel
        Left = 243
        Top = 8
        Width = 22
        Height = 13
        Caption = 'Final'
      end
      object Label23: TLabel
        Left = 11
        Top = 32
        Width = 16
        Height = 13
        Caption = 'Dia'
      end
      object dxDBEdit20: TdxDBEdit
        Left = 48
        Top = 5
        Width = 121
        TabOrder = 0
        TabStop = False
        DataField = 'FechaInicio'
        DataSource = DS
        ReadOnly = False
        StyleController = dm.dxEstilo
        StoredValues = 64
      end
      object dxDBEdit21: TdxDBEdit
        Left = 283
        Top = 5
        Width = 121
        TabOrder = 1
        TabStop = False
        DataField = 'FechaFin'
        DataSource = DS
        ReadOnly = False
        StyleController = dm.dxEstilo
        StoredValues = 64
      end
      object dxDBEdit22: TdxDBEdit
        Left = 48
        Top = 28
        Width = 168
        TabOrder = 2
        Anchors = [akLeft, akTop, akRight]
        DataField = 'DiaProceso'
        DataSource = DS
        StyleController = dm.dxEstilo
      end
      object Button1: TButton
        Left = 284
        Top = 29
        Width = 75
        Height = 25
        Caption = 'Limpiar'
        TabOrder = 3
        OnClick = Button1Click
      end
    end
  end
  object dxDBEdit16: TdxDBEdit [30]
    Left = 425
    Top = 106
    Width = 153
    TabOrder = 16
    OnDblClick = dxDBEdit16DblClick
    Anchors = [akTop, akRight]
    DataField = 'Cotizacion'
    DataSource = DS
    ReadOnly = False
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object desc: TdxDBEdit [31]
    Left = 644
    Top = 330
    Width = 30
    TabOrder = 17
    Anchors = [akRight, akBottom]
    DataField = 'PorcDesc'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object PagaItbis: TdxDBCheckEdit [32]
    Left = 457
    Top = 396
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
  object an: TCheckBox [33]
    Left = 461
    Top = 381
    Width = 81
    Height = 17
    Anchors = [akRight, akBottom]
    Caption = 'Auto Nuevo'
    TabOrder = 19
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [34]
    Left = 460
    Top = 356
    Width = 105
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
    Style.BorderStyle = ebsNone
    Style.StyleController = dm.cxEstilo
    TabOrder = 20
  end
  object dxDBLookupEdit6: TdxDBLookupEdit [35]
    Left = 652
    Top = 53
    Width = 125
    TabOrder = 21
    Anchors = [akTop, akRight]
    DataField = 'idCondicion'
    DataSource = DS
    StyleController = dm.dxEstilo
    ListFieldName = 'Condicion'
    KeyFieldName = 'IdCondicion'
    ListSource = dsCondicion
    LookupKeyValue = Null
  end
  object dxDBEdit23: TdxDBEdit [36]
    Left = 730
    Top = 78
    Width = 45
    TabOrder = 22
    DataField = 'Condicion'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  inherited DS: TwwDataSource
    Left = 253
    Top = 219
  end
  inherited ImageList: TImageList
    Left = 310
    Top = 170
  end
  inherited Acciones: TActionList
    Left = 312
    Top = 226
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
      Caption = 'Fact. Cond.'
      ImageIndex = 5
    end
    object AGetProduct: TAction
      Caption = 'AGetProduct'
      OnExecute = AGetProductExecute
    end
    object AOrdComp2Factura: TAction
      Caption = 'Fact. OC'
      OnExecute = AOrdComp2FacturaExecute
    end
    object SendFax: TAction
      Caption = 'Fax'
    end
    object SendMail: TAction
      Caption = 'eMail'
    end
  end
  inherited RS: TADODataSet
    OnNewRecord = RSNewRecord
    CommandText = 'rsFacturaRec;1'
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
    Left = 250
    Top = 154
    object RSidCliente: TIntegerField
      FieldName = 'idCliente'
      Required = True
      OnValidate = RSidClienteValidate
    end
    object RSCliente: TStringField
      FieldName = 'Cliente'
      Required = True
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
    end
    object RSHora: TDateTimeField
      FieldName = 'Hora'
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
      OnValidate = RSPagaItbisValidate
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
    object RSidfrFactura: TGuidField
      FieldName = 'idfrFactura'
      FixedChar = True
      Size = 38
    end
    object RSFechaInicio: TDateTimeField
      FieldName = 'FechaInicio'
    end
    object RSFechaFin: TDateTimeField
      FieldName = 'FechaFin'
    end
    object RSDiaProceso: TWordField
      FieldName = 'DiaProceso'
    end
    object RSidMoneda: TIntegerField
      FieldName = 'idMoneda'
      Required = True
      OnValidate = RSidMonedaValidate
    end
    object RSidCondicion: TStringField
      FieldName = 'idCondicion'
      Required = True
      OnValidate = RSidCondicionValidate
      Size = 16
    end
    object RSClienteRNC: TStringField
      FieldName = 'ClienteRNC'
    end
  end
  inherited DS2: TwwDataSource
    Left = 435
    Top = 217
  end
  inherited RSDet: TADODataSet
    AfterPost = RSDetAfterPost
    AfterDelete = RSDetAfterPost
    OnNewRecord = RSDetNewRecord
    CommandText = 'rsFacturaRecDet;1'
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
    Left = 438
    Top = 168
    object RSDetidProducto: TStringField
      DisplayLabel = 'Producto'
      DisplayWidth = 21
      FieldName = 'idProducto'
      OnValidate = RSDetidProductoValidate
      Size = 25
    end
    object RSDetProducto: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 63
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
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSDetDescuento: TBCDField
      DisplayLabel = 'Desc.'
      DisplayWidth = 11
      FieldName = 'Descuento'
      OnValidate = RSDetDescuentoValidate
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSDetItbis: TBCDField
      DisplayWidth = 9
      FieldName = 'Itbis'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSDetLineTotal: TBCDField
      DisplayWidth = 14
      FieldName = 'LineTotal'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSDetidUnidad: TStringField
      DisplayWidth = 16
      FieldName = 'idUnidad'
      Visible = False
      Size = 16
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
    object RSDetidfrFacturaDet: TGuidField
      FieldName = 'idfrFacturaDet'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object RSDetidfrFactura: TGuidField
      FieldName = 'idfrFactura'
      Visible = False
      FixedChar = True
      Size = 38
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
    Left = 384
    Top = 170
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
    object ClienteActidCuenta: TStringField
      FieldName = 'idCuenta'
    end
    object ClienteActidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
    end
    object ClienteActRNC_Cedula: TStringField
      FieldName = 'RNC_Cedula'
    end
    object ClienteActidCondicion: TStringField
      FieldName = 'idCondicion'
      Size = 16
    end
  end
  object dsEstacionAct: TDataSource
    DataSet = ClienteAct
    Left = 384
    Top = 226
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
    Left = 192
    Top = 172
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
    Left = 192
    Top = 226
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
        Name = '@Est'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
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
    Left = 48
    Top = 138
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
    Left = 48
    Top = 194
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
      end>
    Left = 48
    Top = 250
  end
  object Empleado: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'spVendedores;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 112
    Top = 170
  end
  object dsEmpleado: TDataSource
    DataSet = Empleado
    Left = 112
    Top = 234
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
    Left = 502
    Top = 168
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
    Left = 502
    Top = 224
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
  end
  object CargosAS2Fact: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'paqCargosAS2Fact;1'
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
        Name = '@idAutoServ'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 648
    Top = 232
    object CargosAS2FactidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object CargosAS2FactidAutoServ: TIntegerField
      FieldName = 'idAutoServ'
      ReadOnly = True
    end
    object CargosAS2FactContado: TBooleanField
      FieldName = 'Contado'
    end
    object CargosAS2FactidCargo: TGuidField
      FieldName = 'idCargo'
      FixedChar = True
      Size = 38
    end
    object CargosAS2FactidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object CargosAS2FactProducto: TStringField
      FieldName = 'Producto'
      Size = 120
    end
    object CargosAS2FactMontoRD: TBCDField
      FieldName = 'MontoRD'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object CargosAS2FactCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 18
      Size = 2
    end
    object CargosAS2FactDescuento: TBCDField
      FieldName = 'Descuento'
      Precision = 18
      Size = 2
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
    Left = 434
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
    Left = 500
    Top = 279
  end
end

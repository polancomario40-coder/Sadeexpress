inherited Devolucion: TDevolucion
  Left = 427
  Top = 171
  ActiveControl = dxDBEdit3
  Caption = 'Devolucion'
  ClientHeight = 484
  ClientWidth = 781
  Color = 15922418
  DesignSize = (
    781
    484)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 599
    Top = 390
    Width = 46
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Sub Total'
  end
  object Label2: TLabel [1]
    Left = 593
    Top = 413
    Width = 52
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Descuento'
  end
  object Label4: TLabel [2]
    Left = 605
    Top = 463
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
  object Label5: TLabel [3]
    Left = 8
    Top = 59
    Width = 54
    Height = 13
    Caption = 'Devolucion'
  end
  object Label6: TLabel [4]
    Left = 192
    Top = 59
    Width = 30
    Height = 13
    Caption = 'Fecha'
  end
  object Label7: TLabel [5]
    Left = 349
    Top = 59
    Width = 52
    Height = 13
    Caption = 'Referencia'
  end
  object Label9: TLabel [6]
    Left = 8
    Top = 84
    Width = 32
    Height = 13
    Caption = 'Cliente'
  end
  inherited Bevel1: TBevel
    Width = 781
  end
  object Label3: TLabel [8]
    Left = 618
    Top = 438
    Width = 27
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'ITBIS'
  end
  object Label8: TLabel [9]
    Left = 8
    Top = 312
    Width = 52
    Height = 13
    Caption = 'Concepto :'
  end
  object Label10: TLabel [10]
    Left = 678
    Top = 84
    Width = 24
    Height = 13
    Caption = 'Tasa'
  end
  object Label11: TLabel [11]
    Left = 528
    Top = 84
    Width = 39
    Height = 13
    Caption = 'Moneda'
  end
  object Label12: TLabel [12]
    Left = 8
    Top = 110
    Width = 44
    Height = 13
    Caption = 'Almacen:'
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 781
    object BdeOrdComp: TwwNavButton [0]
      Left = 0
      Top = 0
      Width = 79
      Height = 42
      Action = AFactura2Dev
      ImageIndex = 2
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 0
      Style = nbsCustom
    end
    inherited nuevo: TwwNavButton
      Left = 79
      Width = 78
      Index = 1
    end
    inherited editar: TwwNavButton
      Left = 157
      Width = 78
      Index = 2
    end
    inherited guardar: TwwNavButton
      Left = 235
      Width = 78
      Index = 3
    end
    inherited cancelar: TwwNavButton
      Left = 313
      Width = 78
      Index = 4
    end
    inherited borrar: TwwNavButton
      Left = 391
      Width = 78
      Index = 5
    end
    inherited BLocalizarx: TwwNavButton
      Left = 469
      Width = 78
      Index = 6
    end
    object bAnular: TwwNavButton [7]
      Left = 547
      Top = 0
      Width = 78
      Height = 42
      Action = AAnular
      ImageIndex = 3
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 7
      Style = nbsCustom
    end
    object bPrint: TwwNavButton [8]
      Left = 625
      Top = 0
      Width = 78
      Height = 42
      Action = Aprint
      ImageIndex = 11
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 8
      Style = nbsCustom
    end
    inherited salir: TwwNavButton
      Left = 703
      Width = 78
      Index = 9
    end
  end
  object cod: TdxDBEdit [14]
    Left = 72
    Top = 55
    Width = 105
    Color = 15066597
    TabOrder = 0
    TabStop = False
    DataField = 'Devolucion'
    DataSource = DS
    ReadOnly = False
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit2: TdxDBEdit [15]
    Left = 232
    Top = 55
    Width = 103
    TabOrder = 1
    TabStop = False
    DataField = 'Fecha'
    DataSource = DS
    ReadOnly = False
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit3: TdxDBEdit [16]
    Left = 405
    Top = 55
    Width = 101
    TabOrder = 2
    Anchors = [akLeft, akTop, akRight]
    DataField = 'Factura'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit6: TdxDBEdit [17]
    Left = 72
    Top = 80
    Width = 105
    TabOrder = 3
    DataField = 'idCliente'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit7: TdxDBEdit [18]
    Left = 652
    Top = 458
    Width = 121
    Color = 15066597
    TabOrder = 5
    TabStop = False
    Anchors = [akRight, akBottom]
    DataField = 'Total'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit1: TdxDBEdit [19]
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
    TabOrder = 7
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
  object dxDBEdit8: TdxDBEdit [20]
    Left = 652
    Top = 385
    Width = 121
    Color = 15066597
    TabOrder = 8
    TabStop = False
    Anchors = [akRight, akBottom]
    DataField = 'SubTotal'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit9: TdxDBEdit [21]
    Left = 652
    Top = 409
    Width = 122
    Color = 15066597
    TabOrder = 9
    TabStop = False
    Anchors = [akRight, akBottom]
    DataField = 'Descuento'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit10: TdxDBEdit [22]
    Left = 652
    Top = 433
    Width = 121
    Color = 15066597
    TabOrder = 10
    TabStop = False
    Anchors = [akRight, akBottom]
    DataField = 'Itbis'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit11: TdxDBEdit [23]
    Left = 174
    Top = 80
    Width = 332
    TabOrder = 11
    Anchors = [akLeft, akTop, akRight]
    DataField = 'Cliente'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  inherited Grid: TwwDBGrid
    Top = 132
    Width = 773
    Height = 247
    ControlType.Strings = (
      'Oferta;CheckBox;true;false')
    Selected.Strings = (
      'DevCantidad'#9'13'#9'Devolucion'#9#9
      'idProducto'#9'19'#9'Producto'#9'T'
      'Producto'#9'55'#9'Descripcion'#9'T'
      'Cantidad'#9'9'#9'Cantidad'#9'T'
      'Precio'#9'13'#9'Precio'#9'T'
      'Descuento'#9'11'#9'Desc.'#9'T'
      'Itbis'#9'9'#9'Itbis'#9'T'
      'LineTotal'#9'13'#9'LineTotal'#9'T')
    OnCellChanged = GridCellChanged
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Height = -9
    Font.Name = 'Small Fonts'
    ParentColor = True
    ParentFont = False
    TabOrder = 4
    UseTFields = False
  end
  object cxDBMemo1: TcxDBMemo [25]
    Left = 10
    Top = 406
    Width = 525
    Height = 73
    Anchors = [akLeft, akRight, akBottom]
    DataBinding.DataField = 'Concepto'
    DataBinding.DataSource = DS
    TabOrder = 12
  end
  object DBCheckBox1: TDBCheckBox [26]
    Left = 593
    Top = 57
    Width = 75
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Cancelado'
    DataField = 'Cancelado'
    DataSource = DS
    ReadOnly = True
    TabOrder = 13
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object dxDBEdit4: TdxDBEdit [27]
    Left = 672
    Top = 55
    Width = 89
    TabOrder = 14
    Anchors = [akLeft, akTop, akRight]
    DataField = 'FechaCancelado'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit5: TdxDBEdit [28]
    Left = 710
    Top = 80
    Width = 51
    TabOrder = 15
    Anchors = [akLeft, akTop, akRight]
    DataField = 'Tasa'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [29]
    Left = 576
    Top = 80
    Width = 89
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
    Properties.ReadOnly = True
    Style.BorderStyle = ebsNone
    Style.StyleController = dm.cxEstilo
    TabOrder = 16
  end
  object cxDBLookupComboBox2: TcxDBLookupComboBox [30]
    Left = 72
    Top = 106
    Width = 275
    Height = 21
    DataBinding.DataField = 'idAlmacen'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'idAlmacen'
    Properties.ListColumns = <
      item
        FieldName = 'Almacen'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DSAlmacenes
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 17
  end
  object cxDBCheckBox1: TcxDBCheckBox [31]
    Left = 354
    Top = 106
    Width = 121
    Height = 21
    Caption = 'Considerar ITBIS'
    DataBinding.DataField = 'IncluirItbis'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 18
  end
  inherited DS: TwwDataSource
    Left = 173
    Top = 229
  end
  inherited ImageList: TImageList
    Left = 230
    Top = 168
  end
  inherited Acciones: TActionList
    Left = 232
    Top = 224
    inherited ANuevo: TAction
      Visible = False
    end
    inherited AEditar: TAction
      Visible = False
    end
    inherited AAnular: TAction
      Caption = 'Anular'
      ImageIndex = 3
    end
    object AFactura2Dev: TAction
      Caption = 'Dev Fact'
      OnExecute = AFactura2DevExecute
    end
    object GenNC: TAction
      Caption = 'Nota de Credito'
      OnExecute = GenNCExecute
    end
    object GenProMov: TAction
      Caption = 'Mov. Almacen'
      OnExecute = GenProMovExecute
    end
  end
  inherited RS: TADODataSet
    OnNewRecord = RSNewRecord
    CommandText = 'rsDevolucion;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idDevolucion'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 176
    Top = 168
    object RSidDevolucion: TGuidField
      FieldName = 'idDevolucion'
      FixedChar = True
      Size = 38
    end
    object RSDevolucion: TStringField
      FieldName = 'Devolucion'
      Size = 16
    end
    object RSidFactura: TGuidField
      FieldName = 'idFactura'
      FixedChar = True
      Size = 38
    end
    object RSFactura: TStringField
      FieldName = 'Factura'
      Size = 16
    end
    object RSidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object RSCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object RSFecha: TDateTimeField
      FieldName = 'Fecha'
      Required = True
    end
    object RSConcepto: TStringField
      FieldName = 'Concepto'
      Required = True
      Size = 200
    end
    object RSidCxc: TGuidField
      FieldName = 'idCxc'
      FixedChar = True
      Size = 38
    end
    object RSidProMov: TGuidField
      FieldName = 'idProMov'
      FixedChar = True
      Size = 38
    end
    object RSUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object RSSubTotal: TBCDField
      FieldName = 'SubTotal'
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
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSTotal: TBCDField
      FieldName = 'Total'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 0
    end
    object RSCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object RSFechaCancelado: TDateTimeField
      FieldName = 'FechaCancelado'
    end
    object RSTasa: TBCDField
      FieldName = 'Tasa'
      Precision = 18
      Size = 2
    end
    object RSidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object RSidAlmacen: TStringField
      FieldName = 'idAlmacen'
      Size = 16
    end
    object RSIncluirItbis: TBooleanField
      FieldName = 'IncluirItbis'
      OnValidate = RSIncluirItbisValidate
    end
  end
  inherited DS2: TwwDataSource
    Left = 381
    Top = 225
  end
  inherited RSDet: TADODataSet
    AfterPost = RSDetAfterPost
    AfterDelete = RSDetAfterPost
    OnNewRecord = RSDetNewRecord
    CommandText = 'rsDevolucionDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idDevolucion'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 376
    Top = 168
    object RSDetDevCantidad: TFloatField
      DisplayLabel = 'Devolucion'
      DisplayWidth = 13
      FieldName = 'DevCantidad'
      OnValidate = RSDetDevCantidadValidate
    end
    object RSDetidProducto: TStringField
      DisplayLabel = 'Producto'
      DisplayWidth = 19
      FieldName = 'idProducto'
      Size = 25
    end
    object RSDetProducto: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 55
      FieldName = 'Producto'
      Size = 100
    end
    object RSDetCantidad: TFloatField
      DisplayWidth = 9
      FieldName = 'Cantidad'
    end
    object RSDetPrecio: TBCDField
      DisplayWidth = 13
      FieldName = 'Precio'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSDetDescuento: TBCDField
      DisplayLabel = 'Desc.'
      DisplayWidth = 11
      FieldName = 'Descuento'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 0
    end
    object RSDetItbis: TBCDField
      DisplayWidth = 9
      FieldName = 'Itbis'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 0
    end
    object RSDetLineTotal: TBCDField
      DisplayWidth = 13
      FieldName = 'LineTotal'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSDetDevDescuento: TBCDField
      DisplayWidth = 19
      FieldName = 'DevDescuento'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSDetDevItbis: TBCDField
      DisplayWidth = 19
      FieldName = 'DevItbis'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSDetDevLineTotal: TBCDField
      DisplayWidth = 19
      FieldName = 'DevLineTotal'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object RSDetidDevolucionDet: TGuidField
      FieldName = 'idDevolucionDet'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object RSDetidDevolucion: TGuidField
      FieldName = 'idDevolucion'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object RSDetidFacturaDet: TGuidField
      FieldName = 'idFacturaDet'
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
    Left = 304
    Top = 168
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
  end
  object dsEstacionAct: TDataSource
    DataSet = ClienteAct
    Left = 304
    Top = 224
  end
  object Devolucion2Cxc: TADOCommand
    CommandText = 'Devolucion2CxC;1'
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
        Name = '@idDevolucion'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 512
    Top = 168
  end
  object Factura2Dev: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'Factura2Dev;1'
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
    Left = 512
    Top = 224
    object Factura2DevidFactura: TGuidField
      FieldName = 'idFactura'
      FixedChar = True
      Size = 38
    end
    object Factura2DevFactura: TStringField
      FieldName = 'Factura'
      Size = 16
    end
    object Factura2DevidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object Factura2DevCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object Factura2DevFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object Factura2DevNota: TStringField
      FieldName = 'Nota'
      Size = 600
    end
    object Factura2DevPorcDesc: TFloatField
      FieldName = 'PorcDesc'
    end
    object Factura2Devcondicion: TIntegerField
      FieldName = 'condicion'
    end
    object Factura2DevidFacturaDet: TGuidField
      FieldName = 'idFacturaDet'
      FixedChar = True
      Size = 38
    end
    object Factura2DevidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object Factura2DevProducto: TStringField
      FieldName = 'Producto'
      Size = 120
    end
    object Factura2DevCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object Factura2DevPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 18
      Size = 2
    end
    object Factura2DevDescuento: TBCDField
      FieldName = 'Descuento'
      Precision = 18
      Size = 2
    end
    object Factura2DevItbis: TBCDField
      FieldName = 'Itbis'
      Precision = 18
      Size = 2
    end
    object Factura2DevLineTotal: TBCDField
      FieldName = 'LineTotal'
      Precision = 18
      Size = 2
    end
    object Factura2DevidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object Factura2Devtasa: TBCDField
      FieldName = 'tasa'
      Precision = 18
      Size = 2
    end
    object Factura2DevidAlmacen: TStringField
      FieldName = 'idAlmacen'
      Size = 16
    end
  end
  object AnularDev: TADOCommand
    CommandText = 'SPDevolucionAnular;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idDevolucion'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@Anulado'
        Attributes = [paNullable]
        DataType = ftBoolean
        Direction = pdInputOutput
        Value = True
      end>
    Left = 100
    Top = 167
  end
  object Devolucion2ProMov: TADOCommand
    CommandText = 'svDevolucion2ProMov;1'
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
        Name = '@idDevolucion'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 608
    Top = 170
  end
  object rsAlmacenes: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'Almacenes;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 36
    Top = 190
    object rsAlmacenesidAlmacen: TStringField
      FieldName = 'idAlmacen'
      Size = 16
    end
    object rsAlmacenesAlmacen: TStringField
      FieldName = 'Almacen'
      Size = 50
    end
  end
  object DSAlmacenes: TDataSource
    DataSet = rsAlmacenes
    Left = 36
    Top = 246
  end
end

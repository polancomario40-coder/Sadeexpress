inherited Recibo: TRecibo
  Left = 338
  Top = 105
  ActiveControl = dxDBEdit2
  Caption = 'Recibo de Ingreso'
  ClientHeight = 497
  ClientWidth = 775
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 34
    Top = 78
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object Label2: TLabel [1]
    Left = 22
    Top = 51
    Width = 32
    Height = 13
    Caption = 'Recibo'
  end
  object Label3: TLabel [2]
    Left = 192
    Top = 51
    Width = 29
    Height = 13
    Caption = 'Fecha'
  end
  object Label4: TLabel [3]
    Left = 10
    Top = 186
    Width = 46
    Height = 13
    Caption = 'Concepto'
  end
  object Label5: TLabel [4]
    Left = 343
    Top = 51
    Width = 52
    Height = 13
    Caption = 'Referencia'
  end
  object Label7: TLabel [5]
    Left = 28
    Top = 243
    Width = 28
    Height = 13
    Caption = 'Notas'
  end
  object Label10: TLabel [6]
    Left = 13
    Top = 222
    Width = 50
    Height = 13
    Caption = 'Entregado'
  end
  inherited Bevel1: TBevel
    Width = 775
  end
  object Label9: TLabel [8]
    Left = 24
    Top = 165
    Width = 33
    Height = 13
    Caption = 'Cliente'
  end
  object Label6: TLabel [9]
    Left = 6
    Top = 137
    Width = 57
    Height = 13
    Caption = 'Forma Pago'
  end
  object Label8: TLabel [10]
    Left = 538
    Top = 50
    Width = 20
    Height = 13
    Caption = 'Tipo'
  end
  object Label21: TLabel [11]
    Left = 189
    Top = 77
    Width = 38
    Height = 13
    Caption = 'Moneda'
  end
  object Label11: TLabel [12]
    Left = 369
    Top = 81
    Width = 23
    Height = 13
    Caption = 'Tasa'
  end
  object Label13: TLabel [13]
    Left = 372
    Top = 105
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object Label12: TLabel [14]
    Left = 188
    Top = 107
    Width = 175
    Height = 13
    Caption = 'Marcar si cliente retuvo 30% de itbis'
  end
  object Label14: TLabel [15]
    Left = 188
    Top = 123
    Width = 40
    Height = 11
    Caption = '# Cheque'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Small Fonts'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel [16]
    Left = 292
    Top = 123
    Width = 28
    Height = 11
    Caption = 'Banco'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Small Fonts'
    Font.Style = []
    ParentFont = False
  end
  object Label16: TLabel [17]
    Left = 531
    Top = 123
    Width = 99
    Height = 11
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Chk Devuelto/En Fecha'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Small Fonts'
    Font.Style = []
    ParentFont = False
  end
  object Label17: TLabel [18]
    Left = 538
    Top = 83
    Width = 20
    Height = 13
    Caption = 'CxC'
  end
  object Label18: TLabel [19]
    Left = 510
    Top = 105
    Width = 48
    Height = 13
    Caption = 'Proforma:'
  end
  object Label19: TLabel [20]
    Left = 603
    Top = 83
    Width = 20
    Height = 13
    Caption = 'NCF'
    Visible = False
  end
  object Label20: TLabel [21]
    Left = 254
    Top = 223
    Width = 40
    Height = 13
    Caption = 'Sucursal'
  end
  inherited wwDBNavigator1: TwwDBNavigator
    Width = 775
    inherited nuevo: TwwNavButton
      Width = 87
    end
    inherited editar: TwwNavButton
      Left = 87
      Width = 86
    end
    inherited guardar: TwwNavButton
      Left = 173
      Width = 86
    end
    inherited cancelar: TwwNavButton
      Left = 259
      Width = 86
    end
    inherited borrar: TwwNavButton
      Left = 345
      Width = 86
    end
    inherited BLocalizarx: TwwNavButton
      Left = 431
      Width = 86
    end
    object Imprimir: TwwNavButton [6]
      Left = 517
      Top = 0
      Width = 86
      Height = 42
      Action = Aprint
      ImageIndex = 11
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 6
      Style = nbsCustom
    end
    object bAnular: TwwNavButton [7]
      Left = 603
      Top = 0
      Width = 86
      Height = 42
      Action = AAnular
      ImageIndex = 3
      NumGlyphs = 1
      ShowText = True
      Spacing = 4
      Transparent = False
      Caption = 'Anular'
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 7
      Style = nbsCustom
    end
    inherited salir: TwwNavButton
      Left = 689
      Width = 86
      Index = 8
    end
  end
  object cod: TdxDBEdit [23]
    Left = 64
    Top = 46
    Width = 121
    Color = 15066597
    TabOrder = 0
    TabStop = False
    DataField = 'Recibo'
    DataSource = DS
    ReadOnly = False
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit2: TdxDBEdit [24]
    Left = 64
    Top = 72
    Width = 121
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 4
    DataField = 'Valor'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit3: TdxDBEdit [25]
    Left = 234
    Top = 46
    Width = 99
    TabOrder = 1
    TabStop = False
    DataField = 'Fecha'
    DataSource = DS
    ReadOnly = False
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBEdit5: TdxDBEdit [26]
    Left = 401
    Top = 46
    Width = 101
    TabOrder = 2
    DataField = 'Referencia'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit6: TdxDBEdit [27]
    Left = 184
    Top = 158
    Width = 579
    TabOrder = 12
    Anchors = [akLeft, akTop, akRight]
    DataField = 'Cliente'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBCheckEdit1: TdxDBCheckEdit [28]
    Left = 481
    Top = 218
    Width = 76
    TabOrder = 14
    TabStop = False
    Alignment = taRightJustify
    Caption = 'Cancelado'
    DataField = 'Cancelado'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    StoredValues = 65
  end
  object dxDBEdit1: TdxDBEdit [29]
    Left = 704
    Top = 378
    Width = 63
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    Style.BorderStyle = xbsNone
    Style.ButtonTransparence = ebtAlways
    TabOrder = 18
    TabStop = False
    Anchors = [akTop, akRight]
    Alignment = taLeftJustify
    AutoSize = False
    DataField = 'Usuario'
    DataSource = DS
    ReadOnly = True
    Height = 23
    StoredValues = 65
  end
  object dxDBCheckEdit2: TdxDBCheckEdit [30]
    Left = 562
    Top = 79
    Width = 21
    TabOrder = 16
    TabStop = False
    Alignment = taRightJustify
    DataField = 'esCxc'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    StoredValues = 65
  end
  object FindCliente: TButton [31]
    Left = 64
    Top = 159
    Width = 18
    Height = 20
    Caption = '...'
    TabOrder = 10
    TabStop = False
    OnClick = FindClienteClick
  end
  object dxDBEdit8: TdxDBEdit [32]
    Left = 82
    Top = 158
    Width = 103
    TabOrder = 11
    OnDblClick = dxDBEdit8DblClick
    DataField = 'idCliente'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object lkEmpleado: TdxDBLookupEdit [33]
    Left = 64
    Top = 218
    Width = 185
    TabOrder = 13
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
  object dxDBLookupEdit1: TdxDBLookupEdit [34]
    Left = 67
    Top = 133
    Width = 120
    TabOrder = 7
    DataField = 'idPagoForma'
    DataSource = DS
    StyleController = dm.dxEstilo
    ListFieldName = 'idPagoForma'
    KeyFieldName = 'idPagoForma'
    ListSource = dsPagoForma
    LookupKeyValue = Null
  end
  object dxDBLookupEdit2: TdxDBLookupEdit [35]
    Left = 561
    Top = 46
    Width = 206
    TabOrder = 3
    Anchors = [akLeft, akTop, akRight]
    DataField = 'idReciboTipo'
    DataSource = DS
    StyleController = dm.dxEstilo
    ListFieldName = 'idReciboTipo'
    KeyFieldName = 'idReciboTipo'
    ListSource = dsReciboTipo
    LookupKeyValue = Null
  end
  object dxDBEdit9: TdxDBEdit [36]
    Left = 556
    Top = 218
    Width = 206
    TabOrder = 15
    Anchors = [akLeft, akTop, akRight]
    DataField = 'FechaCancelado'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [37]
    Left = 235
    Top = 73
    Width = 103
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
    Style.BorderStyle = ebsOffice11
    Style.LookAndFeel.NativeStyle = True
    Style.StyleController = dm.cxEstilo
    TabOrder = 5
  end
  object dxDBEdit10: TdxDBEdit [38]
    Left = 401
    Top = 75
    Width = 101
    TabOrder = 6
    TabStop = False
    DataField = 'Tasa'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit11: TdxDBEdit [39]
    Left = 81
    Top = 103
    Width = 104
    TabOrder = 19
    TabStop = False
    DataField = 'Retencion'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBEdit12: TdxDBEdit [40]
    Left = 402
    Top = 101
    Width = 101
    TabOrder = 20
    TabStop = False
    DataField = 'TotalRet'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object Retencion: TcxCheckBox [41]
    Left = 4
    Top = 104
    Width = 77
    Height = 21
    Caption = 'Retencion'
    Properties.Alignment = taRightJustify
    TabOrder = 22
    OnClick = RetencionClick
  end
  object dxDBEdit13: TdxDBEdit [42]
    Left = 185
    Top = 133
    Width = 69
    TabOrder = 8
    TabStop = False
    DataField = 'NumeroChk'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBCheckEdit3: TdxDBCheckEdit [43]
    Left = 533
    Top = 133
    Width = 22
    TabOrder = 23
    TabStop = False
    Alignment = taRightJustify
    DataField = 'ChkDevuelto'
    DataSource = DS
    ReadOnly = False
    StyleController = dm.dxEstilo
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    StoredValues = 65
  end
  object Vencimiento: TdxDBDateEdit [44]
    Left = 554
    Top = 133
    Width = 209
    TabOrder = 24
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    DataField = 'FechaDevuelto'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBMRUEdit1: TdxDBMRUEdit [45]
    Left = 255
    Top = 133
    Width = 276
    TabOrder = 9
    DataField = 'Banco'
    DataSource = DS
    StyleController = dm.dxEstilo
  end
  object dxDBMemo1: TdxDBMemo [46]
    Left = 64
    Top = 183
    Width = 699
    TabOrder = 25
    Anchors = [akLeft, akTop, akRight]
    DataField = 'Concepto'
    DataSource = DS
    StyleController = dm.dxEstilo
    ScrollBars = ssVertical
    Height = 32
  end
  object dxDBMemo2: TdxDBMemo [47]
    Left = 64
    Top = 243
    Width = 579
    TabOrder = 26
    Anchors = [akLeft, akTop, akRight]
    DataField = 'Nota'
    DataSource = DS
    StyleController = dm.dxEstilo
    ScrollBars = ssVertical
    Height = 36
  end
  object Panel1: TPanel [48]
    Left = 4
    Top = 286
    Width = 767
    Height = 204
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Panel1'
    TabOrder = 27
    inline frCodifCtas1: TfrCodifCtas
      Left = 1
      Top = 1
      Width = 765
      Height = 202
      Align = alClient
      TabOrder = 0
      inherited Grid: TcxGrid
        Width = 765
        Height = 202
        inherited tvCtas: TcxGridDBTableView
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '###,###,##0.00'
              Kind = skSum
              FieldName = 'Debito'
              Column = frCodifCtas1.tvCtasDebito
            end
            item
              Format = '###,###,##0.00'
              Kind = skSum
              FieldName = 'Credito'
              Column = frCodifCtas1.tvCtasCredito
            end>
        end
      end
      inherited mCodif: TkbmMemTable
        Active = False
      end
      inherited cGuardar: TADOCommand
        Left = 120
        Top = 146
      end
    end
  end
  object cxButton1: TcxButton [49]
    Left = 660
    Top = 242
    Width = 107
    Height = 41
    Caption = 'Aplicar Pago a Facturas'
    TabOrder = 28
    WordWrap = True
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxDBDateEdit1: TcxDBDateEdit [50]
    Left = 562
    Top = 101
    Width = 123
    Height = 21
    DataBinding.DataField = 'FechaProforma'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 21
  end
  object dxDBEdit4: TdxDBEdit [51]
    Left = 630
    Top = 79
    Width = 136
    TabOrder = 29
    Visible = False
    DataField = 'CompFiscal'
    DataSource = DS
    ReadOnly = True
    StyleController = dm.dxEstilo
    StoredValues = 64
  end
  object dxDBLookupEdit3: TdxDBLookupEdit [52]
    Left = 300
    Top = 218
    Width = 179
    TabOrder = 30
    DataField = 'idSucursal'
    DataSource = DS
    ReadOnly = False
    StyleController = dm.dxEstilo
    ListFieldName = 'CentroCosto'
    CanDeleteText = True
    KeyFieldName = 'CentroCosto'
    ListSource = dsSucursal
    LookupKeyValue = Null
    StoredValues = 64
  end
  inherited DS: TwwDataSource
    Left = 151
    Top = 371
  end
  inherited ImageList: TImageList
    Left = 316
    Top = 372
  end
  inherited Acciones: TActionList
    Left = 44
    Top = 430
    inherited AAnular: TAction
      ImageIndex = 3
    end
    object CxCAplicar: TAction
      Caption = 'CxCAplicar'
    end
    object ARetencion: TAction
      Caption = 'Retencion'
    end
  end
  inherited RS: TADODataSet
    BeforePost = RSBeforePost
    AfterScroll = RSAfterScroll
    OnCalcFields = RSCalcFields
    OnNewRecord = RSNewRecord
    CommandText = 'rsRecibo;1'
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
    Left = 104
    Top = 372
    object RSidRecibo: TGuidField
      FieldName = 'idRecibo'
      OnValidate = RSidReciboValidate
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
      Size = 100
    end
    object RSesCxc: TBooleanField
      FieldName = 'esCxc'
      Required = True
      OnValidate = RSesCxcValidate
    end
    object RSidEmpleado: TIntegerField
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
    end
    object RSValor: TBCDField
      FieldName = 'Valor'
      Required = True
      OnChange = RSValorChange
      OnValidate = RSValorValidate
      EditFormat = '#,0.00'
      currency = True
      Precision = 19
      Size = 2
    end
    object RSReferencia: TIntegerField
      FieldName = 'Referencia'
    end
    object RSCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object RSConcepto: TStringField
      FieldName = 'Concepto'
      Size = 2000
    end
    object RSNota: TStringField
      FieldName = 'Nota'
      Size = 150
    end
    object RSidCompania: TIntegerField
      FieldName = 'idCompania'
    end
    object RSUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object RSRecibo: TStringField
      FieldName = 'Recibo'
      Size = 16
    end
    object RSidPagoForma: TStringField
      FieldName = 'idPagoForma'
      OnValidate = RSidPagoFormaValidate
      Size = 16
    end
    object RSidReciboTipo: TStringField
      FieldName = 'idReciboTipo'
      Required = True
      OnValidate = RSidReciboTipoValidate
      Size = 16
    end
    object RSFechaCancelado: TDateTimeField
      FieldName = 'FechaCancelado'
    end
    object RSidMoneda: TIntegerField
      FieldName = 'idMoneda'
      OnValidate = RSidMonedaValidate
    end
    object RSidReferencia: TGuidField
      FieldName = 'idReferencia'
      FixedChar = True
      Size = 38
    end
    object RSTasa: TBCDField
      FieldName = 'Tasa'
      OnValidate = RSTasaValidate
      Precision = 18
      Size = 2
    end
    object RSRetencion: TBCDField
      FieldName = 'Retencion'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 0
    end
    object RSTotalNeto: TBCDField
      FieldName = 'TotalNeto'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 20
      Size = 2
    end
    object RSTotalRet: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalRet'
      OnValidate = RSTotalRetValidate
      Calculated = True
    end
    object RSNumeroChk: TStringField
      FieldName = 'NumeroChk'
      Size = 16
    end
    object RSBanco: TStringField
      FieldName = 'Banco'
      Size = 100
    end
    object RSChkDevuelto: TBooleanField
      FieldName = 'ChkDevuelto'
    end
    object RSFechaDevuelto: TDateTimeField
      FieldName = 'FechaDevuelto'
    end
    object RSFechaProforma: TDateTimeField
      FieldName = 'FechaProforma'
    end
    object RSCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object RSTipoNCF: TStringField
      FieldName = 'TipoNCF'
      Size = 2
    end
    object RSEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 100
    end
    object RSRNCEmpresa: TStringField
      FieldName = 'RNCEmpresa'
    end
    object RSidSucursal: TGuidField
      FieldName = 'idSucursal'
      FixedChar = True
      Size = 38
    end
    object RScomputer: TStringField
      FieldName = 'computer'
      Size = 200
    end
  end
  object PagoForma: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select * from PagoForma order by idPagoForma'
    Parameters = <>
    Left = 408
    Top = 268
    object PagoFormaidPagoForma: TStringField
      FieldName = 'idPagoForma'
      Size = 16
    end
    object PagoFormaesTarjeta: TBooleanField
      FieldName = 'esTarjeta'
    end
    object PagoFormaComision: TFloatField
      FieldName = 'Comision'
    end
    object PagoFormaCC: TStringField
      FieldName = 'CC'
    end
    object PagoFormaCtaComision: TStringField
      FieldName = 'CtaComision'
    end
    object PagoFormaCtaImpuesto: TStringField
      FieldName = 'CtaImpuesto'
      Size = 16
    end
    object PagoFormaPorcImpuesto: TFloatField
      FieldName = 'PorcImpuesto'
    end
  end
  object dsPagoForma: TDataSource
    DataSet = PagoForma
    Left = 408
    Top = 314
  end
  object RptRecibo: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    OnCalcFields = RptReciboCalcFields
    CommandText = 'RPTRecibo;1'
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
        Name = '@UReciboID'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 80
    Top = 269
    object RptReciboidRecibo: TGuidField
      FieldName = 'idRecibo'
      FixedChar = True
      Size = 38
    end
    object RptReciboRecibo: TStringField
      FieldName = 'Recibo'
      Size = 16
    end
    object RptReciboidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object RptReciboCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object RptReciboesCxc: TBooleanField
      FieldName = 'esCxc'
    end
    object RptReciboidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object RptReciboFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object RptReciboValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object RptReciboReferencia: TIntegerField
      FieldName = 'Referencia'
    end
    object RptReciboCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object RptReciboConcepto: TStringField
      FieldName = 'Concepto'
      Size = 150
    end
    object RptReciboNota: TStringField
      FieldName = 'Nota'
      Size = 150
    end
    object RptReciboUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object RptReciboEmpleado: TStringField
      FieldName = 'Empleado'
      Size = 40
    end
    object RptReciboCompania: TStringField
      FieldName = 'Compania'
      Size = 50
    end
    object RptReciboTelefono: TStringField
      FieldName = 'Telefono'
      Size = 15
    end
    object RptReciboFax: TStringField
      FieldName = 'Fax'
      Size = 15
    end
    object RptReciboRNC: TStringField
      FieldName = 'RNC'
    end
    object RptReciboDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object RptRecibocValor: TStringField
      DisplayWidth = 100
      FieldKind = fkCalculated
      FieldName = 'cValor'
      Size = 100
      Calculated = True
    end
    object RptReciboidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object RptReciboMoneda: TStringField
      FieldName = 'Moneda'
    end
    object RptReciboIdReciboTipo: TStringField
      FieldName = 'IdReciboTipo'
      Size = 16
    end
    object RptReciboIdPagoForma: TStringField
      FieldName = 'IdPagoForma'
      Size = 16
    end
    object RptReciboTasa: TBCDField
      FieldName = 'Tasa'
      Precision = 18
      Size = 2
    end
    object RptReciboRetencion: TBCDField
      FieldName = 'Retencion'
      Precision = 18
      Size = 2
    end
    object RptReciboTotalNeto: TBCDField
      FieldName = 'TotalNeto'
      ReadOnly = True
      Precision = 20
      Size = 2
    end
    object RptRecibocAbono: TFloatField
      FieldKind = fkCalculated
      FieldName = 'cAbono'
      Calculated = True
    end
    object RptRecibocbalance: TFloatField
      FieldKind = fkCalculated
      FieldName = 'cbalance'
      Calculated = True
    end
    object RptReciboSUCURSARDireccion: TStringField
      FieldName = 'SUCURSARDireccion'
      ReadOnly = True
      Size = 2000
    end
    object RptReciboSUCURSARLTelefono: TStringField
      FieldName = 'SUCURSARLTelefono'
      ReadOnly = True
      Size = 2000
    end
  end
  object dsRptRecibo: TDataSource
    DataSet = RptRecibo
    Left = 258
    Top = 429
  end
  object plRptRecibo: TppDBPipeline
    DataSource = dsRptRecibo
    UserName = 'plRptRecibo'
    Left = 22
    Top = 309
    object plRptReciboppField1: TppField
      FieldAlias = 'idRecibo'
      FieldName = 'idRecibo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField2: TppField
      FieldAlias = 'Recibo'
      FieldName = 'Recibo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField3: TppField
      FieldAlias = 'idCliente'
      FieldName = 'idCliente'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField4: TppField
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField5: TppField
      FieldAlias = 'esCxc'
      FieldName = 'esCxc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField6: TppField
      FieldAlias = 'idEmpleado'
      FieldName = 'idEmpleado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField7: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField8: TppField
      FieldAlias = 'Valor'
      FieldName = 'Valor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField9: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField10: TppField
      FieldAlias = 'Cancelado'
      FieldName = 'Cancelado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField11: TppField
      FieldAlias = 'Concepto'
      FieldName = 'Concepto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField12: TppField
      FieldAlias = 'Nota'
      FieldName = 'Nota'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField13: TppField
      FieldAlias = 'Usuario'
      FieldName = 'Usuario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField14: TppField
      FieldAlias = 'Empleado'
      FieldName = 'Empleado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField15: TppField
      FieldAlias = 'Compania'
      FieldName = 'Compania'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField16: TppField
      FieldAlias = 'Telefono'
      FieldName = 'Telefono'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField17: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField18: TppField
      FieldAlias = 'RNC'
      FieldName = 'RNC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField19: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField20: TppField
      FieldAlias = 'cValor'
      FieldName = 'cValor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField21: TppField
      FieldAlias = 'idMoneda'
      FieldName = 'idMoneda'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField22: TppField
      FieldAlias = 'Moneda'
      FieldName = 'Moneda'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField23: TppField
      FieldAlias = 'IdReciboTipo'
      FieldName = 'IdReciboTipo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField24: TppField
      FieldAlias = 'IdPagoForma'
      FieldName = 'IdPagoForma'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField25: TppField
      FieldAlias = 'Tasa'
      FieldName = 'Tasa'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField26: TppField
      FieldAlias = 'Retencion'
      FieldName = 'Retencion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField27: TppField
      FieldAlias = 'TotalNeto'
      FieldName = 'TotalNeto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField28: TppField
      FieldAlias = 'cAbono'
      FieldName = 'cAbono'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField29: TppField
      FieldAlias = 'cbalance'
      FieldName = 'cbalance'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField30: TppField
      FieldAlias = 'SUCURSARDireccion'
      FieldName = 'SUCURSARDireccion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object plRptReciboppField31: TppField
      FieldAlias = 'SUCURSARLTelefono'
      FieldName = 'SUCURSARLTelefono'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
  end
  object ReciboRPT: TppReport
    AutoStop = False
    DataPipeline = plRptRecibo
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 8890
    PrinterSetup.mmMarginLeft = 8890
    PrinterSetup.mmMarginRight = 8890
    PrinterSetup.mmMarginTop = 8890
    PrinterSetup.mmPaperHeight = 139700
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 125
    Template.FileName = 'E:\cbsexpress\cbsexpress\Recibo.rtm'
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
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 80
    Top = 149
    Version = '15.02'
    mmColumnWidth = 203200
    DataPipelineName = 'plRptRecibo'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 79375
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 13229
        mmLeft = 105834
        mmTop = 21431
        mmWidth = 91546
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 
          '________________________________________________________________' +
          '_________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 23548
        mmTop = 41275
        mmWidth = 173567
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = plRptRecibo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Pitch = fpFixed
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 9017
        mmLeft = 1588
        mmTop = 3969
        mmWidth = 115359
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'RNC'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 17992
        mmTop = 17463
        mmWidth = 44186
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'SUCURSARDireccion'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 1588
        mmTop = 13229
        mmWidth = 128588
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'SUCURSARLTelefono'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 17992
        mmTop = 22225
        mmWidth = 29369
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Fax'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 65352
        mmTop = 22225
        mmWidth = 31750
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'NUMERO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 107421
        mmTop = 23283
        mmWidth = 27252
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Recibo'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 107686
        mmTop = 28840
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'FECHA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 166159
        mmTop = 23283
        mmWidth = 29104
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 166159
        mmTop = 28840
        mmWidth = 29104
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'REFERENCIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 136525
        mmTop = 23283
        mmWidth = 27252
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 136525
        mmTop = 28840
        mmWidth = 27252
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'RECIBI DE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 529
        mmTop = 41275
        mmWidth = 22754
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkEnabled = False
        DataField = 'Cliente'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 23548
        mmTop = 41275
        mmWidth = 173302
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'RECIBO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 22
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 8996
        mmLeft = 143669
        mmTop = 2117
        mmWidth = 53181
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'CONCEPTO :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 529
        mmTop = 68536
        mmWidth = 22225
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Valor'
        DataPipeline = plRptRecibo
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 32015
        mmTop = 49742
        mmWidth = 35983
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'CANTIDAD :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 529
        mmTop = 49742
        mmWidth = 22754
        BandType = 0
        LayerName = Foreground
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Concepto'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 5027
        mmLeft = 23283
        mmTop = 68536
        mmWidth = 173567
        BandType = 0
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 38629
        mmWidth = 197115
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'CValor'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 23548
        mmTop = 55298
        mmWidth = 173302
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'Moneda'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 23548
        mmTop = 49742
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 
          '________________________________________________________________' +
          '_________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 23548
        mmTop = 49742
        mmWidth = 44979
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 
          '________________________________________________________________' +
          '_________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 23548
        mmTop = 55298
        mmWidth = 172509
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 
          '________________________________________________________________' +
          '_________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 5556
        mmLeft = 23283
        mmTop = 69065
        mmWidth = 173832
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 
          '________________________________________________________________' +
          '_________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 23548
        mmTop = 73033
        mmWidth = 173567
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 
          '________________________________________________________________' +
          '_________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1323
        mmLeft = 23548
        mmTop = 73819
        mmWidth = 173567
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'RNC :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1588
        mmTop = 17727
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'TEL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1588
        mmTop = 22225
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'FAX :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 48948
        mmTop = 22225
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'cAbono'
        DataPipeline = plRptRecibo
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 94176
        mmTop = 49742
        mmWidth = 35983
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'TOTAL ABONO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 71436
        mmTop = 45773
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        UserName = 'DBText101'
        HyperlinkEnabled = False
        DataField = 'Moneda'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 85709
        mmTop = 49742
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 
          '________________________________________________________________' +
          '_________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 85719
        mmTop = 49742
        mmWidth = 44450
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'cbalance'
        DataPipeline = plRptRecibo
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 160338
        mmTop = 49742
        mmWidth = 35983
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        DataField = 'Moneda'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 153723
        mmTop = 49742
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 
          '________________________________________________________________' +
          '_________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 153723
        mmTop = 49742
        mmWidth = 43127
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'BALANCE  PENDIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 131495
        mmTop = 45773
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'FORMA PAG:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 529
        mmTop = 61649
        mmWidth = 22754
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        UserName = 'DBText102'
        HyperlinkEnabled = False
        DataField = 'IdPagoForma'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 4498
        mmLeft = 23548
        mmTop = 61648
        mmWidth = 34925
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 25929
      mmPrintPosition = 0
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        Caption = 'Recibido por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 143669
        mmTop = 21167
        mmWidth = 19844
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '________________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 4498
        mmLeft = 124354
        mmTop = 15346
        mmWidth = 70908
        BandType = 4
        LayerName = Foreground
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 529
        mmTop = 794
        mmWidth = 197115
        BandType = 4
        LayerName = Foreground
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo2'
        CharWrap = False
        DataField = 'Nota'
        DataPipeline = plRptRecibo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'plRptRecibo'
        mmHeight = 23019
        mmLeft = 2117
        mmTop = 2910
        mmWidth = 109009
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
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
  object Empleado: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'spVendedores;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 224
    Top = 263
  end
  object dsEmpleado: TDataSource
    DataSet = Empleado
    Left = 224
    Top = 311
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
    Left = 288
    Top = 263
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
    object ClienteActTipoNCFEmp: TStringField
      FieldName = 'TipoNCFEmp'
      Size = 2
    end
  end
  object dsEstacionAct: TDataSource
    DataSet = ClienteAct
    Left = 288
    Top = 311
  end
  object Recibo2Cxc: TADOCommand
    CommandText = 'Recibo2CxC;1'
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
        Name = '@idRecibo'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 148
    Top = 319
  end
  object AnularRec: TADOCommand
    CommandText = 'SPReciboAnular;1'
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
        Name = '@Anulado'
        Attributes = [paNullable]
        DataType = ftBoolean
        Direction = pdInputOutput
        Value = Null
      end>
    Left = 146
    Top = 275
  end
  object ReciboTipo: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from recibotipo'
    Parameters = <>
    Left = 482
    Top = 265
    object ReciboTipoidReciboTipo: TStringField
      FieldName = 'idReciboTipo'
      Size = 16
    end
    object ReciboTipoReciboTipo: TStringField
      FieldName = 'ReciboTipo'
      Size = 50
    end
    object ReciboTipoCC: TStringField
      FieldName = 'CC'
    end
    object ReciboTipoesCxC: TBooleanField
      FieldName = 'esCxC'
    end
  end
  object dsReciboTipo: TDataSource
    DataSet = ReciboTipo
    Left = 482
    Top = 313
  end
  object TipoRetencion: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 
      'Select * from cxpTiposRetencion where TipoRetencion = :TipoReten' +
      'cion'
    Parameters = <
      item
        Name = 'TipoRetencion'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 3
      end>
    Left = 600
    Top = 272
    object TipoRetencionTipoRetencion: TAutoIncField
      FieldName = 'TipoRetencion'
      ReadOnly = True
    end
    object TipoRetencionTipoEntidad: TIntegerField
      FieldName = 'TipoEntidad'
    end
    object TipoRetencionDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object TipoRetencionidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object TipoRetencionPorcentaje: TBCDField
      FieldName = 'Porcentaje'
      Precision = 8
    end
    object TipoRetencionPorDefecto: TBooleanField
      FieldName = 'PorDefecto'
    end
  end
  object qryBancos: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  Distinct'
      '  Banco'
      'FROM'
      '  Recibo')
    Left = 600
    Top = 350
    object qryBancosBanco: TStringField
      FieldName = 'Banco'
      Size = 100
    end
  end
  object dsBancos: TDataSource
    DataSet = qryBancos
    Left = 602
    Top = 404
  end
  object rsCtasCliente: TADODataSet
    Connection = dm.Coneccion
    CommandText = 'svrsCuentaCliente'
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
      end
      item
        Name = '@idMoneda'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 334
    Top = 196
    object rsCtasClienteidCuentaCredito: TStringField
      FieldName = 'idCuentaCredito'
      Size = 16
    end
    object rsCtasClienteidCuentaContado: TStringField
      FieldName = 'idCuentaContado'
      Size = 16
    end
  end
  object BorrarTransCxc: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'svBorrarCxcDesdeRecibo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdRecibo'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 142
    Top = 198
  end
  object spTieneAplicacion: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'svDocumentoAplicado;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdCxc'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@DocAplicado'
        Attributes = [paNullable]
        DataType = ftBoolean
        Direction = pdInputOutput
        Value = Null
      end>
    Left = 178
    Top = 132
  end
  object rsSucursal: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select idCentroCosto,CentroCosto from CentroCosto where Activo=1'
    Parameters = <>
    Left = 416
    Top = 156
    object rsSucursalidCentroCosto: TGuidField
      FieldName = 'idCentroCosto'
      FixedChar = True
      Size = 38
    end
    object rsSucursalCentroCosto: TStringField
      FieldName = 'CentroCosto'
      Size = 16
    end
  end
  object dsSucursal: TwwDataSource
    AutoEdit = False
    DataSet = rsSucursal
    OnUpdateData = DSUpdateData
    Left = 487
    Top = 147
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
        Value = Null
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
    Left = 712
    Top = 176
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
    Left = 661
    Top = 173
  end
end

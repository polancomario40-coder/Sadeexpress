inherited EstadoCuenta: TEstadoCuenta
  Left = 463
  Top = 111
  Caption = 'Historico de Transacciones de Cuentas x Cobrar'
  ClientHeight = 533
  ClientWidth = 708
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Shape9: TShape [0]
    Left = 312
    Top = 428
    Width = 2
    Height = 48
  end
  object Label1: TLabel [1]
    Left = 50
    Top = 31
    Width = 37
    Height = 13
    Caption = 'Cliente:'
  end
  object sbLocCliente: TSpeedButton [2]
    Left = 208
    Top = 27
    Width = 20
    Height = 22
    Flat = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5555555555555555555555550000555555555555550055555555555555558855
      00005555555555555C44055555555555555878850000555555555555C4C40555
      5555555555878885000055555555555C4C405555555555555878885500005555
      55555584C4055555555555558788855500005555588888F74055555555588888
      F78855550000555500000078055555555588888878855555000055507EFEE600
      555555555877F7788855555500005587EFEFEF6055555555877F7F7F88555555
      0000558EFEFEFEE08555555587F7F7F7788555550000558FEFEFEFE085555555
      8F7F7F7F788555550000558FFFEFEFE0855555558FFF7F7F788555550000558E
      FFFEFEF08555555587FFF7F7F885555500005558EFFFEF6055555555587FFF7F
      88555555000055558EFEF605555555555587F7F8855555550000555558888855
      5555555555588888555555550000555555555555555555555555555555555555
      0000}
    NumGlyphs = 2
    OnClick = sbLocClienteClick
  end
  object Label4: TLabel [3]
    Left = 52
    Top = 79
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object SpeedButton8: TSpeedButton [4]
    Left = 502
    Top = 487
    Width = 45
    Height = 41
    Caption = 'Imprimir'
    Flat = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
      66666666666666FFF66666660000666666600066666666666666F888FFF66666
      00006666600788006666666666F8866888FFF666000066600778008800666666
      688668888888FFF60000660778878800880066668F688688888888F600006688
      877788880080666688866688888888F600006887777788888800666886666688
      888888F6000068F7777F888888880668F6666F888888888F000068F77FF77788
      88880668F66FF6FF8888888F000068FFF779977788880668FFF6F8866688888F
      000068F77AA7778807880668F6688666888F888600006688F77788FF07006666
      88F666886686F8660000666688F8FFFFF06666666688F8F666686F6600006666
      6688FFFFFF0666666666886F666686FF0000666666668FFFFFF0066666666686
      F666F88600006666666668FFF8866666666666686FF886660000666666666688
      8666666666666666888666660000666666666666666666666666666666666666
      0000}
    Layout = blGlyphTop
    NumGlyphs = 2
    OnClick = SpeedButton8Click
  end
  object SpeedButton2: TSpeedButton [5]
    Left = 644
    Top = 487
    Width = 45
    Height = 41
    Hint = 'Salir '
    Caption = 'Salir'
    Flat = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF006FF00FF00FF0
      07700766666666666F6666660000F00FF00FF000800880666666666688F66666
      00000FF00FF00F0700800866666666668F8F66660000F00FF00FF007800880FF
      FFFFFFF68F68FFFF000000000000070788000088888888868F66888800006666
      660770078880666666668F668F6668F600006666660000078880666666668F66
      8F6668F600006666660888078880666666668F668F6668F60000666666088807
      888066666FFFFFF68F6668F6000066000000080708806666888888868F6668F6
      0000660999990807888066668F666F868F6668F6000060999990880788806668
      F6F6F8668F6668F6000060909908880788806668F8FF8F668F6668F600006000
      900888078880666888F88F668F6668F600006660060888807880666668868F66
      68F668F600006666660888880780666666668F66668F68F60000666666088888
      8070666666668FFFFFF8F8F60000666666000000000066666666888888888866
      0000}
    Layout = blGlyphTop
    Margin = 4
    NumGlyphs = 2
    OnClick = SpeedButton2Click
  end
  object Shape5: TShape [6]
    Left = 10
    Top = 409
    Width = 68
    Height = 18
    Brush.Color = 14789952
    Pen.Color = 11764252
    Shape = stRoundRect
  end
  object Label9: TLabel [7]
    Left = 18
    Top = 411
    Width = 54
    Height = 13
    Caption = 'Ult. cargo'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Shape6: TShape [8]
    Left = 84
    Top = 417
    Width = 219
    Height = 3
    Brush.Color = 11106843
    Pen.Color = 14789952
  end
  object Label5: TLabel [9]
    Left = 14
    Top = 436
    Width = 33
    Height = 13
    Caption = 'Fecha:'
  end
  object Label6: TLabel [10]
    Left = 156
    Top = 436
    Width = 24
    Height = 13
    Caption = 'Tipo:'
  end
  object Label7: TLabel [11]
    Left = 14
    Top = 459
    Width = 21
    Height = 13
    Caption = 'Ref:'
  end
  object Label8: TLabel [12]
    Left = 156
    Top = 459
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object Shape8: TShape [13]
    Left = 319
    Top = 409
    Width = 68
    Height = 18
    Brush.Color = 14789952
    Pen.Color = 11764252
    Shape = stRoundRect
  end
  object Label10: TLabel [14]
    Left = 327
    Top = 411
    Width = 50
    Height = 13
    Caption = 'Ult. pago'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Shape10: TShape [15]
    Left = 392
    Top = 417
    Width = 309
    Height = 3
    Brush.Color = 11106843
    Pen.Color = 14789952
  end
  object Label11: TLabel [16]
    Left = 323
    Top = 436
    Width = 33
    Height = 13
    Caption = 'Fecha:'
  end
  object Label13: TLabel [17]
    Left = 323
    Top = 459
    Width = 21
    Height = 13
    Caption = 'Ref:'
  end
  object Label14: TLabel [18]
    Left = 464
    Top = 437
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object Shape7: TShape [19]
    Left = 4
    Top = 481
    Width = 697
    Height = 3
    Brush.Color = 11106843
    Pen.Color = 14789952
  end
  object Label3: TLabel [20]
    Left = 10
    Top = 496
    Width = 87
    Height = 23
    Caption = 'Balance :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape3: TShape [21]
    Left = 456
    Top = 488
    Width = 3
    Height = 41
    Brush.Color = 11106843
    Pen.Color = 14789952
  end
  object Label12: TLabel [22]
    Left = 236
    Top = 79
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object Label15: TLabel [23]
    Left = 355
    Top = 488
    Width = 68
    Height = 13
    Caption = 'Por Distribuir :'
  end
  object Label2: TLabel [24]
    Left = 26
    Top = 11
    Width = 38
    Height = 13
    Caption = 'Estado'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Shape1: TShape [25]
    Left = 10
    Top = 9
    Width = 70
    Height = 18
    Brush.Color = 14789952
    Pen.Color = 11764252
    Shape = stRoundRect
  end
  object Shape2: TShape [26]
    Left = 86
    Top = 17
    Width = 615
    Height = 3
    Brush.Color = 11106843
    Pen.Color = 14789952
  end
  object SpeedButton1: TSpeedButton [27]
    Left = 566
    Top = 487
    Width = 46
    Height = 41
    Hint = 'Salir '
    Caption = 'Email'
    Flat = True
    Glyph.Data = {
      E6040000424DE6040000000000003604000028000000100000000B0000000100
      080000000000B0000000C40E0000C40E000000010000000100001C1C1C001E1D
      1E00232122002B2B2B0031313100333031003635350038373700393939003C3B
      3B00403E3E0043414100444242004743440046464600484646004B4747004C4A
      4A00504B4C00534D4E00514F4F0057545500595354005B5757005C5858005E5B
      5B00605B5B00635C5D00635F600065606100696465006A6566006A6667006D66
      67007C7676008C83850091919100A29A9B00A2A2A200B8AEB000B9B0B100BBB0
      B100BEBEBE00BFBFBF00C0C0C000CDC2C400D0C6C700D3C9CA00D8D8D800D9D9
      D900DADADA00DDDDDD00E0D4D600E2D6D800E4D6D800E4D8D900E6DADC00E8DA
      DC00E8DCDE00EADCDE00ECDEE000EDE0E200EEE1E300EFE1E400F0E3E500F0E4
      E600F2E5E700F5E8EA00F7EAEC00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000B0C0C0C0C
      0C0C0C0C0C0C0C0C0A08021F4044444444444444444444381A07102E18354444
      4444444444442F173411104437182D444227293F44281D3E4411104444411E25
      14262412232243444411104444443A063345452C0536444444111044443D1532
      454545452B133944441110443E19314545454545452B163B441110411C314545
      4545454545452A1B3C110D2030454545454545454545452A210F01040E0E0E0E
      0E0E0E0E0E0E0E0E0309}
    Layout = blGlyphTop
    Margin = 4
    OnClick = SpeedButton1Click
  end
  object dxDBEdit1: TdxDBEdit [28]
    Left = 236
    Top = 28
    Width = 343
    Color = 16242350
    TabOrder = 0
    TabStop = False
    CharCase = ecUpperCase
    DataField = 'Nombre'
    DataSource = DS
    ReadOnly = True
    StyleController = StyleController
    StoredValues = 64
  end
  object dxDBEdit2: TdxDBEdit [29]
    Left = 93
    Top = 28
    Width = 109
    Color = 16710389
    TabOrder = 1
    OnDblClick = dxDBEdit2DblClick
    CharCase = ecUpperCase
    DataField = 'idCliente'
    DataSource = DS
    StyleController = StyleController
  end
  object dxDBEdit3: TdxDBEdit [30]
    Left = 93
    Top = 51
    Width = 370
    Color = 16242350
    TabOrder = 2
    TabStop = False
    CharCase = ecUpperCase
    DataField = 'Direccion'
    DataSource = DS
    ReadOnly = True
    StyleController = StyleController
    StoredValues = 64
  end
  object dxDBEdit4: TdxDBEdit [31]
    Left = 469
    Top = 51
    Width = 110
    Color = 16242350
    TabOrder = 3
    TabStop = False
    CharCase = ecUpperCase
    DataField = 'Telefono'
    DataSource = DS
    ReadOnly = True
    StyleController = StyleController
    StoredValues = 64
  end
  object dtDesde: TcxDBDateEdit [32]
    Left = 93
    Top = 75
    Width = 119
    Height = 21
    DataBinding.DataField = 'Desde'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object Grid: TdxDBGrid [33]
    Left = 14
    Top = 99
    Width = 687
    Height = 304
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'Linea'
    ShowSummaryFooter = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Ctl3D = True
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 5
    OnDblClick = GridDblClick
    DataSource = dsEstado
    Filter.Criteria = {00000000}
    GridLineColor = 14789952
    HeaderColor = 14789952
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    object GridLinea: TdxDBGridMaskColumn
      Visible = False
      Width = 38
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Linea'
    end
    object GridTipo: TdxDBGridMaskColumn
      Width = 32
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Tipo'
    end
    object GrididTrans: TdxDBGridMaskColumn
      Visible = False
      Width = 38
      BandIndex = 0
      RowIndex = 0
      FieldName = 'idTrans'
    end
    object GrididDocumento: TdxDBGridMaskColumn
      Visible = False
      Width = 41
      BandIndex = 0
      RowIndex = 0
      FieldName = 'idDocumento'
    end
    object GridDocumento: TdxDBGridMaskColumn
      Width = 68
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Documento'
    end
    object GridColumn11: TdxDBGridColumn
      Width = 128
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NCF'
    end
    object GridFecha: TdxDBGridDateColumn
      Width = 74
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Fecha'
    end
    object GridVencimiento: TdxDBGridDateColumn
      Width = 72
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Vencimiento'
    end
    object GridColumn12: TdxDBGridColumn
      Caption = 'Mon'
      Width = 39
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Moneda'
    end
    object GridDebito: TdxDBGridCurrencyColumn
      Width = 90
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Debito'
      SummaryFooterField = 'Debito'
      SummaryFooterFormat = '###,###,##0.00'
      Nullable = False
    end
    object GridCredito: TdxDBGridCurrencyColumn
      Width = 81
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Credito'
      SummaryFooterField = 'Credito'
      SummaryFooterFormat = '###,###,##0.00'
      Nullable = False
    end
    object GridBalance: TdxDBGridCurrencyColumn
      Caption = 'Balance RD$'
      Width = 90
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Balance'
      SummaryFooterType = cstSum
      SummaryFooterField = 'cValor'
      SummaryFooterFormat = '###,###,##0.00'
      Nullable = False
    end
  end
  object dxDBEdit5: TdxDBEdit [34]
    Left = 190
    Top = 432
    Width = 111
    Color = 16242350
    TabOrder = 6
    TabStop = False
    CharCase = ecUpperCase
    DataField = 'TipoUltCargo'
    DataSource = DS
    ReadOnly = True
    StyleController = StyleController
    StoredValues = 64
  end
  object dxDBEdit6: TdxDBEdit [35]
    Left = 50
    Top = 432
    Width = 101
    Color = 16242350
    TabOrder = 7
    TabStop = False
    CharCase = ecUpperCase
    DataField = 'FechaUltCargo'
    DataSource = DS
    ReadOnly = True
    StyleController = StyleController
    StoredValues = 64
  end
  object dxDBEdit7: TdxDBEdit [36]
    Left = 50
    Top = 455
    Width = 101
    Color = 16242350
    TabOrder = 8
    TabStop = False
    CharCase = ecUpperCase
    DataField = 'RefUltCargo'
    DataSource = DS
    ReadOnly = True
    StyleController = StyleController
    StoredValues = 64
  end
  object dxDBEdit8: TdxDBEdit [37]
    Left = 190
    Top = 455
    Width = 111
    Color = 16242350
    TabOrder = 9
    TabStop = False
    CharCase = ecUpperCase
    DataField = 'MtoUltCargo'
    DataSource = DS
    ReadOnly = True
    StyleController = StyleController
    StoredValues = 64
  end
  object dxDBEdit10: TdxDBEdit [38]
    Left = 359
    Top = 432
    Width = 99
    Color = 16242350
    TabOrder = 10
    TabStop = False
    CharCase = ecUpperCase
    DataField = 'FechaUltPago'
    DataSource = DS
    ReadOnly = True
    StyleController = StyleController
    StoredValues = 64
  end
  object dxDBEdit11: TdxDBEdit [39]
    Left = 359
    Top = 455
    Width = 99
    Color = 16242350
    TabOrder = 11
    TabStop = False
    CharCase = ecUpperCase
    DataField = 'RefUltPago'
    DataSource = DS
    ReadOnly = True
    StyleController = StyleController
    StoredValues = 64
  end
  object dxDBEdit12: TdxDBEdit [40]
    Left = 498
    Top = 433
    Width = 97
    Color = 16242350
    TabOrder = 12
    TabStop = False
    CharCase = ecUpperCase
    DataField = 'MtoUltPago'
    DataSource = DS
    ReadOnly = True
    StyleController = StyleController
    StoredValues = 64
  end
  object dxDBEdit9: TdxDBEdit [41]
    Left = 105
    Top = 494
    Width = 229
    Color = 16242350
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    TabStop = False
    Alignment = taRightJustify
    CharCase = ecUpperCase
    DataField = 'Balance'
    DataSource = DS
    ReadOnly = True
    StyleController = StyleController
    StoredValues = 65
  end
  object dtHasta: TcxDBDateEdit [42]
    Left = 275
    Top = 75
    Width = 120
    Height = 21
    DataBinding.DataField = 'Hasta'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 14
  end
  object dxDBEdit13: TdxDBEdit [43]
    Left = 354
    Top = 503
    Width = 97
    Color = 16242350
    TabOrder = 15
    TabStop = False
    CharCase = ecUpperCase
    DataField = 'PorDist'
    DataSource = DS
    ReadOnly = True
    StyleController = StyleController
    StoredValues = 64
  end
  inherited DS: TwwDataSource
    DataSet = mCliente
    Left = 48
    Top = 196
  end
  object mCliente: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'idCliente'
        DataType = ftInteger
      end
      item
        Name = 'Nombre'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Telefono'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'Direccion'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Balance'
        DataType = ftCurrency
      end
      item
        Name = 'FechaUltCargo'
        DataType = ftDate
      end
      item
        Name = 'TipoUltCargo'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'RefUltCargo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MtoUltCargo'
        DataType = ftCurrency
      end
      item
        Name = 'FechaUltPago'
        DataType = ftDate
      end
      item
        Name = 'RefUltPago'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MtoUltPago'
        DataType = ftCurrency
      end
      item
        Name = 'Desde'
        DataType = ftDate
      end
      item
        Name = 'Hasta'
        DataType = ftDate
      end
      item
        Name = 'PorDist'
        DataType = ftBCD
        Size = 4
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '4.08b'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    OnNewRecord = mClienteNewRecord
    Left = 58
    Top = 136
    object mClienteidCliente: TIntegerField
      FieldName = 'idCliente'
      OnValidate = mClienteidClienteValidate
    end
    object mClienteNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object mClienteTelefono: TStringField
      FieldName = 'Telefono'
      Size = 14
    end
    object mClienteDireccion: TStringField
      FieldName = 'Direccion'
      Size = 100
    end
    object mClienteBalance: TCurrencyField
      FieldName = 'Balance'
    end
    object mClienteFechaUltCargo: TDateField
      FieldName = 'FechaUltCargo'
    end
    object mClienteTipoUltCargo: TStringField
      FieldName = 'TipoUltCargo'
      Size = 10
    end
    object mClienteRefUltCargo: TStringField
      FieldName = 'RefUltCargo'
    end
    object mClienteMtoUltCargo: TCurrencyField
      FieldName = 'MtoUltCargo'
    end
    object mClienteFechaUltPago: TDateField
      FieldName = 'FechaUltPago'
    end
    object mClienteRefUltPago: TStringField
      FieldName = 'RefUltPago'
    end
    object mClienteMtoUltPago: TCurrencyField
      FieldName = 'MtoUltPago'
    end
    object mClienteDesde: TDateField
      FieldName = 'Desde'
      OnValidate = mClienteFechaValidate
    end
    object mClienteHasta: TDateField
      FieldName = 'Hasta'
      OnValidate = mClienteFechaValidate
    end
    object mClientePorDist: TBCDField
      FieldName = 'PorDist'
      DisplayFormat = '#,0.00;(#,0.00)'
    end
  end
  object rsEstado: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = rsEstadoCalcFields
    CommandText = 'cxcEstadoCuenta;1'
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
        Name = '@ident'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@final'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 170
    Top = 196
    object rsEstadoLinea: TIntegerField
      FieldName = 'Linea'
      ReadOnly = True
    end
    object rsEstadoTipo: TStringField
      FieldName = 'Tipo'
      Size = 10
    end
    object rsEstadoidCXC: TGuidField
      FieldName = 'idCXC'
      FixedChar = True
      Size = 38
    end
    object rsEstadoDocumento: TStringField
      FieldName = 'Documento'
    end
    object rsEstadoFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsEstadoDebito: TBCDField
      FieldName = 'Debito'
      Precision = 19
    end
    object rsEstadoCredito: TBCDField
      FieldName = 'Credito'
      Precision = 19
    end
    object rsEstadoBalance: TBCDField
      FieldName = 'Balance'
      ReadOnly = True
      Precision = 19
    end
    object rsEstadocValor: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'cValor'
      Calculated = True
    end
    object rsEstadoVencimiento: TDateTimeField
      FieldName = 'Vencimiento'
    end
    object rsEstadoNCF: TStringField
      FieldName = 'NCF'
      Size = 19
    end
    object rsEstadoMoneda: TStringField
      FieldName = 'Moneda'
    end
    object rsEstadoTasa: TFloatField
      FieldName = 'Tasa'
    end
  end
  object dsEstado: TDataSource
    DataSet = rsEstado
    Left = 282
    Top = 196
  end
  object plEstado: TppDBPipeline
    DataSource = dsEstado
    UserName = 'plEstado'
    Left = 168
    Top = 136
    object plEstadoppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Linea'
      FieldName = 'Linea'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object plEstadoppField2: TppField
      FieldAlias = 'Tipo'
      FieldName = 'Tipo'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object plEstadoppField3: TppField
      FieldAlias = 'idCXC'
      FieldName = 'idCXC'
      FieldLength = 38
      DisplayWidth = 38
      Position = 2
    end
    object plEstadoppField4: TppField
      FieldAlias = 'Documento'
      FieldName = 'Documento'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object plEstadoppField5: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 4
    end
    object plEstadoppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Debito'
      FieldName = 'Debito'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 5
    end
    object plEstadoppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Credito'
      FieldName = 'Credito'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 6
    end
    object plEstadoppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'Balance'
      FieldName = 'Balance'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 7
    end
    object plEstadoppField9: TppField
      FieldAlias = 'cValor'
      FieldName = 'cValor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 8
    end
    object plEstadoppField10: TppField
      FieldAlias = 'Vencimiento'
      FieldName = 'Vencimiento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 9
    end
    object plEstadoppField11: TppField
      FieldAlias = 'NCF'
      FieldName = 'NCF'
      FieldLength = 19
      DisplayWidth = 19
      Position = 10
    end
    object plEstadoppField12: TppField
      FieldAlias = 'Moneda'
      FieldName = 'Moneda'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object plEstadoppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tasa'
      FieldName = 'Tasa'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
  end
  object plCliente: TppDBPipeline
    DataSource = DS
    UserName = 'plCliente'
    Left = 280
    Top = 132
    object plClienteppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'idCliente'
      FieldName = 'idCliente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object plClienteppField2: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object plClienteppField3: TppField
      FieldAlias = 'Telefono'
      FieldName = 'Telefono'
      FieldLength = 14
      DisplayWidth = 14
      Position = 2
    end
    object plClienteppField4: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 100
      DisplayWidth = 100
      Position = 3
    end
    object plClienteppField5: TppField
      FieldAlias = 'Balance'
      FieldName = 'Balance'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 4
    end
    object plClienteppField6: TppField
      FieldAlias = 'FechaUltCargo'
      FieldName = 'FechaUltCargo'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object plClienteppField7: TppField
      FieldAlias = 'TipoUltCargo'
      FieldName = 'TipoUltCargo'
      FieldLength = 10
      DisplayWidth = 10
      Position = 6
    end
    object plClienteppField8: TppField
      FieldAlias = 'RefUltCargo'
      FieldName = 'RefUltCargo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object plClienteppField9: TppField
      FieldAlias = 'MtoUltCargo'
      FieldName = 'MtoUltCargo'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 8
    end
    object plClienteppField10: TppField
      FieldAlias = 'FechaUltPago'
      FieldName = 'FechaUltPago'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 9
    end
    object plClienteppField11: TppField
      FieldAlias = 'RefUltPago'
      FieldName = 'RefUltPago'
      FieldLength = 20
      DisplayWidth = 20
      Position = 10
    end
    object plClienteppField12: TppField
      FieldAlias = 'MtoUltPago'
      FieldName = 'MtoUltPago'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 11
    end
    object plClienteppField13: TppField
      FieldAlias = 'Desde'
      FieldName = 'Desde'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 12
    end
    object plClienteppField14: TppField
      FieldAlias = 'Hasta'
      FieldName = 'Hasta'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 13
    end
    object plClienteppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'PorDist'
      FieldName = 'PorDist'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = plEstado
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 10160
    PrinterSetup.mmMarginRight = 10160
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
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
    Left = 468
    Top = 134
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plEstado'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 43392
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = 16053492
        Pen.Color = clGray
        mmHeight = 5027
        mmLeft = 0
        mmTop = 37835
        mmWidth = 196057
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 1323
        mmTop = 38629
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Doc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 11377
        mmTop = 38629
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 76465
        mmTop = 38629
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Debito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 115094
        mmTop = 38629
        mmWidth = 24871
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Credito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 141552
        mmTop = 38629
        mmWidth = 24871
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Balance RD$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 168011
        mmTop = 38629
        mmWidth = 24871
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3006
        mmLeft = 155575
        mmTop = 14552
        mmWidth = 39158
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        AutoSize = False
        VarType = vtPrintDateTime
        DisplayFormat = '"Impreso el" dd/mm/yyyy @ hh:nn AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3006
        mmLeft = 134144
        mmTop = 18521
        mmWidth = 60854
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Estado de Cuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5122
        mmLeft = 133615
        mmTop = 9260
        mmWidth = 61119
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 794
        mmTop = 23283
        mmWidth = 194469
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3852
        mmLeft = 3259
        mmTop = 26723
        mmWidth = 13674
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'idCliente'
        DataPipeline = plCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 4233
        mmLeft = 18256
        mmTop = 26723
        mmWidth = 17727
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'Nombre'
        DataPipeline = plCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 4233
        mmLeft = 37571
        mmTop = 26723
        mmWidth = 157427
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'Direccion'
        DataPipeline = plCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 3175
        mmLeft = 18256
        mmTop = 31485
        mmWidth = 78581
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'Telefono'
        DataPipeline = plCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 3175
        mmLeft = 101336
        mmTop = 31485
        mmWidth = 25135
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText101'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plCliente
        DisplayFormat = '"Estado al: " dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 3175
        mmLeft = 132557
        mmTop = 31485
        mmWidth = 25135
        BandType = 0
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkEnabled = False
        DataField = 'compania'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 18
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 7662
        mmLeft = 794
        mmTop = 0
        mmWidth = 140494
        BandType = 0
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        HyperlinkEnabled = False
        DataField = 'direccion'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3852
        mmLeft = 794
        mmTop = 8202
        mmWidth = 119592
        BandType = 0
      end
      object ppDBText21: TppDBText
        UserName = 'DBText201'
        HyperlinkEnabled = False
        DataField = 'RNC'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3387
        mmLeft = 794
        mmTop = 12435
        mmWidth = 51329
        BandType = 0
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        HyperlinkEnabled = False
        DataField = 'Telefono'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3852
        mmLeft = 794
        mmTop = 16669
        mmWidth = 51329
        BandType = 0
      end
      object ppDBText22: TppDBText
        UserName = 'DBText21'
        HyperlinkEnabled = False
        DataField = 'Fax'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3852
        mmLeft = 53181
        mmTop = 16669
        mmWidth = 35719
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Venc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 95515
        mmTop = 38629
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'NCF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 32015
        mmTop = 38629
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label201'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Mon'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 67469
        mmTop = 38629
        mmWidth = 8467
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppShape2: TppShape
        OnPrint = ppShape2Print
        UserName = 'Shape2'
        Brush.Color = 16053492
        ParentHeight = True
        Pen.Color = clGray
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 195527
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Tipo'
        DataPipeline = plEstado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3175
        mmLeft = 1323
        mmTop = 265
        mmWidth = 8731
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Documento'
        DataPipeline = plEstado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3175
        mmLeft = 11377
        mmTop = 265
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plEstado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3175
        mmLeft = 76200
        mmTop = 265
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Debito'
        DataPipeline = plEstado
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3175
        mmLeft = 115094
        mmTop = 265
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Credito'
        DataPipeline = plEstado
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3175
        mmLeft = 141817
        mmTop = 265
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Balance'
        DataPipeline = plEstado
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3175
        mmLeft = 168011
        mmTop = 265
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkEnabled = False
        DataField = 'Vencimiento'
        DataPipeline = plEstado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3175
        mmLeft = 95515
        mmTop = 265
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkEnabled = False
        DataField = 'NCF'
        DataPipeline = plEstado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3175
        mmLeft = 32015
        mmTop = 265
        mmWidth = 33867
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        HyperlinkEnabled = False
        DataField = 'Moneda'
        DataPipeline = plEstado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3175
        mmLeft = 67469
        mmTop = 265
        mmWidth = 8467
        BandType = 4
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
      mmBottomOffset = 0
      mmHeight = 25135
      mmPrintPosition = 0
      object ppShape7: TppShape
        UserName = 'Shape7'
        Brush.Color = 16053492
        Pen.Color = clGray
        mmHeight = 5027
        mmLeft = 0
        mmTop = 265
        mmWidth = 195527
        BandType = 7
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 13229
        mmLeft = 15081
        mmTop = 9260
        mmWidth = 78317
        BandType = 7
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 3704
        mmLeft = 17463
        mmTop = 7938
        mmWidth = 21167
        BandType = 7
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Ultimo cargo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 17463
        mmTop = 7938
        mmWidth = 21167
        BandType = 7
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkEnabled = False
        DataField = 'FechaUltCargo'
        DataPipeline = plCliente
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 3704
        mmLeft = 37306
        mmTop = 12965
        mmWidth = 17992
        BandType = 7
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 17992
        mmTop = 12965
        mmWidth = 18521
        BandType = 7
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkEnabled = False
        DataField = 'TipoUltCargo'
        DataPipeline = plCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 3704
        mmLeft = 69850
        mmTop = 12965
        mmWidth = 21167
        BandType = 7
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Tipo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 57150
        mmTop = 12965
        mmWidth = 11377
        BandType = 7
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkEnabled = False
        DataField = 'RefUltCargo'
        DataPipeline = plCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 3704
        mmLeft = 37306
        mmTop = 17463
        mmWidth = 17992
        BandType = 7
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Referencia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 17992
        mmTop = 17463
        mmWidth = 18521
        BandType = 7
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkEnabled = False
        DataField = 'MtoUltCargo'
        DataPipeline = plCliente
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 3704
        mmLeft = 69850
        mmTop = 17463
        mmWidth = 21167
        BandType = 7
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Valor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 57150
        mmTop = 17463
        mmWidth = 11377
        BandType = 7
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 13229
        mmLeft = 107686
        mmTop = 9260
        mmWidth = 78317
        BandType = 7
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 3704
        mmLeft = 110067
        mmTop = 7938
        mmWidth = 21167
        BandType = 7
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Ultimo pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 110067
        mmTop = 7938
        mmWidth = 21167
        BandType = 7
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'FechaUltPago'
        DataPipeline = plCliente
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 3704
        mmLeft = 129911
        mmTop = 12965
        mmWidth = 17992
        BandType = 7
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 110596
        mmTop = 12965
        mmWidth = 18521
        BandType = 7
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        DataField = 'RefUltPago'
        DataPipeline = plCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 3704
        mmLeft = 129911
        mmTop = 17463
        mmWidth = 17992
        BandType = 7
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Referencia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 110596
        mmTop = 17463
        mmWidth = 18521
        BandType = 7
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkEnabled = False
        DataField = 'MtoUltPago'
        DataPipeline = plCliente
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 3704
        mmLeft = 162454
        mmTop = 17463
        mmWidth = 21167
        BandType = 7
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Valor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 149754
        mmTop = 17463
        mmWidth = 11377
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        DataField = 'Debito'
        DataPipeline = plEstado
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3440
        mmLeft = 108479
        mmTop = 1058
        mmWidth = 31485
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        DataField = 'Credito'
        DataPipeline = plEstado
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3440
        mmLeft = 141288
        mmTop = 1058
        mmWidth = 25400
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        DataField = 'cValor'
        DataPipeline = plEstado
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3440
        mmLeft = 168275
        mmTop = 1058
        mmWidth = 24606
        BandType = 7
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Por Distrib :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 794
        mmTop = 1058
        mmWidth = 18785
        BandType = 7
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'PorDist'
        DataPipeline = plCliente
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 3704
        mmLeft = 20373
        mmTop = 1058
        mmWidth = 43127
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
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
    Left = 382
    Top = 192
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
    Left = 464
    Top = 198
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
  end
  object StyleController: TdxEditStyleController
    BorderColor = 14065456
    BorderStyle = xbsSingle
    ButtonStyle = btsSimple
    HotTrack = True
    Left = 378
    Top = 132
  end
end

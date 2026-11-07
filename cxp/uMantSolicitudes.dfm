inherited MantSolicitudes: TMantSolicitudes
  Left = 375
  Top = 152
  Caption = 'Solicitud de Pago'
  ClientHeight = 536
  ClientWidth = 712
  Color = 15922418
  Font.Color = 5859929
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Top = 477
    Width = 703
    Height = 3
    Align = alNone
  end
  inherited Gradient2: TGradient
    Width = 712
    Height = 36
    ColorBegin = 15922418
    ColorEnd = 14124890
    Reverse = True
    Style = gsLinearV
  end
  object Label1: TLabel [2]
    Left = 4
    Top = 2
    Width = 379
    Height = 27
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 'Solicitud de pago'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel [3]
    Left = 178
    Top = 88
    Width = 57
    Height = 13
    Caption = 'Valor bruto:'
    Transparent = True
  end
  object Label2: TLabel [4]
    Left = 8
    Top = 88
    Width = 33
    Height = 13
    Caption = 'Fecha:'
    Transparent = True
  end
  object Label5: TLabel [5]
    Left = 377
    Top = 88
    Width = 67
    Height = 13
    Caption = 'Neto a pagar:'
    Transparent = True
  end
  object Label6: TLabel [6]
    Left = 8
    Top = 65
    Width = 33
    Height = 13
    Caption = 'Banco:'
    Transparent = True
  end
  object Label7: TLabel [7]
    Left = 8
    Top = 458
    Width = 71
    Height = 13
    Caption = 'Nota adicional:'
    Transparent = True
  end
  object Label8: TLabel [8]
    Left = 488
    Top = 65
    Width = 27
    Height = 13
    Caption = 'Tasa:'
    Transparent = True
  end
  object Label11: TLabel [9]
    Left = 8
    Top = 39
    Width = 24
    Height = 13
    Caption = 'Tipo:'
    Transparent = True
  end
  object Label14: TLabel [10]
    Left = 523
    Top = 42
    Width = 39
    Height = 13
    Caption = 'Solic ID:'
    Transparent = True
  end
  object sbCheque: TcxButton [11]
    Left = 420
    Top = 487
    Width = 56
    Height = 48
    Anchors = [akLeft, akBottom]
    Caption = 'Procesar'
    TabOrder = 16
    OnClick = sbChequeClick
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FF92635D8E5D598E5D598E5D598E5D598E5D598E5D598E5D59
      8E5D598E5D598E5D598E5D598E5D598E5D598E5D598E5D598E5D598E5D598050
      4BFF00FFFF00FFFF00FFFF00FFFF00FF93655EEFD3B4F6DAB6F3D5ADF2D1A5F0
      CE9EEFCB97EFC791EEC589EBC182EBC080EBC080EBC080EBC080EBC080EBC080
      EDC180EABF7F80504BFF00FFFF00FFFF00FFFF00FFFF00FF93655FEED4B8F4DA
      BBF2D5B1F0D1AAEFCFA3EECB9DEDC796EDC58FEBC188EABF82E9BD7FE9BD7FE9
      BD7FE9BD7FE9BD7FEABF7FE7BC7E80504BFF00FFFF00FFFF00FFFF00FFFF00FF
      93655FEED7C0F6E0C1F2D9B8F2D4B1F0D1AAEFCFA4EECB9DEDC796EDC58FEBC1
      89EABF82E9BD7FE9BD7FE9BD7FE9BD7FEABF7FE7BC7E80504BFF00FFFF00FFFF
      00FFFF00FFFF00FF93655FEFDAC5F7E2C7F3DCBF811E00811E00811E00811E00
      811E00811E00811E00811E00811E00811E00811E00E9BD7FEABF7FE7BC7E8050
      4BFF00FFFF00FFFF00FFFF00FFFF00FF936560F0DECCF8E6CFF6E0C6811E00FE
      FEFEFEFEFEFEFEFEFEFEFED5DDFE1D41FBE9EDFEFEFEFEFEFEFE811E00E9BD7F
      EABF7FE7BC7E80504BFF00FFFF00FFFF00FFFF00FFFF00FF956660F2E2D3FAEA
      D7F6E3CE811E00FEFEFEFEFEFEFEFEFE9AADFC082AFA011FFA899EFCFEFEFEFE
      FEFE811E00E9BD7FEABF7FE7BC7E80504BFF00FFFF00FFFF00FFFF00FFFF00FF
      986963F2E6DAFAEEDEF7E7D4811E00FEFEFEFEFEFE5674FB011FFA011FFA011F
      FA1135FAFEFEFEFEFEFE811E00E9BD81EABF7FE7BC7E80504BFF00FFFF00FFFF
      00FFFF00FFFF00FF9E6E64F4EAE1FBF2E6F8EADC811E00E9EDFE1D41FB011FFA
      011FFA5674FB082AFA011FFA9AADFCFEFEFE811E00EBC188EABF82E7BB7E8050
      4BFF00FFFF00FFFF00FFFF00FFFF00FFA37266F6EEE9FCF6EDF8EFE3811E0011
      35FA011FFA082AFA9AADFCFEFEFE6681FB011FFA1135FAFEFEFE811E00EBC48E
      EBC288E7BC8080504BFF00FFFF00FFFF00FFFF00FFFF00FFA77568F8F3F0FEFB
      F6FBF3EB811E00899EFC1D41FBC1CCFCFEFEFEFEFEFEE9EDFE082AFA011FFA66
      81FB811E00EDC795EDC58FE9BF8780504BFF00FFFF00FFFF00FFFF00FFFF00FF
      AC7969FAF6F4FFFFFEFEF8F3811E00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FE899EFC011FFA011FFA631E1BEECB9CEEC996EAC18E80504BFF00FFFF00FFFF
      00FFFF00FFFF00FFB17E6BFAF6F4FFFFFFFFFEFB811E00FEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFE3859FB011FFA041FE5DCC1A6EECB9CEBC5928050
      4BFF00FFFF00FFFF00FFFF00FFFF00FFB6816CFAF6F4FFFFFFFFFFFF811E00FE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEE9EDFE1D41FB011FFA1C3AEA
      F0CFA3EDC99980504BFF00FFFF00FFFF00FFFF00FFFF00FFBB846EFAF6F4FFFF
      FFFFFFFF811E00811E00811E00811E00811E00811E00811E00811E00811E0063
      1E1B041FE5011FFA011FFACEB49180504BFF00FFFF00FFFF00FFFF00FFFF00FF
      C0896FFBF7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFEF7F2FBF2EAFAEEE2F8EB
      DAF7E6D3F6E2CBF6DEC4F3DCBD011FFA011FFA011FFA011FFAFF00FFFF00FFFF
      00FFFF00FFFF00FFC58C70FBF7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFB
      FCF8F2FBF3EAF8EEE2F8EAD9F8E7D4FAE9D0E0D0BAB8AB9A011FFA011FFA011F
      FA011FFA011FFAFF00FFFF00FFFF00FFCB9173FBF7F4FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFEFBFCF7F0FBF2E9FBF2E5E9D3C4A0675BA0675BA0675B
      A0675BA0675B011FFA011FFA011FFAFF00FFFF00FFFF00FFCF9674FBF7F6FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAFCF7F0FFFAEFDAC0B6A0
      675BDAA16BDD984FE2903AEA8923A5686BFF00FFFF00FFFF00FFFF00FFFF00FF
      D49875FCF8F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
      FBFFFEF7DDC4BCA0675BEAB474EFA952F6A036A5686BFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFD49875FCF8F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFDDC7C2A0675BEAB273EFA751A5686BFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFD49875FFFEFEFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2D0CEA0675BEDB572A5686B
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCF8E68CF8E68CF8E
      68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68A0
      675BA5686BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    Layout = blGlyphTop
    LookAndFeel.NativeStyle = True
  end
  object edValor: TcxDBCurrencyEdit [12]
    Left = 239
    Top = 84
    Width = 132
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Total'
    DataBinding.DataSource = DS
    Properties.DisplayFormat = '0.00;(0.00)'
    Properties.ReadOnly = False
    Properties.ValidateOnEnter = True
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object deFecha: TcxDBDateEdit [13]
    Left = 53
    Top = 84
    Width = 121
    Height = 21
    DataBinding.DataField = 'Fecha'
    DataBinding.DataSource = DS
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  object cxDBLabel1: TcxDBLabel [14]
    Left = 529
    Top = 5
    Width = 180
    Height = 21
    DataBinding.DataField = 'DescrStatus'
    DataBinding.DataSource = DS
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.Transparent = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -16
    Style.Font.Name = 'Impact'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = True
    Style.TextColor = 14124890
  end
  object luBcos: TcxDBLookupComboBox [15]
    Left = 53
    Top = 61
    Width = 287
    Height = 21
    DataBinding.DataField = 'idCuentabanco'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'idCuentaBanco'
    Properties.ListColumns = <
      item
        FieldName = 'Nombre'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsBancos
    Properties.OnChange = luBcosPropertiesChange
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  inherited btImprimir: TcxButton
    Top = 486
    Width = 56
    Height = 48
    Action = Aprint
    TabOrder = 5
  end
  inherited btLocalizar: TcxButton
    Left = 63
    Top = 486
    Width = 56
    Height = 48
    TabOrder = 9
  end
  inherited btNuevo: TcxButton
    Left = 122
    Top = 486
    Width = 56
    Height = 48
    TabOrder = 10
  end
  inherited btCancelar: TcxButton
    Left = 241
    Top = 486
    Width = 56
    Height = 48
    TabOrder = 11
  end
  inherited btGuardar: TcxButton
    Left = 360
    Top = 486
    Width = 56
    Height = 48
    TabOrder = 12
  end
  inherited btBorrar: TcxButton
    Left = 488
    Top = 486
    Width = 56
    Height = 48
    TabOrder = 13
  end
  inherited btSalir: TcxButton
    Left = 562
    Top = 486
    Width = 56
    Height = 48
    TabOrder = 14
  end
  object cxButton1: TcxButton [23]
    Left = 301
    Top = 486
    Width = 56
    Height = 48
    Action = AAnular
    Anchors = [akLeft, akBottom]
    TabOrder = 17
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00632910006329100063291000632910006329
      100063291000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF006B29100063291000BD4A0000BD4A0000BD4A0000BD4A0000BD4A
      0000BD4A00006329100063291000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0084310800B5420000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A
      0000BD4A0000BD4A0000B54A000063291000FF00FF00FF00FF00FF00FF008431
      0800B5420000BD4A0000B5420000B5420000B5420000B5420000BD4A0000BD4A
      0000BD4A0000BD4A0000BD4A0000B54A000063291000FF00FF00FF00FF00AD42
      0000B5420000B5420000B5420000B5521000C6733100CE7B4200CE7B4200C66B
      2900BD4A0000BD4A0000BD4A0000BD4A00006B291000FF00FF0094390000BD4A
      0000B54A0000B54A0000CE844200FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7B5
      8C00B5420000BD4A0000BD4A0000BD4A0000BD4A00006329100094390000BD52
      0800BD520800BD520800FFFFFF00DEAD8400BD631800B55A1000B5520800AD42
      0000B5420000BD4A0000BD4A0000BD4A0000BD4A00006B29100094390000C66B
      1800C6631800BD631800FFFFFF00C66B2100BD5A1000B5520800B54A0000DEB5
      8C00B5420000B5420000BD4A0000BD4A0000BD4A00006B29100094390800D68C
      4A00CE7B3100C6732900FFFFFF00DEA56B00C66B2100BD631000B5520800FFFF
      FF00DEAD8400B5420000BD4A0000BD4A0000BD4A00006B29100094390000DEA5
      6B00DE9C6300CE843900EFC6A500FFFFFF00F7DECE00F7DEC600F7E7DE00FFFF
      FF00FFFFFF00E7C69C00BD4A0000BD4A0000BD4A00006B29100094390000E79C
      6300EFC6A500DE9C5A00DE945200E7B58400EFCEAD00E7C69C00EFD6BD00FFFF
      FF00FFFFFF00E7BD9400BD4A0000BD4A0000BD4A000063291000FF00FF009C42
      1000EFCEAD00F7CEAD00E7AD7300DE945200D6844200CE732900C66B1800FFFF
      FF00E7AD7B00BD4A0000BD4A0000BD4A00006B291000FF00FF00FF00FF009439
      0000E7A56B00F7E7CE00F7D6BD00E7AD7300D68C4200CE732900C66B1800E7AD
      7300C65A0800BD4A0000BD4A0000B54A000063291000FF00FF00FF00FF00FF00
      FF0094390000E7A56B00F7D6BD00F7DEC600EFC69C00E7A57300DE945200D68C
      4200CE732900C6520000B54A000073290800FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00943900009C4A1000E7AD7300EFBD9400EFBD8C00E7AD7300DE8C
      4A00C66310009C4208006B291000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF009C3900009C4208009C4208009C4208009C42
      080084310800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    Layout = blGlyphTop
    LookAndFeel.NativeStyle = True
  end
  object btEditar: TcxButton [24]
    Left = 182
    Top = 486
    Width = 56
    Height = 48
    Action = AEditar
    Anchors = [akLeft, akBottom]
    TabOrder = 18
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF000073
      AD000073AD000073AD000073AD000073AD000073AD000073AD000073AD000073
      AD00006B08000073AD000073AD000073AD00FF00FF00FF00FF000073AD00108C
      C60052B5E7006BCEFF004ABDF7004ABDF7004ABDF7004ABDF7004ABDF7004ABD
      F700006B0800006B0800219CCE000073AD00FF00FF00FF00FF000073AD0031AD
      E7002194C6008CDEFF0052C6FF0052C6F70052C6FF0052C6F70052C6FF0052C6
      FF00006B080010A52900006B08006BCEE7000073AD00FF00FF000073AD0052CE
      FF000073AD009CE7FF005AD6FF00006B0800006B0800006B0800006B0800006B
      0800006B080018AD310010A52900006B08000073AD00FF00FF000073AD005AD6
      FF0008739C0094ADB50094949400006B080042E77B0042DE730039D66B0031CE
      5A0029BD4A0021B5390018AD310010A52900006B0800FF00FF000073AD006BDE
      FF00396B840063B5C600E7EFD600006B080042E77B0042E77B0042DE730039D6
      6B0031CE5A0029C64A0021B5390018AD310010A52900006B08000073AD0073E7
      FF007B636B001084B500FFFFFF00006B080042E77B0042E77B0042E77B0042DE
      730039D66B0031CE5A0029C64A0021B53900006B08000073AD000073AD007BEF
      FF009C6B6300107BAD000073AD00006B0800006B0800006B0800006B0800006B
      0800006B080039D6630031CE5A00006B08000073AD000073AD000073AD0084F7
      FF00A5736300F7E7D600FFF7DE00FFE7CE00FFE7C600FFDEBD00FFDEB500FFD6
      A500006B080042DE7300006B0800FF00FF00FF00FF00FF00FF000073AD00FFFF
      FF00B57B6300F7EFE700FFFFEF00FFEFDE00FFEFD600FFE7CE00FFE7C600FFDE
      BD00006B0800006B0800006BA500FF00FF00FF00FF00FF00FF00FF00FF000073
      AD00BD8C6B00FFF7EF00FFFFFF00FFF7EF00FFF7E700FFF7E700FFF7E700F7E7
      CE00006B08000073AD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00CE947300FFF7EF00FFFFFF00FFFFFF00FFFFF700E7CEC600D6B5AD00BDA5
      9C0073424200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00D69C7300FFF7F700FFFFFF00FFFFFF00FFFFFF00A5635A00A5635A00A563
      5A00A5635A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00DEA57B00FFF7EF00FFFFFF00FFFFFF00FFFFFF00A5635A00E7A55A00EF9C
      3900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00E7AD7B00D6946B00D6946B00D6946B00D6946B00A5635A00D69C6300FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    Layout = blGlyphTop
    LookAndFeel.NativeStyle = True
  end
  object cxDBCurrencyEdit1: TcxDBCurrencyEdit [25]
    Left = 450
    Top = 84
    Width = 113
    Height = 21
    TabStop = False
    DataBinding.DataField = 'TotalNeto'
    DataBinding.DataSource = DS
    ParentFont = False
    Properties.DisplayFormat = '$,0.00;($,0.00)'
    Properties.ReadOnly = True
    Properties.ValidateOnEnter = True
    Style.Color = 15982033
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = 5859929
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 19
  end
  object edNotaAdd: TcxDBTextEdit [26]
    Left = 96
    Top = 454
    Width = 593
    Height = 21
    TabStop = False
    DataBinding.DataField = 'NotaAdicional'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 8
  end
  object cxDBCheckBox1: TcxDBCheckBox [27]
    Left = 661
    Top = 37
    Width = 44
    Height = 21
    TabStop = False
    Caption = 'CXP'
    DataBinding.DataField = 'MostrarEnCXP'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Properties.OnEditValueChanged = cxDBCheckBox1PropertiesEditValueChanged
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 6
  end
  object cxDBCurrencyEdit2: TcxDBCurrencyEdit [28]
    Left = 517
    Top = 61
    Width = 45
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Tasa'
    DataBinding.DataSource = DS
    Properties.DisplayFormat = '0.00;(0.00)'
    Properties.ValidateOnEnter = True
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 20
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [29]
    Left = 343
    Top = 61
    Width = 139
    Height = 21
    TabStop = False
    DataBinding.DataField = 'idMoneda'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'idMoneda'
    Properties.ListColumns = <
      item
        FieldName = 'Moneda'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dm.dsMoneda
    Properties.OnChange = luBcosPropertiesChange
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object cxDBImageComboBox1: TcxDBImageComboBox [30]
    Left = 53
    Top = 38
    Width = 429
    Height = 21
    AutoSize = False
    BeepOnEnter = False
    DataBinding.DataField = 'TipoSolicitud'
    DataBinding.DataSource = DS
    Properties.Alignment.Horz = taLeftJustify
    Properties.Alignment.Vert = taVCenter
    Properties.ImageAlign = iaRight
    Properties.ImmediatePost = True
    Properties.ImmediateUpdateText = True
    Properties.Items = <
      item
        Description = 'Solicitud Pago con Cheque'
        ImageIndex = 0
        Value = 1
      end
      item
        Description = 'Solicitud Pago por Transferencia'
        Value = 2
      end>
    Properties.OnChange = cxDBImageComboBox1PropertiesChange
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object cxPageControl2: TcxPageControl [31]
    Left = 8
    Top = 108
    Width = 688
    Height = 340
    ActivePage = cxTabSheet5
    LookAndFeel.NativeStyle = False
    TabOrder = 7
    ClientRectBottom = 340
    ClientRectRight = 688
    ClientRectTop = 0
    object cxTabSheet5: TcxTabSheet
      Caption = 'cxTabSheet5'
      ImageIndex = 1
      TabVisible = False
      object Label4: TLabel
        Left = 2
        Top = 8
        Width = 42
        Height = 13
        Caption = 'Suplidor:'
        Transparent = True
      end
      object Label9: TLabel
        Left = 3
        Top = 280
        Width = 50
        Height = 13
        Caption = 'Concepto:'
        Transparent = True
      end
      object edDir: TcxDBTextEdit
        Left = 45
        Top = 28
        Width = 606
        Height = 21
        TabStop = False
        DataBinding.DataField = 'Direccion'
        DataBinding.DataSource = DS
        Properties.ReadOnly = True
        Style.Color = 13818837
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
      object edTel1: TcxDBTextEdit
        Left = 45
        Top = 52
        Width = 171
        Height = 21
        TabStop = False
        DataBinding.DataField = 'Telefono1'
        DataBinding.DataSource = DS
        Properties.ReadOnly = True
        Style.Color = 13818837
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 1
      end
      object edRNC: TcxDBTextEdit
        Left = 229
        Top = 52
        Width = 151
        Height = 21
        TabStop = False
        DataBinding.DataField = 'Numero'
        DataBinding.DataSource = DS
        Properties.ReadOnly = True
        Style.Color = 13818837
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 2
      end
      object beSuplidor: TcxDBButtonEdit
        Left = 45
        Top = 4
        Width = 88
        Height = 21
        DataBinding.DataField = 'idSuplidor'
        DataBinding.DataSource = DS
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = beSuplidorPropertiesButtonClick
        Style.Color = 16317176
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 3
      end
      object edSup: TcxDBMRUEdit
        Left = 134
        Top = 4
        Width = 517
        Height = 21
        DataBinding.DataField = 'Nombre'
        DataBinding.DataSource = DS
        Properties.CharCase = ecUpperCase
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 4
      end
      object cxPageControl1: TcxPageControl
        Left = 1
        Top = 80
        Width = 686
        Height = 197
        ActivePage = cxTabSheet1
        HotTrack = True
        LookAndFeel.NativeStyle = True
        TabOrder = 5
        ClientRectBottom = 193
        ClientRectLeft = 2
        ClientRectRight = 682
        ClientRectTop = 22
        object cxTabSheet1: TcxTabSheet
          Caption = 'Documentos por pagar'
          ImageIndex = 0
          object grDetalle: TcxGrid
            Left = 0
            Top = 0
            Width = 631
            Height = 108
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = grDetalleEnter
            OnExit = grDetalleExit
            LookAndFeel.NativeStyle = True
            object tvDocs: TcxGridDBTableView
              DataController.DataSource = dsdet
              DataController.KeyFieldNames = 'idDocumento'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              NavigatorButtons.OnButtonClick = tvDocsNavigatorButtonsButtonClick
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.First.Visible = False
              NavigatorButtons.PriorPage.Visible = False
              NavigatorButtons.Prior.Visible = False
              NavigatorButtons.Next.Visible = False
              NavigatorButtons.NextPage.Visible = False
              NavigatorButtons.Last.Visible = False
              NavigatorButtons.Insert.Visible = True
              NavigatorButtons.Delete.Hint = 'Borrar documento de la solicitud'
              NavigatorButtons.Edit.Visible = False
              NavigatorButtons.Post.Visible = False
              NavigatorButtons.Cancel.Visible = False
              NavigatorButtons.Refresh.Visible = False
              NavigatorButtons.SaveBookmark.Visible = False
              NavigatorButtons.GotoBookmark.Visible = False
              NavigatorButtons.Filter.Visible = False
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.FocusCellOnCycle = True
              OptionsData.Appending = True
              OptionsView.Navigator = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object tvDocsidDocumento: TcxGridDBColumn
                Caption = 'Numero'
                DataBinding.FieldName = 'idDocumento'
                Options.Filtering = False
                Width = 75
              end
              object tvDocsAbrev: TcxGridDBColumn
                Caption = 'Tipo'
                DataBinding.FieldName = 'Abrev'
                Options.Editing = False
                Options.Filtering = False
                Options.Focusing = False
                Width = 66
              end
              object tvDocsReferencia: TcxGridDBColumn
                DataBinding.FieldName = 'Referencia'
                Options.Editing = False
                Options.Filtering = False
                Options.Focusing = False
                Width = 112
              end
              object tvDocsFecha: TcxGridDBColumn
                DataBinding.FieldName = 'Fecha'
                Options.Editing = False
                Options.Filtering = False
                Options.Focusing = False
                Width = 91
              end
              object tvDocsTotal: TcxGridDBColumn
                DataBinding.FieldName = 'Total'
                Options.Editing = False
                Options.Filtering = False
                Options.Focusing = False
                Width = 99
              end
              object tvDocsTasa: TcxGridDBColumn
                DataBinding.FieldName = 'Tasa'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '0.00;(0.00)'
                Properties.ValidateOnEnter = True
                Options.Filtering = False
                Width = 50
              end
              object tvDocsValor: TcxGridDBColumn
                DataBinding.FieldName = 'Valor'
                Options.Filtering = False
                Width = 101
              end
            end
            object grDetalleLevel1: TcxGridLevel
              Caption = 'Codificacion'
              GridView = tvDocs
            end
          end
          object grRets: TcxGrid
            Left = 0
            Top = 109
            Width = 673
            Height = 62
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnEnter = grDetalleEnter
            OnExit = grDetalleExit
            LookAndFeel.NativeStyle = True
            object cxGridDBTableView1: TcxGridDBTableView
              DataController.DataSource = dsRets
              DataController.KeyFieldNames = 'idSolicitudRet'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              NavigatorButtons.OnButtonClick = tvDocsNavigatorButtonsButtonClick
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.First.Visible = False
              NavigatorButtons.PriorPage.Visible = False
              NavigatorButtons.Prior.Visible = False
              NavigatorButtons.Next.Visible = False
              NavigatorButtons.NextPage.Visible = False
              NavigatorButtons.Last.Visible = False
              NavigatorButtons.Insert.Visible = True
              NavigatorButtons.Delete.Hint = 'Borrar documento de la solicitud'
              NavigatorButtons.Edit.Visible = False
              NavigatorButtons.Post.Visible = False
              NavigatorButtons.Cancel.Visible = False
              NavigatorButtons.Refresh.Visible = False
              NavigatorButtons.SaveBookmark.Visible = False
              NavigatorButtons.GotoBookmark.Visible = False
              NavigatorButtons.Filter.Visible = False
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.FocusCellOnCycle = True
              OptionsData.Appending = True
              OptionsView.ScrollBars = ssVertical
              OptionsView.Navigator = True
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object cxGridDBTableView1idRetencion: TcxGridDBColumn
                Caption = 'Retencion'
                DataBinding.FieldName = 'idRetencion'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'idRetencion'
                Properties.ListColumns = <
                  item
                    FieldName = 'Retencion'
                  end>
                Properties.ListOptions.CaseInsensitive = True
                Properties.ListOptions.GridLines = glNone
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = SolDM.dsTiposRet
                Options.Filtering = False
                Width = 305
              end
              object cxGridDBTableView1Porcentaje: TcxGridDBColumn
                Caption = '%'
                DataBinding.FieldName = 'Porcentaje'
                Options.Filtering = False
              end
              object cxGridDBTableView1Valor: TcxGridDBColumn
                DataBinding.FieldName = 'Valor'
                Options.Filtering = False
                Width = 96
              end
              object cxGridDBTableView1DBColumn1: TcxGridDBColumn
                Caption = 'Tipo Ret. DGII'
                DataBinding.FieldName = 'IdTipoRetencionDGII'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.ImmediatePost = True
                Properties.KeyFieldNames = 'idTiposRetencionDGII'
                Properties.ListColumns = <
                  item
                    FieldName = 'TiposRetencionDGII'
                  end>
                Properties.ListOptions.CaseInsensitive = True
                Properties.ListOptions.GridLines = glNone
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = SolDM.dsRetsDGII
                Options.Filtering = False
                Width = 170
              end
            end
            object cxGridLevel1: TcxGridLevel
              Caption = 'Codificacion'
              GridView = cxGridDBTableView1
            end
          end
          object cxButton3: TcxButton
            Left = 634
            Top = 4
            Width = 44
            Height = 25
            Caption = '+ Rets'
            TabOrder = 2
            OnClick = cxButton3Click
            LookAndFeel.NativeStyle = True
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Codificacion'
          ImageIndex = 1
          inline frCtas: TfrCodifCtas
            Left = 0
            Top = 0
            Width = 680
            Height = 171
            Align = alClient
            TabOrder = 0
            OnEnter = frCtasEnter
            OnExit = frCtasExit
            inherited Grid: TcxGrid
              Width = 680
              Height = 171
              inherited tvCtas: TcxGridDBTableView
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = '###,###,##0.00'
                    Kind = skSum
                    FieldName = 'Debito'
                  end
                  item
                    Format = '###,###,##0.00'
                    Kind = skSum
                    FieldName = 'Credito'
                  end>
                inherited tvCtasidCuenta: TcxGridDBColumn
                  Width = 94
                end
              end
            end
            inherited mCodif: TkbmMemTable
              Left = 114
              Top = 34
            end
          end
        end
        object tabACH: TcxTabSheet
          Caption = 'ACH'
          ImageIndex = 2
          object Label10: TLabel
            Left = 6
            Top = 12
            Width = 114
            Height = 13
            Caption = 'Banco ACH del suplidor:'
            Transparent = True
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 124
            Top = 9
            Width = 105
            Height = 21
            TabStop = False
            DataBinding.DataField = 'BancoDestino'
            DataBinding.DataSource = DS
            Properties.ReadOnly = True
            Style.Color = 13818837
            Style.LookAndFeel.NativeStyle = True
            TabOrder = 0
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 124
            Top = 34
            Width = 447
            Height = 21
            TabStop = False
            DataBinding.DataField = 'CuentaDestino'
            DataBinding.DataSource = DS
            Properties.ReadOnly = True
            Style.Color = 13818837
            Style.LookAndFeel.NativeStyle = True
            TabOrder = 1
          end
          object cxButton2: TcxButton
            Left = 5
            Top = 64
            Width = 166
            Height = 37
            Caption = 'Cambiar cuenta'
            TabOrder = 2
            OnClick = cxButton2Click
            Glyph.Data = {
              36090000424D3609000000000000360000002800000018000000180000000100
              2000000000000009000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00ABA7A6008C888800C0959600FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00ACA8
              A70086868A002A669A004B7BA000C0949400FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009B9D
              9D005492C2002E99FF001B7CCB00557A9700C1959500FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003DAD
              FF0057C1FF004DB1FF003196FA00197CC90053799700C1949500FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0041ABFF005DBFFE004DAFFF003196FA00197BC8005A7A9700C2959400FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0042ABFE005CC0FE004DAFFF003096FA00197AC800587A9600C194
              9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0042ACFE005CC0FE004DAFFF002E94FA00187AC7005F7C
              9700BB939600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF0044ADFE005CBFFE004DB0FF002D94F8001979
              C60043739700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0046AEFE005CBFFE004CB0FF003F97
              ED00577B9400FF00FF00FF00FF00FF00FF00AE837E00AE837E00AE837E00AE83
              7E00AE837E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0046AFFE0066C5FF00A3CC
              F100BEB3AB0086717000A9807A00AE837E00E5D8BD00FFFFE200FFFFE200FFFF
              E000EEDFC600AE837E00AE837E00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00DCBFB800C69E8E00D8BDA300FFFFDD00FFFFDD00FFFFDB00FFFFDA00FFFF
              DB00FFFFDD00FFFFE900DEC9B700AE837E00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00AE857F00DEC0A500FFF3C100FCF1C800FFFFDA00FFFFD900FFFFDA00FFFF
              E000FFFFE400FFFFEF00FFFFFF00DDCAC800AE837E00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00AE837E00FFEFB900F5D4A500FBF0C600FFFFDB00FFFFDA00FFFFDD00FFFF
              EB00FFFFF500FFFFFB00FFFFFD00FFFFFE00AE837E00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AE83
              7E00ECD5B400F8D6A200F2C99700FCEDC400FFFFDB00FFFFDA00FFFFE000FFFF
              F000FFFFFE00FFFFFD00FFFFF500FFFFEB00E1D3B800AE837E00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AE83
              7E00FFF3BF00F4CB9500F0C18E00F9E5BA00FEFDD700FFFFDC00FFFFDF00FFFF
              EC00FFFFF800FFFFF800FFFFEC00FFFFE000FFFFE300AE837E00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AE83
              7E00FFF4C000F3C99400EEB88400F5D5A500FDF3CB00FFFFDC00FFFFDD00FFFF
              E200FFFFE800FFFFE900FFFFE200FFFFDD00FFFFE300AE837E00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AE83
              7E00FFF5C300F6D19C00EEB27D00F1C59300F7E0B300FDF7D000FFFFDC00FFFF
              DD00FFFFDD00FFFFDD00FFFFDB00FFFFDA00FFFFE100AE837E00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AE83
              7E00ECD5B400FDE6B200F3C99600F2C79200F3D09C00F8E3B500FCF5CD00FFFF
              DA00FFFFDC00FFFFDB00FFFFDB00FFFFDC00E2D3B800AE837E00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00AE837E00FFFED000FCF0D600F8E0BE00F4CF9D00F3CD9A00F6D8AA00FBEA
              BF00FDF4CB00FCF7CF00FEF8D100FFFFDE00AE837E00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00AE837E00E0CAB200FFFFFF00FEF9F200F8E1BE00F1C48D00EEBA8500F1C4
              9100F4D1A100F8DEB000FFF7C600DDC7AE00AE837E00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00AE837E00D9C6C000FFFFFF00FFF7D700F8DAA600F4CB9500F5CD
              9900F9D9A600FFF1BB00DEC2A900AE837E00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00AE837E00AE837E00E8D5B400FFF9C500FFF5C000FFF5
              C200EED8B700AE837E00AE837E00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00AE837E00AE837E00AE837E00AE83
              7E00AE837E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            LookAndFeel.NativeStyle = True
          end
        end
      end
      object cxDBMemo1: TcxDBMemo
        Left = 2
        Top = 295
        Width = 679
        Height = 42
        DataBinding.DataField = 'Concepto'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 6
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'cxTabSheet4'
      ImageIndex = 0
      TabVisible = False
      object Label12: TLabel
        Left = 2
        Top = 12
        Width = 156
        Height = 13
        Caption = 'Transferir fondos a esta cuenta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 3
        Top = 58
        Width = 50
        Height = 13
        Caption = 'Concepto:'
        Transparent = True
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 2
        Top = 27
        Width = 468
        Height = 21
        DataBinding.DataField = 'idCuentaBancoDestino'
        DataBinding.DataSource = DS
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'idCuentaBanco'
        Properties.ListColumns = <
          item
            FieldName = 'Nombre'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsBancos
        Properties.OnChange = luBcosPropertiesChange
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
      object cxDBMemo2: TcxDBMemo
        Left = 2
        Top = 73
        Width = 618
        Height = 210
        DataBinding.DataField = 'Concepto'
        DataBinding.DataSource = DS
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 1
      end
    end
  end
  object cxDBCurrencyEdit3: TcxDBCurrencyEdit [32]
    Left = 571
    Top = 38
    Width = 84
    Height = 21
    TabStop = False
    DataBinding.DataField = 'idSolicitud'
    DataBinding.DataSource = DS
    Properties.DisplayFormat = '#######0'
    Properties.ReadOnly = True
    Properties.ValidateOnEnter = True
    Style.Color = 15982033
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 21
  end
  object cxDBLookupComboBox3: TcxDBLookupComboBox [33]
    Left = 405
    Top = 160
    Width = 287
    Height = 21
    DataBinding.DataField = 'IdPagoForma'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'idPagoForma'
    Properties.ListColumns = <
      item
        FieldName = 'PagoForma'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = SolDM.dsListaPagoForma
    Properties.OnChange = luBcosPropertiesChange
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 22
  end
  inherited DS: TwwDataSource
    DataSet = SolDM.mSol
    Left = 74
    Top = 69
  end
  inherited Acciones: TActionList
    Left = 16
    Top = 16
  end
  inherited ImageList: TImageList
    Left = 16
    Top = 69
  end
  object dsdet: TDataSource
    DataSet = SolDM.mSolDtl
    Left = 248
    Top = 16
  end
  object dsBancos: TDataSource
    DataSet = SolDM.rsBancos
    Left = 74
    Top = 16
  end
  object dsBcosSuplidor: TDataSource
    DataSet = SolDM.rsBancoSuplidor
    Left = 132
    Top = 16
  end
  object dsRets: TDataSource
    DataSet = SolDM.mSolRets
    Left = 190
    Top = 16
  end
end

inherited fMantDocumentos: TfMantDocumentos
  Left = 309
  Top = 25
  Caption = 'Registro de documentos por pagar'
  ClientHeight = 634
  ClientWidth = 900
  Color = 15922418
  Font.Color = 5859929
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel [0]
    Left = 10
    Top = 41
    Width = 42
    Height = 13
    Caption = 'Suplidor:'
    Transparent = True
  end
  object Label1: TLabel [1]
    Left = 19
    Top = 91
    Width = 33
    Height = 13
    Caption = 'Fecha:'
    Transparent = True
  end
  object Label2: TLabel [2]
    Left = 9
    Top = 139
    Width = 43
    Height = 13
    Caption = 'Referen:'
    Transparent = True
  end
  object Label3: TLabel [3]
    Left = 204
    Top = 140
    Width = 28
    Height = 13
    Caption = 'Valor:'
    Transparent = True
  end
  object Label5: TLabel [4]
    Left = 10
    Top = 115
    Width = 42
    Height = 13
    Caption = 'Moneda:'
    Transparent = True
  end
  object Label6: TLabel [5]
    Left = 6
    Top = 511
    Width = 57
    Height = 13
    Caption = 'Total ITBIS:'
    Transparent = True
  end
  inherited Gradient1: TGradient
    Top = 559
    Width = 888
    Height = 3
    Align = alNone
    ColorEnd = 16760725
  end
  inherited Gradient2: TGradient
    Width = 900
    Height = 36
    ColorBegin = 15922418
    ColorEnd = 14124890
    Reverse = True
    Style = gsLinearV
  end
  object DBText1: TDBText [8]
    Left = 823
    Top = 6
    Width = 66
    Height = 19
    Alignment = taRightJustify
    AutoSize = True
    DataField = 'Descripcion'
    DataSource = DS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel [9]
    Left = 8
    Top = 177
    Width = 50
    Height = 13
    Caption = 'Concepto:'
    Transparent = True
  end
  object Label11: TLabel [10]
    Left = 510
    Top = 140
    Width = 27
    Height = 13
    Caption = 'Tasa:'
    Transparent = True
  end
  object SpeedButton1: TSpeedButton [11]
    Left = 5
    Top = 4
    Width = 23
    Height = 22
    Action = aAnterior
    Flat = True
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00003100000042000000520000005200000042
      000000310000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000042000000420000007B0800009C0800009C0800009C0800009C
      0800007B0800004A0000004A0000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00004A08000063080000A5080000A5080000A50800009C0800009C080000A5
      080000A5080000A50800006B000000310000FF00FF00FF00FF00FF00FF00004A
      0800006B100008AD180000A51000009C0800009C0800009C0800009C0800009C
      0800009C080000A5080000A50800006B0000004A0000FF00FF00FF00FF00004A
      080010AD310008AD290008A51800009C08004AC65200EFFFEF00D6F7DE0010AD
      2100009C0800009C0800009C080000A50800004A0000FF00FF00005200000884
      210010B5420008AD290000A5100042BD4A00F7FFF700FFFFFF0084D68C0000A5
      1000009C0800009C0800009C080000A50800007B0800004200000052000010A5
      420018B54A0010AD310042BD4A00F7FFF700FFFFFF0073D67B00009C0800009C
      0800009C0800009C0800009C080000A508000094080000420000006B080021B5
      520018B5520073D69400F7FFF700FFFFFF00F7FFFF00B5EFC600B5E7BD00ADE7
      B500ADE7B500ADE7B500B5E7B50000A50800009C0800004A00000873100039BD
      6B0029BD5A00BDEFCE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000A50800009C080000520000007B080052C6
      7B0042C6730029BD5A00A5E7BD00FFFFFF00FFFFFF0084DEA50039BD5A0042C6
      5A0042BD5A0042BD5A0042BD520000A51800009C080000420000007B08004ABD
      6B0084DEA50021B5520018B54A0094DEB500FFFFFF00E7F7EF004AC6730010AD
      310008AD310008AD290008A5210000A51000008C080000420000FF00FF00109C
      2100ADE7C6006BD68C0010AD4A0018B54A008CDEAD00FFFFFF00F7FFF70029BD
      520010AD310008A5290008A5210008AD1800006B0800FF00FF00FF00FF00109C
      210052C67300C6F7DE0063CE8C0021B5520018B54A0094DEB500ADE7C60018B5
      4A0010AD390010AD310008B52900089C1800006B0800FF00FF00FF00FF00FF00
      FF00109C21006BCE8C00D6F7E7009CE7B50052C67B0039BD630029BD5A0031BD
      630029BD5A0021BD4A0010A5310000630800FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00109C2100109C21009CE7B500BDEFD600A5E7C60094E7B5007BDE
      9C004AC67B00189C3900189C3900FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0018A53100109C2100109C2100109C2100109C
      2100108C2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object SpeedButton2: TSpeedButton [12]
    Left = 32
    Top = 4
    Width = 23
    Height = 22
    Action = aProximo
    Flat = True
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00003100000042000000520000005200000042
      000000310000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000042000000420000007B0800009C0800009C0800009C0800009C
      0800007B0800004A0000004A0000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00004A08000063080000A5080000A5080000A50800009C0800009C080000A5
      080000A5080000A50800006B000000310000FF00FF00FF00FF00FF00FF00004A
      0800006B100008AD180000A51000009C0800009C0800009C0800009C0800009C
      0800009C080000A5080000A50800006B0000004A0000FF00FF00FF00FF00004A
      080010AD310008AD290008A51800009C080010AD2100D6F7DE00EFFFEF004AC6
      5200009C0800009C0800009C080000A50800004A0000FF00FF00005200000884
      210010B5420008AD290000A51000009C080000A5100084D68C00FFFFFF00F7FF
      F70042BD4A00009C0800009C080000A50800007B0800004200000052000010A5
      420018B54A0010AD310000A51000009C0800009C0800009C080073D67B00FFFF
      FF00F7FFF70039BD4A00009C080000A508000094080000420000006B080021B5
      520018B55200BDEFCE00BDEFC600B5EFC600BDEFC600B5EFC600B5EFC600F7FF
      F700FFFFFF00EFFFEF0052C65A0000A50800009C0800004A00000873100039BD
      6B0029BD5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00ADE7B50000A50800009C080000520000007B080052C6
      7B0042C6730052C67B0052CE840052CE840052CE84004AC673007BD69400FFFF
      FF00FFFFFF0094DEA50018AD310000A51800009C080000420000007B08004ABD
      6B0084DEA50021B5520018B54A0021B5520021B5520052CE7B00E7F7EF00FFFF
      FF008CDE9C0010AD290008A5210000A51000008C080000420000FF00FF00109C
      2100ADE7C6006BD68C0010AD4A0018B54A0039BD6B00F7FFF700FFFFFF0084DE
      9C0010AD310008A5290008A5210008AD1800006B0800FF00FF00FF00FF00109C
      210052C67300C6F7DE0063CE8C0021B5520021B55200ADE7C60094DEB50018B5
      4A0010AD390010AD310008B52900089C1800006B0800FF00FF00FF00FF00FF00
      FF00109C21006BCE8C00D6F7E7009CE7B50052C67B0039BD630029BD5A0031BD
      630029BD5A0021BD4A0010A5310000630800FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00109C2100109C21009CE7B500BDEFD600A5E7C60094E7B5007BDE
      9C004AC67B00189C3900189C3900FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0018A53100109C2100109C2100109C2100109C
      2100108C2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object Label12: TLabel [13]
    Left = 723
    Top = 66
    Width = 25
    Height = 13
    Caption = 'RNC:'
    Transparent = True
  end
  object Label13: TLabel [14]
    Left = 710
    Top = 92
    Width = 38
    Height = 13
    Caption = 'Tipo ID:'
    Transparent = True
  end
  object Label14: TLabel [15]
    Left = 726
    Top = 42
    Width = 22
    Height = 13
    Caption = 'Doc:'
    Transparent = True
  end
  object Label15: TLabel [16]
    Left = 451
    Top = 116
    Width = 86
    Height = 13
    Caption = 'Fecha de emision:'
    Transparent = True
  end
  object Label16: TLabel [17]
    Left = 687
    Top = 115
    Width = 61
    Height = 13
    Caption = 'Vencimiento:'
    Transparent = True
  end
  object Label17: TLabel [18]
    Left = 698
    Top = 139
    Width = 50
    Height = 13
    Caption = 'Condicion:'
    Transparent = True
  end
  object Label18: TLabel [19]
    Left = 795
    Top = 140
    Width = 20
    Height = 13
    Caption = 'Dias'
    Transparent = True
  end
  object Label19: TLabel [20]
    Left = 204
    Top = 110
    Width = 52
    Height = 26
    Caption = 'Facturado Bienes:'
    Transparent = True
    WordWrap = True
  end
  object Label20: TLabel [21]
    Left = 204
    Top = 85
    Width = 49
    Height = 26
    Caption = 'Facturado Servicio:'
    Transparent = True
    WordWrap = True
  end
  object Label8: TLabel [22]
    Left = 544
    Top = 256
    Width = 24
    Height = 13
    Caption = 'NCF:'
    Transparent = True
  end
  object Label10: TLabel [23]
    Left = 544
    Top = 230
    Width = 46
    Height = 13
    Caption = 'C. Gasto:'
    Transparent = True
  end
  object Label21: TLabel [24]
    Left = 544
    Top = 203
    Width = 41
    Height = 13
    Caption = 'F. Pago:'
    Transparent = True
  end
  object Label7: TLabel [25]
    Left = 113
    Top = 511
    Width = 21
    Height = 13
    Caption = 'ISC:'
    Transparent = True
  end
  object Label22: TLabel [26]
    Left = 219
    Top = 511
    Width = 40
    Height = 13
    Caption = 'Propina:'
    Transparent = True
  end
  object Label23: TLabel [27]
    Left = 323
    Top = 511
    Width = 82
    Height = 13
    Caption = 'Otros impuestos:'
    Transparent = True
  end
  object Label24: TLabel [28]
    Left = 431
    Top = 511
    Width = 107
    Height = 13
    Caption = 'ITBIS llevado al costo:'
    Transparent = True
  end
  object btImpuestos: TcxButton [29]
    Left = 485
    Top = 585
    Width = 68
    Height = 48
    Anchors = [akLeft, akBottom]
    Caption = 'Impuestos'
    TabOrder = 28
    OnClick = btImpuestosClick
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FF969190736E6EAF7D7EFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF9792916C6C70174B82326089AF7B7BFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8386863A79B11A81FF0D62
      BC3B5F7FB07D7DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2698FF
      3DB0FF349DFF1C7EF80C62BA395E7FB07B7DFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FF2996FF42ADFE349AFF1C7EF80C60B8405F7FB17D7BFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2A96FE41AFFE349AFF1C7EF80C
      5FB83E5F7EB07B7BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2A97
      FE41AFFE349AFF1A7BF80B5FB744627FA97A7EFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF2C98FE41ADFE349CFF197BF60C5EB62B587FFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2D99FE41ADFE339CFF287FE7
      3D607BFF00FFFF00FFFF00FF996964996964996964996964996964FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2D
      9AFE4BB5FF8CBDEDAC9F966C565593665F996964DDCCABFFFFD9FFFFD9FFFFD7
      E9D5B6996964996964FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFD1ADA5B68775CCAB8CFFFFD3FFFFD3FF
      FFD0FFFFCFFFFFD0FFFFD3FFFFE2D4BAA4996964FF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF996B65D4AF8FFFEF
      B0FBEDB8FFFFCFFFFFCEFFFFCFFFFFD7FFFFDCFFFFEAFFFFFFD3BBB8996964FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      996964FFEAA6F2C78FFAEBB6FFFFD0FFFFCFFFFFD3FFFFE5FFFFF2FFFFFAFFFF
      FCFFFFFE996964FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FF996964E6C9A0F6CA8BEEBA7FFBE7B4FFFFD0FFFFCFFFFFD7FFFFEB
      FFFFFEFFFFFCFFFFF2FFFFE5D8C6A5996964FF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF996964FFEFADF0BC7DEBB075F7DDA7FEFCCBFF
      FFD1FFFFD5FFFFE6FFFFF6FFFFF6FFFFE6FFFFD7FFFFDA996964FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF996964FFF0AFEFBA7BE9A5
      6AF2C98FFCEFBCFFFFD1FFFFD3FFFFD9FFFFE1FFFFE2FFFFD9FFFFD3FFFFDA99
      6964FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF996964
      FFF2B2F3C484E99E63EDB57AF4D79FFCF4C2FFFFD1FFFFD3FFFFD3FFFFD3FFFF
      D0FFFFCFFFFFD8996964FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FF996964E6C9A0FCDE9EEFBA7EEEB779EFC284F6DAA1FBF2BFFFFFCF
      FFFFD1FFFFD0FFFFD0FFFFD1D9C6A5996964FF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF996964FFFEC2FBEBCAF6D7ACF0C186EF
      BF82F3CC95FAE3ADFCF0BCFBF4C1FEF6C4FFFFD4996964FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF996964D7BB9EFFFF
      FFFEF7EEF6D8ACEDB474E9A76BEDB478F0C48AF6D49CFFF4B6D3B799996964FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF996964CEB6AFFFFFFFFFF4CBF6CF90F0BC7DF2BF81F7CE90FFEDA9D4B1
      93996964FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FF996964996964E1C9A0FFF7B5FFF2AFFFF2B1
      E9CCA4996964996964FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF99696499
      6964996964996964996964FF00FFFF00FFFF00FFFF00FFFF00FF}
    Layout = blGlyphTop
    LookAndFeel.NativeStyle = True
  end
  object beSuplidor: TcxDBButtonEdit [30]
    Left = 54
    Top = 38
    Width = 121
    Height = 21
    DataBinding.DataField = 'idSuplidor'
    DataBinding.DataSource = DS
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.ClickKey = 116
    Properties.OnButtonClick = beSuplidorPropertiesButtonClick
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object deFecha: TcxDBDateEdit [31]
    Left = 54
    Top = 88
    Width = 134
    Height = 21
    DataBinding.DataField = 'Fecha'
    DataBinding.DataSource = DS
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object edNombre: TcxDBTextEdit [32]
    Left = 176
    Top = 38
    Width = 536
    Height = 21
    DataBinding.DataField = 'Nombre'
    DataBinding.DataSource = DS
    Properties.ReadOnly = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object edDir: TcxDBTextEdit [33]
    Left = 54
    Top = 63
    Width = 387
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Direccion'
    DataBinding.DataSource = DS
    Properties.ReadOnly = True
    Style.Color = 13818837
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 25
  end
  object edTel1: TcxDBTextEdit [34]
    Left = 444
    Top = 63
    Width = 133
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Telefono1'
    DataBinding.DataSource = DS
    Properties.ReadOnly = True
    Style.Color = 13818837
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 26
  end
  object edTel2: TcxDBTextEdit [35]
    Left = 581
    Top = 63
    Width = 131
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Telefono2'
    DataBinding.DataSource = DS
    Properties.ReadOnly = True
    Style.Color = 13818837
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 27
  end
  object edRef: TcxDBTextEdit [36]
    Left = 54
    Top = 136
    Width = 134
    Height = 21
    DataBinding.DataField = 'Referencia'
    DataBinding.DataSource = DS
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object edValor: TcxDBCurrencyEdit [37]
    Left = 256
    Top = 136
    Width = 149
    Height = 21
    DataBinding.DataField = 'Total'
    DataBinding.DataSource = DS
    Properties.ReadOnly = True
    Properties.ValidateOnEnter = True
    Style.Color = 13818837
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 7
  end
  object luMoneda: TcxDBLookupComboBox [38]
    Left = 54
    Top = 112
    Width = 134
    Height = 21
    DataBinding.DataField = 'idMoneda'
    DataBinding.DataSource = DS
    Properties.CharCase = ecUpperCase
    Properties.IncrementalFiltering = False
    Properties.KeyFieldNames = 'idMoneda'
    Properties.ListColumns = <
      item
        FieldName = 'Nombre'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsMonedas
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  object edImps: TcxDBCurrencyEdit [39]
    Left = 6
    Top = 526
    Width = 98
    Height = 21
    TabStop = False
    DataBinding.DataField = 'MontoImpuestos'
    DataBinding.DataSource = DS
    Properties.ReadOnly = False
    Properties.ValidateOnEnter = True
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 24
  end
  object cxDBCheckBox1: TcxDBCheckBox [40]
    Left = 544
    Top = 158
    Width = 176
    Height = 21
    TabStop = False
    Caption = 'Guardar codificacion contable'
    DataBinding.DataField = 'CodifManual'
    DataBinding.DataSource = DS
    Properties.OnChange = cxDBCheckBox1PropertiesChange
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 13
  end
  object cxDBMemo1: TcxDBMemo [41]
    Left = 7
    Top = 193
    Width = 530
    Height = 80
    DataBinding.DataField = 'Concepto'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 15
  end
  object cxDBLabel1: TcxDBLabel [42]
    Left = 719
    Top = 533
    Width = 160
    Height = 17
    DataBinding.DataField = 'Diferencia'
    DataBinding.DataSource = DS
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clRed
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
  end
  inherited btImprimir: TcxButton
    Top = 585
    Width = 60
    Height = 48
    Action = Aprint
    TabOrder = 17
  end
  inherited btLocalizar: TcxButton
    Left = 67
    Top = 585
    Width = 60
    Height = 48
    TabOrder = 18
  end
  inherited btNuevo: TcxButton
    Left = 130
    Top = 585
    Width = 60
    Height = 48
    TabOrder = 19
  end
  inherited btCancelar: TcxButton
    Left = 257
    Top = 585
    Width = 60
    Height = 48
    TabOrder = 20
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000008C000008940000089C0000089C000008
      940000008C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000840000089C000018AD000018B5000018B5000018B5000018
      B5000018B50000089C0000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000008C000018B5000018B5000018B5000018B5000018B5000018B5000018
      B5000018B5000018B5000018AD0000008C00FF00FF00FF00FF00FF00FF000000
      84000018BD000021CE000018BD000010B5000018B5000018B5000018B5000018
      B5000010AD000018B5000018B5000018AD0000008400FF00FF00FF00FF000008
      A5000021E7000018D6000021CE004A63D6000829BD000018B5000018AD000021
      B5004A63CE000829B5000018B5000018B50000089C00FF00FF00000084000018
      DE000021EF000010DE003152E700FFFFFF00A5B5EF000021BD000018B5008C9C
      E700FFFFFF004A6BCE000010AD000018B5000018B50000008C0000009C000021
      FF000018F7000018EF000018E700738CEF00FFFFFF00A5B5EF0094A5E700FFFF
      FF0094A5E7000821B5000018B5000018B5000018B500000894000008AD000829
      FF000021FF000018F7000018EF000018E7007B8CF700FFFFFF00FFFFFF0094A5
      EF000018B5000018AD000018B5000018B5000021B50000089C000008AD00294A
      FF000831FF000018FF000018F7000018EF008CA5F700FFFFFF00FFFFFF00A5B5
      EF000021C6000018B5000018B5000018B5000021B50000089C000008A5004263
      FF002952FF000018FF000021FF008CA5FF00FFFFFF008CA5F7007B94F700FFFF
      FF00A5B5EF000829C6000018BD000018B5000018B5000000940000008C00314A
      EF007394FF000829FF003152FF00FFFFFF0094A5FF000018F7000010E700738C
      F700FFFFFF004263E7000010C6000018BD000018B50000008C00FF00FF000818
      BD00849CFF00738CFF001031FF003152FF000021FF000018FF000018F7000021
      EF003152EF000021DE000018D6000021CE000008A500FF00FF00FF00FF000000
      8C002942E700A5B5FF00849CFF002142FF000021FF000018FF000018FF000018
      F7000018EF000018E7000021E7000018BD0000008400FF00FF00FF00FF00FF00
      FF0000008C002942E70094ADFF00ADBDFF00738CFF004A6BFF00315AFF003152
      FF002142FF000829F7000018CE0000008C00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000008C000818BD00395AF7006B84FF00738CFF005A7BFF00395A
      FF001031EF000008B50000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000008C000008A5000010B5000008B5000000
      A50000008C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  inherited btGuardar: TcxButton
    Left = 402
    Top = 585
    Width = 60
    Height = 48
    TabOrder = 21
  end
  inherited btBorrar: TcxButton
    Left = 726
    Top = 585
    Width = 60
    Height = 48
    TabOrder = 22
  end
  inherited btSalir: TcxButton
    Left = 828
    Top = 585
    Width = 60
    Height = 48
    TabOrder = 23
  end
  object bSendECF: TcxButton
    Left = 655
    Top = 585
    Width = 70
    Height = 48
    Anchors = [akLeft, akBottom]
    Caption = 'Enviar ECF'
    TabOrder = 44
    OnClick = bSendECFClick
  end
  object btAnular: TcxButton [50]
    Left = 331
    Top = 585
    Width = 60
    Height = 48
    Action = AAnular
    Anchors = [akLeft, akBottom]
    TabOrder = 29
    Visible = False
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
  object btEditar: TcxButton [51]
    Left = 194
    Top = 585
    Width = 60
    Height = 48
    Action = AEditar
    Anchors = [akLeft, akBottom]
    TabOrder = 31
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
  object pcPages: TcxPageControl [52]
    Left = 6
    Top = 279
    Width = 882
    Height = 225
    ActivePage = tsCodif
    LookAndFeel.NativeStyle = True
    TabOrder = 16
    ClientRectBottom = 221
    ClientRectLeft = 2
    ClientRectRight = 878
    ClientRectTop = 22
    object tsCodif: TcxTabSheet
      Caption = 'Codificacion'
      ImageIndex = 0
      object grDetalle: TcxGrid
        Left = 0
        Top = 0
        Width = 876
        Height = 199
        Align = alClient
        BorderStyle = cxcbsNone
        TabOrder = 0
        OnEnter = grDetalleEnter
        OnExit = grDetalleExit
        LookAndFeel.NativeStyle = True
        object tvCuentas: TcxGridDBTableView
          DataController.DataSource = dsCtas
          DataController.KeyFieldNames = 'LineaNum'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '###,###,##0.00'
              Kind = skSum
              Column = tvCuentasDebito
            end
            item
              Format = '###,###,##0.00'
              Kind = skSum
              Column = tvCuentasCredito
            end>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.First.Visible = False
          NavigatorButtons.PriorPage.Visible = False
          NavigatorButtons.Prior.Visible = False
          NavigatorButtons.Next.Visible = False
          NavigatorButtons.NextPage.Visible = False
          NavigatorButtons.Last.Visible = False
          NavigatorButtons.Insert.Visible = True
          NavigatorButtons.Edit.Visible = False
          NavigatorButtons.Refresh.Visible = False
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Visible = False
          NavigatorButtons.Filter.Visible = False
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.NavigatorHints = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.Navigator = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.OnGetContentStyle = tvCuentasStylesGetContentStyle
          object tvCuentasidCuenta: TcxGridDBColumn
            Caption = 'Cuenta'
            DataBinding.FieldName = 'idCuenta'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = tvCuentasidCuentaPropertiesButtonClick
            Options.Filtering = False
            Width = 80
          end
          object tvCuentasDescripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Width = 264
          end
          object tvCuentasDebito: TcxGridDBColumn
            DataBinding.FieldName = 'Debito'
            Options.Filtering = False
            Width = 102
          end
          object tvCuentasCredito: TcxGridDBColumn
            DataBinding.FieldName = 'Credito'
            Options.Filtering = False
            Width = 97
          end
          object tvCuentasDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Automatica'
            Visible = False
          end
          object tvCuentasDBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'LineaNum'
            Visible = False
            SortIndex = 0
            SortOrder = soAscending
          end
          object tvCuentasCentroCosto: TcxGridDBColumn
            Caption = 'Proyecto/CC'
            DataBinding.FieldName = 'CentroCosto'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = tvCuentasCentroCostoPropertiesButtonClick
            Options.Filtering = False
          end
          object tvCuentasIdPartida: TcxGridDBColumn
            Caption = 'Partida'
            DataBinding.FieldName = 'idPartida'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'idPartida'
            Properties.ListColumns = <
              item
                FieldName = 'Partida'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Properties.ListOptions.GridLines = glNone
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dm.dsPartidas
            Options.Filtering = False
          end
        end
        object grDetalleLevel1: TcxGridLevel
          Caption = 'Codificacion'
          GridView = tvCuentas
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Impuestos'
      ImageIndex = 1
      object GridImpuestos: TcxGrid
        Left = 0
        Top = 0
        Width = 876
        Height = 199
        Align = alClient
        BorderStyle = cxcbsNone
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object tvImpuestos: TcxGridDBTableView
          DataController.DataSource = dsImps
          DataController.KeyFieldNames = 'TipoImpuesto'
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
          NavigatorButtons.Insert.Visible = False
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
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object GridImpuestosImpuesto: TcxGridDBColumn
            Caption = 'Impuesto'
            DataBinding.FieldName = 'TipoImpuesto'
            Options.Filtering = False
            Width = 100
          end
          object GridImpuestosDesc: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Width = 441
          end
          object GridImpuestosPorc: TcxGridDBColumn
            Caption = '%'
            DataBinding.FieldName = 'Porcentaje'
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Width = 110
          end
          object GridImpuestosMonto: TcxGridDBColumn
            Caption = 'Monto'
            DataBinding.FieldName = 'MontoImpuesto'
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Width = 114
          end
        end
        object glImpuestos: TcxGridLevel
          Caption = 'Impuestos'
          GridView = tvImpuestos
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Retenciones'
      ImageIndex = 2
      object GridRets: TcxGrid
        Left = 0
        Top = 0
        Width = 876
        Height = 199
        Align = alClient
        BorderStyle = cxcbsNone
        TabOrder = 0
        OnEnter = GridRetsEnter
        OnExit = grDetalleExit
        LookAndFeel.NativeStyle = True
        object tvRetenciones: TcxGridDBTableView
          DataController.DataSource = dsRets
          DataController.KeyFieldNames = 'idRetencion'
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
          object GridRetsCodigo: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'idRetencion'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = tvRetencionesidRetencionPropertiesButtonClick
            Options.Filtering = False
            Width = 83
          end
          object GridRetsRetencion: TcxGridDBColumn
            DataBinding.FieldName = 'Retencion'
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Width = 450
          end
          object GridRetsPorc: TcxGridDBColumn
            Caption = '%'
            DataBinding.FieldName = 'Porcentaje'
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Width = 58
          end
          object GridRetsMonto: TcxGridDBColumn
            DataBinding.FieldName = 'Monto'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '$,0.00;($,0.00)'
            Properties.ValidateOnEnter = True
            Options.Filtering = False
            Width = 101
          end
          object tvRetencionesDBColumn1: TcxGridDBColumn
            Caption = 'Tipo Retenci'#243'n'
            DataBinding.FieldName = 'idTipoRetencionDGII'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'idTiposRetencionDGII'
            Properties.ListColumns = <
              item
                FieldName = 'TiposRetencionDGII'
              end>
            Properties.ListSource = dsTiposRetencion
            Options.Filtering = False
            Width = 184
          end
        end
        object glRetenciones: TcxGridLevel
          Caption = 'Retenciones'
          GridView = tvRetenciones
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Creditos aplicados a este documento'
      ImageIndex = 3
      object GridCreditos: TcxGrid
        Left = 0
        Top = 0
        Width = 876
        Height = 199
        Align = alClient
        BorderStyle = cxcbsNone
        TabOrder = 0
        OnEnter = grDetalleEnter
        OnExit = grDetalleExit
        LookAndFeel.NativeStyle = True
        object tvCreditos: TcxGridDBTableView
          DataController.DataSource = dsAplicaciones
          DataController.KeyFieldNames = 'LineaNum'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsView.GroupByBox = False
          object GridCreditosTipo: TcxGridDBColumn
            DataBinding.FieldName = 'Tipo'
            Options.Filtering = False
            Width = 64
          end
          object GridCreditosRef: TcxGridDBColumn
            DataBinding.FieldName = 'Referencia'
            Options.Filtering = False
            Width = 183
          end
          object GridCreditosFecha: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Options.Filtering = False
            Width = 162
          end
          object GridCreditosValor: TcxGridDBColumn
            DataBinding.FieldName = 'Valor'
            Options.Filtering = False
            Width = 168
          end
        end
        object glCreditos: TcxGridLevel
          Caption = 'Pagos aplicados a este documento'
          GridView = tvCreditos
        end
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = 'Items'
      ImageIndex = 4
      object Grid: TcxGrid
        Left = 0
        Top = 0
        Width = 876
        Height = 199
        Align = alClient
        BorderStyle = cxcbsNone
        TabOrder = 0
        OnEnter = GridEnter
        OnExit = GridExit
        LookAndFeel.NativeStyle = True
        object GridDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsItems
          DataController.KeyFieldNames = 'idDocumentoItem'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          object GridDBTableView1TipoItem: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'TipoItem'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = imgTipos
            Properties.ImmediatePost = True
            Properties.Items = <
              item
                Description = 'ITM'
                ImageIndex = 0
                Value = 'I'
              end
              item
                Description = 'CTA'
                ImageIndex = 1
                Value = 'C'
              end>
            Options.Filtering = False
            Width = 61
          end
          object GridDBTableView1idProducto: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'idProducto'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = GridDBTableView1idProductoPropertiesButtonClick
            Options.Filtering = False
            Width = 82
          end
          object GridDBTableView1Descripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
            Options.Filtering = False
            Width = 367
          end
          object GridDBTableView1Cantidad: TcxGridDBColumn
            Caption = 'Cant'
            DataBinding.FieldName = 'Cantidad'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.ImmediatePost = True
            Options.Filtering = False
            Width = 82
          end
          object GridDBTableView1idUnidad: TcxGridDBColumn
            Caption = 'Unidad'
            DataBinding.FieldName = 'idUnidad'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'idUnidad'
            Properties.ListColumns = <
              item
                FieldName = 'Unidad'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Properties.ListOptions.GridLines = glNone
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsUnidades
            Options.Filtering = False
            Width = 71
          end
          object GridDBTableView1Costo: TcxGridDBColumn
            DataBinding.FieldName = 'Costo'
            Options.Filtering = False
            Width = 94
          end
          object GridDBTableView1DBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Importe'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Width = 101
          end
        end
        object GridLevel1: TcxGridLevel
          GridView = GridDBTableView1
        end
      end
    end
  end
  object cxDBCurrencyEdit1: TcxDBCurrencyEdit [53]
    Left = 544
    Top = 136
    Width = 114
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Tasa'
    DataBinding.DataSource = DS
    Properties.ValidateOnEnter = True
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 12
  end
  object cxDBCheckBox2: TcxDBCheckBox [54]
    Left = 732
    Top = 158
    Width = 51
    Height = 21
    TabStop = False
    Caption = 'CXP ?'
    DataBinding.DataField = 'MostrarEnCXP'
    DataBinding.DataSource = DS
    Properties.OnChange = cxDBCheckBox1PropertiesChange
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 14
  end
  object cxDBTextEdit2: TcxDBTextEdit [55]
    Left = 753
    Top = 63
    Width = 135
    Height = 21
    DataBinding.DataField = 'RNC'
    DataBinding.DataSource = DS
    Properties.ReadOnly = False
    Style.Color = clWindow
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 9
  end
  object luTipoID: TcxDBLookupComboBox [56]
    Left = 753
    Top = 88
    Width = 135
    Height = 21
    DataBinding.DataField = 'idTipoIdentificacion'
    DataBinding.DataSource = DS
    Properties.KeyFieldNames = 'idTipoIdentificacion'
    Properties.ListColumns = <
      item
        FieldName = 'TipoIdentificacion'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = docdm.dsTipoId
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 10
  end
  object cxDBTextEdit3: TcxDBTextEdit [57]
    Left = 753
    Top = 38
    Width = 134
    Height = 21
    TabStop = False
    DataBinding.DataField = 'idDocumento'
    DataBinding.DataSource = DS
    Properties.ReadOnly = True
    Style.Color = 13818837
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 32
  end
  object cxDBDateEdit1: TcxDBDateEdit [58]
    Left = 544
    Top = 112
    Width = 134
    Height = 21
    DataBinding.DataField = 'FechaEmision'
    DataBinding.DataSource = DS
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 8
  end
  object cxDBDateEdit2: TcxDBDateEdit [59]
    Left = 753
    Top = 112
    Width = 134
    Height = 21
    DataBinding.DataField = 'Vencimiento'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 11
  end
  object cxDBCurrencyEdit2: TcxDBCurrencyEdit [60]
    Left = 753
    Top = 136
    Width = 33
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Condiciones'
    DataBinding.DataSource = DS
    Properties.AssignedValues.DisplayFormat = True
    Properties.ReadOnly = True
    Properties.ValidateOnEnter = True
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 33
  end
  object cxButton2: TcxButton [61]
    Left = 589
    Top = 585
    Width = 60
    Height = 48
    Anchors = [akLeft, akBottom]
    Caption = 'Importar'
    TabOrder = 34
    OnClick = ALocalizarExecute
    DropDownMenu = PopupMenu1
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
    Kind = cxbkDropDown
    Layout = blGlyphTop
    LookAndFeel.NativeStyle = True
  end
  object cxDBCurrencyEdit3: TcxDBCurrencyEdit [62]
    Left = 256
    Top = 112
    Width = 149
    Height = 21
    DataBinding.DataField = 'montoFacturadoBienes'
    DataBinding.DataSource = DS
    Properties.ValidateOnEnter = True
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 6
  end
  object cxDBCurrencyEdit4: TcxDBCurrencyEdit [63]
    Left = 256
    Top = 88
    Width = 149
    Height = 21
    DataBinding.DataField = 'montoFacturadoServicios'
    DataBinding.DataSource = DS
    Properties.ValidateOnEnter = True
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  object cxDBTextEdit1: TcxDBTextEdit [64]
    Left = 593
    Top = 252
    Width = 293
    Height = 21
    DataBinding.DataField = 'CompFiscal'
    DataBinding.DataSource = DS
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 35
  end
  object luClase: TcxDBLookupComboBox [65]
    Left = 592
    Top = 226
    Width = 294
    Height = 21
    DataBinding.DataField = 'idClaseGasto'
    DataBinding.DataSource = DS
    Properties.KeyFieldNames = 'idClasegasto'
    Properties.ListColumns = <
      item
        FieldName = 'ClaseGasto'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsClaseGasto
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 36
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [66]
    Left = 592
    Top = 199
    Width = 294
    Height = 21
    DataBinding.DataField = 'idPagoForma'
    DataBinding.DataSource = DS
    Properties.KeyFieldNames = 'idPagoForma'
    Properties.ListColumns = <
      item
        FieldName = 'PagoForma'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsFormaPago
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 37
  end
  object cxDBCurrencyEdit5: TcxDBCurrencyEdit [67]
    Left = 113
    Top = 526
    Width = 98
    Height = 21
    TabStop = False
    DataBinding.DataField = 'montoIsc'
    DataBinding.DataSource = DS
    Properties.ReadOnly = False
    Properties.ValidateOnEnter = True
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 38
  end
  object cxDBCurrencyEdit6: TcxDBCurrencyEdit [68]
    Left = 219
    Top = 526
    Width = 98
    Height = 21
    TabStop = False
    DataBinding.DataField = 'PropinaLegal'
    DataBinding.DataSource = DS
    Properties.ReadOnly = False
    Properties.ValidateOnEnter = True
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 39
  end
  object cxDBCurrencyEdit7: TcxDBCurrencyEdit [69]
    Left = 323
    Top = 526
    Width = 98
    Height = 21
    TabStop = False
    DataBinding.DataField = 'OtrosImpuestos'
    DataBinding.DataSource = DS
    Properties.ReadOnly = False
    Properties.ValidateOnEnter = True
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 40
  end
  object cxDBCurrencyEdit8: TcxDBCurrencyEdit [70]
    Left = 431
    Top = 526
    Width = 105
    Height = 21
    TabStop = False
    DataBinding.DataField = 'itbisCosto'
    DataBinding.DataSource = DS
    Properties.ReadOnly = False
    Properties.ValidateOnEnter = True
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 41
  end
  inherited DS: TwwDataSource
    AutoEdit = True
    DataSet = docdm.mDocumento
    Left = 74
    Top = 175
  end
  object LabelEcfStatus: TLabel
    Left = 300
    Top = 6
    Width = 63
    Height = 13
    Caption = 'Estado ECF:'
    Transparent = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edEcfStatus: TcxDBTextEdit
    Left = 365
    Top = 3
    Width = 140
    DataBinding.DataField = 'StatusEcf'
    DataBinding.DataSource = DS
    Properties.ReadOnly = True
    Style.Color = 13818837
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 30
    Width = 220
  end
  object btnRefrescarECF: TcxButton
    Left = 515
    Top = 2
    Width = 70
    Height = 22
    Caption = 'Refrescar'
    TabOrder = 31
    OnClick = btnRefrescarECFClick
  end
  inherited Acciones: TActionList
    Left = 16
    Top = 16
    object DistCosto: TAction
      Caption = 'Dist. Costo'
    end
    object aAnterior: TAction
      OnExecute = aAnteriorExecute
    end
    object aProximo: TAction
      OnExecute = aProximoExecute
    end
  end
  inherited ImageList: TImageList
    Left = 248
    Top = 122
  end
  object dsCtas: TDataSource
    DataSet = docdm.mCtasDoc
    Left = 132
    Top = 69
  end
  object dsMonedas: TDataSource
    DataSet = docdm.rsMonedas
    Left = 132
    Top = 122
  end
  object dsImps: TDataSource
    DataSet = docdm.mImpsDoc
    Left = 74
    Top = 122
  end
  object dsAplicaciones: TDataSource
    DataSet = docdm.rsAplicadoADoc
    Left = 16
    Top = 122
  end
  object dsRets: TDataSource
    DataSet = docdm.mRets
    Left = 248
    Top = 16
  end
  object imgTipos: TImageList
    Left = 190
    Top = 122
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0D9
      C20099330000DEBDAC00000000000000000000000000917C6A0078614C006A53
      3C00634935006349350063493500634935006349350063493500634935006349
      3500634935006349350063493500634935000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0D9C200D89B
      5B009933000099330000DEBDAC000000000000000000FDF9F700D8CFCA000933
      BE00D8CAC200D9C8BE00DBC7B900DBC3B500DBC1B000DCBFAA00DCBDA700DDB9
      A300DDB79F00DEB69B00DFB49700634935000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000097806F0097806F00D89B5B00D89B
      5B00993300009933000099330000DEBDAC00C0AB9C00EBC4A100E5B68D00103A
      C500E3B28800E3B08500E2AE8200E1AC7F00E0A97C00DFA67700DEA57600DDA1
      7000DB9C6A00D8935D00D68E5800634935000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000097806F0000000000D89B5B00E9B4
      7C00FBD8B200B56335009933000099330000C1AC9D00FEFDFC00FDFBFA001743
      D100FDF7F300FCF5F000FCF2EC00FBEFE800FBEDE400FAEAE000F9E7DB00F9E5
      D700F8E2D300F8DFCF00DDB79F00634935000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000097806F0000000000E9B47C00FFCD
      9900FFCD9900FBD8B200B563350099330000C2AD9E00EFD2B800E8BF9B00204C
      DA00E5B58C00E4B38900E3B18700E2AF8400E1AD8100E1AB7E00E0A97C00DFA8
      7900DEA47400DA9C6900D58C5700634935000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C5DDE2001A6D
      8100D7E7EB0000000000000000000000000097806F0000000000FBF5EE00FBD8
      B200FFCD9900FFCD9900FBD8B200B5633500C3AE9F00FEFEFE00FEFEFE002652
      E000FDFBFA00FDF9F700FDF7F300FCF5F000FCF2EC00FBEFE800FBEDE400FAEA
      E000F9E7DB00F9E5D700DCBDA700634935000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D7E7EB002D8296001C6E
      82001A6D8100D7E7EB00000000000000000097806F000000000000000000F1E2
      E6009A369900ECB09900FBD9B500FBF5EE00C5AFA000F0D3BA00EAC4A3002A56
      E300E6B89000E5B68E00E4B48B00E3B28800E3B08500E2AE8300E1AC8000E0AA
      7D00DEA67600DC9E6D00D68E5900634935000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D7E7EB002D8296002D8296001C6F
      83001A6D81001A6D8100D7E7EB000000000097806F0000000000F5EBF500D365
      D200A43EA3009A369900E8D0DE0000000000C6B0A100FEFEFE00FEFEFE002B58
      E500FEFEFE00FEFDFC00FDFBFA00FDF9F700FDF7F300FCF5F000FCF2EC00FBEF
      E800FBEDE400FAEAE000DBC1B000634935000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031849800318498002D8296002EA8
      C8001A6D81001A6D810097806F0097806F0097806F0097806F00D365D200DB6E
      DA00A43EA300A43EA3009A369900ECD8EB00C7B1A200F2D6BD00ECC9AA002B58
      E500E7BB9400E6B99200E5B78F00E5B58D00E4B38A00E3B18700E2AF8400E2AD
      8100E1AA7D00DEA57500D9966300634935000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031849800318498007AC8DC004FCB
      F10027A4C3001A6D81001A6D81001A6D81000000000000000000D365D200EC90
      EB00FB98FA00A43EA300A43EA3009A369900C8B2A300FEFEFE00FEFEFE002C59
      E600FEFEFE00FEFEFE00FEFEFE00FEFDFC00FDFBFA00FDF9F700FDF7F300FCF5
      F000FCF2EC00FBEFE800DBC7B900634935000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000318498007AC8DC0077DBF40077DB
      F4004FCBF10027A4C3001A6D81001A6D81000000000000000000EC90EB00FAAD
      FA00FB98FA00FB98FA00A43EA300A43EA300C9B3A400F3DAC500EDCBAE003460
      E900E8BD9800E7BC9600E7BA9300E6B89100E5B68E00E4B48B00E4B28900E3B1
      8600E2AF8300DFA87900D9956200634935000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000037C2F00099E1F60077DBF40077DB
      F40077DBF4004FCBF1002BA6C4001A6D81000000000000000000FBEFFA00FB9C
      FA00FAADFA00FB98FA00FB98FA00A43EA300CAB4A500FEFEFE00FEFEFE00416A
      ED00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFDFC00FDFBFA00FDF9
      F700FDF7F300FCF5F000D8CAC200634935000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCEFFB0037C2F00099E1F60088DF
      F60077DBF40077DBF4004FCBF10028A6C500000000000000000000000000FBEF
      FA00FB9CFA00FAADFA00FB9CFA00FBEFFA00CAB4A500F4DFCD00EDCAAB005179
      F100E9C09B00E8BE9900E8BD9700E7BB9500E6B99200E6B79000E5B68D00E4B4
      8A00E3B28700E0AA7D00D99562006A533C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6EEFB0037C2F00099E1
      F60077DBF40077DBF40037C2F000D6F0F7000000000000000000000000000000
      0000FBEFFA00FB9CFA00FBEFFA0000000000CBB5A600FEFEFE00FEFEFE006488
      F400FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFD
      FC00FDFBFA00FDF9F700D8CFCA0078614C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009EE1F80037C2
      F00099E1F60037C2F000DBF2F800000000000000000000000000000000000000
      000000000000000000000000000000000000CBB5A600FEFEFE00FEFEFE007091
      F600FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFDFC00FDFBFA00FDF9F700917C6A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C5ED
      FB0037C2F000C5EDFB0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CBB5A600CBB5A600CBB5A600CAB4
      A500CAB4A500C9B3A400C8B2A300C7B1A200C6B0A100C5AFA000C3AE9F00C2AD
      9E00C1AC9D00C0AB9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFE3800000000000FFC1800000000000
      FF00000000000000FF40000000000000FF40000000000000C740000000000000
      83600000000000000141000000000000000000000000000000C0000000000000
      00C000000000000000C000000000000000E000000000000080F1000000000000
      C1FF000000000000E3FF00030000000000000000000000000000000000000000
      000000000000}
  end
  object dsUnidades: TwwDataSource
    AutoEdit = False
    DataSet = docdm.rsUnidades
    OnUpdateData = DSUpdateData
    Left = 132
    Top = 175
  end
  object dsItems: TDataSource
    DataSet = docdm.mDocItems
    Left = 74
    Top = 69
  end
  object dsClaseGasto: TDataSource
    DataSet = docdm.rsClaseGasto
    Left = 16
    Top = 69
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 190
    Top = 16
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15199207
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 7237230
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 16
    Top = 175
    object ImportardeMovInventario1: TMenuItem
      Caption = 'Importar de Mov. Inventario'
      OnClick = ImportardeMovInventario1Click
    end
  end
  object cBorrarDesgloce: TADOCommand
    CommandText = 'cxpBorrarDesglosePago'
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
        Name = '@id'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 74
    Top = 16
  end
  object rsDesglose: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'rsDesglosePagoCxP;1'
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
        Name = '@idDocumento'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 132
    Top = 16
    object rsDesgloseidPago: TGuidField
      FieldName = 'idPago'
      FixedChar = True
      Size = 38
    end
    object rsDesgloseidDocumento: TGuidField
      FieldName = 'idDocumento'
      FixedChar = True
      Size = 38
    end
    object rsDesgloseidFormaPago: TIntegerField
      FieldName = 'idFormaPago'
    end
    object rsDesgloseMonto: TBCDField
      FieldName = 'Monto'
      Precision = 18
      Size = 2
    end
    object rsDesgloseNumero: TStringField
      FieldName = 'Numero'
      Size = 4
    end
  end
  object dsTiposRetencion: TDataSource
    DataSet = docdm.rsTiposRetencion
    Left = 190
    Top = 69
  end
  object dsFormaPago: TDataSource
    DataSet = docdm.rsFormaPago
    Left = 248
    Top = 69
  end
end

inherited ReporteAplicacionPres: TReporteAplicacionPres
  Left = 309
  Top = 214
  Caption = 'Reporte de ejecucion del presupuesto'
  ClientHeight = 483
  ClientWidth = 788
  Color = 16644340
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Gradient1: TGradient [0]
    Left = 0
    Top = 29
    Width = 788
    Height = 4
    Align = alTop
    ColorBegin = 4227327
    ColorEnd = 16767681
    Style = gsReflectedV
  end
  object Gradient2: TGradient [1]
    Left = 0
    Top = 0
    Width = 788
    Height = 29
    Align = alTop
    ColorBegin = 16644340
    ColorEnd = 14898176
    Style = gsLinearH
  end
  object btGuardar: TcxButton [2]
    Left = 6
    Top = 445
    Width = 92
    Height = 34
    Anchors = [akLeft, akBottom]
    Caption = 'Imprimir'
    TabOrder = 0
    OnClick = btGuardarClick
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6C6A6A6C
      6A6A6C6A6AFF00FFFF00FFFF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FF6C6A6AB0ADAD9692938E8A8B6C6A6A6C6A6A817E7F6C6A6ADDDCDCD0CFCF6C
      6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF6C6A6AD5D4D4C6C4C4A19F9FA19F9FA19F9F8381825C5B5BBCBC
      BCCECECECFCFCFD1D1D1D3D3D3CAC9C96C6A6A6C6A6A6C6A6AFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF6C6A6AD8D7D7E0DEDEC0BFBFA19F9FA19F9FA19F9F
      6260600000000000001616165D5D5DA9A9A9CACACACACACACACACACACACAC1C0
      C06C6A6A6C6A6A6C6A6AFF00FFFF00FF6C6A6AD3D3D3D4D3D3CFCFCF8C8A8A81
      7F7F817F7F817F7F6C6A6A1414140808080000000000000000001616165D5D5D
      A9A9A9CACACACACACAB7B6B6B7B6B66C6A6AFF00FF6C6A6ACACACACACACAC6C6
      C68E8C8CB8B5B5B6B4B4A19F9FA19F9F9F9D9D9997979390918280805250502B
      2A2A080808000000000000161616646464817E7F6C6A6AFF00FFFF00FF6C6A6A
      CACACAC5C5C58E8C8CD7D4D4F7F6F6F6F4F4F2F0F0E0DEDECAC7C7B6B5B5A5A3
      A3A19F9FA19F9F9E9A9C9390916865662322230303031919199997976C6A6AFF
      00FFFF00FF6C6A6AC5C5C58E8C8CE7E6E6F7F6F6F7F6F6F6F4F4F2F0F0EEEDED
      EAEAEAE7E6E6E3E2E2D4D3D3C2C1C1AFADADA19F9FA19F9F9997978280806C6A
      6A9F9D9D6C6A6AFF00FFFF00FF6C6A6A8E8C8CEFEEEEF7F6F6F7F6F6F7F6F6F6
      F4F4D5D3D4867B7E958B8EC1BFBFDDDCDCE0E0E0DCDCDCD8D8D8D1D1D1C2C1C1
      B2B0B0A19F9F9C99996C6A6A6C6A6AFF00FFFF00FF6C6A6ACECBCCF7F6F6F7F6
      F6F7F6F6F7F6F6CFCBCCAFACADADABAB9E989883797B75696B898081ABA5A6C7
      C6C6D5D5D5D1D1D1CECECEC9C7C7BBBABAA6A4A46C6A6AFF00FFFF00FFFF00FF
      6C6A6A6C6A6ACECBCCEDEBEBAFA4A56B5D5F766A6C83787A9C9697ACAAAAB2B0
      B0ABA7A9989192817778847A7D938C8EBFBFBFCBCBCBCACACAC0C0C06C6A6AFF
      00FFFF00FFFF00FFFF00FFFF00FF6C6A6A6C6A6ABD8281AF8A737D5E51665456
      6554576D5E626D5E62898081A09A9CAFACADB2B0B0A49FA0CAC9CACBCBCBB7B6
      B66C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FF
      D4ABFFD0A1FFCB98D5A57BA1785C7B665F6050536656596F62658E8687CECCCC
      CFCFCFA5A4A46C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFBD8281FFD9B2FFD4A9FFCFA0FFCA97FFC68EFFC186FFBF81FFC084BD
      82816C6A6A6C6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFBD8281FFDDBAFFD8B1FFD3A7FFCE9EFFCA96FFC5
      8CFFC084FFC084BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFE5CBFFE1C2FFDCB8FFD7AF
      FFD3A6FFCE9DFFC995FFC48BBD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFEAD4FF
      E5CAFFE0C0FFDAB7FFD7ADFFD1A5FFCC9CFFC792BD8281FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFBD8281FFEEDCFFE9D1FFE3C9FFE0BFFFDAB6FFD5ACFFD0A3F7C297BD8281FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFBD8281FFF7EEFFF2E3FFEDDAFFE7D0FFE3C7FFDEBDFFD9B4FFD4
      ABBD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFBD8281FFFAF3FFFAF3FFF6EDFFF0E2FFEBD9FFE7CF
      FFE2C5FFDDBCF2C7A9BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281BD8281BD8281BD8281FF
      F4EBFFF0E1FFEBD7FFE6CEFBDCC0BD8281FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFBD8281BD8281BD8281BD8281BD8281FF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    LookAndFeel.NativeStyle = True
  end
  object btCancelar: TcxButton [3]
    Left = 691
    Top = 445
    Width = 92
    Height = 34
    Anchors = [akLeft, akBottom]
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 1
    OnClick = btCancelarClick
    Glyph.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      2000000000000009000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF000732DE000732DE00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000732DE000732DE000732DE00FF00FF00FF00FF00FF00
      FF000732DE000732DE000732DE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000732DE000732DE000732DE00FF00FF00FF00FF00FF00FF00FF00
      FF000732DE000732DE000732DE000732DE00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000732
      DE000732DE000732DE000732DE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000732DE000732DE000732DE000732DE000732DE00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000732DE000732
      DE000732DE000732DE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000732DE000732DE000732DE000732DE000732DE00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000732DE000732DE000732
      DE000732DE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000335FB000732DE000732DE000732DE000732DE00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000732DE000732DE000732DE000732
      DE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000732DE000732DE000732DE000732
      DE00FF00FF00FF00FF000732DE000732DE000732DE000732DE000732DE00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000732DE000732DE000732
      DE000732DE000732DE000732DE000732DE000732DE000732DE00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000732DE000732
      DE000335FB000732DE000335FB000732DE000732DE00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000732
      DE000732DE000732DE000335FB000732DE00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000732DE000732
      DE000335FB000732DE000732DE000335FB000335FB00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000732DE000732DE000335
      FB000732DE000335FB000335FB000335FB000732DE000335FB00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000335FB000335FB000335FB000732
      DE000335FB00FF00FF00FF00FF000335FB000335FB000335FB000335FB00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF000335FB000335FB000732DE000335FB000335
      FB00FF00FF00FF00FF00FF00FF00FF00FF000335FB000335FB000335FB000335
      FB00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000335FB000335FB000335FB000335FB000335FB00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000335FB000335
      FB000335FB00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000335FB000335FB000335FB000335FB000335FB00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000335
      FB000335FB000335FB00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000335FB000335FB000335FB000335FB000335FB00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000335FB00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000335
      FB000335FB000335FB000335FB000335FB00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000335
      FB000335FB000335FB000335FB00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000335
      FB000335FB000335FB00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid [4]
    Left = 4
    Top = 112
    Width = 780
    Height = 329
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.KeyFieldNames = 'idCentroCosto'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.ImmediateEditor = False
      OptionsCustomize.GroupBySorting = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      object cxGrid1DBTableView1CentroCosto: TcxGridDBColumn
        Caption = 'CC'
        DataBinding.FieldName = 'CentroCosto'
        Options.Editing = False
        Options.Filtering = False
        Width = 118
      end
      object cxGrid1DBTableView1CentroCostoDesc: TcxGridDBColumn
        Caption = 'Descripcion'
        DataBinding.FieldName = 'CentroCostoDesc'
        Options.Editing = False
        Options.Filtering = False
        Width = 238
      end
      object cxGrid1DBTableView1Presupuestado: TcxGridDBColumn
        DataBinding.FieldName = 'Presupuestado'
        Options.Editing = False
        Options.Filtering = False
        Width = 109
      end
      object cxGrid1DBTableView1PresupuestadoHijos: TcxGridDBColumn
        Caption = 'Pres.Hijos'
        DataBinding.FieldName = 'PresupuestadoHijos'
        Options.Editing = False
        Options.Filtering = False
        Width = 104
      end
      object cxGrid1DBTableView1Gasto: TcxGridDBColumn
        DataBinding.FieldName = 'Gasto'
        Options.Editing = False
        Options.Filtering = False
        Width = 91
      end
      object cxGrid1DBTableView1GastoHijos: TcxGridDBColumn
        Caption = 'Gasto Hijos'
        DataBinding.FieldName = 'GastoHijos'
        Options.Editing = False
        Options.Filtering = False
        Width = 104
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGroupBox1: TcxGroupBox [5]
    Left = 4
    Top = 33
    Width = 780
    Height = 71
    Anchors = [akLeft, akTop, akRight]
    Caption = ' Filtros '
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
    object Label1: TLabel
      Left = 422
      Top = 20
      Width = 20
      Height = 13
      Caption = 'Tipo'
    end
    object Label2: TLabel
      Left = 8
      Top = 20
      Width = 34
      Height = 13
      Caption = 'Desde:'
    end
    object Label3: TLabel
      Left = 178
      Top = 20
      Width = 32
      Height = 13
      Caption = 'Hasta:'
    end
    object Label4: TLabel
      Left = 8
      Top = 45
      Width = 18
      Height = 13
      Caption = 'CC:'
    end
    object cxButton2: TcxButton
      Left = 670
      Top = 11
      Width = 103
      Height = 52
      Caption = 'Mostrar'
      TabOrder = 0
      OnClick = cxButton2Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFABA7A68C8888C09596FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFACA8A786868A2A669A4B7BA0C09494FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9B9D9D5492C22E99FF1B7C
        CB557A97C19595FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3DADFF
        57C1FF4DB1FF3196FA197CC9537997C19495FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF41ABFF5DBFFE4DAFFF3196FA197BC85A7A97C29594FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF42ABFE5CC0FE4DAFFF3096FA19
        7AC8587A96C19494FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF42AC
        FE5CC0FE4DAFFF2E94FA187AC75F7C97BB9396FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF44ADFE5CBFFE4DB0FF2D94F81979C6437397FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF46AEFE5CBFFE4CB0FF3F97ED
        577B94FF00FFFF00FFFF00FFAE837EAE837EAE837EAE837EAE837EFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF46
        AFFE66C5FFA3CCF1BEB3AB867170A9807AAE837EE5D8BDFFFFE2FFFFE2FFFFE0
        EEDFC6AE837EAE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFDCBFB8C69E8ED8BDA3FFFFDDFFFFDDFF
        FFDBFFFFDAFFFFDBFFFFDDFFFFE9DEC9B7AE837EFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE857FDEC0A5FFF3
        C1FCF1C8FFFFDAFFFFD9FFFFDAFFFFE0FFFFE4FFFFEFFFFFFFDDCAC8AE837EFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        AE837EFFEFB9F5D4A5FBF0C6FFFFDBFFFFDAFFFFDDFFFFEBFFFFF5FFFFFBFFFF
        FDFFFFFEAE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFAE837EECD5B4F8D6A2F2C997FCEDC4FFFFDBFFFFDAFFFFE0FFFFF0
        FFFFFEFFFFFDFFFFF5FFFFEBE1D3B8AE837EFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFAE837EFFF3BFF4CB95F0C18EF9E5BAFEFDD7FF
        FFDCFFFFDFFFFFECFFFFF8FFFFF8FFFFECFFFFE0FFFFE3AE837EFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837EFFF4C0F3C994EEB8
        84F5D5A5FDF3CBFFFFDCFFFFDDFFFFE2FFFFE8FFFFE9FFFFE2FFFFDDFFFFE3AE
        837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837E
        FFF5C3F6D19CEEB27DF1C593F7E0B3FDF7D0FFFFDCFFFFDDFFFFDDFFFFDDFFFF
        DBFFFFDAFFFFE1AE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFAE837EECD5B4FDE6B2F3C996F2C792F3D09CF8E3B5FCF5CDFFFFDA
        FFFFDCFFFFDBFFFFDBFFFFDCE2D3B8AE837EFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837EFFFED0FCF0D6F8E0BEF4CF9DF3
        CD9AF6D8AAFBEABFFDF4CBFCF7CFFEF8D1FFFFDEAE837EFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837EE0CAB2FFFF
        FFFEF9F2F8E1BEF1C48DEEBA85F1C491F4D1A1F8DEB0FFF7C6DDC7AEAE837EFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFAE837ED9C6C0FFFFFFFFF7D7F8DAA6F4CB95F5CD99F9D9A6FFF1BBDEC2
        A9AE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFAE837EAE837EE8D5B4FFF9C5FFF5C0FFF5C2
        EED8B7AE837EAE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837EAE
        837EAE837EAE837EAE837EFF00FFFF00FFFF00FFFF00FFFF00FF}
      LookAndFeel.NativeStyle = True
    end
    object lTipo: TcxLookupComboBox
      Left = 450
      Top = 16
      Width = 179
      Height = 21
      Properties.KeyFieldNames = 'Tipo'
      Properties.ListColumns = <
        item
          FieldName = 'Tipo'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsTipo
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 1
    end
    object deDesde: TcxDateEdit
      Left = 42
      Top = 16
      Width = 121
      Height = 21
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 2
    end
    object deHasta: TcxDateEdit
      Left = 210
      Top = 16
      Width = 121
      Height = 21
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 3
    end
    object lCC: TcxLookupComboBox
      Left = 42
      Top = 42
      Width = 587
      Height = 21
      Properties.KeyFieldNames = 'idCentroCosto'
      Properties.ListColumns = <
        item
          FieldName = 'CentroCostoDesc'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsCC
      Style.LookAndFeel.NativeStyle = True
      TabOrder = 4
    end
  end
  object cxButton1: TcxButton [6]
    Left = 156
    Top = 445
    Width = 129
    Height = 34
    Anchors = [akLeft, akBottom]
    Caption = 'Exportar a excel'
    TabOrder = 4
    OnClick = cxButton1Click
    Glyph.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      2000000000000009000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0097433F0097433F0097433F0097433F00B59A9B00B59A9B00B59A9B00B59A
      9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B009743
      3F0097433F0097433F0097433F00FF00FF00FF00FF00FF00FF00FF00FF009743
      3F00C1696700D0656500C9656400C45C5C00A2747400E9E2E200D5CCCC00D1C0
      BF00E9DAD800F6F0ED00F6F1EF00EBE6E600E3E7E600E3E7E600C27F7E00932B
      2A009A373700B8535300BF5F600097433F00FF00FF00FF00FF00FF00FF009743
      3F00C46C6A00D0656500D0696900CA606100A2565700E9E2E20092292A009229
      2A00BE696700F7EDEA00FFFFFD00FBF8F500F3F8F600F3F8F600C27F7E009227
      27009A363600BB545400C463630097433F00FF00FF00FF00FF00FF00FF009743
      3F00C36B6900D0656500CE686800C85F5F00A35A5A00E9E2E20092292A009229
      2A00C36E6B00EADFDD00FBFAF700FEFAF700FDFFFC00FDFFFF00C27F7E009227
      27009A363600BA545400C362620097433F00FF00FF00FF00FF00FF00FF009743
      3F00C36B6900D0656500CE686800C75E5E00A55B5B00E9E2E20092292A009229
      2A00C36E6B00DACECD00F0EFED00FBF7F500FFFFFF00FDFFFF00C27F7E009227
      27009A363600BA545400C362620097433F00FF00FF00FF00FF00FF00FF009743
      3F00C36B6900D0656500CE686800C75E5E00A75D5C00E9E2E20092292A009229
      2A00C36E6B00C1B4B300DEDEDC00F2EDEA00FFFFFF00FDFFFF00C27F7E009126
      26009B363600BA545400C362620097433F00FF00FF00FF00FF00FF00FF009743
      3F00C36B6900D0656500CE686800C55D5D00A95E5E00E9E2E20092292A009229
      2A00C36E6B00A39B9A00BAC0BF00DDDEDB00FDFFFF00FDFFFF00C27F7E008D22
      220098333300B9535300C362620097433F00FF00FF00FF00FF00FF00FF009743
      3F00C36B6900D0656500CD676700C75F5F00B05B5C00E9E2E200E9E2E200E9E2
      E200E9E2E200E9E2E200E9E2E200E9E2E200E9E2E200E9E2E200C27F7E009B31
      3100A33E3E00BD575700C361620097433F00FF00FF00FF00FF00FF00FF009743
      3F00C36C6900D0656500CD666600CC656400C7616100CD767600D9909000DB94
      9400D88D8E00D9888900D7868600D4828200D1828200CE757500C65F5E00C45B
      5B00C65E5E00CC646400C260610097433F00FF00FF00FF00FF00FF00FF009743
      3F00D0656500D0656500C35F5E00C7666400CB6C6C00CA6B6A00CA686700CA68
      6800CA686800CA686800CA686700CA686700C9676600CA6B6A00CE737200CF76
      7500CF727200CF696900C15F600097433F00FF00FF00FF00FF00FF00FF009743
      3F00D0656500D0656500D6A3A100D6A3A100D7A5A300D8A6A400D8A6A400D8A6
      A400D8A6A400D8A6A400D8A6A400D8A6A500D8A6A500D8A6A500D8A6A400D8A7
      A500D7A6A400CE707000D065650097433F00FF00FF00FF00FF00FF00FF009743
      3F00D0656500D0656500E0C4C200FEFDFD00FEFDFD00FFFEFE00FFFEFE00FFFE
      FE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FEFDFD00FDFC
      FC00E5C7C600C5666600D065650097433F00FF00FF00FF00FF00FF00FF009743
      3F00D0656500D0656500E2C8C600FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00E5C7C700C4646300D065650097433F00FF00FF00FF00FF00FF00FF009743
      3F00D0656500D0656500E2C6C400FEFEFE00FEFEFE00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00FEFEFE00FEFE
      FE00E5C7C600C4646300D065650097433F00FF00FF00FF00FF00FF00FF009743
      3F00D0656500D0656500E2C6C400FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00E5C7C600C4646300D065650097433F00FF00FF00FF00FF00FF00FF009743
      3F00D0656500D0656500E2C6C400FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00E5C7C600C4646300D065650097433F00FF00FF00FF00FF00FF00FF009743
      3F00D0656500D0656500E2C6C400FEFEFE00FEFEFE00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00FEFEFE00FEFE
      FE00E5C7C600C4646300D065650097433F00FF00FF00FF00FF00FF00FF009743
      3F00D0656500D0656500E2C6C400FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00E5C7C600C4646300D065650097433F00FF00FF00FF00FF00FF00FF009743
      3F00D0656500D0656500E2C6C400FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00E5C7C600C4646300D065650097433F00FF00FF00FF00FF00FF00FF009743
      3F00D0656500D0656500E2C7C500FEFEFE00FEFEFE00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00FEFEFE00FEFE
      FE00E5C7C600C5656500D065650097433F00FF00FF00FF00FF00FF00FF009743
      3F00D0656500D0656500DDC2C000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00E5C8C600D0656500D065650097433F00FF00FF00FF00FF00FF00FF00FF00
      FF0097433F0097433F00CFB4B200FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00E7C9C70097433F0097433F00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    DataSet = rs
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'costCCGastoRPT;1'
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
        Name = '@Tipo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@idCentroCosto'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@Desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 260
    Top = 288
    object rsidCentroCosto: TGuidField
      FieldName = 'idCentroCosto'
      FixedChar = True
      Size = 38
    end
    object rsCentroCosto: TStringField
      FieldName = 'CentroCosto'
      Size = 16
    end
    object rsCentroCostoDesc: TStringField
      FieldName = 'CentroCostoDesc'
      Size = 300
    end
    object rsPresupuestado: TBCDField
      FieldName = 'Presupuestado'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsPresupuestadoHijos: TBCDField
      FieldName = 'PresupuestadoHijos'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsGasto: TBCDField
      FieldName = 'Gasto'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsGastoHijos: TBCDField
      FieldName = 'GastoHijos'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsidCentroCostoParent: TGuidField
      FieldName = 'idCentroCostoParent'
      FixedChar = True
      Size = 38
    end
  end
  object Tipo: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'Select'#13#10'  '#39'(Todos)'#39'  as  tipo'#13#10#13#10'union all'#13#10#13#10#13#10'Select '#13#10'  disti' +
      'nct Tipo '#13#10'from '#13#10'  centrocosto'#13#10'Order by'#13#10'  Tipo'#13#10#13#10
    Parameters = <>
    Left = 96
    Top = 168
    object TipoTipo: TStringField
      FieldName = 'Tipo'
      Size = 16
    end
  end
  object dsTipo: TDataSource
    DataSet = Tipo
    Left = 96
    Top = 224
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DS
    UserName = 'DBPipeline1'
    Left = 102
    Top = 302
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
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
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 212
    Top = 154
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 23813
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Color = clNavy
        ParentWidth = True
        Weight = 0.500000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 21696
        mmWidth = 266701
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'CentroCosto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 1323
        mmTop = 17463
        mmWidth = 24342
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'CentroCostoDesc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 33867
        mmTop = 17463
        mmWidth = 93663
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Presupuestado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 129117
        mmTop = 17463
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Pres. Gral.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 191030
        mmTop = 17463
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Gasto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 157957
        mmTop = 17463
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Gasto Gral.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 220398
        mmTop = 17463
        mmWidth = 27517
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        AutoSize = False
        VarType = vtPrintDateTime
        DisplayFormat = 'dd/mm/yyyy @ hh:nn AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 182034
        mmTop = 1588
        mmWidth = 58738
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 185209
        mmTop = 5292
        mmWidth = 55563
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        Caption = 'Reporte de gastos por centro de costo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6085
        mmLeft = 1323
        mmTop = 10848
        mmWidth = 119327
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 18
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 7662
        mmLeft = 1852
        mmTop = 1058
        mmWidth = 107950
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppShape1: TppShape
        OnPrint = ppShape1Print
        UserName = 'Shape1'
        Brush.Color = 15987699
        ParentHeight = True
        ParentWidth = True
        Pen.Style = psClear
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 4
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Color = clSilver
        ParentHeight = True
        Pen.Style = psClear
        mmHeight = 5027
        mmLeft = 220134
        mmTop = 0
        mmWidth = 28575
        BandType = 4
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = clSilver
        ParentHeight = True
        Pen.Style = psClear
        mmHeight = 5027
        mmLeft = 157692
        mmTop = 0
        mmWidth = 27781
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'CentroCosto'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 1323
        mmTop = 529
        mmWidth = 32808
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Presupuestado'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 129117
        mmTop = 529
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'PresupuestadoHijos'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 191030
        mmTop = 529
        mmWidth = 28046
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Gasto'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 157957
        mmTop = 529
        mmWidth = 27252
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'GastoHijos'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 220398
        mmTop = 529
        mmWidth = 27517
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'CentroCostoDesc'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 35190
        mmTop = 529
        mmWidth = 92869
        BandType = 4
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
      mmHeight = 1323
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Color = clGray
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 529
        mmWidth = 266701
        BandType = 8
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object od: TSaveDialog
    DefaultExt = 'xls'
    Filter = 'Archivos de Excel|*.xls'
    Left = 446
    Top = 190
  end
  object rsCentros: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'costLookUpCC'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 394
    Top = 278
    object rsCentrosidCentroCosto: TGuidField
      FieldName = 'idCentroCosto'
      FixedChar = True
      Size = 38
    end
    object rsCentrosCentroCostoDesc: TStringField
      FieldName = 'CentroCostoDesc'
      Size = 300
    end
  end
  object dsCC: TDataSource
    DataSet = rsCentros
    Left = 198
    Top = 224
  end
end

inherited RelacionDocumentos: TRelacionDocumentos
  Left = 345
  Top = 314
  Width = 760
  Height = 556
  BorderIcons = [biMaximize]
  BorderStyle = bsSizeable
  Caption = 'Relacion de documentos'
  Color = 15922418
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Top = 463
    Width = 744
    Align = alNone
    Anchors = [akLeft, akRight, akBottom]
  end
  inherited Gradient2: TGradient
    Width = 752
    Height = 36
    ColorBegin = 15922418
    ColorEnd = 9516803
    Reverse = True
    Style = gsLinearV
  end
  object Label1: TLabel [2]
    Left = 8
    Top = 44
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label2: TLabel [3]
    Left = 8
    Top = 76
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object Label3: TLabel [4]
    Left = 158
    Top = 44
    Width = 24
    Height = 13
    Caption = 'Tipo:'
  end
  object Label4: TLabel [5]
    Left = 400
    Top = 3
    Width = 346
    Height = 27
    Alignment = taRightJustify
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 'Documentos del per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel [6]
    Left = 419
    Top = 44
    Width = 42
    Height = 13
    Caption = 'Moneda:'
  end
  object Label6: TLabel [7]
    Left = 158
    Top = 76
    Width = 22
    Height = 13
    Caption = 'Sup:'
  end
  object deDesde: TcxDateEdit [8]
    Left = 45
    Top = 40
    Width = 104
    Height = 21
    Properties.SaveTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object deHasta: TcxDateEdit [9]
    Left = 45
    Top = 72
    Width = 104
    Height = 21
    Properties.SaveTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object luTipo: TcxLookupComboBox [10]
    Left = 188
    Top = 40
    Width = 215
    Height = 21
    Properties.KeyFieldNames = 'idTrans'
    Properties.ListColumns = <
      item
        FieldName = 'Descripcion'
      end>
    Properties.ListSource = dsTrans
    EditValue = 0
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object cxButton1: TcxButton [11]
    Left = 557
    Top = 61
    Width = 93
    Height = 35
    Caption = 'Mostrar'
    TabOrder = 4
    OnClick = cxButton1Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      A46769A46769A46769A46769A46769A46769A46769A46769A46769A46769A467
      69A46769A46769FF00FFFF00FFFF00FF485360FEE9C7F4DAB5F3D5AAF2D0A0EF
      CB96EFC68BEDC182EBC17FEBC180EBC180F2C782A46769FF00FFFF00FF4380B7
      1F6FC2656B86F3DABCF2D5B1F0D0A7EECB9EEDC793EDC28BE9BD81E9BD7FE9BD
      7FEFC481A46769FF00FFFF00FFFF00FF32A3FF1672D76B6A80F2DABCF2D5B2EF
      D0A9EECB9EEDC796EBC28CE9BD82E9BD7FEFC481A46769FF00FFFF00FFFF00FF
      A0675B34A1FF1572D45E6782F3DABBF2D5B1F0D0A6EECB9EEDC795EBC28AEABF
      81EFC480A46769FF00FFFF00FFFF00FFA7756BFFFBF033A6FF4078AD8E675EAC
      7F7597645EAC7D6FCAA083EDC695EBC28AEFC583A46769FF00FFFF00FFFF00FF
      A7756BFFFFFCFAF0E6AD8A88B78F84D8BAA5EED5B6D7B298B58877CBA083EBC7
      93F2C98CA46769FF00FFFF00FFFF00FFBC8268FFFFFFFEF7F2AF847FDAC0B4F7
      E3CFF6E0C5FFFFF4D7B198AC7D6FEECC9EF3CE97A46769FF00FFFF00FFFF00FF
      BC8268FFFFFFFFFEFC976560F6E9E0F7EADAF6E3CFFFFFEBEFD4B797645EF0D0
      A6F6D3A0A46769FF00FFFF00FFFF00FFD1926DFFFFFFFFFFFFB08884DECAC4FA
      EFE5F8EAD9FFFFD4D9B8A5AC7F74F4D8B1EBCFA4A46769FF00FFFF00FFFF00FF
      D1926DFFFFFFFFFFFFD5BFBCBA9793DECAC4F6E9DEDAC0B4B78F84B28C7BDECE
      B4B6AA93A46769FF00FFFF00FFFF00FFDA9D75FFFFFFFFFFFFFFFFFFD5BFBCB0
      8884976560AF867FCAA79DA56B5FA56B5FA56B5FA46769FF00FFFF00FFFF00FF
      DA9D75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFFFEF7DAC1BAA56B5FE19E
      55E68F31B56D4DFF00FFFF00FFFF00FFE7AB79FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFDCC7C5A56B5FF8B55CBF7A5CFF00FFFF00FFFF00FFFF00FF
      E7AB79FBF4F0FBF4EFFAF3EFFAF3EFF8F2EFF7F2EFF7F2EFD8C2C0A56B5FC183
      6CFF00FFFF00FFFF00FFFF00FFFF00FFE7AB79D1926DD1926DD1926DD1926DD1
      926DD1926DD1926DD1926DA56B5FFF00FFFF00FFFF00FFFF00FF}
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid [12]
    Left = 2
    Top = 101
    Width = 748
    Height = 358
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 6
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = ds
      DataController.KeyFieldNames = 'idDocumento'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'MontoImpuestos'
          Column = cxGrid1DBTableView1Impuestos
        end
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'Total'
          Column = cxGrid1DBTableView1Total
        end>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OnColumnHeaderClick = cxGrid1DBTableView1ColumnHeaderClick
      object cxGrid1DBTableView1Abrev: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'Abrev'
        Width = 54
      end
      object cxGrid1DBTableView1idDocumento: TcxGridDBColumn
        Caption = 'Numero'
        DataBinding.FieldName = 'idDocumento'
        Width = 60
      end
      object cxGrid1DBTableView1Referencia: TcxGridDBColumn
        DataBinding.FieldName = 'Referencia'
        Width = 78
      end
      object cxGrid1DBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Width = 75
      end
      object cxGrid1DBTableView1Nombre: TcxGridDBColumn
        DataBinding.FieldName = 'Nombre'
        Width = 128
      end
      object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
        Caption = 'NCF'
        DataBinding.FieldName = 'CompFiscal'
        Width = 156
      end
      object cxGrid1DBTableView1Moneda: TcxGridDBColumn
        DataBinding.FieldName = 'Moneda'
        Width = 64
      end
      object cxGrid1DBTableView1Total: TcxGridDBColumn
        DataBinding.FieldName = 'Total'
        Width = 116
      end
      object cxGrid1DBTableView1Impuestos: TcxGridDBColumn
        Caption = 'Impuestos'
        DataBinding.FieldName = 'MontoImpuestos'
        Width = 87
      end
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        Caption = 'Clase'
        DataBinding.FieldName = 'ClaseGasto'
        Width = 196
      end
      object cxGrid1DBTableView1Concepto: TcxGridDBColumn
        DataBinding.FieldName = 'Concepto'
        Width = 642
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton2: TcxButton [13]
    Left = 655
    Top = 61
    Width = 93
    Height = 35
    Caption = 'Imprimir'
    TabOrder = 5
    DropDownMenu = PopupMenu1
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
    Kind = cxbkDropDown
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [14]
    Left = 648
    Top = 474
    Width = 93
    Height = 35
    Anchors = [akRight, akBottom]
    Caption = 'Salir'
    TabOrder = 7
    OnClick = cxButton3Click
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C006000000000000000000000000000000000000B4B4B43B3B3B
      9897959F9D94A8A597A8A598A8A597A8A497A8A497A8A497A8A497A8A497A8A4
      97A8A597A9A596A9A596A9A597A9A596A9A596A9A697A9A597A09E959998963B
      3B3BB3B3B3989896FFFFFF687CC90C29A10F2EA21330A51431A41531A31431A6
      1431A71432AA1231A9102FA80D2EAC0C2EAD0B2BA9092BAD092AAD0628AC0625
      A45D71BEFFFFFF999896B3B3B39F9D92677FDD0019B51032C01639C21B3DC41D
      3EC41C3EC21C3EC41A3EC5193DC4163CC6133BC90F39CA0C38CC0934C90631CA
      012FCB002CCA0027C1000CA05E71BEA09E95B3B3B3A8A4920D36D91038D61F43
      D8264BD92B4FDB2F52DB2D50DB2A4FDC244BDB1E48DB1A46DD1746DE1646DF17
      48E11345E10C43E2073CE10238E00032D80027C20525A3A9A597B3B3B3A8A491
      113CE61940DD284CE13053E03558E2395BE33155E23256E25E7CE98098EE8BA2
      F17A97EF5077EB184DE70F46E71248E80B44E8063FE60137E0002CCB0629ACAA
      A697B3B3B3A8A390143FE82046DF3053E1375AE13D5DE43659E35874E8E5EAFB
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3EAFC426EED0643E80E48EA0942E8043A
      E1002DCC0729ADAAA697B3B3B3A7A3901943E8274BE0385BE34162E43C5CE391
      A3EFFFFFFFE3E9FA899FF03E65E61C4CE33461E87B9BF1DBE3FBFFFFFF7396F2
      0340E80C45E8073DE20332CE092BADA9A597B3B3B3A7A2901D47E92D51E13F5F
      E34060E3627CE8FFFFFFDEE4F9496BE6385DE53961E62352E32D5BE71F53E725
      59E8D6E1FBFFFFFF3A6AEC0640E80C41E10934CE0B2DAEA9A596B3B3B3A6A290
      224AE93658E34463E54866E4E9ECFCE5EAFA506FE64466E54365E65C7CEAFFFF
      FF5177EA2A5AE82155E82054E8DAE2FBE2E8FC0F46E61144E10C38CD0E2FAFA9
      A596B3B3B3A6A190284FEB3B5CE34765E4758BEBFFFFFF93A4EF4564E44B6BE5
      4365E65979EAFFFFFF4E73E92A59E62858E81349E77393F0FFFFFE4770EB1042
      E0123BCD1231AEA8A596B3B3B3A5A1902D53EB4463E54A67E596A7F0FFFFFF54
      6FE74F6CE54B69E54264E55777E9FFFFFF4D70E82957E52756E71E4FE51E4FE7
      FFFFFF7996EF1241DF173FCD1534ADA8A497B3B3B3A5A0903257EC4967E54C69
      E6A3B2F2FFFFFF3D5BE3516DE54B68E64262E45675E8FFFFFF4C6EE72854E327
      53E52250E50035E1FFFFFF839DF01643DE1C41CB1736ADA8A497B3B3B3A4A090
      365BEC4F6CE7536EE79BABF0FFFFFF5771E74F6CE54B68E54262E45774E7FFFF
      FF4C6EE62852E32851E4214DE31645E1FFFFFF7D97EF1B45DD1F43CB1A37ADA7
      A497B3B3B3A39F903C5FEE5773E75D78E78095ECFFFFFF97A5F04763E44B67E4
      4260E35672E6FFFFFF4C6AE5284FE12950E31742E06E89EBFFFFFF5B78E9224A
      DC2245CA1B38ACA7A497B3B3B3A39F903E60EE5E78E96780E9617AE7EBEEFCE2
      E6FA546DE74965E54360E35A76E7FFFFFF516EE62A50E1254CE1274EE1DAE1FA
      E4E9FB254CE12A50DD2447CA1D39ACA7A497B3B3B3A29F904365EE657EE9718A
      EB6680E97F94EDFFFFFFE2E5FA506BE5405DE23E5DE2284AE03255E2274CE030
      53E1BEC9F6FFFFFF4E6DE7244AE02E52DE2647C91D3AACA7A497B3B3B3A29E90
      4666EF6A84EA778FEC718AEB5E79E89EAEF1FFFFFFE1E6FA91A1EF4966E5284B
      E03557E17C91ECDCE1FAFFFFFF8096EC2047DF2E52E12F52DE2848CA1D3AABA7
      A497B3B3B3A19E8F4B6BEF778EEC899EEE8197ED738CEA5E79E87D92ECECEEFC
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEDFB5D79E82D50E13659E23356E13153
      DD2445C91A36AAA7A497B3B3B3A09D8F5473F1869BED99AAF18EA2EF7F95EC71
      8BEB6781E9637CE88397ECA3B1F1A7B5F39FAFF18094ED4F6CE64665E44768E4
      4263E53A5DE33153DD2042C81533A9A8A497B3B3B3A09D8F5573F18DA2EFA2B2
      F297A9F1859AED7790EC738BEB6C85E9657FE85F79E75D78E75B76E75B76E85C
      76E75673E7506EE54A67E53D5FE33053DD1C3DC61330A7A7A497B3B3B39B988E
      8A9FF9607BE88CA0EF8298ED728AEA6982E9667FE95D78E85C76E85975E85773
      E65672E7516DE64E6BE54868E54464E43C5DE23154E12449D90226BB6479C99F
      9D94B3B3B3979795FFFFFF8CA1F85070F04E6DF04566EF4062EE4162EE3B5EEE
      3D5FEE3D5FEE3A5DEE3659ED3459ED2F55EC2D53EB2F54EC284EEB2249E91A42
      DF677EDDFFFFFF999896B4B4B43B3B3B9797949A988EA09D8FA19D8FA29E8FA2
      9F8FA39F8FA39F8FA39F8FA39F8FA39F90A4A090A4A090A5A090A5A190A5A190
      A5A190A6A290A6A2919F9C919898953B3B3BF4F4F4B4B4B4B3B3B3B3B3B3B3B3
      B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
      B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B4B4B4}
    LookAndFeel.NativeStyle = True
  end
  object luMoneda: TcxLookupComboBox [15]
    Left = 464
    Top = 40
    Width = 83
    Height = 21
    Properties.KeyFieldNames = 'idMoneda'
    Properties.ListColumns = <
      item
        Sorting = False
        FieldName = 'Moneda'
      end>
    Properties.ListSource = dsMonedas
    EditValue = 0
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  object luSuplidor: TcxLookupComboBox [16]
    Left = 188
    Top = 72
    Width = 260
    Height = 21
    Properties.KeyFieldNames = 'idSuplidor'
    Properties.ListColumns = <
      item
        FieldName = 'Suplidor'
      end>
    Properties.ListSource = dsSuplidores
    EditValue = 0
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 8
  end
  object cxButton4: TcxButton [17]
    Left = 285
    Top = 473
    Width = 93
    Height = 35
    Anchors = [akLeft, akBottom]
    Caption = 'Excel'
    TabOrder = 9
    OnClick = cxButton4Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      A46769A46769A46769A46769A46769A46769A46769A46769A46769A46769A467
      69A46769A46769FF00FFFF00FFFF00FF485360FEE9C7F4DAB5F3D5AAF2D0A0EF
      CB96EFC68BEDC182EBC17FEBC180EBC180F2C782A46769FF00FFFF00FF4380B7
      1F6FC2656B86F3DABCF2D5B1F0D0A7EECB9EEDC793EDC28BE9BD81E9BD7FE9BD
      7FEFC481A46769FF00FFFF00FFFF00FF32A3FF1672D76B6A80F2DABCF2D5B2EF
      D0A9EECB9EEDC796EBC28CE9BD82E9BD7FEFC481A46769FF00FFFF00FFFF00FF
      A0675B34A1FF1572D45E6782F3DABBF2D5B1F0D0A6EECB9EEDC795EBC28AEABF
      81EFC480A46769FF00FFFF00FFFF00FFA7756BFFFBF033A6FF4078AD8E675EAC
      7F7597645EAC7D6FCAA083EDC695EBC28AEFC583A46769FF00FFFF00FFFF00FF
      A7756BFFFFFCFAF0E6AD8A88B78F84D8BAA5EED5B6D7B298B58877CBA083EBC7
      93F2C98CA46769FF00FFFF00FFFF00FFBC8268FFFFFFFEF7F2AF847FDAC0B4F7
      E3CFF6E0C5FFFFF4D7B198AC7D6FEECC9EF3CE97A46769FF00FFFF00FFFF00FF
      BC8268FFFFFFFFFEFC976560F6E9E0F7EADAF6E3CFFFFFEBEFD4B797645EF0D0
      A6F6D3A0A46769FF00FFFF00FFFF00FFD1926DFFFFFFFFFFFFB08884DECAC4FA
      EFE5F8EAD9FFFFD4D9B8A5AC7F74F4D8B1EBCFA4A46769FF00FFFF00FFFF00FF
      D1926DFFFFFFFFFFFFD5BFBCBA9793DECAC4F6E9DEDAC0B4B78F84B28C7BDECE
      B4B6AA93A46769FF00FFFF00FFFF00FFDA9D75FFFFFFFFFFFFFFFFFFD5BFBCB0
      8884976560AF867FCAA79DA56B5FA56B5FA56B5FA46769FF00FFFF00FFFF00FF
      DA9D75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFFFEF7DAC1BAA56B5FE19E
      55E68F31B56D4DFF00FFFF00FFFF00FFE7AB79FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFDCC7C5A56B5FF8B55CBF7A5CFF00FFFF00FFFF00FFFF00FF
      E7AB79FBF4F0FBF4EFFAF3EFFAF3EFF8F2EFF7F2EFF7F2EFD8C2C0A56B5FC183
      6CFF00FFFF00FFFF00FFFF00FFFF00FFE7AB79D1926DD1926DD1926DD1926DD1
      926DD1926DD1926DD1926DA56B5FFF00FFFF00FFFF00FFFF00FF}
    LookAndFeel.NativeStyle = True
  end
  object luCXP: TcxImageComboBox [18]
    Left = 464
    Top = 72
    Width = 84
    Height = 21
    Properties.ImmediatePost = True
    Properties.Items = <
      item
        Description = '(todos)'
        ImageIndex = 0
        Value = -1
      end
      item
        Description = 'C X P'
        Value = 1
      end
      item
        Description = 'Abiertos'
        Value = 0
      end>
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 10
  end
  inherited ds: TDataSource
    DataSet = rsDocs
    Left = 132
    Top = 272
  end
  object rsDocs: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpRelacionDocumentos;1'
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
        Name = '@inicio'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@final'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@idTr'
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
      end
      item
        Name = '@idSuplidor'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@MostrarEnCXP'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 68
    Top = 274
    object rsDocsidDocumento: TIntegerField
      FieldName = 'idDocumento'
      ReadOnly = True
    end
    object rsDocsidTrans: TIntegerField
      FieldName = 'idTrans'
    end
    object rsDocsReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsDocsAbrev: TStringField
      FieldName = 'Abrev'
      Size = 5
    end
    object rsDocsFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsDocsTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 22
      Size = 2
    end
    object rsDocsidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
    end
    object rsDocsNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsDocsBienesServicio: TSmallintField
      FieldName = 'BienesServicio'
    end
    object rsDocsrnc: TStringField
      FieldName = 'rnc'
    end
    object rsDocsMoneda: TStringField
      FieldName = 'Moneda'
      Size = 4
    end
    object rsDocsMontoImpuestos: TBCDField
      FieldName = 'MontoImpuestos'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 19
      Size = 2
    end
    object rsDocsCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object rsDocsClaseGasto: TStringField
      FieldName = 'ClaseGasto'
      Size = 100
    end
    object rsDocsDebCre: TWordField
      FieldName = 'DebCre'
    end
    object rsDocsConcepto: TStringField
      FieldName = 'Concepto'
      Size = 600
    end
  end
  object rsTipos: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select 0 as idTrans, Descripcion = '#39'(todos)'#39#13#10'union'#13#10'select idTr' +
      'ans, descripcion'#13#10'from TiposTrans'#13#10'where sistema = '#39'CXP'#39#13#10'order ' +
      'by 2'
    Parameters = <>
    Left = 188
    Top = 194
    object rsTiposidTrans: TIntegerField
      FieldName = 'idTrans'
      ReadOnly = True
    end
    object rsTiposDescripcion: TStringField
      FieldName = 'Descripcion'
      ReadOnly = True
      Size = 30
    end
  end
  object dsTrans: TDataSource
    DataSet = rsTipos
    Left = 129
    Top = 191
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
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
    AllowPrintToArchive = True
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
    Left = 290
    Top = 266
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 265
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 54769
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Color = clNavy
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 2381
        mmTop = 53446
        mmWidth = 200555
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 49213
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Referencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 18785
        mmTop = 49213
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 40746
        mmTop = 49213
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 54769
        mmTop = 49213
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 78052
        mmTop = 49213
        mmWidth = 98954
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 178330
        mmTop = 49213
        mmWidth = 24871
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Relacion de documentos entre fechas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6879
        mmLeft = 2381
        mmTop = 31485
        mmWidth = 139171
        BandType = 0
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 38894
        mmWidth = 16933
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        AutoSize = False
        VarType = vtPrintDateTime
        DisplayFormat = 'dd/mm/yyyy @ hh:nn AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 155311
        mmTop = 31485
        mmWidth = 47361
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 161925
        mmTop = 35454
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 18
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 7408
        mmLeft = 2381
        mmTop = 0
        mmWidth = 106363
        BandType = 0
      end
      object ppDBText51: TppDBText
        UserName = 'DBText51'
        HyperlinkEnabled = False
        DataField = 'RNC'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 12171
        mmWidth = 44186
        BandType = 0
      end
      object ppDBText52: TppDBText
        UserName = 'DBText52'
        HyperlinkEnabled = False
        DataField = 'Direccion'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 7938
        mmWidth = 105834
        BandType = 0
      end
      object ppDBText53: TppDBText
        UserName = 'DBText53'
        HyperlinkEnabled = False
        DataField = 'Telefono'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 16404
        mmWidth = 29369
        BandType = 0
      end
      object ppDBText54: TppDBText
        UserName = 'DBText54'
        HyperlinkEnabled = False
        DataField = 'Fax'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 31750
        mmTop = 16404
        mmWidth = 31750
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'idDocumento'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 1323
        mmTop = 529
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 17727
        mmTop = 529
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Abrev'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 39688
        mmTop = 529
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 53711
        mmTop = 529
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Nombre'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 76994
        mmTop = 529
        mmWidth = 98954
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 177271
        mmTop = 529
        mmWidth = 24871
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 2381
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 265
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 200555
        BandType = 8
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object Monedas: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 
      'Select 0 as idMoneda, '#39'Todas'#39' as Moneda'#13#10'union'#13#10'select idMoneda,' +
      ' Moneda'#13#10'from Moneda'#13#10'order by 1'
    Parameters = <>
    Left = 248
    Top = 178
  end
  object dsMonedas: TDataSource
    DataSet = Monedas
    Left = 312
    Top = 192
  end
  object ReporteDet: TppReport
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
    PrinterSetup.mmMarginLeft = 8890
    PrinterSetup.mmMarginRight = 8890
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    AllowPrintToArchive = True
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
    Left = 368
    Top = 266
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppTitleBand2: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 265
      mmPrintPosition = 0
    end
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 43921
      mmPrintPosition = 0
      object ppLabel14: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Relacion de documentos entre fechas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6879
        mmLeft = 265
        mmTop = 26723
        mmWidth = 139171
        BandType = 0
      end
      object ppVariable2: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 34131
        mmWidth = 16933
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        AutoSize = False
        VarType = vtPrintDateTime
        DisplayFormat = 'dd/mm/yyyy @ hh:nn AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 212461
        mmTop = 26723
        mmWidth = 47361
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 219075
        mmTop = 30692
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText55: TppDBText
        UserName = 'DBText55'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 18
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 7408
        mmLeft = 1323
        mmTop = 0
        mmWidth = 106363
        BandType = 0
      end
      object ppDBText56: TppDBText
        UserName = 'DBText56'
        HyperlinkEnabled = False
        DataField = 'RNC'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 12171
        mmWidth = 44186
        BandType = 0
      end
      object ppDBText57: TppDBText
        UserName = 'DBText57'
        HyperlinkEnabled = False
        DataField = 'Direccion'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 7938
        mmWidth = 105834
        BandType = 0
      end
      object ppDBText58: TppDBText
        UserName = 'DBText58'
        HyperlinkEnabled = False
        DataField = 'Telefono'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 16404
        mmWidth = 29369
        BandType = 0
      end
      object ppDBText59: TppDBText
        UserName = 'DBText59'
        HyperlinkEnabled = False
        DataField = 'Fax'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 31750
        mmTop = 16404
        mmWidth = 31750
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'idDocumento'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 1323
        mmTop = 529
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 17727
        mmTop = 529
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Abrev'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 39688
        mmTop = 529
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 53711
        mmTop = 529
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Nombre'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 76994
        mmTop = 529
        mmWidth = 79904
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 157163
        mmTop = 529
        mmWidth = 28575
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'MontoImpuestos'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 186267
        mmTop = 529
        mmWidth = 27252
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        DataField = 'Moneda'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 214048
        mmTop = 529
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkEnabled = False
        DataField = 'rnc'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 228865
        mmTop = 529
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkEnabled = False
        DataField = 'BienesServicio'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 254265
        mmTop = 529
        mmWidth = 7144
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppLine4: TppLine
        UserName = 'Line2'
        Pen.Color = clGray
        Pen.Width = 3
        Weight = 2.250000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 1323
        mmWidth = 261409
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 157163
        mmTop = 5027
        mmWidth = 28046
        BandType = 7
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'TOTALES :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 127265
        mmTop = 5027
        mmWidth = 28575
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        DataField = 'MontoImpuestos'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 186002
        mmTop = 5027
        mmWidth = 28046
        BandType = 7
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Pen.Color = clGray
        Pen.Width = 3
        Weight = 2.250000000000000000
        mmHeight = 1588
        mmLeft = 119063
        mmTop = 1588
        mmWidth = 141288
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'Moneda'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppLabel27: TppLabel
          UserName = 'Label27'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Numero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 1323
          mmTop = 265
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
        end
        object ppLabel41: TppLabel
          UserName = 'Label41'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Referencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 17727
          mmTop = 265
          mmWidth = 20373
          BandType = 3
          GroupNo = 0
        end
        object ppLabel56: TppLabel
          UserName = 'Label56'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Tipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 39688
          mmTop = 265
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
        end
        object ppLabel57: TppLabel
          UserName = 'Label57'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Fecha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 53711
          mmTop = 265
          mmWidth = 22225
          BandType = 3
          GroupNo = 0
        end
        object ppLabel58: TppLabel
          UserName = 'Label58'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Nombre'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 76994
          mmTop = 265
          mmWidth = 79904
          BandType = 3
          GroupNo = 0
        end
        object ppLabel59: TppLabel
          UserName = 'Label59'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 157163
          mmTop = 265
          mmWidth = 28575
          BandType = 3
          GroupNo = 0
        end
        object ppLabel60: TppLabel
          UserName = 'Label60'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Impuestos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 186267
          mmTop = 265
          mmWidth = 27252
          BandType = 3
          GroupNo = 0
        end
        object ppLabel61: TppLabel
          UserName = 'Label61'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Moneda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 214048
          mmTop = 265
          mmWidth = 14288
          BandType = 3
          GroupNo = 0
        end
        object ppLabel62: TppLabel
          UserName = 'Label62'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'RNC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 228865
          mmTop = 265
          mmWidth = 24871
          BandType = 3
          GroupNo = 0
        end
        object ppLabel63: TppLabel
          UserName = 'Label63'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'B/S'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 252678
          mmTop = 265
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
        end
        object ppLine3: TppLine
          UserName = 'Line1'
          Pen.Color = clNavy
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 529
          mmLeft = 0
          mmTop = 4233
          mmWidth = 260086
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          HyperlinkEnabled = False
          DataField = 'Total'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 157163
          mmTop = 3175
          mmWidth = 28046
          BandType = 5
          GroupNo = 0
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'SUB TOTALES :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 127265
          mmTop = 2910
          mmWidth = 28575
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc7'
          HyperlinkEnabled = False
          DataField = 'MontoImpuestos'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 186002
          mmTop = 3175
          mmWidth = 28046
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = ds
    UserName = 'DBPipeline1'
    Left = 204
    Top = 270
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'idDocumento'
      FieldName = 'idDocumento'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'idTrans'
      FieldName = 'idTrans'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'Abrev'
      FieldName = 'Abrev'
      FieldLength = 5
      DisplayWidth = 5
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 23
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'idSuplidor'
      FieldName = 'idSuplidor'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 100
      DisplayWidth = 100
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'BienesServicio'
      FieldName = 'BienesServicio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'rnc'
      FieldName = 'rnc'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'Moneda'
      FieldName = 'Moneda'
      FieldLength = 4
      DisplayWidth = 4
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'MontoImpuestos'
      FieldName = 'MontoImpuestos'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'CompFiscal'
      FieldName = 'CompFiscal'
      FieldLength = 19
      DisplayWidth = 19
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'ClaseGasto'
      FieldName = 'ClaseGasto'
      FieldLength = 100
      DisplayWidth = 100
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'DebCre'
      FieldName = 'DebCre'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 14
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'Concepto'
      FieldName = 'Concepto'
      FieldLength = 600
      DisplayWidth = 600
      Position = 15
    end
  end
  object rsDocsCodif: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpRelDocsCtas;1'
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
        Name = '@inicio'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@final'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@idTr'
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
      end
      item
        Name = '@idSuplidor'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@MostrarEnCXP'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 68
    Top = 324
    object rsDocsCodifidDocumento: TIntegerField
      FieldName = 'idDocumento'
      ReadOnly = True
    end
    object rsDocsCodifidTrans: TIntegerField
      FieldName = 'idTrans'
    end
    object rsDocsCodifReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsDocsCodifAbrev: TStringField
      FieldName = 'Abrev'
      Size = 5
    end
    object rsDocsCodifFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsDocsCodifTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 22
      Size = 2
    end
    object rsDocsCodifidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
    end
    object rsDocsCodifNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsDocsCodifidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsDocsCodifDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 60
    end
    object rsDocsCodifDebito: TBCDField
      FieldName = 'Debito'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsDocsCodifCredito: TBCDField
      FieldName = 'Credito'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsDocsCodifMovimiento: TBCDField
      FieldName = 'Movimiento'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsDocsCodifrnc: TStringField
      FieldName = 'rnc'
    end
    object rsDocsCodifMoneda: TStringField
      FieldName = 'Moneda'
    end
    object rsDocsCodifCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object rsDocsCodifClaseGasto: TStringField
      FieldName = 'ClaseGasto'
      Size = 100
    end
    object rsDocsCodifDebCre: TWordField
      FieldName = 'DebCre'
    end
    object rsDocsCodifConcepto: TStringField
      FieldName = 'Concepto'
      Size = 600
    end
    object rsDocsCodifNeto: TBCDField
      FieldName = 'Neto'
      ReadOnly = True
      Precision = 22
      Size = 2
    end
    object rsDocsCodifTasa: TBCDField
      FieldName = 'Tasa'
      Precision = 18
      Size = 2
    end
  end
  object dsCodif: TDataSource
    DataSet = rsDocsCodif
    Left = 130
    Top = 326
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = dsCodif
    UserName = 'DBPipeline2'
    Left = 202
    Top = 324
  end
  object ReportCodif: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
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
    AllowPrintToArchive = True
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
    Left = 294
    Top = 320
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppTitleBand3: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 265
      mmPrintPosition = 0
    end
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 41010
      mmPrintPosition = 0
      object ppLabel20: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Relacion de documentos entre fechas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6085
        mmLeft = 0
        mmTop = 24871
        mmWidth = 139171
        BandType = 0
      end
      object ppVariable3: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 32279
        mmWidth = 16933
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        AutoSize = False
        VarType = vtPrintDateTime
        DisplayFormat = 'dd/mm/yyyy @ hh:nn AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 153459
        mmTop = 15610
        mmWidth = 47361
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 160073
        mmTop = 19579
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 18
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 106363
        BandType = 0
      end
      object ppDBText60: TppDBText
        UserName = 'DBText60'
        HyperlinkEnabled = False
        DataField = 'RNC'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 12171
        mmWidth = 44186
        BandType = 0
      end
      object ppDBText61: TppDBText
        UserName = 'DBText61'
        HyperlinkEnabled = False
        DataField = 'Direccion'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 7938
        mmWidth = 105834
        BandType = 0
      end
      object ppDBText62: TppDBText
        UserName = 'DBText62'
        HyperlinkEnabled = False
        DataField = 'Telefono'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 16404
        mmWidth = 29369
        BandType = 0
      end
      object ppDBText63: TppDBText
        UserName = 'DBText63'
        HyperlinkEnabled = False
        DataField = 'Fax'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 31750
        mmTop = 16404
        mmWidth = 31750
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText17: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'idCuenta'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 265
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        DataField = 'Descripcion'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 23283
        mmTop = 265
        mmWidth = 98954
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText15'
        HyperlinkEnabled = False
        DataField = 'Debito'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 130440
        mmTop = 265
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText16'
        HyperlinkEnabled = False
        DataField = 'Credito'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 158486
        mmTop = 265
        mmWidth = 24871
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'idDocumento'
      DataPipeline = ppDBPipeline2
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 32544
        mmPrintPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Brush.Color = 15987699
          ParentHeight = True
          ParentWidth = True
          Pen.Color = clSilver
          mmHeight = 32544
          mmLeft = 0
          mmTop = 0
          mmWidth = 203200
          BandType = 3
          GroupNo = 0
        end
        object ppDBText21: TppDBText
          UserName = 'DBText1'
          HyperlinkEnabled = False
          DataField = 'idSuplidor'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 3175
          mmLeft = 27781
          mmTop = 6085
          mmWidth = 19579
          BandType = 3
          GroupNo = 0
        end
        object ppDBText22: TppDBText
          UserName = 'DBText2'
          HyperlinkEnabled = False
          DataField = 'Referencia'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 3175
          mmLeft = 52652
          mmTop = 10583
          mmWidth = 20373
          BandType = 3
          GroupNo = 0
        end
        object ppDBText24: TppDBText
          UserName = 'DBText4'
          HyperlinkEnabled = False
          DataField = 'Fecha'
          DataPipeline = ppDBPipeline2
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 3175
          mmLeft = 1588
          mmTop = 5821
          mmWidth = 22225
          BandType = 3
          GroupNo = 0
        end
        object ppDBText25: TppDBText
          UserName = 'DBText5'
          HyperlinkEnabled = False
          DataField = 'Nombre'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 3175
          mmLeft = 52917
          mmTop = 6085
          mmWidth = 110331
          BandType = 3
          GroupNo = 0
        end
        object ppDBText26: TppDBText
          UserName = 'DBText6'
          HyperlinkEnabled = False
          DataField = 'Neto'
          DataPipeline = ppDBPipeline2
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 3440
          mmLeft = 16404
          mmTop = 15875
          mmWidth = 24077
          BandType = 3
          GroupNo = 0
        end
        object ppLabel21: TppLabel
          UserName = 'Label16'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Cuenta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 1058
          mmTop = 27517
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
        end
        object ppLabel22: TppLabel
          UserName = 'Label17'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Descripcion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 23283
          mmTop = 27517
          mmWidth = 22754
          BandType = 3
          GroupNo = 0
        end
        object ppLabel23: TppLabel
          UserName = 'Label18'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Debito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 142611
          mmTop = 27517
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
        end
        object ppLabel24: TppLabel
          UserName = 'Label19'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Credito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 164571
          mmTop = 27517
          mmWidth = 18785
          BandType = 3
          GroupNo = 0
        end
        object ppLine5: TppLine
          UserName = 'Line1'
          Pen.Color = clSilver
          ParentWidth = True
          Weight = 0.500000000000000000
          mmHeight = 529
          mmLeft = 0
          mmTop = 4763
          mmWidth = 203200
          BandType = 3
          GroupNo = 0
        end
        object ppLabel25: TppLabel
          UserName = 'Label2'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'ID SUP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 27781
          mmTop = 794
          mmWidth = 19579
          BandType = 3
          GroupNo = 0
        end
        object ppLabel26: TppLabel
          UserName = 'Label3'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'DOCUMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 27781
          mmTop = 10583
          mmWidth = 22225
          BandType = 3
          GroupNo = 0
        end
        object ppLabel28: TppLabel
          UserName = 'Label5'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Fecha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 1588
          mmTop = 529
          mmWidth = 22225
          BandType = 3
          GroupNo = 0
        end
        object ppLabel29: TppLabel
          UserName = 'Label6'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Nombre'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 52917
          mmTop = 794
          mmWidth = 110331
          BandType = 3
          GroupNo = 0
        end
        object ppLabel30: TppLabel
          UserName = 'Label7'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 1588
          mmTop = 15875
          mmWidth = 14023
          BandType = 3
          GroupNo = 0
        end
        object ppLabel40: TppLabel
          UserName = 'Label40'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'RNC:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 168805
          mmTop = 794
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
        end
        object ppLabel42: TppLabel
          UserName = 'Label42'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'NCF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 75936
          mmTop = 10583
          mmWidth = 9260
          BandType = 3
          GroupNo = 0
        end
        object ppLine8: TppLine
          UserName = 'Line8'
          Pen.Color = clSilver
          ParentWidth = True
          Weight = 0.500000000000000000
          mmHeight = 529
          mmLeft = 0
          mmTop = 9790
          mmWidth = 203200
          BandType = 3
          GroupNo = 0
        end
        object ppDBText36: TppDBText
          UserName = 'DBText36'
          HyperlinkEnabled = False
          DataField = 'rnc'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 3704
          mmLeft = 168805
          mmTop = 6085
          mmWidth = 27252
          BandType = 3
          GroupNo = 0
        end
        object ppDBText38: TppDBText
          UserName = 'DBText38'
          HyperlinkEnabled = False
          DataField = 'CompFiscal'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 3704
          mmLeft = 85990
          mmTop = 10583
          mmWidth = 58738
          BandType = 3
          GroupNo = 0
        end
        object ppLine9: TppLine
          UserName = 'Line9'
          Pen.Color = clSilver
          ParentWidth = True
          Weight = 0.500000000000000000
          mmHeight = 529
          mmLeft = 0
          mmTop = 15346
          mmWidth = 203200
          BandType = 3
          GroupNo = 0
        end
        object ppDBText49: TppDBText
          UserName = 'DBText7'
          HyperlinkEnabled = False
          DataField = 'Moneda'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 3440
          mmLeft = 1852
          mmTop = 10583
          mmWidth = 23019
          BandType = 3
          GroupNo = 0
        end
        object ppDBText50: TppDBText
          UserName = 'DBText50'
          HyperlinkEnabled = False
          DataField = 'Tasa'
          DataPipeline = ppDBPipeline2
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 3440
          mmLeft = 16404
          mmTop = 20638
          mmWidth = 24077
          BandType = 3
          GroupNo = 0
        end
        object ppLabel55: TppLabel
          UserName = 'Label55'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Tasa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 1588
          mmTop = 20638
          mmWidth = 14023
          BandType = 3
          GroupNo = 0
        end
        object ppDBMemo1: TppDBMemo
          UserName = 'DBMemo1'
          CharWrap = False
          DataField = 'Concepto'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          RemoveEmptyLines = False
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 9260
          mmLeft = 78052
          mmTop = 16669
          mmWidth = 122767
          BandType = 3
          GroupNo = 0
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          mmLeading = 0
        end
        object ppLine12: TppLine
          UserName = 'Line12'
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 26194
          mmWidth = 201348
          BandType = 3
          GroupNo = 0
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 10848
          mmLeft = 77523
          mmTop = 16404
          mmWidth = 1058
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape2'
          Brush.Color = 15987699
          ParentHeight = True
          ParentWidth = True
          Pen.Color = clSilver
          mmHeight = 5292
          mmLeft = 0
          mmTop = 0
          mmWidth = 203200
          BandType = 5
          GroupNo = 0
        end
        object ppLabel31: TppLabel
          UserName = 'Label15'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Descuadre:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 1323
          mmTop = 794
          mmWidth = 19315
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Movimiento'
          DataPipeline = ppDBPipeline2
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 3440
          mmLeft = 168805
          mmTop = 794
          mmWidth = 33338
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object Suplidores: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 
      'Select'#13#10'  0 as idSuplidor, '#39'(Todos)'#39' as Suplidor'#13#10#13#10'union'#13#10#13#10'Sel' +
      'ect '#13#10'  idSuplidor, Nombre '#13#10'from'#13#10'  cxpSuplidores'#13#10'Order by'#13#10'  ' +
      '2'
    Parameters = <>
    Left = 384
    Top = 192
    object SuplidoresidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
      ReadOnly = True
    end
    object SuplidoresSuplidor: TStringField
      FieldName = 'Suplidor'
      ReadOnly = True
      Size = 100
    end
  end
  object dsSuplidores: TDataSource
    DataSet = Suplidores
    Left = 456
    Top = 192
  end
  object ReportNCF: TppReport
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
    AllowPrintToArchive = True
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
    Left = 512
    Top = 256
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppTitleBand4: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 265
      mmPrintPosition = 0
    end
    object ppHeaderBand4: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 41540
      mmPrintPosition = 0
      object ppLine6: TppLine
        UserName = 'Line1'
        Pen.Color = clNavy
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 40481
        mmWidth = 266701
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 36248
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Referencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 17727
        mmTop = 36248
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 39688
        mmTop = 36248
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 53711
        mmTop = 36248
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Nombre / RNC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 76994
        mmTop = 36248
        mmWidth = 98954
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 176742
        mmTop = 36248
        mmWidth = 24871
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Relacion de documentos entre fechas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6879
        mmLeft = 0
        mmTop = 23019
        mmWidth = 139171
        BandType = 0
      end
      object ppVariable4: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 30427
        mmWidth = 16933
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        AutoSize = False
        VarType = vtPrintDateTime
        DisplayFormat = 'dd/mm/yyyy @ hh:nn AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 214578
        mmTop = 23283
        mmWidth = 47361
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 221192
        mmTop = 27252
        mmWidth = 40746
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'NCF / Clase gasto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 203730
        mmTop = 36248
        mmWidth = 52388
        BandType = 0
      end
      object ppDBText69: TppDBText
        UserName = 'DBText69'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 18
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 106363
        BandType = 0
      end
      object ppDBText70: TppDBText
        UserName = 'DBText70'
        HyperlinkEnabled = False
        DataField = 'RNC'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 12171
        mmWidth = 44186
        BandType = 0
      end
      object ppDBText71: TppDBText
        UserName = 'DBText71'
        HyperlinkEnabled = False
        DataField = 'Direccion'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 7938
        mmWidth = 105834
        BandType = 0
      end
      object ppDBText72: TppDBText
        UserName = 'DBText72'
        HyperlinkEnabled = False
        DataField = 'Telefono'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 16404
        mmWidth = 29369
        BandType = 0
      end
      object ppDBText73: TppDBText
        UserName = 'DBText73'
        HyperlinkEnabled = False
        DataField = 'Fax'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 31750
        mmTop = 16404
        mmWidth = 31750
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 8202
      mmPrintPosition = 0
      object ppShape3: TppShape
        OnPrint = ppShape3Print
        UserName = 'Shape3'
        Brush.Color = 15724527
        ParentHeight = True
        ParentWidth = True
        Pen.Style = psClear
        mmHeight = 8202
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'idDocumento'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 1323
        mmTop = 529
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 17727
        mmTop = 529
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Abrev'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 39688
        mmTop = 529
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 53711
        mmTop = 529
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Nombre'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 76994
        mmTop = 529
        mmWidth = 98954
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 176742
        mmTop = 529
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        HyperlinkEnabled = False
        DataField = 'CompFiscal'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 203730
        mmTop = 529
        mmWidth = 52388
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        HyperlinkEnabled = False
        DataField = 'rnc'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 76994
        mmTop = 4233
        mmWidth = 98954
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        HyperlinkEnabled = False
        DataField = 'ClaseGasto'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 203730
        mmTop = 4233
        mmWidth = 52388
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 1588
      mmPrintPosition = 0
      object ppLine7: TppLine
        UserName = 'Line2'
        Pen.Color = clGray
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 1323
        mmWidth = 266701
        BandType = 8
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    object StyleNONCF: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15782337
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object StyleNCF: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 568
    Top = 202
    object Documentos1: TMenuItem
      Caption = 'Documentos'
      OnClick = Documentos1Click
    end
    object DocumentoNCFs1: TMenuItem
      Caption = 'Documento/NCFs'
      OnClick = DocumentoNCFs1Click
    end
    object DocumentosconCodificacion1: TMenuItem
      Caption = 'Documentos con Codificacion'
      OnClick = DocumentosconCodificacion1Click
    end
    object Reportedetallado1: TMenuItem
      Caption = 'Reporte detallado'
      OnClick = Reportedetallado1Click
    end
  end
  object ReporteRets: TppReport
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
    PrinterSetup.mmMarginLeft = 8890
    PrinterSetup.mmMarginRight = 8890
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    AllowPrintToArchive = True
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
    Left = 374
    Top = 326
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppTitleBand5: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 265
      mmPrintPosition = 0
    end
    object ppHeaderBand5: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 43392
      mmPrintPosition = 0
      object ppLine10: TppLine
        UserName = 'Line1'
        Pen.Color = clNavy
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 794
        mmTop = 42598
        mmWidth = 260086
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 794
        mmTop = 38365
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Referencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 17198
        mmTop = 38365
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 39158
        mmTop = 38365
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 53181
        mmTop = 38365
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 76465
        mmTop = 38365
        mmWidth = 68792
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 146844
        mmTop = 38365
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Relacion de Pagos/Retenciones entre fechas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6879
        mmLeft = 794
        mmTop = 25135
        mmWidth = 139171
        BandType = 0
      end
      object ppVariable5: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 32544
        mmWidth = 16933
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        AutoSize = False
        VarType = vtPrintDateTime
        DisplayFormat = 'dd/mm/yyyy @ hh:nn AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 212725
        mmTop = 25135
        mmWidth = 47361
        BandType = 0
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 219340
        mmTop = 29104
        mmWidth = 40746
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label15'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Impuestos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 176477
        mmTop = 38365
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label16'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Moneda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 213519
        mmTop = 38365
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label17'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'RNC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 228336
        mmTop = 38365
        mmWidth = 24871
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label18'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'B/S'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 253736
        mmTop = 38365
        mmWidth = 7144
        BandType = 0
      end
      object ppDBText64: TppDBText
        UserName = 'DBText64'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 18
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 7408
        mmLeft = 794
        mmTop = 0
        mmWidth = 106363
        BandType = 0
      end
      object ppDBText65: TppDBText
        UserName = 'DBText65'
        HyperlinkEnabled = False
        DataField = 'RNC'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 794
        mmTop = 12171
        mmWidth = 44186
        BandType = 0
      end
      object ppDBText66: TppDBText
        UserName = 'DBText66'
        HyperlinkEnabled = False
        DataField = 'Direccion'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 794
        mmTop = 7938
        mmWidth = 105834
        BandType = 0
      end
      object ppDBText67: TppDBText
        UserName = 'DBText67'
        HyperlinkEnabled = False
        DataField = 'Telefono'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 794
        mmTop = 16404
        mmWidth = 29369
        BandType = 0
      end
      object ppDBText68: TppDBText
        UserName = 'DBText68'
        HyperlinkEnabled = False
        DataField = 'Fax'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 32279
        mmTop = 16404
        mmWidth = 31750
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText39: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'idDocumento'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 1323
        mmTop = 529
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 17727
        mmTop = 529
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Abrev'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 39688
        mmTop = 529
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 53711
        mmTop = 529
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Nombre'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 76994
        mmTop = 529
        mmWidth = 68792
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 147373
        mmTop = 529
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'MontoImpuestos'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3302
        mmLeft = 177007
        mmTop = 529
        mmWidth = 27252
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        DataField = 'Moneda'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 214048
        mmTop = 529
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText47: TppDBText
        UserName = 'DBText15'
        HyperlinkEnabled = False
        DataField = 'rnc'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 228865
        mmTop = 529
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText48: TppDBText
        UserName = 'DBText16'
        HyperlinkEnabled = False
        DataField = 'BienesServicio'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 254265
        mmTop = 529
        mmWidth = 7144
        BandType = 4
      end
    end
    object ppFooterBand5: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppLine11: TppLine
        UserName = 'Line2'
        Pen.Color = clGray
        Pen.Width = 3
        Weight = 2.250000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 1323
        mmWidth = 261409
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3810
        mmLeft = 156898
        mmTop = 1058
        mmWidth = 28046
        BandType = 7
      end
      object ppLabel54: TppLabel
        UserName = 'Label19'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'TOTALES :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3852
        mmLeft = 127000
        mmTop = 1058
        mmWidth = 28575
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        DataField = 'MontoImpuestos'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3810
        mmLeft = 185738
        mmTop = 1058
        mmWidth = 28046
        BandType = 7
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
  object sd: TSaveDialog
    Left = 262
    Top = 226
  end
end

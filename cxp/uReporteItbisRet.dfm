inherited ReporteItbisRet: TReporteItbisRet
  Left = 416
  Top = 224
  Caption = 'Reporte de itbis retenido a terceros'
  ClientHeight = 464
  ClientWidth = 762
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 4
    Top = 14
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label2: TLabel [1]
    Left = 170
    Top = 14
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object deDesde: TcxDateEdit [2]
    Left = 41
    Top = 10
    Width = 104
    Height = 21
    Properties.SaveTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object deHasta: TcxDateEdit [3]
    Left = 207
    Top = 10
    Width = 104
    Height = 21
    Properties.SaveTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object cxButton1: TcxButton [4]
    Left = 446
    Top = 3
    Width = 93
    Height = 35
    Caption = 'Mostrar'
    TabOrder = 2
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
  object cxButton2: TcxButton [5]
    Left = 544
    Top = 3
    Width = 93
    Height = 35
    Caption = 'Imprimir'
    TabOrder = 3
    OnClick = cxButton2Click
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
  object cxGrid1: TcxGrid [6]
    Left = 6
    Top = 44
    Width = 754
    Height = 373
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 4
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.KeyFieldNames = 'keyfield'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'MontoImpuestos'
        end
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'Total'
        end>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OnCellClick = cxGrid1DBTableView1CellClick
      OptionsData.Editing = False
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1rnc_cedula: TcxGridDBColumn
        Caption = 'RNC/Cedula'
        DataBinding.FieldName = 'rnc_cedula'
        Width = 84
      end
      object cxGrid1DBTableView1tipo_identificacion: TcxGridDBColumn
        Caption = 'Tipo ID'
        DataBinding.FieldName = 'tipo_identificacion'
        Width = 60
      end
      object cxGrid1DBTableView1suplidor: TcxGridDBColumn
        Caption = 'Suplidor'
        DataBinding.FieldName = 'suplidor'
        Width = 216
      end
      object cxGrid1DBTableView1tipo_compra: TcxGridDBColumn
        Caption = 'Clase'
        DataBinding.FieldName = 'tipo_compra'
        Width = 50
      end
      object cxGrid1DBTableView1compfiscal: TcxGridDBColumn
        Caption = 'NCF'
        DataBinding.FieldName = 'compfiscal'
        Width = 125
      end
      object cxGrid1DBTableView1compfiscal_modif: TcxGridDBColumn
        Caption = 'NCF Modificado'
        DataBinding.FieldName = 'compfiscal_modif'
        Visible = False
      end
      object cxGrid1DBTableView1fecha_compfiscal: TcxGridDBColumn
        Caption = 'Fecha NCF'
        DataBinding.FieldName = 'fecha_compfiscal'
        Width = 86
      end
      object cxGrid1DBTableView1fecha_pago: TcxGridDBColumn
        Caption = 'Fecha Pago'
        DataBinding.FieldName = 'fecha_pago'
        Width = 81
      end
      object cxGrid1DBTableView1itbis_facturado: TcxGridDBColumn
        Caption = 'Itibs Fact'
        DataBinding.FieldName = 'itbis_facturado'
        Width = 82
      end
      object cxGrid1DBTableView1itbis_retenido: TcxGridDBColumn
        Caption = 'Itbis Ret'
        DataBinding.FieldName = 'itbis_retenido'
        Width = 73
      end
      object cxGrid1DBTableView1monto_facturado: TcxGridDBColumn
        Caption = 'Total factura'
        DataBinding.FieldName = 'monto_facturado'
        Width = 92
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton3: TcxButton [7]
    Left = 4
    Top = 425
    Width = 93
    Height = 35
    Anchors = [akLeft, akBottom]
    Caption = 'Salir'
    TabOrder = 5
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
  object cxButton4: TcxButton [8]
    Left = 667
    Top = 3
    Width = 93
    Height = 35
    Caption = 'Excel'
    TabOrder = 6
    OnClick = cxButton4Click
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
  inherited DS: TwwDataSource
    DataSet = rs
    Left = 331
    Top = 301
  end
  object rs: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpReporteItbisRet;1'
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
        Name = '@desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 326
    Top = 188
    object rskeyfield: TGuidField
      FieldName = 'keyfield'
      FixedChar = True
      Size = 38
    end
    object rsrnc_cedula: TStringField
      FieldName = 'rnc_cedula'
      Size = 11
    end
    object rstipo_identificacion: TIntegerField
      FieldName = 'tipo_identificacion'
    end
    object rssuplidor: TStringField
      FieldName = 'suplidor'
      Size = 100
    end
    object rstipo_compra: TStringField
      FieldName = 'tipo_compra'
      Size = 2
    end
    object rscompfiscal: TStringField
      FieldName = 'compfiscal'
      Size = 19
    end
    object rscompfiscal_modif: TStringField
      FieldName = 'compfiscal_modif'
      Size = 19
    end
    object rsfecha_compfiscal: TDateTimeField
      FieldName = 'fecha_compfiscal'
    end
    object rsfecha_pago: TDateTimeField
      FieldName = 'fecha_pago'
    end
    object rsitbis_facturado: TBCDField
      FieldName = 'itbis_facturado'
      Precision = 19
      Size = 2
    end
    object rsitbis_retenido: TBCDField
      FieldName = 'itbis_retenido'
      Precision = 19
      Size = 2
    end
    object rsmonto_facturado: TBCDField
      FieldName = 'monto_facturado'
      Precision = 19
      Size = 2
    end
  end
  object ReporteRets: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
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
    DataPipelineName = 'ppDBPipeline2'
    object ppTitleBand5: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 265
      mmPrintPosition = 0
    end
    object ppHeaderBand5: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 18256
      mmPrintPosition = 0
      object ppLine10: TppLine
        UserName = 'Line1'
        Pen.Color = clNavy
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 1323
        mmTop = 17727
        mmWidth = 260086
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'NCF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 13494
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label3'
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
        mmLeft = 17727
        mmTop = 13494
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Clase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 39688
        mmTop = 13494
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label5'
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
        mmLeft = 53711
        mmTop = 13494
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
        mmLeft = 76994
        mmTop = 13494
        mmWidth = 68792
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total Fact'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 147373
        mmTop = 13494
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
        mmLeft = 1058
        mmTop = 265
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
        OnCalc = ppVariable5Calc
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 7673
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
        mmLeft = 213255
        mmTop = 265
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
        mmLeft = 219869
        mmTop = 4233
        mmWidth = 40746
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label15'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Itbis'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 177007
        mmTop = 13494
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label16'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Itbis Ret'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 214842
        mmTop = 13494
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 229923
        mmTop = 13494
        mmWidth = 27517
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
        DataField = 'compfiscal'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3302
        mmLeft = 1323
        mmTop = 529
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'fecha_compfiscal'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3302
        mmLeft = 17727
        mmTop = 529
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'tipo_compra'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3302
        mmLeft = 39688
        mmTop = 529
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'rnc_cedula'
        DataPipeline = ppDBPipeline2
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3302
        mmLeft = 53711
        mmTop = 529
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'suplidor'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 76994
        mmTop = 529
        mmWidth = 68792
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'monto_facturado'
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
        mmHeight = 3302
        mmLeft = 147373
        mmTop = 529
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'itbis_facturado'
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
        mmHeight = 3302
        mmLeft = 177007
        mmTop = 529
        mmWidth = 27252
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        DataField = 'itbis_retenido'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 206905
        mmTop = 529
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'fecha_pago'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 229923
        mmTop = 529
        mmWidth = 27517
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
        DataField = 'monto_facturado'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3704
        mmLeft = 146844
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
        mmHeight = 3969
        mmLeft = 19050
        mmTop = 265
        mmWidth = 28575
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        DataField = 'itbis_facturado'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3704
        mmLeft = 176213
        mmTop = 1058
        mmWidth = 28046
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        DataField = 'itbis_retenido'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3704
        mmLeft = 205846
        mmTop = 1058
        mmWidth = 23283
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DS
    UserName = 'DBPipeline2'
    Left = 202
    Top = 324
    object ppDBPipeline2ppField1: TppField
      FieldAlias = 'keyfield'
      FieldName = 'keyfield'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'rnc_cedula'
      FieldName = 'rnc_cedula'
      FieldLength = 11
      DisplayWidth = 11
      Position = 1
    end
    object ppDBPipeline2ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'tipo_identificacion'
      FieldName = 'tipo_identificacion'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipeline2ppField4: TppField
      FieldAlias = 'suplidor'
      FieldName = 'suplidor'
      FieldLength = 100
      DisplayWidth = 100
      Position = 3
    end
    object ppDBPipeline2ppField5: TppField
      FieldAlias = 'tipo_compra'
      FieldName = 'tipo_compra'
      FieldLength = 2
      DisplayWidth = 2
      Position = 4
    end
    object ppDBPipeline2ppField6: TppField
      FieldAlias = 'compfiscal'
      FieldName = 'compfiscal'
      FieldLength = 19
      DisplayWidth = 19
      Position = 5
    end
    object ppDBPipeline2ppField7: TppField
      FieldAlias = 'compfiscal_modif'
      FieldName = 'compfiscal_modif'
      FieldLength = 19
      DisplayWidth = 19
      Position = 6
    end
    object ppDBPipeline2ppField8: TppField
      FieldAlias = 'fecha_compfiscal'
      FieldName = 'fecha_compfiscal'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 7
    end
    object ppDBPipeline2ppField9: TppField
      FieldAlias = 'fecha_pago'
      FieldName = 'fecha_pago'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 8
    end
    object ppDBPipeline2ppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'itbis_facturado'
      FieldName = 'itbis_facturado'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 9
    end
    object ppDBPipeline2ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'itbis_retenido'
      FieldName = 'itbis_retenido'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 10
    end
    object ppDBPipeline2ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'monto_facturado'
      FieldName = 'monto_facturado'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 11
    end
  end
  object sd: TSaveDialog
    DefaultExt = 'xls'
    FileName = 'RetencionesItbis.xls'
    Left = 390
    Top = 220
  end
end

inherited PagoACH: TPagoACH
  Left = 287
  Top = 173
  Caption = 'Pagos ACH'
  ClientWidth = 718
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Width = 718
  end
  inherited Gradient2: TGradient
    Width = 718
  end
  object Label1: TLabel [2]
    Left = 8
    Top = 39
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label2: TLabel [3]
    Left = 8
    Top = 63
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object Gradient3: TGradient [4]
    Left = 4
    Top = 413
    Width = 711
    Height = 6
    Align = alCustom
    ColorBegin = 16741666
    ColorEnd = 14870499
    Style = gsReflectedH
  end
  object Gradient4: TGradient [5]
    Left = 4
    Top = 83
    Width = 711
    Height = 6
    Align = alCustom
    ColorBegin = 16741666
    ColorEnd = 14870499
    Style = gsReflectedH
  end
  object Label3: TLabel [6]
    Left = 610
    Top = 6
    Width = 104
    Height = 23
    Caption = 'Pagos ACH'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object deDesde: TcxDateEdit [7]
    Left = 45
    Top = 35
    Width = 104
    Height = 21
    Properties.SaveTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object deHasta: TcxDateEdit [8]
    Left = 45
    Top = 59
    Width = 104
    Height = 21
    Properties.SaveTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object cxGrid1: TcxGrid [9]
    Left = 4
    Top = 91
    Width = 711
    Height = 321
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = ds
      DataController.KeyFieldNames = 'idDocumento'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'Total'
          Column = cxGrid1DBTableView1Total
        end>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsData.Editing = False
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      object cxGrid1DBTableView1IdDocumento: TcxGridDBColumn
        DataBinding.FieldName = 'IdDocumento'
        Visible = False
      end
      object cxGrid1DBTableView1CuentaDestino: TcxGridDBColumn
        Caption = 'Cuenta'
        DataBinding.FieldName = 'CuentaDestino'
        Width = 109
      end
      object cxGrid1DBTableView1CodigoBanco: TcxGridDBColumn
        Caption = 'C'#243'digo Banco'
        DataBinding.FieldName = 'CodigoBanco'
        Width = 88
      end
      object cxGrid1DBTableView1TipoCuenta: TcxGridDBColumn
        Caption = 'Tipo Cuenta'
        DataBinding.FieldName = 'TipoCuenta'
        Width = 90
      end
      object cxGrid1DBTableView1Suplidor: TcxGridDBColumn
        DataBinding.FieldName = 'Suplidor'
        Width = 188
      end
      object cxGrid1DBTableView1TipoMovimiento: TcxGridDBColumn
        Caption = 'Tipo Mov.'
        DataBinding.FieldName = 'TipoMovimiento'
        Width = 69
      end
      object cxGrid1DBTableView1Total: TcxGridDBColumn
        DataBinding.FieldName = 'Total'
        Width = 105
      end
      object cxGrid1DBTableView1Referencia: TcxGridDBColumn
        DataBinding.FieldName = 'Referencia'
        Width = 93
      end
      object cxGrid1DBTableView1Descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'Descripcion'
        Width = 563
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton1: TcxButton [10]
    Left = 621
    Top = 42
    Width = 93
    Height = 35
    Caption = 'Mostrar'
    TabOrder = 3
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
  object cxButton2: TcxButton [11]
    Left = 522
    Top = 420
    Width = 93
    Height = 35
    Caption = 'Imprimir'
    TabOrder = 4
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
  object cxButton3: TcxButton [12]
    Left = 621
    Top = 420
    Width = 93
    Height = 35
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
  object cxButton4: TcxButton [13]
    Left = 5
    Top = 420
    Width = 109
    Height = 35
    Caption = 'Generar Archivo (ACH)'
    TabOrder = 6
    WordWrap = True
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton5: TcxButton [14]
    Left = 233
    Top = 420
    Width = 109
    Height = 35
    Caption = 'Exportar Excel'
    TabOrder = 7
    WordWrap = True
    LookAndFeel.NativeStyle = True
  end
  object cxButton6: TcxButton [15]
    Left = 119
    Top = 420
    Width = 109
    Height = 35
    Caption = 'Generar Archivo Pagos Terceros'
    TabOrder = 8
    WordWrap = True
    OnClick = cxButton6Click
    LookAndFeel.NativeStyle = True
  end
  inherited ds: TDataSource
    DataSet = rsToBancoACHRpt
    Left = 444
    Top = 170
  end
  object rsToBancoACHRpt: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'cxpPagoToBancoACHrpt;1'
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
    Left = 288
    Top = 194
    object rsToBancoACHRptIdDocumento: TAutoIncField
      FieldName = 'IdDocumento'
      ReadOnly = True
    end
    object rsToBancoACHRptCuentaDestino: TStringField
      FieldName = 'CuentaDestino'
    end
    object rsToBancoACHRptCodigoBanco: TStringField
      FieldName = 'CodigoBanco'
      Size = 5
    end
    object rsToBancoACHRptTipoCuenta: TStringField
      FieldName = 'TipoCuenta'
      Size = 2
    end
    object rsToBancoACHRptSuplidor: TStringField
      FieldName = 'Suplidor'
      Size = 100
    end
    object rsToBancoACHRptTipoMovimiento: TStringField
      FieldName = 'TipoMovimiento'
      ReadOnly = True
      Size = 1
    end
    object rsToBancoACHRptTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 20
      Size = 2
    end
    object rsToBancoACHRptReferencia: TStringField
      FieldName = 'Referencia'
      ReadOnly = True
      Size = 10
    end
    object rsToBancoACHRptDescripcion: TStringField
      FieldName = 'Descripcion'
      ReadOnly = True
      Size = 80
    end
  end
  object rsToACH: TADODataSet
    Connection = dm.Coneccion
    CommandText = 'cxpPagoToBancoACH;1'
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
    Left = 200
    Top = 276
    object rsToACHCadena: TStringField
      FieldName = 'Cadena'
      ReadOnly = True
      Size = 159
    end
  end
  object Save: TSaveDialog
    Left = 332
    Top = 40
  end
  object plRelacionPagoACH: TppDBPipeline
    DataSource = ds
    UserName = 'plRelacionPagoACH'
    Left = 56
    Top = 186
  end
  object rptRelacionPagoACH: TppReport
    AutoStop = False
    DataPipeline = plRelacionPagoACH
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 54
    Top = 238
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'plRelacionPagoACH'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 30427
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Relaci'#243'n de Pagos ACH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6879
        mmLeft = 1852
        mmTop = 15346
        mmWidth = 115623
        BandType = 1
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 233098
        mmTop = 1323
        mmWidth = 31263
        BandType = 1
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 253207
        mmTop = 6350
        mmWidth = 10710
        BandType = 1
      end
      object lDesdeHasta: TppLabel
        OnPrint = lDesdeHastaPrint
        UserName = 'lDesdeHasta'
        Caption = 'lDesdeHasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 23283
        mmWidth = 22225
        BandType = 1
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
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
        mmLeft = 1588
        mmTop = 794
        mmWidth = 143934
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object TppShape
        UserName = 'Shape1'
        Brush.Color = clSilver
        Pen.Color = clSilver
        mmHeight = 6350
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Cuenta Destino'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 26723
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'C'#243'digo Banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 29369
        mmTop = 1323
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Tipo Cuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 45244
        mmTop = 1323
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Suplidor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 59002
        mmTop = 1323
        mmWidth = 59796
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 237861
        mmTop = 1323
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'Referencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 135467
        mmTop = 2117
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'Descripci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 162719
        mmTop = 1323
        mmWidth = 73025
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'CuentaDestino'
        DataPipeline = plRelacionPagoACH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRelacionPagoACH'
        mmHeight = 3440
        mmLeft = 1323
        mmTop = 0
        mmWidth = 26723
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'CodigoBanco'
        DataPipeline = plRelacionPagoACH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRelacionPagoACH'
        mmHeight = 3440
        mmLeft = 29369
        mmTop = 0
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'TipoCuenta'
        DataPipeline = plRelacionPagoACH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRelacionPagoACH'
        mmHeight = 3440
        mmLeft = 45244
        mmTop = 0
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'Total'
        DataPipeline = plRelacionPagoACH
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRelacionPagoACH'
        mmHeight = 3440
        mmLeft = 237861
        mmTop = 0
        mmWidth = 28046
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'Referencia'
        DataPipeline = plRelacionPagoACH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRelacionPagoACH'
        mmHeight = 3440
        mmLeft = 135996
        mmTop = 0
        mmWidth = 21431
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Suplidor'
        DataPipeline = plRelacionPagoACH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'plRelacionPagoACH'
        mmHeight = 3704
        mmLeft = 59002
        mmTop = 0
        mmWidth = 69586
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo2'
        CharWrap = False
        DataField = 'Descripcion'
        DataPipeline = plRelacionPagoACH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'plRelacionPagoACH'
        mmHeight = 3704
        mmLeft = 163248
        mmTop = 0
        mmWidth = 72761
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13758
      mmPrintPosition = 0
      object TppShape
        UserName = 'Shape2'
        Brush.Color = clSilver
        Pen.Color = clSilver
        mmHeight = 4763
        mmLeft = 0
        mmTop = 7144
        mmWidth = 266701
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 2646
        mmLeft = 265
        mmTop = 6350
        mmWidth = 266171
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'Total'
        DataPipeline = plRelacionPagoACH
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRelacionPagoACH'
        mmHeight = 3831
        mmLeft = 219340
        mmTop = 1852
        mmWidth = 46038
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 2646
        mmLeft = 265
        mmTop = 529
        mmWidth = 266171
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataPipeline = plRelacionPagoACH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'plRelacionPagoACH'
        mmHeight = 4128
        mmLeft = 19844
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Cantidad:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 3440
        mmTop = 1852
        mmWidth = 15134
        BandType = 7
      end
    end
  end
  object rsToPagosTerceros: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'cxpPagoToBancoPagoTercero;1'
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
    Left = 338
    Top = 282
    object rsToPagosTercerosCadena: TStringField
      FieldName = 'Cadena'
      ReadOnly = True
      Size = 126
    end
  end
end

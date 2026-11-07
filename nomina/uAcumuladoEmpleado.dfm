inherited AcumuladoEmpleado: TAcumuladoEmpleado
  Left = 307
  Top = 189
  Caption = 'Acumulado de Empleado'
  ClientWidth = 680
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Width = 680
  end
  inherited Gradient2: TGradient
    Width = 680
  end
  object Label1: TLabel [2]
    Left = 22
    Top = 41
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label4: TLabel [3]
    Left = 24
    Top = 65
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object Label2: TLabel [4]
    Left = 210
    Top = 42
    Width = 73
    Height = 13
    Caption = 'Departamento:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [5]
    Left = 210
    Top = 66
    Width = 54
    Height = 13
    Caption = 'Tipo Trans:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [6]
    Left = 410
    Top = 4
    Width = 266
    Height = 25
    Caption = 'Acumulado por Empleado'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel [7]
    Left = 210
    Top = 89
    Width = 73
    Height = 13
    Caption = 'Tipo Empleado:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dtpDesde: TcxDateEdit [8]
    Left = 58
    Top = 37
    Width = 136
    Height = 21
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object dtpHasta: TcxDateEdit [9]
    Left = 58
    Top = 61
    Width = 136
    Height = 21
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object lkDepartamento: TcxLookupComboBox [10]
    Left = 288
    Top = 37
    Width = 278
    Height = 21
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'DepartamentoId'
    Properties.ListColumns = <
      item
        FieldName = 'Departamento'
      end>
    Properties.ListSource = dsDepartamento
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object lkTipoTransaccion: TcxLookupComboBox [11]
    Left = 330
    Top = 61
    Width = 236
    Height = 21
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'TipoTransaccionId'
    Properties.ListColumns = <
      item
        FieldName = 'TipoTransaccion'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsTipoTransaccion
    Properties.OnValidate = lkTipoTransaccionPropertiesValidate
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  object edtTipoTrans: TcxTextEdit [12]
    Left = 288
    Top = 61
    Width = 40
    Height = 21
    TabStop = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
    Text = '-1'
  end
  object btSalir: TcxButton [13]
    Left = 591
    Top = 425
    Width = 89
    Height = 31
    Anchors = [akLeft, akBottom]
    Caption = 'Salir'
    TabOrder = 5
    OnClick = btSalirClick
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
  object btImprimir: TcxButton [14]
    Left = 478
    Top = 425
    Width = 101
    Height = 31
    Anchors = [akLeft, akBottom]
    Caption = 'Imprimir'
    TabOrder = 6
    OnClick = btImprimirClick
    Glyph.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      2000000000000009000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00868484008684840086848400FF00
      FF00FF00FF00FF00FF00FF00FF008684840086848400FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0086848400C1BFBF00ABA8A900A4A1A2008684
      8400868484009996970086848400E5E4E400DBDADA0086848400868484008684
      8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0086848400DFDEDE00D3D1D100B5B3B300B5B3B300B5B3
      B3009B999A0077767600CBCBCB00D9D9D900DADADA00DCDCDC00DDDDDD00D6D5
      D500868484008684840086848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0086848400E1E0E000E7E6E600CECDCD00B5B3B300B5B3B300B5B3
      B3007C7B7B0000000000000000002828280078787800BBBBBB00D6D6D600D6D6
      D600D6D6D600D6D6D600CFCECE00868484008684840086848400FF00FF00FF00
      FF0086848400DDDDDD00DEDDDD00DADADA00A3A1A10099979700999797009997
      9700868484002626260013131300000000000000000000000000282828007878
      7800BBBBBB00D6D6D600D6D6D600C7C6C600C7C6C60086848400FF00FF008684
      8400D6D6D600D6D6D600D3D3D300A4A3A300C8C5C500C6C4C400B5B3B300B5B3
      B300B3B1B100AEACAC00A9A6A7009A9898006D6B6B0043424200131313000000
      000000000000282828007E7E7E009996970086848400FF00FF00FF00FF008684
      8400D6D6D600D2D2D200A4A3A300E0DEDE00F9F8F800F8F7F700F5F4F400E7E6
      E600D6D4D400C6C5C500B8B6B600B5B3B300B5B3B300B2AFB000A9A6A700827F
      8000393839000A0909002D2D2D00AEACAC0086848400FF00FF00FF00FF008684
      8400D2D2D200A4A3A300EDECEC00F9F8F800F9F8F800F8F7F700F5F4F400F2F1
      F100EFEFEF00EDECEC00EAE9E900DEDDDD00D0CFCF00C0BFBF00B5B3B300B5B3
      B300AEACAC009A98980086848400B3B1B10086848400FF00FF00FF00FF008684
      8400A4A3A300F3F2F200F9F8F800F9F8F800F9F8F800F8F7F700DFDDDE009D94
      9600AAA2A400CFCDCD00E5E4E400E7E7E700E4E4E400E1E1E100DCDCDC00D0CF
      CF00C3C1C100B5B3B300B0AEAE008684840086848400FF00FF00FF00FF008684
      8400D9D7D800F9F8F800F9F8F800F9F8F800F9F8F800DAD7D800C0BEBF00BFBD
      BD00B2ADAD009B9294008E838500A0989900BDB8B900D4D3D300DFDFDF00DCDC
      DC00D9D9D900D5D4D400CAC9C900B9B7B70086848400FF00FF00FF00FF00FF00
      FF008684840086848400D9D7D800F1F0F000C0B7B80085787A008F8486009B91
      9300B0ABAC00BEBCBC00C3C1C100BDBABB00ADA7A800999091009C939500A9A3
      A400CDCDCD00D7D7D700D6D6D600CECECE0086848400FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF008684840086848400CC9A9900C0A18C0095796C00806F
      71007F6F720087797C0087797C00A0989900B4AFB000C0BEBF00C3C1C100B7B3
      B400D6D5D600D7D7D700C7C6C60086848400FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00CC9A9900FFDEBD00FFDBB500FFD7
      AD00DFB89400B591770094807A007B6B6E0080717400897C7F00A49D9E00D9D8
      D800DADADA00B8B7B70086848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00CC9A9900FFE2C300FFDEBB00FFDA
      B400FFD6AC00FFD3A400FFCF9D00FFCD9900FFCE9C00CC9A9900868484008684
      84008684840086848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00CC9A9900FFE5C900FFE1C200FFDD
      BA00FFD9B200FFD6AB00FFD2A300FFCE9C00FFCE9C00CC9A9900FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00CC9A9900FFEBD700FFE8D000FFE4C800FFE0
      C000FFDDB900FFD9B100FFD5AA00FFD1A200CC9A9900FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00CC9A9900FFEFDE00FFEBD600FFE7CE00FFE3
      C700FFE0BF00FFDCB800FFD8B000FFD4A800CC9A9900FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00CC9A9900FFF2E400FFEEDC00FFEAD500FFE7
      CD00FFE3C600FFDFBE00FFDBB600F9D0AC00CC9A9900FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00CC9A9900FFF9F200FFF5EA00FFF1E300FFEDDB00FFEA
      D400FFE6CC00FFE2C400FFDEBD00CC9A9900FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00CC9A9900FFFBF600FFFBF600FFF8F100FFF4E900FFF0E200FFED
      DA00FFE9D200FFE5CB00F5D4BB00CC9A9900FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00CC9A9900CC9A9900CC9A9900CC9A9900FFF7F000FFF4E800FFF0
      E000FFECD900FCE4CE00CC9A9900FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CC9A9900CC9A9900CC9A
      9900CC9A9900CC9A9900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [15]
    Left = 5
    Top = 425
    Width = 137
    Height = 31
    Anchors = [akLeft, akBottom]
    Caption = 'Exportar a Excel'
    TabOrder = 7
    OnClick = cxButton3Click
    Layout = blGlyphTop
    LookAndFeel.NativeStyle = True
  end
  object bBuscar: TcxButton [16]
    Left = 584
    Top = 35
    Width = 92
    Height = 32
    Anchors = [akLeft, akBottom]
    Caption = '&Buscar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = cxButton1Click
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
  object cxPageControl1: TcxPageControl [17]
    Left = 4
    Top = 105
    Width = 674
    Height = 321
    ActivePage = cxTabSheet1
    LookAndFeel.NativeStyle = True
    TabOrder = 9
    ClientRectBottom = 317
    ClientRectLeft = 2
    ClientRectRight = 670
    ClientRectTop = 22
    object cxTabSheet1: TcxTabSheet
      Caption = 'Con Fecha de Nomina'
      ImageIndex = 0
      object cxGrid1: TcxGrid
        Left = 1
        Top = 1
        Width = 666
        Height = 293
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGrid1DBTableView1: TcxGridDBTableView
          DataController.DataSource = ds
          DataController.Filter.AutoDataSetFilter = True
          DataController.KeyFieldNames = 'Id'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,0.00'
              Column = cxGrid1DBTableView1Valor
            end
            item
              Format = '#,0.00'
              Kind = skSum
              Position = spFooter
              Column = cxGrid1DBTableView1Valor
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1Valor
            end>
          DataController.Summary.SummaryGroups = <
            item
              Links = <>
              SummaryItems = <
                item
                  Format = '#,0.00'
                  Kind = skSum
                  FieldName = 'Valor'
                  Column = cxGrid1DBTableView1Valor
                end>
            end>
          NavigatorButtons.ConfirmDelete = False
          OptionsBehavior.IncSearch = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          object cxGrid1DBTableView1Desde: TcxGridDBColumn
            DataBinding.FieldName = 'Desde'
            Visible = False
          end
          object cxGrid1DBTableView1Hasta: TcxGridDBColumn
            DataBinding.FieldName = 'Hasta'
            Visible = False
          end
          object cxGrid1DBTableView1EmpleadoID: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'EmpleadoID'
          end
          object cxGrid1DBTableView1Apellido: TcxGridDBColumn
            DataBinding.FieldName = 'Apellido'
            Visible = False
          end
          object cxGrid1DBTableView1Nombre: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
            Visible = False
          end
          object cxGrid1DBTableView1Empleado: TcxGridDBColumn
            DataBinding.FieldName = 'Empleado'
            Width = 214
          end
          object cxGrid1DBTableView1Referencia: TcxGridDBColumn
            DataBinding.FieldName = 'Referencia'
          end
          object cxGrid1DBTableView1TipoTransaccionID: TcxGridDBColumn
            DataBinding.FieldName = 'TipoTransaccionID'
          end
          object cxGrid1DBTableView1TipoTransaccion: TcxGridDBColumn
            DataBinding.FieldName = 'TipoTransaccion'
            Width = 153
          end
          object cxGrid1DBTableView1Valor: TcxGridDBColumn
            DataBinding.FieldName = 'Valor'
            Width = 105
          end
          object cxGrid1DBTableView1Cantidad: TcxGridDBColumn
            DataBinding.FieldName = 'Cantidad'
            Width = 66
          end
          object cxGrid1DBTableView1Departamento: TcxGridDBColumn
            DataBinding.FieldName = 'Departamento'
          end
          object cxGrid1DBTableView1Debito: TcxGridDBColumn
            DataBinding.FieldName = 'Debito'
            Width = 53
          end
          object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
          end
          object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
            Caption = 'Secci'#243'n'
            DataBinding.FieldName = 'Seccion'
          end
          object cxGrid1DBTableView1DBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'Activo'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object tsResumido: TcxTabSheet
      Caption = 'Resumido'
      ImageIndex = 1
      object cxGrid2: TcxGrid
        Left = 1
        Top = 1
        Width = 666
        Height = 293
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsAcumResum
          DataController.Filter.AutoDataSetFilter = True
          DataController.KeyFieldNames = 'Id'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,0.00'
            end
            item
              Format = '#,0.00'
              Kind = skSum
              Position = spFooter
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,0.00'
              Kind = skSum
            end>
          DataController.Summary.SummaryGroups = <
            item
              Links = <>
              SummaryItems = <
                item
                  Format = '#,0.00'
                  Kind = skSum
                  FieldName = 'Valor'
                end>
            end>
          NavigatorButtons.ConfirmDelete = False
          OptionsBehavior.IncSearch = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          object cxGridDBTableView1Desde: TcxGridDBColumn
            DataBinding.FieldName = 'Desde'
            Visible = False
          end
          object cxGridDBTableView1Hasta: TcxGridDBColumn
            DataBinding.FieldName = 'Hasta'
            Visible = False
          end
          object cxGridDBTableView1EmpleadoID: TcxGridDBColumn
            DataBinding.FieldName = 'EmpleadoID'
          end
          object cxGridDBTableView1Apellido: TcxGridDBColumn
            DataBinding.FieldName = 'Apellido'
            Visible = False
          end
          object cxGridDBTableView1Nombre: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
            Visible = False
          end
          object cxGridDBTableView1Referencia: TcxGridDBColumn
            DataBinding.FieldName = 'Referencia'
          end
          object cxGridDBTableView1Empleado: TcxGridDBColumn
            DataBinding.FieldName = 'Empleado'
            Width = 317
          end
          object cxGridDBTableView1Departamento: TcxGridDBColumn
            DataBinding.FieldName = 'Departamento'
          end
          object cxGridDBTableView1TipoTransaccionID: TcxGridDBColumn
            DataBinding.FieldName = 'TipoTransaccionID'
            Visible = False
          end
          object cxGridDBTableView1TipoTransaccion: TcxGridDBColumn
            DataBinding.FieldName = 'TipoTransaccion'
          end
          object cxGridDBTableView1Debito: TcxGridDBColumn
            DataBinding.FieldName = 'Debito'
          end
          object cxGridDBTableView1Valor: TcxGridDBColumn
            DataBinding.FieldName = 'Valor'
          end
          object cxGridDBTableView1Cantidad: TcxGridDBColumn
            DataBinding.FieldName = 'Cantidad'
          end
          object cxGridDBTableView1Id: TcxGridDBColumn
            DataBinding.FieldName = 'Id'
            Visible = False
          end
          object cxGridDBTableView1DBColumn1: TcxGridDBColumn
            Caption = 'Secci'#243'n'
            DataBinding.FieldName = 'Seccion'
          end
          object cxGridDBTableView1DBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Activo'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  object lkTipoEmpleado: TcxLookupComboBox [18]
    Left = 288
    Top = 85
    Width = 278
    Height = 21
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'TipoEmpleadoId'
    Properties.ListColumns = <
      item
        FieldName = 'TipoEmpleado'
      end>
    Properties.ListSource = dsTipoEmpleado
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 10
  end
  inherited ds: TDataSource
    DataSet = spAcumuladoEmpleado
    Left = 604
    Top = 150
  end
  object spAcumuladoEmpleado: TADOStoredProc
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    ProcedureName = 'nomAcumuladoPorEmpleado;1'
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
      end
      item
        Name = '@TipoTransaccionId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DepartamentoId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 490
    Top = 158
    object spAcumuladoEmpleadoDesde: TDateTimeField
      FieldName = 'Desde'
      ReadOnly = True
    end
    object spAcumuladoEmpleadoHasta: TDateTimeField
      FieldName = 'Hasta'
      ReadOnly = True
    end
    object spAcumuladoEmpleadoEmpleadoID: TIntegerField
      FieldName = 'EmpleadoID'
    end
    object spAcumuladoEmpleadoApellido: TStringField
      FieldName = 'Apellido'
      Size = 30
    end
    object spAcumuladoEmpleadoNombre: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
    object spAcumuladoEmpleadoEmpleado: TStringField
      FieldName = 'Empleado'
      Size = 62
    end
    object spAcumuladoEmpleadoDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 30
    end
    object spAcumuladoEmpleadoTipoTransaccionID: TIntegerField
      FieldName = 'TipoTransaccionID'
    end
    object spAcumuladoEmpleadoTipoTransaccion: TStringField
      FieldName = 'TipoTransaccion'
      Size = 50
    end
    object spAcumuladoEmpleadoDebito: TBooleanField
      FieldName = 'Debito'
    end
    object spAcumuladoEmpleadoValor: TBCDField
      FieldName = 'Valor'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 2
    end
    object spAcumuladoEmpleadoCantidad: TBCDField
      FieldName = 'Cantidad'
      ReadOnly = True
      Precision = 32
    end
    object spAcumuladoEmpleadoFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object spAcumuladoEmpleadoId: TGuidField
      FieldName = 'Id'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object spAcumuladoEmpleadoSeccion: TStringField
      FieldName = 'Seccion'
    end
    object spAcumuladoEmpleadoActivo: TBooleanField
      FieldName = 'Activo'
    end
    object spAcumuladoEmpleadoReferencia: TStringField
      FieldName = 'Referencia'
      Size = 16
    end
  end
  object qryDepartamento: TADOQuery
    Connection = dm.Coneccion
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  -1 As DepartamentoId,'
      '  '#39'TODOS'#39' As Departamento'
      'UNION'
      'SELECT'
      '  DepartamentoId,'
      '  Departamento'
      'FROM'
      '  Departamento')
    Left = 526
    Top = 230
  end
  object qryTipoTransaccion: TADOQuery
    Connection = dm.Coneccion
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  -1 As TipoTransaccionId,'
      '  '#39'TODAS'#39' As TipoTransaccion'
      'UNION'
      'SELECT'
      '  TipoTransaccionId,'
      '  TipoTransaccion'
      'FROM'
      '  TipoTransaccion')
    Left = 532
    Top = 318
  end
  object dsDepartamento: TDataSource
    DataSet = qryDepartamento
    Left = 428
    Top = 236
  end
  object dsTipoTransaccion: TDataSource
    DataSet = qryTipoTransaccion
    Left = 426
    Top = 324
  end
  object SaveDialog1: TSaveDialog
    Left = 236
    Top = 226
  end
  object plAcumEmp: TppDBPipeline
    DataSource = ds
    UserName = 'plAcumEmp'
    Left = 66
    Top = 198
    object plAcumEmpppField1: TppField
      FieldAlias = 'Desde'
      FieldName = 'Desde'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 0
    end
    object plAcumEmpppField2: TppField
      FieldAlias = 'Hasta'
      FieldName = 'Hasta'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object plAcumEmpppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'EmpleadoID'
      FieldName = 'EmpleadoID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object plAcumEmpppField4: TppField
      FieldAlias = 'Apellido'
      FieldName = 'Apellido'
      FieldLength = 30
      DisplayWidth = 30
      Position = 3
    end
    object plAcumEmpppField5: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 30
      DisplayWidth = 30
      Position = 4
    end
    object plAcumEmpppField6: TppField
      FieldAlias = 'Empleado'
      FieldName = 'Empleado'
      FieldLength = 62
      DisplayWidth = 62
      Position = 5
    end
    object plAcumEmpppField7: TppField
      FieldAlias = 'Departamento'
      FieldName = 'Departamento'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object plAcumEmpppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'TipoTransaccionID'
      FieldName = 'TipoTransaccionID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object plAcumEmpppField9: TppField
      FieldAlias = 'TipoTransaccion'
      FieldName = 'TipoTransaccion'
      FieldLength = 50
      DisplayWidth = 50
      Position = 8
    end
    object plAcumEmpppField10: TppField
      FieldAlias = 'Debito'
      FieldName = 'Debito'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 9
    end
    object plAcumEmpppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor'
      FieldName = 'Valor'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 33
      Position = 10
    end
    object plAcumEmpppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cantidad'
      FieldName = 'Cantidad'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 33
      Position = 11
    end
    object plAcumEmpppField13: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 12
    end
    object plAcumEmpppField14: TppField
      FieldAlias = 'Id'
      FieldName = 'Id'
      FieldLength = 38
      DataType = dtGUID
      DisplayWidth = 38
      Position = 13
    end
    object plAcumEmpppField15: TppField
      FieldAlias = 'Seccion'
      FieldName = 'Seccion'
      FieldLength = 20
      DisplayWidth = 20
      Position = 14
    end
    object plAcumEmpppField16: TppField
      FieldAlias = 'Activo'
      FieldName = 'Activo'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 15
    end
    object plAcumEmpppField17: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 16
      DisplayWidth = 16
      Position = 16
    end
  end
  object rptAcumEmp: TppReport
    AutoStop = False
    DataPipeline = plAcumEmp
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
    PreviewFormSettings.WindowState = wsMaximized
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
    Left = 66
    Top = 248
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plAcumEmp'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 30163
      mmPrintPosition = 0
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable7'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 169673
        mmTop = 1588
        mmWidth = 31411
        BandType = 1
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable8'
        HyperlinkEnabled = False
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 190374
        mmTop = 5821
        mmWidth = 10710
        BandType = 1
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 6879
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 129911
        BandType = 1
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkEnabled = False
        Caption = 'Acumulados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 88636
        mmTop = 16669
        mmWidth = 25929
        BandType = 1
      end
      object lDesdeHasta: TppLabel
        OnPrint = lDesdeHastaPrint
        UserName = 'lDesdeHasta'
        HyperlinkEnabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4255
        mmLeft = 90816
        mmTop = 23019
        mmWidth = 21569
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plAcumEmp
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plAcumEmp'
        mmHeight = 3440
        mmLeft = 1588
        mmTop = 0
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Empleado'
        DataPipeline = plAcumEmp
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plAcumEmp'
        mmHeight = 3440
        mmLeft = 53711
        mmTop = 0
        mmWidth = 90488
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Cantidad'
        DataPipeline = plAcumEmp
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAcumEmp'
        mmHeight = 3440
        mmLeft = 183357
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Valor'
        DataPipeline = plAcumEmp
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAcumEmp'
        mmHeight = 3440
        mmLeft = 147638
        mmTop = 0
        mmWidth = 31750
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = plAcumEmp
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plAcumEmp'
        mmHeight = 3440
        mmLeft = 28310
        mmTop = 0
        mmWidth = 24077
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkEnabled = False
        Caption = 'Total Empleados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4255
        mmLeft = 2381
        mmTop = 2117
        mmWidth = 29274
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        HyperlinkEnabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        mmHeight = 4233
        mmLeft = 32808
        mmTop = 2117
        mmWidth = 17198
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 2910
        mmLeft = 0
        mmTop = 1323
        mmWidth = 203200
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        HyperlinkEnabled = False
        DataField = 'Valor'
        DataPipeline = plAcumEmp
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAcumEmp'
        mmHeight = 3440
        mmLeft = 147638
        mmTop = 2117
        mmWidth = 31485
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'TipoTransaccionID'
      DataPipeline = plAcumEmp
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plAcumEmp'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 13758
        mmPrintPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Brush.Color = 15266804
          Pen.Width = 2
          mmHeight = 6879
          mmLeft = 0
          mmTop = 794
          mmWidth = 115888
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Novedad'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 3440
          mmTop = 2117
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
        end
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          HyperlinkEnabled = False
          DataField = 'TipoTransaccionID'
          DataPipeline = plAcumEmp
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plAcumEmp'
          mmHeight = 3440
          mmLeft = 19050
          mmTop = 2117
          mmWidth = 8202
          BandType = 3
          GroupNo = 0
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          HyperlinkEnabled = False
          DataField = 'TipoTransaccion'
          DataPipeline = plAcumEmp
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plAcumEmp'
          mmHeight = 3440
          mmLeft = 28840
          mmTop = 2117
          mmWidth = 80963
          BandType = 3
          GroupNo = 0
        end
        object ppShape3: TppShape
          UserName = 'Shape3'
          Brush.Color = 15266804
          Pen.Width = 2
          mmHeight = 6879
          mmLeft = 0
          mmTop = 6879
          mmWidth = 203730
          BandType = 3
          GroupNo = 0
        end
        object ppLabel27: TppLabel
          UserName = 'Label27'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Fecha N'#243'mina'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 1323
          mmTop = 8467
          mmWidth = 25135
          BandType = 3
          GroupNo = 0
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Empleado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 53711
          mmTop = 8467
          mmWidth = 44715
          BandType = 3
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Cantidad'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 185738
          mmTop = 8467
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 6085
          mmLeft = 27252
          mmTop = 7144
          mmWidth = 1588
          BandType = 3
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 6085
          mmLeft = 180711
          mmTop = 6879
          mmWidth = 1588
          BandType = 3
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Valor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 163777
          mmTop = 8467
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 6085
          mmLeft = 145786
          mmTop = 6879
          mmWidth = 1588
          BandType = 3
          GroupNo = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Referenciad'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 28310
          mmTop = 8467
          mmWidth = 24077
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 14817
        mmPrintPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape2'
          Pen.Width = 2
          mmHeight = 6879
          mmLeft = 265
          mmTop = 0
          mmWidth = 203730
          BandType = 5
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label301'
          HyperlinkEnabled = False
          Caption = 'Total Empleados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 2646
          mmTop = 1588
          mmWidth = 23347
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          Transparent = True
          DBCalcType = dcCount
          mmHeight = 3440
          mmLeft = 33602
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          DataField = 'Valor'
          DataPipeline = plAcumEmp
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plAcumEmp'
          mmHeight = 3440
          mmLeft = 147902
          mmTop = 1588
          mmWidth = 31485
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          DataField = 'Cantidad'
          DataPipeline = plAcumEmp
          DisplayFormat = '#,0;-#,0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plAcumEmp'
          mmHeight = 3440
          mmLeft = 183357
          mmTop = 1588
          mmWidth = 17992
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object spAcumResum: TADOStoredProc
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    ProcedureName = 'nomAcumuladoPorEmpleadoII;1'
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
      end
      item
        Name = '@TipoTransaccionId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DepartamentoId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@TipoEmpleadoId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 332
    Top = 179
    object spAcumResumDesde: TDateTimeField
      FieldName = 'Desde'
      ReadOnly = True
    end
    object spAcumResumHasta: TDateTimeField
      FieldName = 'Hasta'
      ReadOnly = True
    end
    object spAcumResumEmpleadoID: TIntegerField
      FieldName = 'EmpleadoID'
    end
    object spAcumResumApellido: TStringField
      FieldName = 'Apellido'
      Size = 30
    end
    object spAcumResumNombre: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
    object spAcumResumEmpleado: TStringField
      FieldName = 'Empleado'
      Size = 62
    end
    object spAcumResumDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 30
    end
    object spAcumResumTipoTransaccionID: TIntegerField
      FieldName = 'TipoTransaccionID'
    end
    object spAcumResumTipoTransaccion: TStringField
      FieldName = 'TipoTransaccion'
      Size = 50
    end
    object spAcumResumDebito: TBooleanField
      FieldName = 'Debito'
    end
    object spAcumResumValor: TBCDField
      FieldName = 'Valor'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object spAcumResumCantidad: TBCDField
      FieldName = 'Cantidad'
      ReadOnly = True
      Precision = 32
    end
    object spAcumResumId: TGuidField
      FieldName = 'Id'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object spAcumResumSeccion: TStringField
      FieldName = 'Seccion'
    end
    object spAcumResumActivo: TBooleanField
      FieldName = 'Activo'
    end
    object spAcumResumReferencia: TStringField
      FieldName = 'Referencia'
      Size = 16
    end
  end
  object dsAcumResum: TDataSource
    DataSet = spAcumResum
    Left = 332
    Top = 235
  end
  object qryTipoEmpleado: TADOQuery
    Connection = dm.Coneccion
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  -1 As TipoEmpleadoId,'
      '  '#39'TODOS'#39' As TipoEmpleado'
      'UNION'
      'SELECT '
      '  TipoEmpleadoId,'
      '  TipoEmpleado'
      'FROM'
      '  TipoEmpleado')
    Left = 212
    Top = 295
    object qryTipoEmpleadoTipoEmpleadoId: TIntegerField
      FieldName = 'TipoEmpleadoId'
      ReadOnly = True
    end
    object qryTipoEmpleadoTipoEmpleado: TStringField
      FieldName = 'TipoEmpleado'
      ReadOnly = True
      Size = 10
    end
  end
  object dsTipoEmpleado: TDataSource
    DataSet = qryTipoEmpleado
    Left = 212
    Top = 345
  end
  object rptAcumEmpII: TppReport
    AutoStop = False
    DataPipeline = plAcumEmpII
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
    PreviewFormSettings.WindowState = wsMaximized
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
    Left = 626
    Top = 234
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plAcumEmpII'
    object ppTitleBand2: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 30163
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable7'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 169673
        mmTop = 1588
        mmWidth = 31411
        BandType = 1
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable8'
        HyperlinkEnabled = False
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 190374
        mmTop = 5821
        mmWidth = 10710
        BandType = 1
      end
      object ppDBText7: TppDBText
        UserName = 'DBText29'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 6879
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 129911
        BandType = 1
      end
      object ppLabel6: TppLabel
        UserName = 'Label35'
        HyperlinkEnabled = False
        Caption = 'Acumulados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 88636
        mmTop = 16669
        mmWidth = 25929
        BandType = 1
      end
      object lDesdeHastaII: TppLabel
        OnPrint = lDesdeHastaIIPrint
        UserName = 'lDesdeHasta'
        HyperlinkEnabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4255
        mmLeft = 90816
        mmTop = 23019
        mmWidth = 21569
        BandType = 1
      end
    end
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText9: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Empleado'
        DataPipeline = plAcumEmpII
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plAcumEmpII'
        mmHeight = 3440
        mmLeft = 22225
        mmTop = 0
        mmWidth = 123561
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Cantidad'
        DataPipeline = plAcumEmpII
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAcumEmpII'
        mmHeight = 3440
        mmLeft = 183357
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Valor'
        DataPipeline = plAcumEmpII
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAcumEmpII'
        mmHeight = 3440
        mmLeft = 147638
        mmTop = 0
        mmWidth = 31750
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = plAcumEmpII
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plAcumEmpII'
        mmHeight = 3440
        mmLeft = 1588
        mmTop = 0
        mmWidth = 20373
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppLabel8: TppLabel
        UserName = 'Label30'
        HyperlinkEnabled = False
        Caption = 'Total Empleados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4255
        mmLeft = 2381
        mmTop = 2117
        mmWidth = 29274
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc4'
        HyperlinkEnabled = False
        DataPipeline = plAcumEmpII
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'plAcumEmpII'
        mmHeight = 4233
        mmLeft = 32808
        mmTop = 2117
        mmWidth = 17198
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line4'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 2910
        mmLeft = 0
        mmTop = 1323
        mmWidth = 203200
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc5'
        HyperlinkEnabled = False
        DataField = 'Valor'
        DataPipeline = plAcumEmpII
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAcumEmpII'
        mmHeight = 3440
        mmLeft = 147638
        mmTop = 2117
        mmWidth = 31485
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'TipoTransaccionID'
      DataPipeline = plAcumEmpII
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plAcumEmpII'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 13758
        mmPrintPosition = 0
        object ppShape4: TppShape
          UserName = 'Shape1'
          Brush.Color = 15266804
          Pen.Width = 2
          mmHeight = 6879
          mmLeft = 0
          mmTop = 794
          mmWidth = 115888
          BandType = 3
          GroupNo = 0
        end
        object ppLabel9: TppLabel
          UserName = 'Label4'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Novedad'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 3440
          mmTop = 2117
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
        end
        object ppDBText12: TppDBText
          UserName = 'DBText5'
          HyperlinkEnabled = False
          DataField = 'TipoTransaccionID'
          DataPipeline = plAcumEmpII
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plAcumEmpII'
          mmHeight = 3440
          mmLeft = 19050
          mmTop = 2117
          mmWidth = 8202
          BandType = 3
          GroupNo = 0
        end
        object ppDBText13: TppDBText
          UserName = 'DBText6'
          HyperlinkEnabled = False
          DataField = 'TipoTransaccion'
          DataPipeline = plAcumEmpII
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plAcumEmpII'
          mmHeight = 3440
          mmLeft = 28840
          mmTop = 2117
          mmWidth = 80963
          BandType = 3
          GroupNo = 0
        end
        object ppShape5: TppShape
          UserName = 'Shape3'
          Brush.Color = 15266804
          Pen.Width = 2
          mmHeight = 6879
          mmLeft = 0
          mmTop = 6879
          mmWidth = 203730
          BandType = 3
          GroupNo = 0
        end
        object ppLabel11: TppLabel
          UserName = 'Label1'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Empleado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 23019
          mmTop = 8467
          mmWidth = 27517
          BandType = 3
          GroupNo = 0
        end
        object ppLabel12: TppLabel
          UserName = 'Label2'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Cantidad'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 185738
          mmTop = 8467
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
        end
        object ppLine7: TppLine
          UserName = 'Line1'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 6085
          mmLeft = 180711
          mmTop = 6879
          mmWidth = 1588
          BandType = 3
          GroupNo = 0
        end
        object ppLabel13: TppLabel
          UserName = 'Label3'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Valor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 163777
          mmTop = 8467
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
        end
        object ppLine8: TppLine
          UserName = 'Line2'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 6085
          mmLeft = 145786
          mmTop = 6879
          mmWidth = 1588
          BandType = 3
          GroupNo = 0
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Referencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 1588
          mmTop = 8467
          mmWidth = 20373
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 14817
        mmPrintPosition = 0
        object ppShape6: TppShape
          UserName = 'Shape2'
          Pen.Width = 2
          mmHeight = 6879
          mmLeft = 265
          mmTop = 0
          mmWidth = 203730
          BandType = 5
          GroupNo = 0
        end
        object ppLabel14: TppLabel
          UserName = 'Label301'
          HyperlinkEnabled = False
          Caption = 'Total Empleados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 2646
          mmTop = 1588
          mmWidth = 23347
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          DataPipeline = plAcumEmpII
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'plAcumEmpII'
          mmHeight = 3440
          mmLeft = 33602
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          DataField = 'Valor'
          DataPipeline = plAcumEmpII
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plAcumEmpII'
          mmHeight = 3440
          mmLeft = 147902
          mmTop = 1588
          mmWidth = 31485
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc10: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          DataField = 'Cantidad'
          DataPipeline = plAcumEmpII
          DisplayFormat = '#,0;-#,0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plAcumEmpII'
          mmHeight = 3440
          mmLeft = 183357
          mmTop = 1588
          mmWidth = 17992
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object plAcumEmpII: TppDBPipeline
    DataSource = dsAcumResum
    UserName = 'plAcumEmpII'
    Left = 624
    Top = 283
    object plAcumEmpIIppField1: TppField
      FieldAlias = 'Desde'
      FieldName = 'Desde'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 0
    end
    object plAcumEmpIIppField2: TppField
      FieldAlias = 'Hasta'
      FieldName = 'Hasta'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object plAcumEmpIIppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'EmpleadoID'
      FieldName = 'EmpleadoID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object plAcumEmpIIppField4: TppField
      FieldAlias = 'Apellido'
      FieldName = 'Apellido'
      FieldLength = 30
      DisplayWidth = 30
      Position = 3
    end
    object plAcumEmpIIppField5: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 30
      DisplayWidth = 30
      Position = 4
    end
    object plAcumEmpIIppField6: TppField
      FieldAlias = 'Empleado'
      FieldName = 'Empleado'
      FieldLength = 62
      DisplayWidth = 62
      Position = 5
    end
    object plAcumEmpIIppField7: TppField
      FieldAlias = 'Departamento'
      FieldName = 'Departamento'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object plAcumEmpIIppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'TipoTransaccionID'
      FieldName = 'TipoTransaccionID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object plAcumEmpIIppField9: TppField
      FieldAlias = 'TipoTransaccion'
      FieldName = 'TipoTransaccion'
      FieldLength = 50
      DisplayWidth = 50
      Position = 8
    end
    object plAcumEmpIIppField10: TppField
      FieldAlias = 'Debito'
      FieldName = 'Debito'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 9
    end
    object plAcumEmpIIppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor'
      FieldName = 'Valor'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 33
      Position = 10
    end
    object plAcumEmpIIppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cantidad'
      FieldName = 'Cantidad'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 33
      Position = 11
    end
    object plAcumEmpIIppField13: TppField
      FieldAlias = 'Id'
      FieldName = 'Id'
      FieldLength = 38
      DisplayWidth = 38
      Position = 12
    end
    object plAcumEmpIIppField14: TppField
      FieldAlias = 'Seccion'
      FieldName = 'Seccion'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object plAcumEmpIIppField15: TppField
      FieldAlias = 'Activo'
      FieldName = 'Activo'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 14
    end
    object plAcumEmpIIppField16: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 16
      DisplayWidth = 16
      Position = 15
    end
  end
end

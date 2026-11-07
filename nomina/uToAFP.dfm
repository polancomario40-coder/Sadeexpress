inherited ToAFP: TToAFP
  Left = 257
  Top = 133
  Caption = 'Exportar Datos al Formato de AFP'
  ClientHeight = 506
  ClientWidth = 772
  Color = 14870499
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 24
    Top = 8
    Width = 37
    Height = 13
    Caption = 'Desde :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [1]
    Left = 26
    Top = 32
    Width = 34
    Height = 13
    Caption = 'Hasta :'
  end
  object Label1: TLabel [2]
    Left = 242
    Top = 8
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
  object GRID: TwwDBGrid [3]
    Left = 1
    Top = 54
    Width = 769
    Height = 413
    DisableThemes = False
    Selected.Strings = (
      'Cadena'#9'8000'#9'Cadena'#9#9)
    IniAttributes.Delimiter = ';;'
    ExportOptions.Delimiter = ';'
    ExportOptions.FileName = 'C:\Nomina.txt'
    ExportOptions.Options = []
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DS
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit, dgRowResize]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object BitBtn1: TBitBtn [4]
    Left = 651
    Top = 8
    Width = 118
    Height = 31
    Caption = 'Generar Archivo'
    TabOrder = 1
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object dDesde: TcxDateEdit [5]
    Left = 64
    Top = 4
    Width = 121
    Height = 21
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object dHasta: TcxDateEdit [6]
    Left = 64
    Top = 28
    Width = 121
    Height = 21
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  object BitBtn2: TBitBtn [7]
    Left = 528
    Top = 8
    Width = 119
    Height = 31
    Caption = 'Mostrar'
    TabOrder = 4
    OnClick = BitBtn2Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFB78183A47874A47874A47874A47874A47874A4
      7874A47874A47874A47874A47874A47874986B66FF00FFFF00FFFF00FFB78183
      FDEFD9F6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC97F3D1
      99986B66FF00FFFF00FFFF00FFB48176FEF3E3F8E7D3F5E3CBF5DFC3CFCF9F01
      8A02018A02CCC68BEECC9AEECC97F3D199986B66FF00FFFF00FFFF00FFB48176
      FFF7EBF9EBDA018A02D1D6AC018A02D0CF9ECECC98018A02CCC689EFCD99F3D1
      98986B66FF00FFFF00FFFF00FFBA8E85FFFCF4FAEFE4018A02018A02D1D5ADF5
      DFC2F4DBBBCDCC98018A02F0D0A1F3D29B986B66FF00FFFF00FFFF00FFBA8E85
      FFFFFDFBF4EC018A02018A02018A02F5E3C9F5DFC2F4DBBAF2D7B1F0D4A9F5D5
      A3986B66FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5FBF3ECFAEFE2F9EADAF8
      E7D2018A02018A02018A02F2D8B2F6D9AC986B66FF00FFFF00FFFF00FFCB9A82
      FFFFFFFFFEFD018A02D6E3C9F9EFE3F8EADAD2D9B3018A02018A02F4DBB9F8DD
      B4986B66FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFD9EDD8018A02D6E3C8D5
      E0C1018A02D3D8B2018A02F7E1C2F0DAB7986B66FF00FFFF00FFFF00FFDCA887
      FFFFFFFFFFFFFFFFFFD9EDD8018A02018A02D5DFC1FAEDDCFCEFD9E6D9C4C6BC
      A9986B66FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFD
      F8F3FDF6ECF1E1D5B48176B48176B48176B48176FF00FFFF00FFFF00FFE3B18E
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9B48176E8B270ECA5
      4AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFE4D4D2B48176FAC577CD9377FF00FFFF00FFFF00FFFF00FFEDBD92
      FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB48176CF9B86FF00
      FFFF00FFFF00FFFF00FFFF00FFEDBD92DAA482DAA482DAA482DAA482DAA482DA
      A482DAA482DAA482B48176FF00FFFF00FFFF00FFFF00FFFF00FF}
  end
  object btImprimir: TcxButton [8]
    Left = 566
    Top = 471
    Width = 101
    Height = 31
    Anchors = [akLeft, akBottom]
    Caption = 'Imprimir'
    TabOrder = 5
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
  object btSalir: TcxButton [9]
    Left = 679
    Top = 471
    Width = 89
    Height = 31
    Anchors = [akLeft, akBottom]
    Caption = 'Salir'
    TabOrder = 6
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
  object lkTipoEmpleado: TcxLookupComboBox [10]
    Left = 318
    Top = 5
    Width = 184
    Height = 21
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'TipoEmpleadoId'
    Properties.ListColumns = <
      item
        FieldName = 'TipoEmpleado'
      end>
    Properties.ListSource = dsTipoEmpleado
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 7
  end
  inherited DS: TwwDataSource
    Left = 277
    Top = 285
  end
  object toafp: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'TOAFP;1'
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
      end
      item
        Name = '@TipoEmpleadoId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 248
    Top = 224
  end
  object Save: TSaveDialog
    DefaultExt = 'txt'
    FileName = 'Nomina'
    Filter = 'TXT|*.txt|PRN|*.prn'
    Left = 496
    Top = 128
  end
  object plToAfp: TppDBPipeline
    DataSource = dsToAfpRpt
    UserName = 'plToAfp'
    Left = 534
    Top = 250
    object plToAfpppField1: TppField
      FieldAlias = 'TipoRegistro'
      FieldName = 'TipoRegistro'
      FieldLength = 1
      DisplayWidth = 1
      Position = 0
    end
    object plToAfpppField2: TppField
      FieldAlias = 'ClaveNomina'
      FieldName = 'ClaveNomina'
      FieldLength = 3
      DisplayWidth = 3
      Position = 1
    end
    object plToAfpppField3: TppField
      FieldAlias = 'TipoDocumento'
      FieldName = 'TipoDocumento'
      FieldLength = 1
      DisplayWidth = 1
      Position = 2
    end
    object plToAfpppField4: TppField
      FieldAlias = 'NumeroDocumento'
      FieldName = 'NumeroDocumento'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object plToAfpppField5: TppField
      FieldAlias = 'Nombres'
      FieldName = 'Nombres'
      FieldLength = 30
      DisplayWidth = 30
      Position = 4
    end
    object plToAfpppField6: TppField
      FieldAlias = 'PrimerApellido'
      FieldName = 'PrimerApellido'
      FieldLength = 8000
      DisplayWidth = 8000
      Position = 5
    end
    object plToAfpppField7: TppField
      FieldAlias = 'SegundoApellido'
      FieldName = 'SegundoApellido'
      FieldLength = 8000
      DisplayWidth = 8000
      Position = 6
    end
    object plToAfpppField8: TppField
      FieldAlias = 'Sexo'
      FieldName = 'Sexo'
      FieldLength = 1
      DisplayWidth = 1
      Position = 7
    end
    object plToAfpppField9: TppField
      FieldAlias = 'FechaNacimiento'
      FieldName = 'FechaNacimiento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 8
    end
    object plToAfpppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Salario_SS'
      FieldName = 'Salario_SS'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 9
    end
    object plToAfpppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'AporteOrdinario'
      FieldName = 'AporteOrdinario'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 3
      Position = 10
    end
    object plToAfpppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'SalarioISR'
      FieldName = 'SalarioISR'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 3
      Position = 11
    end
    object plToAfpppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'OtraRemuneraciones'
      FieldName = 'OtraRemuneraciones'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 12
    end
    object plToAfpppField14: TppField
      FieldAlias = 'IdAgenteRetencion'
      FieldName = 'IdAgenteRetencion'
      FieldLength = 1
      DisplayWidth = 1
      Position = 13
    end
    object plToAfpppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'RemuneracionesOtrosEmpleadores'
      FieldName = 'RemuneracionesOtrosEmpleadores'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 3
      Position = 14
    end
    object plToAfpppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'IngresosExentosISR'
      FieldName = 'IngresosExentosISR'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 3
      Position = 15
    end
    object plToAfpppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'NoSe'
      FieldName = 'NoSe'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 3
      Position = 16
    end
  end
  object rptToAfp: TppReport
    AutoStop = False
    DataPipeline = plToAfp
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
    PreviewFormSettings.WindowState = wsMaximized
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
    Left = 538
    Top = 304
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plToAfp'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 36248
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 20
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 8467
        mmLeft = 1323
        mmTop = 794
        mmWidth = 143669
        BandType = 1
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        Caption = 'Autodeterminaci'#243'n (Mensual)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 97896
        mmTop = 12965
        mmWidth = 70908
        BandType = 1
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3831
        mmLeft = 246857
        mmTop = 529
        mmWidth = 16298
        BandType = 1
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 243946
        mmTop = 5027
        mmWidth = 19315
        BandType = 1
      end
      object lDelAl: TppLabel
        OnPrint = lDelAlPrint
        UserName = 'lDelAl'
        HyperlinkEnabled = False
        Caption = 'lDelAl'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3831
        mmLeft = 129272
        mmTop = 23813
        mmWidth = 7895
        BandType = 1
      end
      object lTipoEmpleado: TppLabel
        OnPrint = lTipoEmpleadoPrint
        UserName = 'lTipoEmpleado'
        HyperlinkEnabled = False
        Caption = 'TipoEmpleado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1852
        mmTop = 30692
        mmWidth = 24892
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 12171
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 11377
        mmLeft = 0
        mmTop = 794
        mmWidth = 266701
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Clave N'#243'mina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 529
        mmTop = 3440
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Tipo Doc.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 12965
        mmTop = 3440
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'N'#250'mero Documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 20902
        mmTop = 3440
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Nombres'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 2910
        mmLeft = 43921
        mmTop = 4763
        mmWidth = 33602
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Primer Apellido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 3440
        mmLeft = 78846
        mmTop = 4498
        mmWidth = 28310
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Segundo Apellido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 6085
        mmLeft = 108215
        mmTop = 3440
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Sexo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 128059
        mmTop = 4498
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha Nac.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 6350
        mmLeft = 139700
        mmTop = 3440
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Salario SS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 2910
        mmLeft = 151607
        mmTop = 4763
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Aporte Ordinario'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 6615
        mmLeft = 168011
        mmTop = 3175
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Salario ISR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 2910
        mmLeft = 182034
        mmTop = 5027
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Otra Remun.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 6085
        mmLeft = 198967
        mmTop = 3440
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Id Agente Retenci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 6085
        mmLeft = 213255
        mmTop = 3440
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Remuneraciones Otros Empleadores'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 8996
        mmLeft = 228600
        mmTop = 1852
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Ingresos Exentos ISR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 8731
        mmLeft = 253736
        mmTop = 1852
        mmWidth = 12171
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'ClaveNomina'
        DataPipeline = plToAfp
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plToAfp'
        mmHeight = 2910
        mmLeft = 529
        mmTop = 265
        mmWidth = 7938
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'TipoDocumento'
        DataPipeline = plToAfp
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plToAfp'
        mmHeight = 2910
        mmLeft = 12700
        mmTop = 265
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'NumeroDocumento'
        DataPipeline = plToAfp
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plToAfp'
        mmHeight = 2910
        mmLeft = 20902
        mmTop = 265
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Nombres'
        DataPipeline = plToAfp
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plToAfp'
        mmHeight = 2910
        mmLeft = 44979
        mmTop = 265
        mmWidth = 31221
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'PrimerApellido'
        DataPipeline = plToAfp
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plToAfp'
        mmHeight = 2910
        mmLeft = 78846
        mmTop = 265
        mmWidth = 27781
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'SegundoApellido'
        DataPipeline = plToAfp
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plToAfp'
        mmHeight = 2910
        mmLeft = 108479
        mmTop = 265
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'Sexo'
        DataPipeline = plToAfp
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plToAfp'
        mmHeight = 2910
        mmLeft = 130175
        mmTop = 265
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'FechaNacimiento'
        DataPipeline = plToAfp
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plToAfp'
        mmHeight = 2910
        mmLeft = 136525
        mmTop = 265
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'Salario_SS'
        DataPipeline = plToAfp
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plToAfp'
        mmHeight = 2910
        mmLeft = 150548
        mmTop = 265
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'AporteOrdinario'
        DataPipeline = plToAfp
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plToAfp'
        mmHeight = 2910
        mmLeft = 167746
        mmTop = 265
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'SalarioISR'
        DataPipeline = plToAfp
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plToAfp'
        mmHeight = 2910
        mmLeft = 182827
        mmTop = 265
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'OtraRemuneraciones'
        DataPipeline = plToAfp
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plToAfp'
        mmHeight = 2910
        mmLeft = 200290
        mmTop = 265
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        DataField = 'IdAgenteRetencion'
        DataPipeline = plToAfp
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plToAfp'
        mmHeight = 2910
        mmLeft = 214048
        mmTop = 265
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkEnabled = False
        DataField = 'RemuneracionesOtrosEmpleadores'
        DataPipeline = plToAfp
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plToAfp'
        mmHeight = 2910
        mmLeft = 230453
        mmTop = 265
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkEnabled = False
        DataField = 'IngresosExentosISR'
        DataPipeline = plToAfp
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plToAfp'
        mmHeight = 2910
        mmLeft = 253736
        mmTop = 265
        mmWidth = 11642
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 8202
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 529
        mmTop = 529
        mmWidth = 266701
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        DataField = 'OtraRemuneraciones'
        DataPipeline = plToAfp
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plToAfp'
        mmHeight = 2910
        mmLeft = 194205
        mmTop = 1852
        mmWidth = 18785
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        HyperlinkEnabled = False
        DataField = 'Salario_SS'
        DataPipeline = plToAfp
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plToAfp'
        mmHeight = 2910
        mmLeft = 144463
        mmTop = 1323
        mmWidth = 22490
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object dsToAfpRpt: TDataSource
    DataSet = spToAfpRpt
    Left = 648
    Top = 272
  end
  object spToAfpRpt: TADOStoredProc
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    ProcedureName = 'toAFPrpt;1'
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
        Name = '@TipoEmpleadoId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 650
    Top = 222
    object spToAfpRptTipoRegistro: TStringField
      FieldName = 'TipoRegistro'
      ReadOnly = True
      Size = 1
    end
    object spToAfpRptClaveNomina: TStringField
      FieldName = 'ClaveNomina'
      ReadOnly = True
      Size = 3
    end
    object spToAfpRptTipoDocumento: TStringField
      FieldName = 'TipoDocumento'
      FixedChar = True
      Size = 1
    end
    object spToAfpRptNumeroDocumento: TStringField
      FieldName = 'NumeroDocumento'
    end
    object spToAfpRptNombres: TStringField
      FieldName = 'Nombres'
      Size = 30
    end
    object spToAfpRptPrimerApellido: TStringField
      FieldName = 'PrimerApellido'
      ReadOnly = True
      Size = 8000
    end
    object spToAfpRptSegundoApellido: TStringField
      FieldName = 'SegundoApellido'
      ReadOnly = True
      Size = 8000
    end
    object spToAfpRptSexo: TStringField
      FieldName = 'Sexo'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object spToAfpRptFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
    end
    object spToAfpRptSalario_SS: TBCDField
      FieldName = 'Salario_SS'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object spToAfpRptAporteOrdinario: TBCDField
      FieldName = 'AporteOrdinario'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object spToAfpRptSalarioISR: TBCDField
      FieldName = 'SalarioISR'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object spToAfpRptOtraRemuneraciones: TBCDField
      FieldName = 'OtraRemuneraciones'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object spToAfpRptIdAgenteRetencion: TStringField
      FieldName = 'IdAgenteRetencion'
      ReadOnly = True
      Size = 1
    end
    object spToAfpRptRemuneracionesOtrosEmpleadores: TBCDField
      FieldName = 'RemuneracionesOtrosEmpleadores'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object spToAfpRptIngresosExentosISR: TBCDField
      FieldName = 'IngresosExentosISR'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object spToAfpRptNoSe: TBCDField
      FieldName = 'NoSe'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
  end
  object qryTipoEmpleado: TADOQuery
    Connection = dm.Coneccion
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  -1 As TipoEmpleadoId,'
      '  '#39'TODOS'#39' As TipoEmpleado'
      'UNION ALL'
      'SELECT'
      '  TipoEmpleadoId,'
      '  TipoEmpleado'
      'FROM'
      '  TipoEmpleado')
    Left = 364
    Top = 148
  end
  object dsTipoEmpleado: TDataSource
    DataSet = qryTipoEmpleado
    Left = 364
    Top = 198
  end
end

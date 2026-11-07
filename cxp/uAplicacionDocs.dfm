inherited AplicacionDocs: TAplicacionDocs
  Left = 293
  Top = 114
  Caption = 'Estado'
  ClientHeight = 444
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel [2]
    Left = 8
    Top = 41
    Width = 42
    Height = 13
    Caption = 'Suplidor:'
    Transparent = True
  end
  object Label1: TLabel [3]
    Left = 8
    Top = 108
    Width = 33
    Height = 13
    Caption = 'Fecha:'
    Transparent = True
  end
  object Label17: TLabel [4]
    Left = 422
    Top = 2
    Width = 235
    Height = 27
    Alignment = taRightJustify
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 'Estado de cuenta '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object beSuplidor: TcxDBButtonEdit [5]
    Left = 54
    Top = 38
    Width = 121
    Height = 21
    DataBinding.DataField = 'idSuplidor'
    DataBinding.DataSource = ds
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.ClickKey = 116
    Properties.OnButtonClick = beSuplidorPropertiesButtonClick
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object edNombre: TcxDBTextEdit [6]
    Left = 176
    Top = 38
    Width = 375
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Nombre'
    DataBinding.DataSource = ds
    Properties.ReadOnly = True
    Style.Color = 13818837
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object edDir: TcxDBTextEdit [7]
    Left = 54
    Top = 60
    Width = 497
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Direccion'
    DataBinding.DataSource = ds
    Properties.ReadOnly = True
    Style.Color = 13818837
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object edTel1: TcxDBTextEdit [8]
    Left = 54
    Top = 82
    Width = 197
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Telefono1'
    DataBinding.DataSource = ds
    Properties.ReadOnly = True
    Style.Color = 13818837
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  object edTel2: TcxDBTextEdit [9]
    Left = 256
    Top = 82
    Width = 197
    Height = 21
    TabStop = False
    DataBinding.DataField = 'Telefono2'
    DataBinding.DataSource = ds
    Properties.ReadOnly = True
    Style.Color = 13818837
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object deFecha: TcxDBDateEdit [10]
    Left = 54
    Top = 104
    Width = 121
    Height = 21
    DataBinding.DataField = 'Fecha'
    DataBinding.DataSource = ds
    Properties.SaveTime = False
    Style.Color = 16317176
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  object cxButton1: TcxButton [11]
    Left = 4
    Top = 128
    Width = 121
    Height = 28
    Caption = 'Mostar'
    TabOrder = 6
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid [12]
    Left = 3
    Top = 160
    Width = 661
    Height = 233
    TabOrder = 7
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsEstado
      DataController.KeyFieldNames = 'IdDocumento'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsView.GroupByBox = False
      Styles.ContentEven = cxStyle1
      object cxGrid1DBTableView1Referencia: TcxGridDBColumn
        DataBinding.FieldName = 'Referencia'
        Options.Filtering = False
        Width = 133
      end
      object cxGrid1DBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Options.Filtering = False
        Width = 101
      end
      object cxGrid1DBTableView1Total: TcxGridDBColumn
        DataBinding.FieldName = 'Total'
        Options.Filtering = False
        Width = 93
      end
      object cxGrid1DBTableView1TipoPago: TcxGridDBColumn
        DataBinding.FieldName = 'TipoPago'
        Options.Filtering = False
        Width = 37
      end
      object cxGrid1DBTableView1Pago: TcxGridDBColumn
        DataBinding.FieldName = 'Pago'
        Options.Filtering = False
        Width = 109
      end
      object cxGrid1DBTableView1FechaPago: TcxGridDBColumn
        DataBinding.FieldName = 'FechaPago'
        Options.Filtering = False
        Width = 68
      end
      object cxGrid1DBTableView1MontoPago: TcxGridDBColumn
        DataBinding.FieldName = 'MontoPago'
        Options.Filtering = False
        Width = 99
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton3: TcxButton [13]
    Left = 4
    Top = 399
    Width = 123
    Height = 41
    Caption = 'Imprimir'
    TabOrder = 8
    OnClick = cxButton3Click
    Glyph.Data = {
      36090000424D3609000000000000360000002800000018000000180000000100
      2000000000000009000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008C8C8C2AAFAFAFDA9595
      95FF8A8A8AEF6D6D6D8F33333330333333208F70709FB1A7A7EF848484A3B0B0
      B0AAB9B9B92AFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00B9B9B9059D9D9DBCBBBBBBFED8D8D8FFDFDF
      DFFFB0B0B0FFB6B6B6FF9E9595FFAF8686FFA38383FFAFACACFFD8D8D8FFC7C7
      C7FFB8B8B8F9ADADADBDB9B9B933FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF009D9D9D77B7B7B7FACDCDCDFFEDEDEDFFEFEFEFFFDBDB
      DBFFAFAFAFFFB0B0B0FF9A8E8EFF544D4DFF5E5E5EFF666666FF858585FF9A9A
      9AFFD5D5D5FFD4D4D4FFB9B9B9FBB0B0B0D1A3A3A348FF00FF00FF00FF00FF00
      FF0084848440B1B1B1E6C0C0C0FFE8E8E8FFF5F5F5FFEFEFEFFFEAEAEAFFD4D4
      D4FFA9A9A9FFAFAFAFFF909090FF4B4B4BFF434343FF5E5E5EFF666666FF8585
      85FF909090FFB0B0B0FFC6C6C6FFDBDBDBFFBDBDBDFCA4A4A4A5FF00FF005E5E
      5E3BB9B9B9FFDDDDDDFFF9F9F9FFF5F5F5FFEFEFEFFFEAEAEAFFE2E2E2FFD1D1
      D1FFA7A7A7FFA9A9A9FFAFAFAFFFB0B0B0FFA5A5A5FF8B8B8BFF707070FF6666
      66FF858585FF909090FFB0B0B0FF9C9C9CFFA7A7A7BF7676764AFF00FF00B8B8
      B8FFFDFDFDFFFBFBFBFFF5F5F5FFEFEFEFFFEAEAEAFFDADADAFFB2B2B2FF9292
      92FF808080FF8F8F8FFFA5A5A5FFAFAFAFFFB0B0B0FFB6B6B6FFB9B9B9FFAEAE
      AEFF9A9A9AFF646464FF595959FFCCCCCCFF89898980FF00FF00FF00FF00B1B1
      B1FFFBFBFBFFF5F5F5FFEFEFEFFFDADADAFF9D9D9DFF9B9B9BFFBABABAFFC7C7
      C7FF9F9F9FFF8E8E8EFF818181FF808080FF8F8F8FFFA3A3A3FFB6B6B6FFB9B9
      B9FFBDBDBDFFC2C2C2FFB9B9B9FFC3C3C3FF8A8A8A80FF00FF00FF00FF00A6A6
      A6FFF5F5F5FFCECECEFF979797FF9B9B9BFFD0D0D0FFD8D8D8FFD4D4D4FFD2D2
      D2FFCDCDCDFFBCBCBCFFA5A5A5FFA7A7A7FF9C9C9CFF8F8F8FFF828282FF8989
      89FFA0A0A0FFBDBDBDFF7CB68FFF84BD97FF8A8A8A80FF00FF00FF00FF009A9B
      9AFF898989FF979797FFDADADAFFDFDFDFFFD8D8D8FFD4D4D4FFCDCDCDFFE8E8
      E8FFE3E3E3FFE7E7E7FFEAEAEAFFDADADAFFCBCBCBFFB8B8B8FFAFAFAFFFABAB
      ABFF989898FF848484FF7C7C7CFF959595FF80808080FF00FF00FF00FF009090
      90FFEAEAEAFFE2E2E2FFDFDFDFFFD8D8D8FFD4D4D4FFCDCDCDFFDFDFDFFFDBDB
      DBFFB4B4B4FFB9B9B9FFB9B9B9FFBDBDBDFFCECECEFFE4E4E4FFE4E4E4FFD6D6
      D6FFC6C6C6FFBEBEBEFFB9B9B9FFA7A7A7FF74747480FF00FF00FF00FF008989
      89FFE2E2E2FFDFDFDFFFD8D8D8FFD4D4D4FFCDCDCDFFDCDCDCFFE4E4E4FFC0C0
      C0FFF1F1F1FFEFEFEFFFE9E9E9FFCFCFCFFFBFBFBFFFB9B9B9FFB9B9B9FFBEBE
      BEFFD1D1D1FFE0E0E0FFDCDCDCFFD1D1D1FF93939380FF00FF00FF00FF005C5C
      5C20CECECEEFD8D8D8FFD4D4D4FFCDCDCDFFDEDEDEFFCECECEFFC2C2C2FFF5F5
      F5FFF3F3F3FFF1F1F1FFEFEFEFFFEEEEEEFFECECECFFE9E9E9FFDADADAFFC8C8
      C8FFBBBBBBFFB9B9B9FFB8B8B8FFCACACAFF5C5C5C20FF00FF00FF00FF00FF00
      FF0088888830C4C4C4AFACACACFFBEBEBEFFC3C3C3FFD1D1D1FFC4C4C4FFCBCB
      CBFFE4E4E4FFF3F3F3FFF1F1F1FFEFEFEFFFEEEEEEFFECECECFFEAEAEAFFE7E7
      E7FFE6E6E6FFD3D3D3FFB0B0B0FFA8A8A88FFF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00AAAAAAFFE6E6E6FFE6E6E6FFB1B1B1FFB5B5
      B5FFB9B9B9FFB9B9B9FFC1C1C1FFCBCBCBFFDBDBDBFFE6E4E4FFE8E6E6FFEAEA
      EAFFCACACAFFB6B6B6FFA9A9A99FFF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00AAAAAAFFFBF8F5FFFDF0E4FFE6D9CCFFD1D1
      D1FFC5C5C5FFC3C3C3FFBBBBBBFFC0C0C0FFBEBEBEFFBAA9A9FFB9A5A5FFAAAA
      AAEFB4B4B4AF9A9A9A50FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0066666620C69784FFFFD5AAFFFFD5AAFFFFD5
      AAFFFFDAB5FFFFE0BFFFFFEAD5FFF3E4D3FFECE1D7FFC4A8A8FFAE9F9FA0FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0099666640D9AE97FFFFD9B3FFFFD9B3FFFFD9
      B3FFFFD9B3FFFFD9B3FFFFD9B3FFFFD9B3FFF6D0AFFFB99696FDB9969605FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0099666670F2CEB0FFFFDDBBFFFFDDBBFFFFDD
      BBFFFFDDBBFFFFDDBBFFFFDDBBFFFFDDBBFFD4B2A5FFBC9A9AFFFF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00AC7D79AFFFE5CCFFFFE5CCFFFFE5CCFFFFE5
      CCFFFFE5CCFFFFE5CCFFFFE5CCFFFFE5CCFFB99696FFB7949497FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00BF9892FFFFECD9FFFFECD9FFFFECD9FFFFEC
      D9FFFFECD9FFFFECD9FFFFECD9FFF1DBCCFFB99696FFB996961CFF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0099666660DFC5BBFFFFF0E1FFFFF0E1FFFFF0E1FFFFF0
      E1FFFFF0E1FFFFF0E1FFFFF0E1FFCEB1ADFFBC9A9AFFFF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00AA7E7DBFFFF7EEFFFFF7EEFFFFF7EEFFFFF7EEFFFFF7
      EEFFFFF7EEFFFFF7EEFFFBF2E9FFB99696FFB59090A8FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0099666650E6D8D7FFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFD
      FBFFFFFDFBFFFFFDFBFFF3ECEAFFBA9797F8B996963CFF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0099666620996666AFB99696FFB99696FFB99696FFB99696FFB99696FFB996
      96FFB99696FFB99696FFB99696FFB0898959B9969605FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton [14]
    Left = 541
    Top = 399
    Width = 123
    Height = 41
    Cancel = True
    Caption = 'Salir'
    TabOrder = 9
    OnClick = cxButton2Click
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
  inherited ds: TDataSource
    DataSet = mSup
    Left = 192
    Top = 118
  end
  object mSup: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'idSuplidor'
        DataType = ftInteger
      end
      item
        Name = 'Nombre'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Telefono1'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'Direccion'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'Telefono2'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'Fecha'
        DataType = ftDateTime
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
    Left = 156
    Top = 264
    object mSupidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
      OnValidate = mSupidSuplidorValidate
    end
    object mSupNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object mSupTelefono1: TStringField
      FieldName = 'Telefono1'
      Size = 14
    end
    object mSupDireccion: TStringField
      FieldName = 'Direccion'
      Size = 200
    end
    object mSupTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 14
    end
    object mSupFecha: TDateTimeField
      FieldName = 'Fecha'
    end
  end
  object rsEstado: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpRepAplicaciones;1'
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
        Name = '@idSup'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@fec'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 374
    Top = 118
    object rsEstadoidDocumento: TIntegerField
      FieldName = 'idDocumento'
      ReadOnly = True
    end
    object rsEstadoFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsEstadoTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 22
      Size = 2
    end
    object rsEstadoFechaPago: TDateTimeField
      FieldName = 'FechaPago'
    end
    object rsEstadoPago: TStringField
      FieldName = 'Pago'
    end
    object rsEstadoTipoPago: TStringField
      FieldName = 'TipoPago'
      Size = 5
    end
    object rsEstadoMontoPago: TBCDField
      FieldName = 'MontoPago'
      Precision = 19
      Size = 2
    end
    object rsEstadoReferencia: TStringField
      FieldName = 'Referencia'
      ReadOnly = True
      Size = 26
    end
  end
  object dsEstado: TDataSource
    DataSet = rsEstado
    Left = 192
    Top = 118
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 398
    Top = 4
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 15658734
    end
  end
  object plHeader: TppDBPipeline
    DataSource = ds
    UserName = 'plHeader'
    Left = 228
    Top = 218
    object plHeaderppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'idSuplidor'
      FieldName = 'idSuplidor'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object plHeaderppField2: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object plHeaderppField3: TppField
      FieldAlias = 'Telefono1'
      FieldName = 'Telefono1'
      FieldLength = 14
      DisplayWidth = 14
      Position = 2
    end
    object plHeaderppField4: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 200
      DisplayWidth = 200
      Position = 3
    end
    object plHeaderppField5: TppField
      FieldAlias = 'Telefono2'
      FieldName = 'Telefono2'
      FieldLength = 14
      DisplayWidth = 14
      Position = 4
    end
    object plHeaderppField6: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 5
    end
  end
  object plEstado: TppDBPipeline
    DataSource = dsEstado
    UserName = 'plEstado'
    Left = 226
    Top = 286
    object plEstadoppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'idDocumento'
      FieldName = 'idDocumento'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object plEstadoppField2: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object plEstadoppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 23
      Position = 2
    end
    object plEstadoppField4: TppField
      FieldAlias = 'FechaPago'
      FieldName = 'FechaPago'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object plEstadoppField5: TppField
      FieldAlias = 'Pago'
      FieldName = 'Pago'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object plEstadoppField6: TppField
      FieldAlias = 'TipoPago'
      FieldName = 'TipoPago'
      FieldLength = 5
      DisplayWidth = 5
      Position = 5
    end
    object plEstadoppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'MontoPago'
      FieldName = 'MontoPago'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 6
    end
    object plEstadoppField8: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 26
      DisplayWidth = 26
      Position = 7
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = plEstado
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = False
    Left = 174
    Top = 188
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'plEstado'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 37571
      mmPrintPosition = 0
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 171715
        mmTop = 33602
        mmWidth = 31485
        BandType = 0
      end
      object ppVariable2: TppVariable
        UserName = 'Variable2'
        AutoSize = False
        CalcOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        OnCalc = ppVariable2Calc
        Transparent = True
        mmHeight = 3440
        mmLeft = 1323
        mmTop = 25135
        mmWidth = 92340
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 157163
        mmTop = 29633
        mmWidth = 46038
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Cuentas por Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1588
        mmTop = 34131
        mmWidth = 33602
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'Fax'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 33338
        mmTop = 20902
        mmWidth = 8731
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'Fax'
        DataPipeline = plHeader
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 3440
        mmLeft = 43656
        mmTop = 20902
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'Tel'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1588
        mmTop = 20902
        mmWidth = 7408
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'Telefono1'
        DataPipeline = plHeader
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 3440
        mmLeft = 10319
        mmTop = 20902
        mmWidth = 22225
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'Direccion'
        DataPipeline = plHeader
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 3440
        mmLeft = 1588
        mmTop = 16933
        mmWidth = 120121
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'Nombre'
        DataPipeline = plHeader
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 3440
        mmLeft = 1588
        mmTop = 12965
        mmWidth = 77523
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 'A nombre de:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1588
        mmTop = 4763
        mmWidth = 24342
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'idSuplidor'
        DataPipeline = plHeader
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 3440
        mmLeft = 1588
        mmTop = 8996
        mmWidth = 24871
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'TipoPago'
        DataPipeline = plEstado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3440
        mmLeft = 96573
        mmTop = 265
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'FechaPago'
        DataPipeline = plEstado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3440
        mmLeft = 138642
        mmTop = 265
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        BlankWhenZero = True
        DataField = 'MontoPago'
        DataPipeline = plEstado
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3440
        mmLeft = 164042
        mmTop = 265
        mmWidth = 33338
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'Pago'
        DataPipeline = plEstado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3440
        mmLeft = 109802
        mmTop = 265
        mmWidth = 26988
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'Total'
        DataPipeline = plEstado
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3440
        mmLeft = 60061
        mmTop = 1058
        mmWidth = 30956
        BandType = 7
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'TOTALES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 2646
        mmTop = 1058
        mmWidth = 21960
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'MontoPago'
        DataPipeline = plEstado
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3440
        mmLeft = 166423
        mmTop = 1058
        mmWidth = 30956
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'idDocumento'
      DataPipeline = plEstado
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plEstado'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 14552
        mmPrintPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Brush.Color = 15987699
          ParentWidth = True
          Pen.Color = clSilver
          mmHeight = 14552
          mmLeft = 0
          mmTop = 0
          mmWidth = 203200
          BandType = 3
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          AutoSize = False
          Caption = 'TIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 96573
          mmTop = 10319
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          AutoSize = False
          Caption = 'PAGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 109802
          mmTop = 10319
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          AutoSize = False
          Caption = 'FECHA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 138642
          mmTop = 10319
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          AutoSize = False
          Caption = 'MONTO PAGADO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 165629
          mmTop = 10319
          mmWidth = 31221
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          AutoSize = False
          Caption = 'DOC #'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 2117
          mmTop = 529
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          AutoSize = False
          Caption = 'FECHA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 41540
          mmTop = 529
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          AutoSize = False
          Caption = 'TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 67998
          mmTop = 529
          mmWidth = 23019
          BandType = 3
          GroupNo = 0
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          DataField = 'Referencia'
          DataPipeline = plEstado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 2117
          mmTop = 4233
          mmWidth = 35454
          BandType = 3
          GroupNo = 0
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          DataField = 'Fecha'
          DataPipeline = plEstado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 41540
          mmTop = 4233
          mmWidth = 23283
          BandType = 3
          GroupNo = 0
        end
        object ppDBText13: TppDBText
          UserName = 'DBText13'
          BlankWhenZero = True
          DataField = 'Total'
          DataPipeline = plEstado
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 65881
          mmTop = 4233
          mmWidth = 25135
          BandType = 3
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Pen.Color = clSilver
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 9525
          mmWidth = 203200
          BandType = 3
          GroupNo = 0
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          AutoSize = False
          Caption = 'Pagos y creditos aplicados a este documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 2381
          mmTop = 10054
          mmWidth = 82286
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'MontoPago'
          DataPipeline = plEstado
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plEstado'
          mmHeight = 3440
          mmLeft = 156898
          mmTop = 529
          mmWidth = 40481
          BandType = 5
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          ParentWidth = True
          Weight = 0.500000000000000000
          mmHeight = 529
          mmLeft = 0
          mmTop = 0
          mmWidth = 203200
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
end

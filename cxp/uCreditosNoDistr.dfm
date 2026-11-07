inherited CreditosNoDistr: TCreditosNoDistr
  Left = 304
  Top = 193
  Caption = 'Creditos x distribuir'
  ClientHeight = 443
  ClientWidth = 655
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Width = 655
  end
  inherited Gradient2: TGradient
    Width = 655
  end
  object Label17: TLabel [2]
    Left = 329
    Top = 2
    Width = 317
    Height = 23
    Alignment = taRightJustify
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Creditos no aplicados totalmente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object dxPageControl1: TcxPageControl [3]
    Left = 0
    Top = 33
    Width = 655
    Height = 410
    ActivePage = dxTabSheet1
    Align = alClient
    LookAndFeel.NativeStyle = True
    TabOrder = 0
    ClientRectBottom = 406
    ClientRectLeft = 2
    ClientRectRight = 651
    ClientRectTop = 22
    object dxTabSheet1: TcxTabSheet
      Caption = 'Por suplidor'
      object Label4: TLabel
        Left = 8
        Top = 10
        Width = 42
        Height = 13
        Caption = 'Suplidor:'
        Transparent = True
      end
      object Label1: TLabel
        Left = 8
        Top = 77
        Width = 33
        Height = 13
        Caption = 'Fecha:'
        Transparent = True
      end
      object cxGrid1: TcxGrid
        Left = 3
        Top = 128
        Width = 642
        Height = 209
        TabOrder = 0
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
          object cxGrid1DBTableView1Tipo: TcxGridDBColumn
            DataBinding.FieldName = 'Tipo'
            Options.Editing = False
            Options.Filtering = False
            Width = 52
          end
          object cxGrid1DBTableView1Fecha: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Options.Editing = False
            Options.Filtering = False
            Width = 87
          end
          object cxGrid1DBTableView1Referencia: TcxGridDBColumn
            DataBinding.FieldName = 'Referencia'
            Options.Editing = False
            Options.Filtering = False
            Width = 98
          end
          object cxGrid1DBTableView1Debito: TcxGridDBColumn
            DataBinding.FieldName = 'Total'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
            Width = 118
          end
          object cxGrid1DBTableView1Credito: TcxGridDBColumn
            DataBinding.FieldName = 'Aplicado'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
            Width = 113
          end
          object cxGrid1DBTableView1Balance: TcxGridDBColumn
            DataBinding.FieldName = 'Pendiente'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
            Width = 109
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object cxButton3: TcxButton
        Left = 4
        Top = 343
        Width = 123
        Height = 41
        Caption = 'Imprimir'
        TabOrder = 1
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
      object cxButton2: TcxButton
        Left = 522
        Top = 343
        Width = 123
        Height = 41
        Cancel = True
        Caption = 'Salir'
        TabOrder = 2
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
      object cxButton1: TcxButton
        Left = 4
        Top = 98
        Width = 121
        Height = 25
        Caption = 'Mostar'
        TabOrder = 3
        OnClick = cxButton1Click
        LookAndFeel.NativeStyle = True
      end
      object deFecha: TcxDBDateEdit
        Left = 54
        Top = 72
        Width = 121
        Height = 21
        DataBinding.DataField = 'Hasta'
        DataBinding.DataSource = ds
        Properties.SaveTime = False
        Style.Color = 16317176
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 4
      end
      object edTel1: TcxDBTextEdit
        Left = 54
        Top = 50
        Width = 197
        Height = 21
        TabStop = False
        DataBinding.DataField = 'Telefono1'
        DataBinding.DataSource = ds
        Properties.ReadOnly = True
        Style.Color = 13818837
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 5
      end
      object edDir: TcxDBTextEdit
        Left = 54
        Top = 28
        Width = 497
        Height = 21
        TabStop = False
        DataBinding.DataField = 'Direccion'
        DataBinding.DataSource = ds
        Properties.ReadOnly = True
        Style.Color = 13818837
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 6
      end
      object beSuplidor: TcxDBButtonEdit
        Left = 54
        Top = 6
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
        TabOrder = 7
      end
      object edNombre: TcxDBTextEdit
        Left = 176
        Top = 6
        Width = 375
        Height = 21
        TabStop = False
        DataBinding.DataField = 'Nombre'
        DataBinding.DataSource = ds
        Properties.ReadOnly = True
        Style.Color = 13818837
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 8
      end
      object edTel2: TcxDBTextEdit
        Left = 256
        Top = 50
        Width = 197
        Height = 21
        TabStop = False
        DataBinding.DataField = 'Telefono2'
        DataBinding.DataSource = ds
        Properties.ReadOnly = True
        Style.Color = 13818837
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 9
      end
    end
    object dxTabSheet2: TcxTabSheet
      Caption = 'General'
      object Label2: TLabel
        Left = 8
        Top = 13
        Width = 33
        Height = 13
        Caption = 'Fecha:'
        Transparent = True
      end
      object deHasta2: TcxDateEdit
        Left = 54
        Top = 9
        Width = 121
        Height = 21
        Properties.SaveTime = False
        Style.Color = 16317176
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
      object cxButton4: TcxButton
        Left = 196
        Top = 4
        Width = 121
        Height = 30
        Caption = 'Mostar'
        TabOrder = 1
        OnClick = cxButton4Click
        LookAndFeel.NativeStyle = True
      end
      object cxGrid2: TcxGrid
        Left = 3
        Top = 41
        Width = 642
        Height = 295
        TabOrder = 2
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsCreditos
          DataController.KeyFieldNames = 'IdDocumento'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          Styles.ContentEven = cxStyle1
          object cxGridDBTableView1DBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Suplidor'
            Visible = False
            GroupIndex = 0
            Options.Filtering = False
            Width = 237
          end
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Tipo'
            Options.Editing = False
            Options.Filtering = False
            Width = 52
          end
          object cxGridDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Options.Editing = False
            Options.Filtering = False
            Width = 87
          end
          object cxGridDBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'Referencia'
            Options.Editing = False
            Options.Filtering = False
            Width = 98
          end
          object cxGridDBColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'Total'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
            Width = 118
          end
          object cxGridDBColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'Aplicado'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
            Width = 113
          end
          object cxGridDBColumn6: TcxGridDBColumn
            DataBinding.FieldName = 'Pendiente'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
            Width = 109
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object cxButton5: TcxButton
        Left = 4
        Top = 341
        Width = 123
        Height = 41
        Caption = 'Imprimir'
        TabOrder = 3
        OnClick = cxButton5Click
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
      object cxButton6: TcxButton
        Left = 522
        Top = 341
        Width = 123
        Height = 41
        Cancel = True
        Caption = 'Salir'
        TabOrder = 4
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
    end
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
        Name = 'Desde'
        DataType = ftDateTime
      end
      item
        Name = 'Hasta'
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
    object mSupDesde: TDateTimeField
      FieldName = 'Desde'
    end
    object mSupHasta: TDateTimeField
      FieldName = 'Hasta'
    end
  end
  object rsEstado: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpDetCRNoDistrib;1'
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
        Name = '@idEnt'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@final'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 374
    Top = 114
    object rsEstadoLineaNo: TIntegerField
      FieldName = 'LineaNo'
      ReadOnly = True
    end
    object rsEstadoTipo: TStringField
      FieldName = 'Tipo'
      Size = 10
    end
    object rsEstadoidTrans: TIntegerField
      FieldName = 'idTrans'
    end
    object rsEstadoIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
    end
    object rsEstadoFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsEstadoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsEstadoStatus: TStringField
      FieldName = 'Status'
    end
    object rsEstadoTotal: TBCDField
      FieldName = 'Total'
      currency = True
      Precision = 19
      Size = 2
    end
    object rsEstadoAplicado: TBCDField
      FieldName = 'Aplicado'
      currency = True
      Precision = 19
      Size = 2
    end
    object rsEstadoPendiente: TBCDField
      FieldName = 'Pendiente'
      ReadOnly = True
      currency = True
      Precision = 20
      Size = 2
    end
  end
  object dsEstado: TDataSource
    DataSet = rsEstado
    Left = 192
    Top = 118
  end
  object cxStyleRepository1: TcxStyleRepository
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 15658734
    end
  end
  object plHeader: TppDBPipeline
    DataSource = ds
    UserName = 'plHeader'
    Left = 100
    Top = 242
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
      FieldAlias = 'Desde'
      FieldName = 'Desde'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 5
    end
    object plHeaderppField7: TppField
      FieldAlias = 'Hasta'
      FieldName = 'Hasta'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 6
    end
  end
  object plEstado: TppDBPipeline
    DataSource = dsEstado
    UserName = 'plEstado'
    Left = 114
    Top = 334
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = plEstado
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
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 174
    Top = 188
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plEstado'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 42069
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = clSilver
        Pen.Style = psClear
        mmHeight = 3969
        mmLeft = 529
        mmTop = 38100
        mmWidth = 201084
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'TIPO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1323
        mmTop = 38365
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'ID DOC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 14552
        mmTop = 38365
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'DOC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 56886
        mmTop = 38365
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'FECHA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 75142
        mmTop = 38365
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
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
        mmLeft = 110596
        mmTop = 38365
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'APLICADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 142082
        mmTop = 38365
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'PENDIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 162719
        mmTop = 38365
        mmWidth = 37571
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
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
        HyperlinkEnabled = False
        AutoSize = False
        BlankWhenZero = False
        CalcOrder = 0
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
        HyperlinkEnabled = False
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
        HyperlinkEnabled = False
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
        HyperlinkEnabled = False
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
        HyperlinkEnabled = False
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
        HyperlinkEnabled = False
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
        HyperlinkEnabled = False
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
        HyperlinkEnabled = False
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
        HyperlinkEnabled = False
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
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Creditos de:'
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
        HyperlinkEnabled = False
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
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
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
        mmHeight = 3440
        mmLeft = 1323
        mmTop = 265
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = plEstado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3387
        mmLeft = 56886
        mmTop = 265
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
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
        mmHeight = 3387
        mmLeft = 75142
        mmTop = 265
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
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
        mmHeight = 3387
        mmLeft = 94986
        mmTop = 265
        mmWidth = 33338
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Aplicado'
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
        mmHeight = 3387
        mmLeft = 130175
        mmTop = 265
        mmWidth = 31485
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Pendiente'
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
        mmHeight = 3387
        mmLeft = 162719
        mmTop = 265
        mmWidth = 37571
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'IdDocumento'
        DataPipeline = plEstado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEstado'
        mmHeight = 3440
        mmLeft = 15081
        mmTop = 529
        mmWidth = 32279
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 1323
        mmTop = 265
        mmWidth = 200025
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
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
        mmLeft = 87842
        mmTop = 1058
        mmWidth = 40481
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        DataField = 'Aplicado'
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
        mmLeft = 130704
        mmTop = 1058
        mmWidth = 30956
        BandType = 7
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        Caption = 'TOTALES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 2646
        mmTop = 1058
        mmWidth = 14309
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        DataField = 'Pendiente'
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
        mmLeft = 164836
        mmTop = 1058
        mmWidth = 35454
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object rsCreditos: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpCRNoDistribAll;1'
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
        Name = '@final'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 342
    Top = 178
    object rsCreditosLineaNo: TIntegerField
      FieldName = 'LineaNo'
      ReadOnly = True
    end
    object rsCreditosidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
    end
    object rsCreditosSuplidor: TStringField
      FieldName = 'Suplidor'
      Size = 100
    end
    object rsCreditosTipo: TStringField
      FieldName = 'Tipo'
      Size = 10
    end
    object rsCreditosidTrans: TIntegerField
      FieldName = 'idTrans'
    end
    object rsCreditosIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
    end
    object rsCreditosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsCreditosReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsCreditosStatus: TStringField
      FieldName = 'Status'
    end
    object rsCreditosTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
      Size = 2
    end
    object rsCreditosAplicado: TBCDField
      FieldName = 'Aplicado'
      Precision = 19
      Size = 2
    end
    object rsCreditosPendiente: TBCDField
      FieldName = 'Pendiente'
      ReadOnly = True
      Precision = 20
      Size = 2
    end
  end
  object dsCreditos: TDataSource
    DataSet = rsCreditos
    Left = 272
    Top = 302
  end
  object RepCreditos: TppReport
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
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 278
    Top = 180
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppTitleBand2: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 21431
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape1'
        Brush.Color = clSilver
        Pen.Style = psClear
        mmHeight = 3969
        mmLeft = 529
        mmTop = 17463
        mmWidth = 201084
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'TIPO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1323
        mmTop = 17727
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'ID DOC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 14552
        mmTop = 17727
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'DOC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 56886
        mmTop = 17727
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'FECHA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 75142
        mmTop = 17727
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
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
        mmLeft = 110596
        mmTop = 17727
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'APLICADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 142082
        mmTop = 17727
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'PENDIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 162719
        mmTop = 17727
        mmWidth = 37571
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
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
        mmTop = 12965
        mmWidth = 31485
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
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
        mmTop = 8996
        mmWidth = 46038
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Creditos no distribuidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 794
        mmTop = 2910
        mmWidth = 72231
        BandType = 0
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 4318
        mmLeft = 1058
        mmTop = 8731
        mmWidth = 18965
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText18: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Tipo'
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
        mmTop = 265
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 56886
        mmTop = 265
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 75142
        mmTop = 265
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Total'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 94986
        mmTop = 265
        mmWidth = 33338
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Aplicado'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 130175
        mmTop = 265
        mmWidth = 31485
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Pendiente'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 162719
        mmTop = 265
        mmWidth = 37571
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'IdDocumento'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 15081
        mmTop = 529
        mmWidth = 32279
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line2'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 1323
        mmTop = 265
        mmWidth = 200025
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 87842
        mmTop = 1058
        mmWidth = 40481
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        DataField = 'Aplicado'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 130704
        mmTop = 1058
        mmWidth = 30956
        BandType = 7
      end
      object ppLabel24: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        Caption = 'TOTALES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 2646
        mmTop = 1058
        mmWidth = 14309
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        DataField = 'Pendiente'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 164836
        mmTop = 1058
        mmWidth = 35454
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Suplidor'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppDBText13: TppDBText
          UserName = 'DBText13'
          HyperlinkEnabled = False
          DataField = 'Suplidor'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3440
          mmLeft = 1058
          mmTop = 1588
          mmWidth = 93398
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppLine3: TppLine
          UserName = 'Line3'
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 529
          mmLeft = 1323
          mmTop = 265
          mmWidth = 200025
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc7'
          HyperlinkEnabled = False
          DataField = 'Total'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3440
          mmLeft = 87842
          mmTop = 529
          mmWidth = 40481
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc8'
          HyperlinkEnabled = False
          DataField = 'Aplicado'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3440
          mmLeft = 130704
          mmTop = 529
          mmWidth = 30956
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc9'
          HyperlinkEnabled = False
          DataField = 'Pendiente'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3440
          mmLeft = 164836
          mmTop = 529
          mmWidth = 35454
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsCreditos
    UserName = 'plEstado1'
    Left = 218
    Top = 326
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'LineaNo'
      FieldName = 'LineaNo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'idSuplidor'
      FieldName = 'idSuplidor'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'Suplidor'
      FieldName = 'Suplidor'
      FieldLength = 100
      DisplayWidth = 100
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'Tipo'
      FieldName = 'Tipo'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'idTrans'
      FieldName = 'idTrans'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'IdDocumento'
      FieldName = 'IdDocumento'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'Status'
      FieldName = 'Status'
      FieldLength = 20
      DisplayWidth = 20
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aplicado'
      FieldName = 'Aplicado'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pendiente'
      FieldName = 'Pendiente'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 21
      Position = 11
    end
  end
end

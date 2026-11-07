inherited ConsultarCheque: TConsultarCheque
  Left = 352
  Top = 263
  ActiveControl = seNum
  Caption = 'Consultar cheque'
  ClientHeight = 360
  ClientWidth = 644
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Width = 644
  end
  inherited Gradient2: TGradient
    Width = 644
  end
  object Label1: TLabel [2]
    Left = 10
    Top = 46
    Width = 39
    Height = 13
    Caption = 'Cuenta:'
  end
  object Label2: TLabel [3]
    Left = 458
    Top = 46
    Width = 41
    Height = 13
    Caption = 'Numero:'
  end
  object Label17: TLabel [4]
    Left = 399
    Top = 2
    Width = 235
    Height = 27
    Alignment = taRightJustify
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 'Consulta de cheques'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object luCta: TcxLookupComboBox [5]
    Left = 56
    Top = 42
    Width = 377
    Height = 21
    Properties.KeyFieldNames = 'idCuentaBanco'
    Properties.ListColumns = <
      item
        FieldName = 'Nombre'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsBancos
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object seNum: TcxSpinEdit [6]
    Left = 504
    Top = 42
    Width = 91
    Height = 21
    Properties.MinValue = 1.000000000000000000
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Value = 1
  end
  object cxButton1: TcxButton [7]
    Left = 8
    Top = 66
    Width = 123
    Height = 29
    Caption = 'Mostrar'
    Default = True
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
  object cxPageControl1: TcxPageControl [8]
    Left = 9
    Top = 100
    Width = 627
    Height = 211
    ActivePage = cxTabSheet1
    LookAndFeel.NativeStyle = True
    TabOrder = 3
    ClientRectBottom = 207
    ClientRectLeft = 2
    ClientRectRight = 623
    ClientRectTop = 22
    object cxTabSheet1: TcxTabSheet
      Caption = 'Cheque'
      ImageIndex = 0
      object Shape1: TShape
        Left = 6
        Top = 62
        Width = 611
        Height = 1
        Pen.Color = 15491919
      end
      object Label3: TLabel
        Left = 6
        Top = 63
        Width = 55
        Height = 13
        Caption = 'Beneficiario'
        Transparent = True
      end
      object Label4: TLabel
        Left = 434
        Top = 63
        Width = 70
        Height = 13
        Caption = 'Monto a pagar'
        Transparent = True
      end
      object Label5: TLabel
        Left = 345
        Top = 9
        Width = 86
        Height = 13
        Caption = 'Fecha de emision:'
        Transparent = True
      end
      object Label6: TLabel
        Left = 6
        Top = 146
        Width = 46
        Height = 13
        Caption = 'Concepto'
        Transparent = True
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 6
        Top = 39
        Width = 403
        Height = 21
        DataBinding.DataField = 'Nombre'
        DataBinding.DataSource = ds
        Style.Color = 16317176
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.TransparentBorder = True
        TabOrder = 0
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 434
        Top = 39
        Width = 183
        Height = 21
        DataBinding.DataField = 'TotalNeto'
        DataBinding.DataSource = ds
        Style.Color = 16317176
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.TransparentBorder = True
        TabOrder = 1
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 434
        Top = 6
        Width = 183
        Height = 21
        DataBinding.DataField = 'Fecha'
        DataBinding.DataSource = ds
        Style.Color = 16317176
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.TransparentBorder = True
        TabOrder = 2
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 320
        Top = 159
        Width = 299
        Height = 21
        DataBinding.DataField = 'DescStatus'
        DataBinding.DataSource = ds
        Style.Color = 16317176
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.TransparentBorder = True
        TabOrder = 3
      end
      object cxDBMemo1: TcxDBMemo
        Left = 4
        Top = 82
        Width = 615
        Height = 65
        DataBinding.DataField = 'Concepto'
        DataBinding.DataSource = ds
        Style.Color = 16317176
        Style.LookAndFeel.NativeStyle = True
        TabOrder = 4
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Documentos pagados por este cheque'
      ImageIndex = 1
      object grDocs: TcxGrid
        Left = 0
        Top = 0
        Width = 621
        Height = 185
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object grDocsDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsDocs
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          object grDocsDBTableView1Abrev: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'Abrev'
            Options.Editing = False
            Options.Filtering = False
            Width = 49
          end
          object grDocsDBTableView1Referencia: TcxGridDBColumn
            DataBinding.FieldName = 'Referencia'
            Options.Editing = False
            Options.Filtering = False
            Width = 113
          end
          object grDocsDBTableView1IdDocXPagar: TcxGridDBColumn
            Caption = 'Numero'
            DataBinding.FieldName = 'IdDocXPagar'
            Options.Editing = False
            Options.Filtering = False
          end
          object grDocsDBTableView1FechaDoc: TcxGridDBColumn
            Caption = 'Fecha'
            DataBinding.FieldName = 'FechaDoc'
            Options.Editing = False
            Options.Filtering = False
          end
          object grDocsDBTableView1Total: TcxGridDBColumn
            DataBinding.FieldName = 'Total'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
          end
          object grDocsDBTableView1Valor: TcxGridDBColumn
            Caption = '$ Pagado'
            DataBinding.FieldName = 'Valor'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
          end
        end
        object grDocsLevel1: TcxGridLevel
          GridView = grDocsDBTableView1
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Codificacion contable'
      ImageIndex = 2
      object grCtas: TcxGrid
        Left = 0
        Top = 0
        Width = 621
        Height = 185
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = dsCtas
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView1idCuenta: TcxGridDBColumn
            Caption = 'Cuenta'
            DataBinding.FieldName = 'idCuenta'
            Options.Editing = False
            Options.Filtering = False
          end
          object cxGridDBTableView1Descripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
            Options.Editing = False
            Options.Filtering = False
            Width = 257
          end
          object cxGridDBTableView1DBColumn1: TcxGridDBColumn
            Caption = 'Auxiliar'
            DataBinding.FieldName = 'idAuxiliar'
            Options.Filtering = False
            Width = 50
          end
          object cxGridDBTableView1Debito: TcxGridDBColumn
            DataBinding.FieldName = 'Debito'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
            Width = 94
          end
          object cxGridDBTableView1Credito: TcxGridDBColumn
            DataBinding.FieldName = 'Credito'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
            Width = 98
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  object cxButton2: TcxButton [9]
    Left = 510
    Top = 314
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
  object cxButton3: TcxButton [10]
    Left = 8
    Top = 314
    Width = 123
    Height = 41
    Caption = 'Reimprimir'
    TabOrder = 5
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
  object cxButton4: TcxButton [11]
    Left = 600
    Top = 38
    Width = 29
    Height = 29
    Default = True
    TabOrder = 6
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
  inherited ds: TDataSource
    DataSet = rsCheque
    Left = 82
    Top = 257
  end
  object rsCheque: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpBuscarCheque;1'
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
        Name = '@idCta'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@num'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 76
    Top = 298
    object rsChequeidDocumento: TIntegerField
      FieldName = 'idDocumento'
      ReadOnly = True
    end
    object rsChequeidTrans: TIntegerField
      FieldName = 'idTrans'
    end
    object rsChequeFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsChequeidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
    end
    object rsChequeReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsChequeValor: TBCDField
      FieldName = 'Valor'
      currency = True
      Precision = 19
      Size = 2
    end
    object rsChequeMontoImpuestos: TBCDField
      FieldName = 'MontoImpuestos'
      Precision = 19
      Size = 2
    end
    object rsChequeMontoDescuento: TBCDField
      FieldName = 'MontoDescuento'
      Precision = 19
      Size = 2
    end
    object rsChequeMontoRetenciones: TBCDField
      FieldName = 'MontoRetenciones'
      Precision = 19
      Size = 2
    end
    object rsChequeConcepto: TStringField
      FieldName = 'Concepto'
      Size = 6000
    end
    object rsChequeidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsChequeCodifManual: TBooleanField
      FieldName = 'CodifManual'
    end
    object rsChequeStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object rsChequeFechaStatus: TDateTimeField
      FieldName = 'FechaStatus'
    end
    object rsChequeidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
    end
    object rsChequeidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsChequeTipoDocOrigen: TStringField
      FieldName = 'TipoDocOrigen'
      Size = 2
    end
    object rsChequeDocOrigen: TIntegerField
      FieldName = 'DocOrigen'
    end
    object rsChequeTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      currency = True
      Precision = 22
      Size = 2
    end
    object rsChequeNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsChequeDescStatus: TStringField
      FieldName = 'DescStatus'
      ReadOnly = True
      Size = 34
    end
    object rsChequeDias: TSmallintField
      FieldName = 'Dias'
    end
    object rsChequeMostrarEnCXP: TBooleanField
      FieldName = 'MostrarEnCXP'
    end
    object rsChequeBienesServicio: TSmallintField
      FieldName = 'BienesServicio'
    end
    object rsChequeTotalNeto: TBCDField
      FieldName = 'TotalNeto'
      ReadOnly = True
      currency = True
      Precision = 20
      Size = 2
    end
  end
  object rsBancos: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpListaBancos;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 14
    Top = 296
    object rsBancosidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
      ReadOnly = True
    end
    object rsBancosNumCuenta: TStringField
      FieldName = 'NumCuenta'
      Size = 30
    end
    object rsBancosNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsBancosidCuentaMayor: TStringField
      FieldName = 'idCuentaMayor'
      Size = 16
    end
    object rsBancosUltimoCheque: TIntegerField
      FieldName = 'UltimoCheque'
    end
  end
  object rsDocs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpBuscarDocDtl;1'
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
        Name = '@idDoc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 134
    Top = 302
    object rsDocsidDocumento: TIntegerField
      FieldName = 'idDocumento'
    end
    object rsDocsLineaNum: TIntegerField
      FieldName = 'LineaNum'
      ReadOnly = True
    end
    object rsDocsIdDocXPagar: TIntegerField
      FieldName = 'IdDocXPagar'
    end
    object rsDocsValor: TBCDField
      FieldName = 'Valor'
      currency = True
      Precision = 19
      Size = 2
    end
    object rsDocsFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsDocsFechaDoc: TDateTimeField
      FieldName = 'FechaDoc'
    end
    object rsDocsTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 22
      Size = 2
    end
    object rsDocsReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsDocsAbrev: TStringField
      FieldName = 'Abrev'
      Size = 5
    end
  end
  object rsCtas: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpBuscarCtasDoc;1'
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
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 196
    Top = 300
    object rsCtasidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsCtasDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 60
    end
    object rsCtasDebCre: TWordField
      FieldName = 'DebCre'
    end
    object rsCtasAutomatica: TBooleanField
      FieldName = 'Automatica'
    end
    object rsCtasDebito: TBCDField
      FieldName = 'Debito'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsCtasCredito: TBCDField
      FieldName = 'Credito'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsCtasidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
    end
  end
  object dsBancos: TDataSource
    DataSet = rsBancos
    Left = 20
    Top = 257
  end
  object dsDocs: TDataSource
    DataSet = rsDocs
    Left = 138
    Top = 257
  end
  object dsCtas: TDataSource
    DataSet = rsCtas
    Left = 198
    Top = 257
  end
  object rsbuscarXID: TADODataSet
    Connection = dm.Coneccion
    CommandText = 'cxpBuscarDocumento;1'
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
        Name = '@idDoc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 305
    Top = 210
    object rsbuscarXIDidDocumento: TAutoIncField
      FieldName = 'idDocumento'
      ReadOnly = True
    end
    object rsbuscarXIDidTrans: TIntegerField
      FieldName = 'idTrans'
    end
    object rsbuscarXIDFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsbuscarXIDidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
    end
    object rsbuscarXIDReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsbuscarXIDValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object rsbuscarXIDMontoImpuestos: TBCDField
      FieldName = 'MontoImpuestos'
      Precision = 19
      Size = 2
    end
    object rsbuscarXIDMontoDescuento: TBCDField
      FieldName = 'MontoDescuento'
      Precision = 19
      Size = 2
    end
    object rsbuscarXIDMontoRetenciones: TBCDField
      FieldName = 'MontoRetenciones'
      Precision = 19
      Size = 2
    end
    object rsbuscarXIDConcepto: TStringField
      FieldName = 'Concepto'
      Size = 600
    end
    object rsbuscarXIDidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsbuscarXIDCodifManual: TBooleanField
      FieldName = 'CodifManual'
    end
    object rsbuscarXIDStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object rsbuscarXIDFechaStatus: TDateTimeField
      FieldName = 'FechaStatus'
    end
    object rsbuscarXIDidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
    end
    object rsbuscarXIDidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsbuscarXIDTipoDocOrigen: TStringField
      FieldName = 'TipoDocOrigen'
      Size = 2
    end
    object rsbuscarXIDDocOrigen: TIntegerField
      FieldName = 'DocOrigen'
    end
    object rsbuscarXIDDias: TSmallintField
      FieldName = 'Dias'
    end
    object rsbuscarXIDMostrarEnCXP: TBooleanField
      FieldName = 'MostrarEnCXP'
    end
    object rsbuscarXIDBienesServicio: TSmallintField
      FieldName = 'BienesServicio'
    end
    object rsbuscarXIDNotaAdicional: TStringField
      FieldName = 'NotaAdicional'
      Size = 100
    end
    object rsbuscarXIDidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
    end
    object rsbuscarXIDCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object rsbuscarXIDGUIDDocumento: TGuidField
      FieldName = 'GUIDDocumento'
      FixedChar = True
      Size = 38
    end
    object rsbuscarXIDTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 21
      Size = 2
    end
    object rsbuscarXIDTotalNeto: TBCDField
      FieldName = 'TotalNeto'
      ReadOnly = True
      Precision = 20
      Size = 2
    end
    object rsbuscarXIDTelefono1: TStringField
      FieldName = 'Telefono1'
      Size = 30
    end
    object rsbuscarXIDTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 30
    end
    object rsbuscarXIDFax: TStringField
      FieldName = 'Fax'
      Size = 30
    end
    object rsbuscarXIDDireccion: TStringField
      FieldName = 'Direccion'
      Size = 250
    end
    object rsbuscarXIDNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsbuscarXIDRNC: TStringField
      FieldName = 'RNC'
    end
    object rsbuscarXIDDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 30
    end
    object rsbuscarXIDDebCre: TWordField
      FieldName = 'DebCre'
    end
    object rsbuscarXIDAbrev: TStringField
      FieldName = 'Abrev'
      Size = 5
    end
    object rsbuscarXIDTotalRetenciones: TFloatField
      FieldName = 'TotalRetenciones'
      ReadOnly = True
    end
  end
end

inherited MantConceptos: TMantConceptos
  Left = 316
  Top = 143
  Caption = 'Conceptos'
  ClientHeight = 398
  ClientWidth = 622
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Width = 622
  end
  inherited Gradient2: TGradient
    Width = 622
  end
  object Label1: TLabel [2]
    Left = 293
    Top = 2
    Width = 299
    Height = 24
    Alignment = taRightJustify
    Caption = 'Agregar/Editar tipos de movimiento '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object cxGrid1: TcxGrid [3]
    Left = 0
    Top = 33
    Width = 622
    Height = 309
    Align = alTop
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = ds
      DataController.KeyFieldNames = 'idTrans'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1idTrans: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'idTrans'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 47
      end
      object cxGrid1DBTableView1Descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'Descripcion'
        Options.Filtering = False
        Width = 234
      end
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'Abrev'
        Options.Filtering = False
      end
      object cxGrid1DBTableView1DebCre: TcxGridDBColumn
        Caption = 'Origen'
        DataBinding.FieldName = 'DebCre'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Debito'
            ImageIndex = 0
            Value = 1
          end
          item
            Description = 'Credito'
            Value = 2
          end>
        Options.Filtering = False
        Width = 87
      end
      object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
        Caption = 'Cuenta'
        DataBinding.FieldName = 'idCuenta'
        Options.Filtering = False
        Width = 74
      end
      object cxGrid1DBTableView1DBColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'Contador'
        Options.Filtering = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton3: TcxButton [4]
    Left = 487
    Top = 344
    Width = 133
    Height = 39
    Caption = 'Salir'
    TabOrder = 1
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
  inherited StyleController: TdxEditStyleController
    Left = 402
    Top = 120
  end
  inherited ds: TDataSource
    DataSet = rsTransacciones
  end
  object rsTransacciones: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from bcoTiposTrans order by Descripcion'
    Parameters = <>
    Left = 34
    Top = 64
    object rsTransaccionesidTrans: TAutoIncField
      FieldName = 'idTrans'
      ReadOnly = True
    end
    object rsTransaccionesDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object rsTransaccionesDebCre: TWordField
      FieldName = 'DebCre'
    end
    object rsTransaccionesAbrev: TStringField
      FieldName = 'Abrev'
      Size = 10
    end
    object rsTransaccionesContador: TStringField
      FieldName = 'Contador'
      Size = 16
    end
    object rsTransaccionesidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
  end
  object rsConceptos: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    OnNewRecord = rsConceptosNewRecord
    CommandText = 'select * from bcoConceptos'#13#10'where idTrans = :idTrans'
    DataSource = ds
    MasterFields = 'idTrans'
    Parameters = <
      item
        Name = 'idTrans'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 28
    Top = 148
    object rsConceptosidConcepto: TAutoIncField
      FieldName = 'idConcepto'
      ReadOnly = True
    end
    object rsConceptosidTrans: TIntegerField
      FieldName = 'idTrans'
    end
    object rsConceptosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object rsConceptosDebCre: TWordField
      FieldName = 'DebCre'
    end
    object rsConceptosidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsConceptosPorDefecto: TBooleanField
      FieldName = 'PorDefecto'
    end
  end
  object dsCon: TDataSource
    DataSet = rsConceptos
    Left = 198
    Top = 128
  end
end

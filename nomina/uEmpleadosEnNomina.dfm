inherited EmpleadosEnNomia: TEmpleadosEnNomia
  Caption = 'Empleados en N'#243'mina'
  ClientWidth = 717
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Width = 717
  end
  inherited Gradient2: TGradient
    Width = 717
  end
  object cxGrid2: TcxGrid [2]
    Left = 4
    Top = 37
    Width = 709
    Height = 242
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    object cxGridDBTableView1: TcxGridDBTableView
      DataController.DataSource = ds
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'EmpleadoId'
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
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      object cxGridDBTableView1EmpleadoId: TcxGridDBColumn
        DataBinding.FieldName = 'EmpleadoId'
      end
      object cxGridDBTableView1Empleado: TcxGridDBColumn
        DataBinding.FieldName = 'Empleado'
        Width = 274
      end
      object cxGridDBTableView1Neto: TcxGridDBColumn
        DataBinding.FieldName = 'Neto'
        Width = 101
      end
      object cxGridDBTableView1Departamento: TcxGridDBColumn
        DataBinding.FieldName = 'Departamento'
      end
      object cxGridDBTableView1Seccion: TcxGridDBColumn
        Caption = 'Secci'#243'n'
        DataBinding.FieldName = 'Seccion'
      end
      object cxGridDBTableView1NumeroCuenta: TcxGridDBColumn
        Caption = 'Numero Cuenta'
        DataBinding.FieldName = 'NumeroCuenta'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object btSalir: TcxButton [3]
    Left = 625
    Top = 423
    Width = 89
    Height = 31
    Anchors = [akLeft, akBottom]
    Caption = 'Salir'
    TabOrder = 1
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
  object btImprimir: TcxButton [4]
    Left = 512
    Top = 423
    Width = 101
    Height = 31
    Anchors = [akLeft, akBottom]
    Caption = 'Imprimir'
    TabOrder = 2
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
  object cxButton3: TcxButton [5]
    Left = 5
    Top = 425
    Width = 137
    Height = 31
    Anchors = [akLeft, akBottom]
    Caption = 'Exportar a Excel'
    TabOrder = 3
    OnClick = cxButton3Click
    Layout = blGlyphTop
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid [6]
    Left = 4
    Top = 286
    Width = 709
    Height = 132
    TabOrder = 4
    LookAndFeel.NativeStyle = True
    object cxGridDBTableView2: TcxGridDBTableView
      DataController.DataSource = dsTransaccones
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
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      object cxGridDBTableView2TipoTransaccionId: TcxGridDBColumn
        Caption = 'Tipo Transacci'#243'n'
        DataBinding.FieldName = 'TipoTransaccionId'
        Options.Filtering = False
        Width = 113
      end
      object cxGridDBTableView2Tipotransaccion: TcxGridDBColumn
        Caption = 'Transacci'#243'n'
        DataBinding.FieldName = 'Tipotransaccion'
        Options.Filtering = False
      end
      object cxGridDBTableView2Monto: TcxGridDBColumn
        DataBinding.FieldName = 'Monto'
        Options.Filtering = False
      end
      object cxGridDBTableView2Cantidad: TcxGridDBColumn
        DataBinding.FieldName = 'Cantidad'
        Options.Filtering = False
      end
    end
    object cxGridLevel2: TcxGridLevel
      GridView = cxGridDBTableView2
    end
  end
  inherited ds: TDataSource
    DataSet = spEmpleadosEnNomina
    Left = 332
    Top = 174
  end
  object spEmpleadosEnNomina: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    ProcedureName = 'nomEmpleadosEnNomina;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@NominaId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 448
    Top = 208
    object spEmpleadosEnNominaEmpleadoId: TIntegerField
      FieldName = 'EmpleadoId'
    end
    object spEmpleadosEnNominaEmpleado: TStringField
      FieldName = 'Empleado'
      ReadOnly = True
      Size = 62
    end
    object spEmpleadosEnNominaDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 30
    end
    object spEmpleadosEnNominaSeccion: TStringField
      FieldName = 'Seccion'
    end
    object spEmpleadosEnNominaNumeroCuenta: TStringField
      FieldName = 'NumeroCuenta'
    end
    object spEmpleadosEnNominaNeto: TBCDField
      FieldName = 'Neto'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object spEmpleadosEnNominaNominaId: TIntegerField
      FieldName = 'NominaId'
      ReadOnly = True
    end
  end
  object qryTransacciones: TADOQuery
    Connection = dm.Coneccion
    CursorType = ctStatic
    DataSource = ds
    Parameters = <
      item
        Name = 'NominaId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'EmpleadoId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select'
      '  NewId() As Id,'
      '  TipoTransaccionId,'
      '  Tipotransaccion,'
      '  Transaccion As Monto,'
      '  xCantidad As Cantidad'
      'From'
      '  Transacciones'
      'Where'
      '  NominaId = :NominaId And'
      '  EmpleadoId = :EmpleadoId')
    Left = 140
    Top = 140
    object qryTransaccionesTipoTransaccionId: TIntegerField
      FieldName = 'TipoTransaccionId'
    end
    object qryTransaccionesTipotransaccion: TStringField
      FieldName = 'Tipotransaccion'
      Size = 50
    end
    object qryTransaccionesMonto: TBCDField
      FieldName = 'Monto'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object qryTransaccionesCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 18
    end
    object qryTransaccionesId: TGuidField
      FieldName = 'Id'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
  end
  object dsTransaccones: TDataSource
    DataSet = qryTransacciones
    Left = 142
    Top = 192
  end
  object SaveDialog1: TSaveDialog
    Left = 236
    Top = 226
  end
  object plEmpleadosNeto: TppDBPipeline
    DataSource = ds
    UserName = 'plEmpleadosNeto'
    Left = 100
    Top = 320
  end
  object rptEmpleadoNeto: TppReport
    AutoStop = False
    DataPipeline = plEmpleadosNeto
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
    Left = 222
    Top = 318
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plEmpleadosNeto'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 42333
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Pen.Width = 2
        mmHeight = 7673
        mmLeft = 0
        mmTop = 34925
        mmWidth = 203730
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
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
        mmHeight = 7673
        mmLeft = 1852
        mmTop = 1058
        mmWidth = 155046
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        Caption = 'Lista de Empleados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6879
        mmLeft = 74083
        mmTop = 20373
        mmWidth = 54769
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 166688
        mmTop = 1852
        mmWidth = 35190
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3831
        mmLeft = 189442
        mmTop = 6350
        mmWidth = 12086
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Id'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 36513
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Empleado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 20108
        mmTop = 36513
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cuenta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 115094
        mmTop = 36513
        mmWidth = 26194
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Neto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 182034
        mmTop = 36513
        mmWidth = 18785
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'EmpleadoId'
        DataPipeline = plEmpleadosNeto
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEmpleadosNeto'
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 0
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Empleado'
        DataPipeline = plEmpleadosNeto
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEmpleadosNeto'
        mmHeight = 3704
        mmLeft = 19844
        mmTop = 0
        mmWidth = 91546
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'NumeroCuenta'
        DataPipeline = plEmpleadosNeto
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEmpleadosNeto'
        mmHeight = 3704
        mmLeft = 114829
        mmTop = 0
        mmWidth = 35983
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Neto'
        DataPipeline = plEmpleadosNeto
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEmpleadosNeto'
        mmHeight = 3704
        mmLeft = 155046
        mmTop = 0
        mmWidth = 46302
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 794
        mmWidth = 200290
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        DataField = 'Neto'
        DataPipeline = plEmpleadosNeto
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEmpleadosNeto'
        mmHeight = 4233
        mmLeft = 153194
        mmTop = 2381
        mmWidth = 48419
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end

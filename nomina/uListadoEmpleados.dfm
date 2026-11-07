inherited ListadoEmpleado: TListadoEmpleado
  Left = 452
  Top = 229
  Caption = 'Listado Empleado'
  ClientHeight = 470
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [2]
    Left = 434
    Top = 4
    Width = 228
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Listado de Empleados'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object cxButton1: TcxButton [3]
    Left = 563
    Top = 36
    Width = 99
    Height = 27
    Anchors = [akTop, akRight]
    Caption = 'Filtrar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    WordWrap = True
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid [4]
    Left = 3
    Top = 66
    Width = 660
    Height = 369
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
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
      object cxGridDBTableView1TipoEmpleado: TcxGridDBColumn
        DataBinding.FieldName = 'TipoEmpleado'
        Width = 104
      end
      object cxGridDBTableView1Departamento: TcxGridDBColumn
        DataBinding.FieldName = 'Departamento'
      end
      object cxGridDBTableView1Seccion: TcxGridDBColumn
        DataBinding.FieldName = 'Seccion'
      end
      object cxGridDBTableView1EmpleadoID: TcxGridDBColumn
        DataBinding.FieldName = 'EmpleadoID'
      end
      object cxGridDBTableView1Nombre: TcxGridDBColumn
        DataBinding.FieldName = 'Nombre'
      end
      object cxGridDBTableView1Apellido: TcxGridDBColumn
        DataBinding.FieldName = 'Apellido'
      end
      object cxGridDBTableView1Cedula: TcxGridDBColumn
        DataBinding.FieldName = 'Cedula'
      end
      object cxGridDBTableView1Inicio: TcxGridDBColumn
        DataBinding.FieldName = 'Inicio'
      end
      object cxGridDBTableView1Fin: TcxGridDBColumn
        DataBinding.FieldName = 'Fin'
      end
      object cxGridDBTableView1Telefono1: TcxGridDBColumn
        DataBinding.FieldName = 'Telefono1'
        Width = 85
      end
      object cxGridDBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'Sexo'
        Width = 48
      end
      object cxGridDBTableView1DBColumn2: TcxGridDBColumn
        Caption = 'Civil'
        DataBinding.FieldName = 'EstadoCivil'
        Width = 41
      end
      object cxGridDBTableView1DBColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'CodExterno'
        Width = 137
      end
      object cxGridDBTableView1DBColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'Direccion'
        Width = 292
      end
      object cxGridDBTableView1Nacimiento: TcxGridDBColumn
        DataBinding.FieldName = 'Nacimiento'
      end
      object cxGridDBTableView1NumeroCuenta: TcxGridDBColumn
        DataBinding.FieldName = 'NumeroCuenta'
      end
      object cxGridDBTableView1SueldoFijo: TcxGridDBColumn
        DataBinding.FieldName = 'SueldoFijo'
      end
      object cxGridDBTableView1NumeroSS: TcxGridDBColumn
        DataBinding.FieldName = 'NumeroSS'
      end
      object cxGridDBTableView1EmpleadoRoll: TcxGridDBColumn
        DataBinding.FieldName = 'EmpleadoRoll'
      end
      object cxGridDBTableView1Activos: TcxGridDBColumn
        DataBinding.FieldName = 'Activos'
      end
      object cxGridDBTableView1TipoEmpleadoID: TcxGridDBColumn
        DataBinding.FieldName = 'TipoEmpleadoID'
        Visible = False
      end
      object cxGridDBTableView1DepartamentoID: TcxGridDBColumn
        DataBinding.FieldName = 'DepartamentoID'
        Visible = False
      end
      object cxGridDBTableView1SeccionID: TcxGridDBColumn
        DataBinding.FieldName = 'SeccionID'
        Visible = False
      end
      object cxGridDBTableView1Sueldo: TcxGridDBColumn
        DataBinding.FieldName = 'Sueldo'
      end
      object cxGridDBTableView1SueldoMes: TcxGridDBColumn
        DataBinding.FieldName = 'SueldoMes'
      end
      object cxGridDBTableView1DBColumn5: TcxGridDBColumn
        DataBinding.FieldName = 'Referencia'
      end
      object cxGridDBTableView1DBColumn6: TcxGridDBColumn
        DataBinding.FieldName = 'Ciudad'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object cbActivo: TcxCheckBox [5]
    Left = 426
    Top = 38
    Width = 121
    Height = 21
    Anchors = [akTop, akRight]
    Caption = 'Activo'
    State = cbsChecked
    TabOrder = 2
  end
  object btSalir: TcxButton [6]
    Left = 577
    Top = 436
    Width = 89
    Height = 31
    Anchors = [akRight, akBottom]
    Caption = 'Salir'
    TabOrder = 3
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
  object btImprimir: TcxButton [7]
    Left = 474
    Top = 436
    Width = 101
    Height = 31
    Anchors = [akRight, akBottom]
    Caption = 'Imprimir'
    TabOrder = 4
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
  object cxButton3: TcxButton [8]
    Left = 5
    Top = 438
    Width = 137
    Height = 31
    Anchors = [akLeft, akBottom]
    Caption = 'Exportar a Excel'
    TabOrder = 5
    OnClick = cxButton3Click
    Layout = blGlyphTop
    LookAndFeel.NativeStyle = True
  end
  inherited ds: TDataSource
    DataSet = Empleados
  end
  object Empleados: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'EmpleadosList;1'
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
        Name = '@Activo'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 466
    Top = 234
    object EmpleadosTipoEmpleado: TStringField
      FieldName = 'TipoEmpleado'
      Size = 10
    end
    object EmpleadosDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 30
    end
    object EmpleadosSeccion: TStringField
      FieldName = 'Seccion'
    end
    object EmpleadosEmpleadoID: TIntegerField
      FieldName = 'EmpleadoID'
    end
    object EmpleadosNombre: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
    object EmpleadosApellido: TStringField
      FieldName = 'Apellido'
      Size = 30
    end
    object EmpleadosCedula: TStringField
      FieldName = 'Cedula'
    end
    object EmpleadosInicio: TDateTimeField
      FieldName = 'Inicio'
    end
    object EmpleadosFin: TDateTimeField
      FieldName = 'Fin'
    end
    object EmpleadosTelefono1: TStringField
      FieldName = 'Telefono1'
      Size = 15
    end
    object EmpleadosNacimiento: TDateTimeField
      FieldName = 'Nacimiento'
    end
    object EmpleadosNumeroCuenta: TStringField
      FieldName = 'NumeroCuenta'
    end
    object EmpleadosSueldoFijo: TBooleanField
      FieldName = 'SueldoFijo'
    end
    object EmpleadosNumeroSS: TStringField
      FieldName = 'NumeroSS'
    end
    object EmpleadosEmpleadoRoll: TStringField
      FieldName = 'EmpleadoRoll'
      Size = 50
    end
    object EmpleadosActivos: TStringField
      FieldName = 'Activos'
      ReadOnly = True
      Size = 9
    end
    object EmpleadosTipoEmpleadoID: TAutoIncField
      FieldName = 'TipoEmpleadoID'
      ReadOnly = True
    end
    object EmpleadosDepartamentoID: TIntegerField
      FieldName = 'DepartamentoID'
    end
    object EmpleadosSeccionID: TIntegerField
      FieldName = 'SeccionID'
    end
    object EmpleadosSueldo: TBCDField
      FieldName = 'Sueldo'
      Precision = 18
      Size = 2
    end
    object EmpleadosSueldoMes: TBCDField
      FieldName = 'SueldoMes'
      Precision = 18
      Size = 2
    end
    object EmpleadosCodExterno: TStringField
      FieldName = 'CodExterno'
      Size = 30
    end
    object EmpleadosSexo: TStringField
      FieldName = 'Sexo'
      FixedChar = True
      Size = 1
    end
    object EmpleadosEstadoCivil: TStringField
      FieldName = 'EstadoCivil'
      FixedChar = True
      Size = 1
    end
    object EmpleadosDireccion: TStringField
      FieldName = 'Direccion'
      Size = 70
    end
    object EmpleadosCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object EmpleadosReferencia: TStringField
      FieldName = 'Referencia'
      Size = 16
    end
  end
  object RptEmpleados: TppReport
    AutoStop = False
    DataPipeline = plempleados
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
    SavePrinterSetup = True
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 144
    Top = 228
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plempleados'
    object ppTitleBand3: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 21167
      mmPrintPosition = 0
      object ppLabel97: TppLabel
        UserName = 'Label97'
        HyperlinkEnabled = False
        Caption = 'Listado de Empleados '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 2117
        mmTop = 11641
        mmWidth = 102129
        BandType = 1
      end
      object ppDBText103: TppDBText
        UserName = 'DBText103'
        HyperlinkEnabled = False
        DataField = 'Activos'
        DataPipeline = plempleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 6615
        mmLeft = 122767
        mmTop = 11641
        mmWidth = 65617
        BandType = 1
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 221721
        mmTop = 0
        mmWidth = 38629
        BandType = 1
      end
      object ppDBText240: TppDBText
        UserName = 'DBText240'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 6879
        mmLeft = 1058
        mmTop = 794
        mmWidth = 186796
        BandType = 1
      end
    end
    object ppHeaderBand6: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppLabel95: TppLabel
        UserName = 'Label95'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 529
        mmTop = 1588
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel96: TppLabel
        UserName = 'Label96'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Apellido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 12435
        mmTop = 1588
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 38894
        mmTop = 1588
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cedula'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 63765
        mmTop = 1588
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Inicio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 129117
        mmTop = 1588
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel101: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 146579
        mmTop = 1588
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel102: TppLabel
        UserName = 'Label102'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Telefono1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 165100
        mmTop = 1588
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel103: TppLabel
        UserName = 'Label103'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Nacimiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 181505
        mmTop = 1588
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel104: TppLabel
        UserName = 'Label104'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'NumeroCuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 198438
        mmTop = 1588
        mmWidth = 25665
        BandType = 0
      end
      object ppLabel106: TppLabel
        UserName = 'Label106'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'EmpleadoRoll'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 224632
        mmTop = 1588
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel107: TppLabel
        UserName = 'Label107'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'NumeroSS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 245269
        mmTop = 1588
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel171: TppLabel
        UserName = 'Label171'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Sueldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 90223
        mmTop = 1588
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel172: TppLabel
        UserName = 'Label172'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Sueldo Mes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 109802
        mmTop = 1588
        mmWidth = 19050
        BandType = 0
      end
    end
    object ppDetailBand6: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText48: TppDBText
        UserName = 'DBText48'
        HyperlinkEnabled = False
        DataField = 'EmpleadoID'
        DataPipeline = plempleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 3175
        mmLeft = 529
        mmTop = 265
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText49: TppDBText
        UserName = 'DBText49'
        HyperlinkEnabled = False
        DataField = 'Apellido'
        DataPipeline = plempleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 3175
        mmLeft = 12435
        mmTop = 265
        mmWidth = 25929
        BandType = 4
      end
      object ppDBText104: TppDBText
        UserName = 'DBText104'
        HyperlinkEnabled = False
        DataField = 'Nombre'
        DataPipeline = plempleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 3175
        mmLeft = 38894
        mmTop = 265
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText105: TppDBText
        UserName = 'DBText105'
        HyperlinkEnabled = False
        DataField = 'Cedula'
        DataPipeline = plempleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 3175
        mmLeft = 63765
        mmTop = 265
        mmWidth = 25929
        BandType = 4
      end
      object ppDBText106: TppDBText
        UserName = 'DBText106'
        HyperlinkEnabled = False
        DataField = 'Inicio'
        DataPipeline = plempleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 3175
        mmLeft = 129117
        mmTop = 265
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText107: TppDBText
        UserName = 'DBText107'
        HyperlinkEnabled = False
        DataField = 'Fin'
        DataPipeline = plempleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 3175
        mmLeft = 146579
        mmTop = 265
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText108: TppDBText
        UserName = 'DBText108'
        HyperlinkEnabled = False
        DataField = 'Telefono1'
        DataPipeline = plempleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 3175
        mmLeft = 165100
        mmTop = 265
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText109: TppDBText
        UserName = 'DBText109'
        HyperlinkEnabled = False
        DataField = 'Nacimiento'
        DataPipeline = plempleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 3175
        mmLeft = 181505
        mmTop = 265
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText110: TppDBText
        UserName = 'DBText110'
        HyperlinkEnabled = False
        DataField = 'NumeroCuenta'
        DataPipeline = plempleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 3175
        mmLeft = 198438
        mmTop = 265
        mmWidth = 25665
        BandType = 4
      end
      object ppDBText111: TppDBText
        UserName = 'DBText111'
        HyperlinkEnabled = False
        DataField = 'EmpleadoRoll'
        DataPipeline = plempleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 3175
        mmLeft = 224632
        mmTop = 265
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText112: TppDBText
        UserName = 'DBText112'
        HyperlinkEnabled = False
        DataField = 'NumeroSS'
        DataPipeline = plempleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 3175
        mmLeft = 245269
        mmTop = 265
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText162: TppDBText
        UserName = 'DBText162'
        HyperlinkEnabled = False
        DataField = 'Sueldo'
        DataPipeline = plempleados
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 3175
        mmLeft = 90223
        mmTop = 265
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText164: TppDBText
        UserName = 'DBText164'
        HyperlinkEnabled = False
        DataField = 'SueldoMes'
        DataPipeline = plempleados
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plempleados'
        mmHeight = 3175
        mmLeft = 109802
        mmTop = 265
        mmWidth = 19050
        BandType = 4
      end
    end
    object ppFooterBand6: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 245799
        mmTop = 1852
        mmWidth = 20108
        BandType = 8
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'TipoEmpleadoID'
      DataPipeline = plempleados
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plempleados'
      NewFile = False
      object ppGroupHeaderBand7: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppShape4: TppShape
          UserName = 'Shape13'
          Brush.Color = clGray
          Pen.Style = psClear
          mmHeight = 5556
          mmLeft = 0
          mmTop = 0
          mmWidth = 267230
          BandType = 3
          GroupNo = 0
        end
        object ppLabel56: TppLabel
          UserName = 'Label56'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Tipo :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4763
          mmLeft = 529
          mmTop = 265
          mmWidth = 19579
          BandType = 3
          GroupNo = 0
        end
        object ppDBText45: TppDBText
          UserName = 'DBText45'
          HyperlinkEnabled = False
          DataField = 'TipoEmpleado'
          DataPipeline = plempleados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plempleados'
          mmHeight = 4763
          mmLeft = 20638
          mmTop = 265
          mmWidth = 94192
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup8: TppGroup
      BreakName = 'DepartamentoID'
      DataPipeline = plempleados
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group8'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plempleados'
      NewFile = False
      object ppGroupHeaderBand8: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppShape5: TppShape
          UserName = 'Shape14'
          Brush.Color = 12763328
          Pen.Style = psClear
          mmHeight = 5027
          mmLeft = 0
          mmTop = 0
          mmWidth = 267230
          BandType = 3
          GroupNo = 1
        end
        object ppLabel93: TppLabel
          UserName = 'Label93'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Departament:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 12435
          mmTop = 265
          mmWidth = 25929
          BandType = 3
          GroupNo = 1
        end
        object ppDBText46: TppDBText
          UserName = 'DBText46'
          HyperlinkEnabled = False
          DataField = 'Departamento'
          DataPipeline = plempleados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plempleados'
          mmHeight = 4498
          mmLeft = 38894
          mmTop = 265
          mmWidth = 109538
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand8: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7144
        mmPrintPosition = 0
        object ppShape24: TppShape
          UserName = 'Shape24'
          Brush.Color = 12763328
          Pen.Style = psClear
          mmHeight = 5027
          mmLeft = 0
          mmTop = 265
          mmWidth = 267230
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc57: TppDBCalc
          UserName = 'DBCalc57'
          HyperlinkEnabled = False
          DataField = 'EmpleadoID'
          DataPipeline = plempleados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup8
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'plempleados'
          mmHeight = 3175
          mmLeft = 33338
          mmTop = 529
          mmWidth = 30692
          BandType = 5
          GroupNo = 1
        end
        object ppLabel64: TppLabel
          UserName = 'Label64'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Cantidad Emp Depto :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 529
          mmWidth = 32279
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup9: TppGroup
      BreakName = 'SecionID'
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group9'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      NewFile = False
      object ppGroupHeaderBand9: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppShape6: TppShape
          UserName = 'Shape15'
          Brush.Color = 14803425
          Pen.Style = psClear
          mmHeight = 4763
          mmLeft = 0
          mmTop = 0
          mmWidth = 267230
          BandType = 3
          GroupNo = 2
        end
        object ppLabel94: TppLabel
          UserName = 'Label94'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Seccion:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 38894
          mmTop = 265
          mmWidth = 23548
          BandType = 3
          GroupNo = 2
        end
        object ppDBText47: TppDBText
          UserName = 'DBText47'
          HyperlinkEnabled = False
          DataField = 'Seccion'
          DataPipeline = plempleados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plempleados'
          mmHeight = 4233
          mmLeft = 63765
          mmTop = 265
          mmWidth = 90488
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand9: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 2117
        mmPrintPosition = 0
        object ppShape16: TppShape
          UserName = 'Shape16'
          Brush.Color = 14803425
          Pen.Style = psClear
          mmHeight = 1323
          mmLeft = 0
          mmTop = 529
          mmWidth = 267230
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object plempleados: TppDBPipeline
    DataSource = ds
    UserName = 'plempleados'
    Left = 180
    Top = 308
    object plempleadosppField1: TppField
      FieldAlias = 'TipoEmpleado'
      FieldName = 'TipoEmpleado'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plempleadosppField2: TppField
      FieldAlias = 'Departamento'
      FieldName = 'Departamento'
      FieldLength = 30
      DisplayWidth = 30
      Position = 1
    end
    object plempleadosppField3: TppField
      FieldAlias = 'Seccion'
      FieldName = 'Seccion'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object plempleadosppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'EmpleadoID'
      FieldName = 'EmpleadoID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object plempleadosppField5: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 30
      DisplayWidth = 30
      Position = 4
    end
    object plempleadosppField6: TppField
      FieldAlias = 'Apellido'
      FieldName = 'Apellido'
      FieldLength = 30
      DisplayWidth = 30
      Position = 5
    end
    object plempleadosppField7: TppField
      FieldAlias = 'Cedula'
      FieldName = 'Cedula'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object plempleadosppField8: TppField
      FieldAlias = 'Inicio'
      FieldName = 'Inicio'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 7
    end
    object plempleadosppField9: TppField
      FieldAlias = 'Fin'
      FieldName = 'Fin'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 8
    end
    object plempleadosppField10: TppField
      FieldAlias = 'Telefono1'
      FieldName = 'Telefono1'
      FieldLength = 15
      DisplayWidth = 15
      Position = 9
    end
    object plempleadosppField11: TppField
      FieldAlias = 'Nacimiento'
      FieldName = 'Nacimiento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 10
    end
    object plempleadosppField12: TppField
      FieldAlias = 'NumeroCuenta'
      FieldName = 'NumeroCuenta'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object plempleadosppField13: TppField
      FieldAlias = 'SueldoFijo'
      FieldName = 'SueldoFijo'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 12
    end
    object plempleadosppField14: TppField
      FieldAlias = 'NumeroSS'
      FieldName = 'NumeroSS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object plempleadosppField15: TppField
      FieldAlias = 'EmpleadoRoll'
      FieldName = 'EmpleadoRoll'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object plempleadosppField16: TppField
      FieldAlias = 'Activos'
      FieldName = 'Activos'
      FieldLength = 9
      DisplayWidth = 9
      Position = 15
    end
    object plempleadosppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'TipoEmpleadoID'
      FieldName = 'TipoEmpleadoID'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 16
    end
    object plempleadosppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'DepartamentoID'
      FieldName = 'DepartamentoID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object plempleadosppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'SeccionID'
      FieldName = 'SeccionID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object plempleadosppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'Sueldo'
      FieldName = 'Sueldo'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 19
    end
    object plempleadosppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'SueldoMes'
      FieldName = 'SueldoMes'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 20
    end
    object plempleadosppField22: TppField
      FieldAlias = 'CodExterno'
      FieldName = 'CodExterno'
      FieldLength = 30
      DisplayWidth = 30
      Position = 21
    end
    object plempleadosppField23: TppField
      FieldAlias = 'Sexo'
      FieldName = 'Sexo'
      FieldLength = 1
      DisplayWidth = 1
      Position = 22
    end
    object plempleadosppField24: TppField
      FieldAlias = 'EstadoCivil'
      FieldName = 'EstadoCivil'
      FieldLength = 1
      DisplayWidth = 1
      Position = 23
    end
    object plempleadosppField25: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 70
      DisplayWidth = 70
      Position = 24
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 236
    Top = 226
  end
end

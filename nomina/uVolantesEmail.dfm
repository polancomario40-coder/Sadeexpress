inherited VolantesEmail: TVolantesEmail
  Left = 389
  Top = 132
  Caption = 'Volantes por correo electronico'
  ClientWidth = 670
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Width = 670
  end
  inherited Gradient2: TGradient
    Width = 670
  end
  object Label2: TLabel [2]
    Left = 468
    Top = -4
    Width = 200
    Height = 33
    Caption = 'Enviar volantes'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object cxGrid2: TcxGrid [3]
    Left = 0
    Top = 36
    Width = 666
    Height = 237
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    object cxGridDBTableView1: TcxGridDBTableView
      DataController.DataSource = ds
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'Numero'
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
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      object cxGridDBTableView1NominaID: TcxGridDBColumn
        DataBinding.FieldName = 'NominaID'
        Visible = False
      end
      object cxGridDBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Visible = False
      end
      object cxGridDBTableView1DepartamentoID: TcxGridDBColumn
        DataBinding.FieldName = 'DepartamentoID'
        Visible = False
      end
      object cxGridDBTableView1Departamento: TcxGridDBColumn
        DataBinding.FieldName = 'Departamento'
      end
      object cxGridDBTableView1SeccionID: TcxGridDBColumn
        DataBinding.FieldName = 'SeccionID'
        Visible = False
      end
      object cxGridDBTableView1Seccion: TcxGridDBColumn
        DataBinding.FieldName = 'Seccion'
      end
      object cxGridDBTableView1EmpleadoID: TcxGridDBColumn
        DataBinding.FieldName = 'EmpleadoID'
      end
      object cxGridDBTableView1TotalNormal: TcxGridDBColumn
        DataBinding.FieldName = 'TotalNormal'
        Visible = False
      end
      object cxGridDBTableView1TotalNocturna: TcxGridDBColumn
        DataBinding.FieldName = 'TotalNocturna'
        Visible = False
      end
      object cxGridDBTableView1TotalExtra: TcxGridDBColumn
        DataBinding.FieldName = 'TotalExtra'
        Visible = False
      end
      object cxGridDBTableView1TotalDoble: TcxGridDBColumn
        DataBinding.FieldName = 'TotalDoble'
        Visible = False
      end
      object cxGridDBTableView1OtrosIngresos: TcxGridDBColumn
        DataBinding.FieldName = 'OtrosIngresos'
        Visible = False
      end
      object cxGridDBTableView1Empleado: TcxGridDBColumn
        DataBinding.FieldName = 'Empleado'
        Width = 218
      end
      object cxGridDBTableView1Bruto: TcxGridDBColumn
        DataBinding.FieldName = 'Bruto'
      end
      object cxGridDBTableView1OtrosDescuentos: TcxGridDBColumn
        DataBinding.FieldName = 'OtrosDescuentos'
        Visible = False
      end
      object cxGridDBTableView1TDescuentos: TcxGridDBColumn
        DataBinding.FieldName = 'TDescuentos'
        Visible = False
      end
      object cxGridDBTableView1Neto: TcxGridDBColumn
        DataBinding.FieldName = 'Neto'
      end
      object cxGridDBTableView1Notas: TcxGridDBColumn
        DataBinding.FieldName = 'Notas'
        Visible = False
      end
      object cxGridDBTableView1Dias: TcxGridDBColumn
        DataBinding.FieldName = 'Dias'
        Width = 60
      end
      object cxGridDBTableView1Cheque: TcxGridDBColumn
        DataBinding.FieldName = 'Cheque'
      end
      object cxGridDBTableView1Volante: TcxGridDBColumn
        DataBinding.FieldName = 'Volante'
      end
      object cxGridDBTableView1Numero: TcxGridDBColumn
        DataBinding.FieldName = 'Numero'
      end
      object cxGridDBTableView1NumeroCuenta: TcxGridDBColumn
        DataBinding.FieldName = 'NumeroCuenta'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object btImprimir: TcxButton [4]
    Left = 474
    Top = 277
    Width = 101
    Height = 31
    Anchors = [akLeft, akBottom]
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = btImprimirClick
    Glyph.Data = {
      E6040000424DE6040000000000003604000028000000100000000B0000000100
      080000000000B0000000C40E0000C40E000000010000000100001C1C1C001E1D
      1E00232122002B2B2B0031313100333031003635350038373700393939003C3B
      3B00403E3E0043414100444242004743440046464600484646004B4747004C4A
      4A00504B4C00534D4E00514F4F0057545500595354005B5757005C5858005E5B
      5B00605B5B00635C5D00635F600065606100696465006A6566006A6667006D66
      67007C7676008C83850091919100A29A9B00A2A2A200B8AEB000B9B0B100BBB0
      B100BEBEBE00BFBFBF00C0C0C000CDC2C400D0C6C700D3C9CA00D8D8D800D9D9
      D900DADADA00DDDDDD00E0D4D600E2D6D800E4D6D800E4D8D900E6DADC00E8DA
      DC00E8DCDE00EADCDE00ECDEE000EDE0E200EEE1E300EFE1E400F0E3E500F0E4
      E600F2E5E700F5E8EA00F7EAEC00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000B0C0C0C0C
      0C0C0C0C0C0C0C0C0A08021F4044444444444444444444381A07102E18354444
      4444444444442F173411104437182D444227293F44281D3E4411104444411E25
      14262412232243444411104444443A063345452C0536444444111044443D1532
      454545452B133944441110443E19314545454545452B163B441110411C314545
      4545454545452A1B3C110D2030454545454545454545452A210F01040E0E0E0E
      0E0E0E0E0E0E0E0E0309}
    LookAndFeel.NativeStyle = True
  end
  object btSalir: TcxButton [5]
    Left = 577
    Top = 277
    Width = 89
    Height = 31
    Anchors = [akLeft, akBottom]
    Caption = 'Salir'
    TabOrder = 2
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
  object mOutput: TcxMemo [6]
    Left = 4
    Top = 314
    Width = 663
    Height = 139
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  inherited ds: TDataSource
    DataSet = dmReporte.rsVolanteH
    Left = 294
    Top = 130
  end
  object rptvolanteH: TppReport
    AutoStop = False
    DataPipeline = plVolanteH
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 7620
    PrinterSetup.mmMarginLeft = 7620
    PrinterSetup.mmMarginRight = 7620
    PrinterSetup.mmMarginTop = 7620
    PrinterSetup.mmPaperHeight = 93142
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 125
    Template.FileName = 'C:\Desarrollo\ZFSys\Nomina\Volantes.rtm'
    AllowPrintToFile = True
    DeviceType = 'Screen'
    ModalCancelDialog = False
    ModalPreview = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ShowPrintDialog = False
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = False
    Left = 44
    Top = 138
    Version = '7.04'
    mmColumnWidth = 203200
    DataPipelineName = 'plVolanteH'
    object ppTitleBand8: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand12: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand14: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 68527
      mmPrintPosition = 0
      object ppDBText124: TppDBText
        UserName = 'DBText3'
        DataField = 'EmpleadoID'
        DataPipeline = plVolanteH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVolanteH'
        mmHeight = 4498
        mmLeft = 0
        mmTop = 21167
        mmWidth = 60325
        BandType = 4
      end
      object ppDBText147: TppDBText
        UserName = 'DBText4'
        DataField = 'Empleado'
        DataPipeline = plVolanteH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'plVolanteH'
        mmHeight = 12700
        mmLeft = 0
        mmTop = 25400
        mmWidth = 60325
        BandType = 4
      end
      object ppDBText163: TppDBText
        UserName = 'DBText1'
        DataField = 'Departamento'
        DataPipeline = plVolanteH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVolanteH'
        mmHeight = 4498
        mmLeft = 16404
        mmTop = 4498
        mmWidth = 43921
        BandType = 4
      end
      object ppLabel155: TppLabel
        UserName = 'Label35'
        AutoSize = False
        Caption = 'Numero :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 0
        mmTop = 265
        mmWidth = 14817
        BandType = 4
      end
      object ppLabel168: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Recibido Por :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 0
        mmTop = 64029
        mmWidth = 37306
        BandType = 4
      end
      object ppDBText165: TppDBText
        UserName = 'DBText29'
        DataField = 'Volante'
        DataPipeline = plVolanteH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plVolanteH'
        mmHeight = 4498
        mmLeft = 16404
        mmTop = 265
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText166: TppDBText
        UserName = 'DBText11'
        DataField = 'Fecha'
        DataPipeline = plVolanteH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plVolanteH'
        mmHeight = 4498
        mmLeft = 33602
        mmTop = 265
        mmWidth = 26723
        BandType = 4
      end
      object ppDBText148: TppDBText
        UserName = 'DBText148'
        DataField = 'NumeroCuenta'
        DataPipeline = plVolanteH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVolanteH'
        mmHeight = 4498
        mmLeft = 0
        mmTop = 42069
        mmWidth = 60325
        BandType = 4
      end
      object ppLabel161: TppLabel
        UserName = 'Label161'
        AutoSize = False
        Caption = 'Cuenta :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 0
        mmTop = 37835
        mmWidth = 60325
        BandType = 4
      end
      object RptDebito: TppSubReport
        UserName = 'RptDebito'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ParentWidth = False
        PrintBehavior = pbFixed
        TraverseAllData = False
        mmHeight = 63500
        mmLeft = 61913
        mmTop = 0
        mmWidth = 66146
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Custom'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 0
          PrinterSetup.mmMarginRight = 0
          PrinterSetup.mmMarginTop = 0
          PrinterSetup.mmPaperHeight = 63500
          PrinterSetup.mmPaperWidth = 63500
          PrinterSetup.PaperSize = 125
          Version = '7.04'
          mmColumnWidth = 68580
          object ppTitleBand9: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppLabel154: TppLabel
              UserName = 'Label154'
              AutoSize = False
              Caption = 'INGRESOS'
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4498
              mmLeft = 0
              mmTop = 0
              mmWidth = 63500
              BandType = 1
            end
          end
          object ppDetailBand15: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBText149: TppDBText
              UserName = 'DBText149'
              DataField = 'TipoTransaccion'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4498
              mmLeft = 0
              mmTop = 0
              mmWidth = 27517
              BandType = 4
            end
            object ppDBText150: TppDBText
              UserName = 'DBText1501'
              DataField = 'Valor'
              DisplayFormat = '#,#0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4586
              mmLeft = 41275
              mmTop = 0
              mmWidth = 22225
              BandType = 4
            end
            object ppDBText155: TppDBText
              UserName = 'DBText155'
              DataField = 'XCantidad'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4498
              mmLeft = 28840
              mmTop = 0
              mmWidth = 11906
              BandType = 4
            end
          end
          object ppFooterBand13: TppFooterBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBCalc50: TppDBCalc
              UserName = 'DBCalc50'
              DataField = 'Valor'
              DisplayFormat = '#,#0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4498
              mmLeft = 30956
              mmTop = 0
              mmWidth = 32544
              BandType = 8
            end
            object ppLabel158: TppLabel
              UserName = 'Label158'
              AutoSize = False
              Caption = 'Total Ingresos:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4498
              mmLeft = 0
              mmTop = 0
              mmWidth = 29633
              BandType = 8
            end
          end
          object ppSummaryBand8: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
      object RptCredito: TppSubReport
        UserName = 'RptCredito'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ParentWidth = False
        PrintBehavior = pbFixed
        TraverseAllData = False
        mmHeight = 63500
        mmLeft = 130704
        mmTop = 0
        mmWidth = 66146
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Custom'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 0
          PrinterSetup.mmMarginRight = 0
          PrinterSetup.mmMarginTop = 0
          PrinterSetup.mmPaperHeight = 63500
          PrinterSetup.mmPaperWidth = 63500
          PrinterSetup.PaperSize = 125
          Version = '7.04'
          mmColumnWidth = 68580
          object ppTitleBand10: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppLabel153: TppLabel
              UserName = 'Label154'
              AutoSize = False
              Caption = 'DESCUENTOS'
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4498
              mmLeft = 0
              mmTop = 0
              mmWidth = 63500
              BandType = 1
            end
          end
          object ppDetailBand16: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBText151: TppDBText
              UserName = 'DBText151'
              DataField = 'TipoTransaccion'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4498
              mmLeft = 0
              mmTop = 0
              mmWidth = 29104
              BandType = 4
            end
            object ppDBText152: TppDBText
              UserName = 'DBText152'
              DataField = 'XCantidad'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4498
              mmLeft = 29898
              mmTop = 0
              mmWidth = 9525
              BandType = 4
            end
            object ppDBText156: TppDBText
              UserName = 'DBText156'
              DataField = 'Valor'
              DisplayFormat = '#,#0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4586
              mmLeft = 40217
              mmTop = 0
              mmWidth = 23019
              BandType = 4
            end
          end
          object ppFooterBand14: TppFooterBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBCalc51: TppDBCalc
              UserName = 'DBCalc50'
              DataField = 'Valor'
              DisplayFormat = '#,#0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4498
              mmLeft = 31485
              mmTop = 0
              mmWidth = 32015
              BandType = 8
            end
            object ppLabel159: TppLabel
              UserName = 'Label159'
              AutoSize = False
              Caption = 'Total Descuentos:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4498
              mmLeft = 0
              mmTop = 0
              mmWidth = 30427
              BandType = 8
            end
          end
          object ppSummaryBand9: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
      object ppDBText153: TppDBText
        UserName = 'DBText153'
        DataField = 'Seccion'
        DataPipeline = plVolanteH
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVolanteH'
        mmHeight = 4498
        mmLeft = 16404
        mmTop = 8731
        mmWidth = 43921
        BandType = 4
      end
      object ppLabel156: TppLabel
        UserName = 'Label156'
        AutoSize = False
        Caption = 'Secc :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 0
        mmTop = 8731
        mmWidth = 14817
        BandType = 4
      end
      object ppLabel157: TppLabel
        UserName = 'Label157'
        AutoSize = False
        Caption = 'Depto :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 0
        mmTop = 4498
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText154: TppDBText
        UserName = 'DBText154'
        DataField = 'Neto'
        DataPipeline = plVolanteH
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVolanteH'
        mmHeight = 4498
        mmLeft = 166688
        mmTop = 64029
        mmWidth = 29633
        BandType = 4
      end
      object ppLabel162: TppLabel
        UserName = 'Label162'
        AutoSize = False
        Caption = 'NETO A COBRAR :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 128852
        mmTop = 64029
        mmWidth = 37306
        BandType = 4
      end
      object ppLabel163: TppLabel
        UserName = 'Label163'
        AutoSize = False
        Caption = 'EMPLEADO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 0
        mmTop = 16933
        mmWidth = 60325
        BandType = 4
      end
    end
    object ppFooterBand12: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup11: TppGroup
      BreakName = 'EmpleadoID'
      DataPipeline = plVolanteH
      OutlineSettings.CreateNode = True
      NewPage = True
      ReprintOnSubsequentPage = False
      UserName = 'Group11'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plVolanteH'
      object ppGroupHeaderBand11: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand11: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object plVolanteH: TppDBPipeline
    DataSource = ds
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'plVolanteH'
    Left = 124
    Top = 138
  end
  object rsEmpleadoAct: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 
      'select Empleado, TipoNotificacionBanco, DireccionNotificacionBan' +
      'co '#13#10'from Empleado '#13#10'where EmpleadoId = :id'
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 170
    Top = 68
    object rsEmpleadoActEmpleado: TStringField
      FieldName = 'Empleado'
      ReadOnly = True
      Size = 62
    end
    object rsEmpleadoActTipoNotificacionBanco: TStringField
      FieldName = 'TipoNotificacionBanco'
      Size = 1
    end
    object rsEmpleadoActDireccionNotificacionBanco: TStringField
      FieldName = 'DireccionNotificacionBanco'
      Size = 100
    end
  end
end

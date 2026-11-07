object dmReportes2: TdmReportes2
  OldCreateOrder = False
  Left = 300
  Top = 184
  Height = 556
  Width = 839
  object T60: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'spGovT60;1'
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
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 37904d
      end
      item
        Name = '@TipoNominaID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 255
      end
      item
        Name = '@TipoEmpleadoID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 255
      end>
    Left = 320
    Top = 16
  end
  object dsT60: TDataSource
    DataSet = T60
    Left = 240
    Top = 16
  end
  object RptT60: TppReport
    AutoStop = False
    DataPipeline = plT60
    PassSetting = psTwoPass
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
    Template.FileName = 'C:\Desarrollo\ZFSys\Nomina\Reportes\T60.rtm'
    AllowPrintToFile = True
    DeviceType = 'Screen'
    ModalPreview = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = False
    Left = 56
    Top = 16
    Version = '7.04'
    mmColumnWidth = 266701
    DataPipelineName = 'plT60'
    object ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 65088
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 26988
        mmLeft = 0
        mmTop = 38100
        mmWidth = 266701
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'IDSS   CLASE   DE   NOVE-  DAD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 16933
        mmLeft = 529
        mmTop = 44450
        mmWidth = 10583
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 26988
        mmLeft = 11377
        mmTop = 38100
        mmWidth = 1058
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 26988
        mmLeft = 124090
        mmTop = 38100
        mmWidth = 2910
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 26988
        mmLeft = 150548
        mmTop = 38100
        mmWidth = 2910
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 26723
        mmLeft = 153988
        mmTop = 38100
        mmWidth = 1323
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 33867
        mmTop = 49213
        mmWidth = 60061
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 26988
        mmLeft = 33602
        mmTop = 38100
        mmWidth = 2910
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15875
        mmLeft = 65088
        mmTop = 49213
        mmWidth = 4233
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 26723
        mmLeft = 93927
        mmTop = 38100
        mmWidth = 2381
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'NO. DE     AFILIACION DEL ASEGURADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 16669
        mmLeft = 11906
        mmTop = 44715
        mmWidth = 21431
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 31750
        mmLeft = 189177
        mmTop = 1058
        mmWidth = 77258
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'ASEGURADOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 34131
        mmTop = 42069
        mmWidth = 58473
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'APELLIDOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 34396
        mmTop = 54504
        mmWidth = 29898
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'NOMBRES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 66675
        mmTop = 54504
        mmWidth = 26723
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'CEDULA DE IDENTIDAD Y ELECTORAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 16669
        mmLeft = 94456
        mmTop = 44715
        mmWidth = 29369
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'CEDULA ANTERIOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 124884
        mmTop = 42069
        mmWidth = 25135
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'SERIE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 124354
        mmTop = 54504
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'NUMERO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 134409
        mmTop = 54504
        mmWidth = 15346
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line101'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 124090
        mmTop = 49213
        mmWidth = 26458
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15875
        mmLeft = 133615
        mmTop = 49213
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'S E X O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 25400
        mmLeft = 151077
        mmTop = 38629
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Caption = 'A L I M E N T O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 26988
        mmLeft = 154782
        mmTop = 38365
        mmWidth = 2117
        BandType = 0
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 26723
        mmLeft = 157692
        mmTop = 38100
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 'V I V I E N D A'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 26988
        mmLeft = 158221
        mmTop = 38365
        mmWidth = 2381
        BandType = 0
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 26723
        mmLeft = 161396
        mmTop = 38100
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Caption = 'O C U P A C I O N'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 26723
        mmLeft = 162190
        mmTop = 38365
        mmWidth = 2646
        BandType = 0
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 26988
        mmLeft = 165100
        mmTop = 38100
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = 'SALARIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 166952
        mmTop = 42333
        mmWidth = 23283
        BandType = 0
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 165100
        mmTop = 49213
        mmWidth = 29369
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Caption = 'PERCIBIDO EN EL MES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 13494
        mmLeft = 166159
        mmTop = 50800
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = 'PROMD SEMANAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 13229
        mmLeft = 181240
        mmTop = 51065
        mmWidth = 12700
        BandType = 0
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 180711
        mmTop = 49213
        mmWidth = 4233
        BandType = 0
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 26988
        mmLeft = 194469
        mmTop = 38100
        mmWidth = 1852
        BandType = 0
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 26988
        mmLeft = 200819
        mmTop = 38100
        mmWidth = 2910
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label102'
        AutoSize = False
        Caption = 'S E M A N A S'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 26458
        mmLeft = 194998
        mmTop = 38365
        mmWidth = 2910
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Caption = 'T R A B A J A D A'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 26723
        mmLeft = 197909
        mmTop = 38365
        mmWidth = 2910
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        AutoSize = False
        Caption = 'CLASE DE NOVEDAD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 202142
        mmTop = 41275
        mmWidth = 61119
        BandType = 0
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 200555
        mmTop = 46038
        mmWidth = 65881
        BandType = 0
      end
      object ppLine24: TppLine
        UserName = 'Line201'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 18521
        mmLeft = 216430
        mmTop = 46302
        mmWidth = 1588
        BandType = 0
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 18521
        mmLeft = 231511
        mmTop = 46302
        mmWidth = 1588
        BandType = 0
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 19050
        mmLeft = 245005
        mmTop = 46038
        mmWidth = 1588
        BandType = 0
      end
      object ppLine27: TppLine
        UserName = 'Line27'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 201084
        mmTop = 55033
        mmWidth = 30427
        BandType = 0
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 245005
        mmTop = 55033
        mmWidth = 21431
        BandType = 0
      end
      object ppLine29: TppLine
        UserName = 'Line29'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10054
        mmLeft = 205846
        mmTop = 55033
        mmWidth = 1588
        BandType = 0
      end
      object ppLine30: TppLine
        UserName = 'Line30'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10054
        mmLeft = 211138
        mmTop = 55033
        mmWidth = 1852
        BandType = 0
      end
      object ppLine31: TppLine
        UserName = 'Line301'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10054
        mmLeft = 226484
        mmTop = 55033
        mmWidth = 1852
        BandType = 0
      end
      object ppLine32: TppLine
        UserName = 'Line32'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10054
        mmLeft = 221192
        mmTop = 55033
        mmWidth = 1588
        BandType = 0
      end
      object ppLine33: TppLine
        UserName = 'Line33'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10054
        mmLeft = 255853
        mmTop = 55033
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Caption = 'ENTRADA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 201613
        mmTop = 50006
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label201'
        AutoSize = False
        Caption = 'SALIDA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 216959
        mmTop = 50006
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Caption = 'CAMBIO SALARIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6615
        mmLeft = 232040
        mmTop = 48419
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        AutoSize = False
        Caption = 'PERIODO NO TRABAJADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6615
        mmLeft = 245534
        mmTop = 48419
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        AutoSize = False
        Caption = 'DEL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 245798
        mmTop = 58738
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        AutoSize = False
        Caption = 'AL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 256646
        mmTop = 58738
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label103'
        AutoSize = False
        Caption = 'D I A'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9790
        mmLeft = 201613
        mmTop = 55298
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        AutoSize = False
        Caption = 'M E S'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9790
        mmLeft = 207169
        mmTop = 55298
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        AutoSize = False
        Caption = 'A '#209' O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9790
        mmLeft = 212461
        mmTop = 55298
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        AutoSize = False
        Caption = 'D I A'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9790
        mmLeft = 217488
        mmTop = 55298
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        AutoSize = False
        Caption = 'M E S'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9790
        mmLeft = 222780
        mmTop = 55298
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label301'
        AutoSize = False
        Caption = 'A '#209' O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9790
        mmLeft = 227807
        mmTop = 55298
        mmWidth = 2646
        BandType = 0
      end
      object ppLine34: TppLine
        UserName = 'Line14'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 192088
        mmTop = 20108
        mmWidth = 70908
        BandType = 0
      end
      object ppLine35: TppLine
        UserName = 'Line35'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 192352
        mmTop = 28046
        mmWidth = 70908
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 
          ' CERTIFICO que , las informaciones abajo descritas son correctas' +
          ' de conformidad con el Libro de Sueldos y Jornales, Nominas de P' +
          'ago y/o Sistema Contable.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 12171
        mmLeft = 191294
        mmTop = 2117
        mmWidth = 73025
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Caption = 'Firma Responsable y Sello de la Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 192352
        mmTop = 20373
        mmWidth = 70115
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        AutoSize = False
        Caption = 'Fecha de elaboraci'#243'n de estas informaciones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 192352
        mmTop = 28310
        mmWidth = 70115
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        AutoSize = False
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 167217
        mmTop = 529
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label21'
        Caption = 'PAG NO.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 150284
        mmTop = 529
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label26'
        AutoSize = False
        Caption = '1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 34131
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        AutoSize = False
        Caption = '2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 18785
        mmTop = 34131
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        AutoSize = False
        Caption = '3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 46831
        mmTop = 34131
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        AutoSize = False
        Caption = '4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 78052
        mmTop = 34131
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        AutoSize = False
        Caption = '5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 107156
        mmTop = 34131
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label401'
        AutoSize = False
        Caption = '6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 135202
        mmTop = 34131
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        AutoSize = False
        Caption = '7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 151077
        mmTop = 34131
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        AutoSize = False
        Caption = '8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 154782
        mmTop = 34131
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        AutoSize = False
        Caption = '9'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 158486
        mmTop = 34131
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        AutoSize = False
        Caption = '10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 161661
        mmTop = 34131
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        AutoSize = False
        Caption = '11'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 175948
        mmTop = 34131
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        AutoSize = False
        Caption = '12'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 194734
        mmTop = 34131
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        AutoSize = False
        Caption = '13'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 205317
        mmTop = 34131
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        AutoSize = False
        Caption = '14'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 220398
        mmTop = 34131
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        AutoSize = False
        Caption = '15'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 234686
        mmTop = 34131
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label501'
        AutoSize = False
        Caption = '16'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 252148
        mmTop = 34131
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label31'
        Caption = 'Instituto Dominicano de Seguros Sociales'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 0
        mmTop = 529
        mmWidth = 100277
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label32'
        AutoSize = False
        Caption = 'Razon Social o Nombre de la Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 10054
        mmWidth = 79640
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        AutoSize = False
        Caption = 'Telefono Numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 82286
        mmTop = 10054
        mmWidth = 29104
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        AutoSize = False
        Caption = 'Numero Patronal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 21431
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        AutoSize = False
        Caption = 'Direccion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 31221
        mmTop = 21431
        mmWidth = 36248
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'Compania'
        DataPipeline = plT60
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plT60'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 14288
        mmWidth = 79904
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'Telefono'
        DataPipeline = plT60
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plT60'
        mmHeight = 4233
        mmLeft = 82286
        mmTop = 14288
        mmWidth = 29104
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'Direccion'
        DataPipeline = plT60
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plT60'
        mmHeight = 4233
        mmLeft = 31221
        mmTop = 25929
        mmWidth = 83079
        BandType = 0
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'RNC'
        DataPipeline = plT60
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plT60'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 25929
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        AutoSize = False
        Caption = 'Relacion de Novedades del Mes de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 115359
        mmTop = 21431
        mmWidth = 61913
        BandType = 0
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'Mes'
        DataPipeline = plT60
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plT60'
        mmHeight = 4233
        mmLeft = 115094
        mmTop = 25929
        mmWidth = 57150
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 0
        mmTop = 18256
        mmWidth = 79904
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 0
        mmTop = 29898
        mmWidth = 30427
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 82021
        mmTop = 18256
        mmWidth = 29633
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 115094
        mmTop = 29898
        mmWidth = 60854
        BandType = 0
      end
      object ppLine36: TppLine
        UserName = 'Line36'
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 31221
        mmTop = 29898
        mmWidth = 82286
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'Apellido'
        DataPipeline = plT60
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plT60'
        mmHeight = 2910
        mmLeft = 34660
        mmTop = 265
        mmWidth = 29633
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Style = psInsideFrame
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'ClaseNov'
        DataPipeline = plT60
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plT60'
        mmHeight = 2910
        mmLeft = 1058
        mmTop = 265
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'NumeroSS'
        DataPipeline = plT60
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plT60'
        mmHeight = 2910
        mmLeft = 12700
        mmTop = 265
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'Nombre'
        DataPipeline = plT60
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plT60'
        mmHeight = 2910
        mmLeft = 66146
        mmTop = 265
        mmWidth = 26988
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'Cedula'
        DataPipeline = plT60
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plT60'
        mmHeight = 2910
        mmLeft = 94986
        mmTop = 265
        mmWidth = 28575
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText101'
        DataField = 'SerieAnt'
        DataPipeline = plT60
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plT60'
        mmHeight = 2910
        mmLeft = 124884
        mmTop = 265
        mmWidth = 7938
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'CedulaAnt'
        DataPipeline = plT60
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plT60'
        mmHeight = 2910
        mmLeft = 134409
        mmTop = 265
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'Sexo'
        DataPipeline = plT60
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plT60'
        mmHeight = 2910
        mmLeft = 151077
        mmTop = 265
        mmWidth = 2910
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'Alimento'
        DataPipeline = plT60
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plT60'
        mmHeight = 2910
        mmLeft = 154252
        mmTop = 265
        mmWidth = 2910
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'Vivienda'
        DataPipeline = plT60
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plT60'
        mmHeight = 2910
        mmLeft = 157957
        mmTop = 265
        mmWidth = 2910
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText201'
        DataField = 'Ocupacion'
        DataPipeline = plT60
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plT60'
        mmHeight = 2910
        mmLeft = 162190
        mmTop = 265
        mmWidth = 2910
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        BlankWhenZero = True
        DataField = 'Percibido'
        DataPipeline = plT60
        DisplayFormat = '#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plT60'
        mmHeight = 2910
        mmLeft = 166159
        mmTop = 265
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        BlankWhenZero = True
        DataField = 'PromSemanal'
        DataPipeline = plT60
        DisplayFormat = '#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plT60'
        mmHeight = 2910
        mmLeft = 181505
        mmTop = 265
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'SemanasTrab'
        DataPipeline = plT60
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plT60'
        mmHeight = 2910
        mmLeft = 196321
        mmTop = 265
        mmWidth = 3704
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        DataField = 'DiaEnt'
        DataPipeline = plT60
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plT60'
        mmHeight = 2910
        mmLeft = 201348
        mmTop = 265
        mmWidth = 3969
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        DataField = 'MesEnt'
        DataPipeline = plT60
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plT60'
        mmHeight = 2910
        mmLeft = 206375
        mmTop = 265
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        DataField = 'AnoEnt'
        DataPipeline = plT60
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plT60'
        mmHeight = 2910
        mmLeft = 211403
        mmTop = 265
        mmWidth = 5027
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = 'DiaSal'
        DataPipeline = plT60
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plT60'
        mmHeight = 2910
        mmLeft = 216959
        mmTop = 265
        mmWidth = 3969
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'MesSal'
        DataPipeline = plT60
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plT60'
        mmHeight = 2910
        mmLeft = 221721
        mmTop = 265
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'AnoSal'
        DataPipeline = plT60
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plT60'
        mmHeight = 2910
        mmLeft = 226748
        mmTop = 265
        mmWidth = 4763
        BandType = 4
      end
      object ppLine42: TppLine
        UserName = 'Line24'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine43: TppLine
        UserName = 'Line43'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 11377
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine44: TppLine
        UserName = 'Line44'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 33602
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine45: TppLine
        UserName = 'Line45'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 65088
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine46: TppLine
        UserName = 'Line46'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 93927
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine47: TppLine
        UserName = 'Line47'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 124090
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine48: TppLine
        UserName = 'Line48'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 133615
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine49: TppLine
        UserName = 'Line49'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 150548
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine50: TppLine
        UserName = 'Line50'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 153988
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine51: TppLine
        UserName = 'Line501'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 157692
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine52: TppLine
        UserName = 'Line52'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 161396
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine53: TppLine
        UserName = 'Line53'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 165100
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine54: TppLine
        UserName = 'Line54'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 180711
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine55: TppLine
        UserName = 'Line55'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 194469
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine56: TppLine
        UserName = 'Line56'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 200819
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine57: TppLine
        UserName = 'Line57'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 205846
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine58: TppLine
        UserName = 'Line58'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 211138
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine59: TppLine
        UserName = 'Line59'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 216430
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine60: TppLine
        UserName = 'Line60'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 221192
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine61: TppLine
        UserName = 'Line601'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 226484
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine62: TppLine
        UserName = 'Line62'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 231511
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine63: TppLine
        UserName = 'Line63'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 245005
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine64: TppLine
        UserName = 'Line64'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 255853
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine65: TppLine
        UserName = 'Line65'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 266436
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        BooleanFalse = '0'
        BooleanTrue = '1'
        Style = csCheckMark
        DataPipeline = plT60
        DataField = 'CambioSal'
        Transparent = True
        DataPipelineName = 'plT60'
        mmHeight = 3969
        mmLeft = 236803
        mmTop = 0
        mmWidth = 5292
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine66: TppLine
        UserName = 'Line31'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 7
      end
    end
  end
  object IR4: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'spGovIR4;1'
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
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 37904d
      end
      item
        Name = '@TipoNominaID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 255
      end
      item
        Name = '@TipoEmpleadoID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 255
      end>
    Left = 320
    Top = 72
    object IR4Compania: TStringField
      FieldName = 'Compania'
      Size = 50
    end
    object IR4RNC: TStringField
      FieldName = 'RNC'
    end
    object IR4Mes: TWideStringField
      FieldName = 'Mes'
      Size = 45
    end
    object IR4Empleado: TStringField
      FieldName = 'Empleado'
      Size = 61
    end
    object IR4Cedula: TStringField
      FieldName = 'Cedula'
    end
    object IR4SueldoBase: TBCDField
      FieldName = 'SueldoBase'
      Precision = 32
      Size = 2
    end
    object IR4OtrosEmpleadores: TBCDField
      FieldName = 'OtrosEmpleadores'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object IR4SueldoExtra: TBCDField
      FieldName = 'SueldoExtra'
      Precision = 32
      Size = 2
    end
    object IR4Total: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object IR4SueldoGrabado: TBCDField
      FieldName = 'SueldoGrabado'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object IR4APagar: TBCDField
      FieldName = 'APagar'
      Precision = 32
      Size = 2
    end
    object IR4saldoafavor: TBCDField
      FieldName = 'saldoafavor'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object IR4saldonegativo: TBCDField
      FieldName = 'saldonegativo'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object IR4saldopositivo: TBCDField
      FieldName = 'saldopositivo'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object IR4CantSujetos: TIntegerField
      FieldName = 'CantSujetos'
      ReadOnly = True
    end
    object IR4afp: TBCDField
      FieldName = 'afp'
      Precision = 32
      Size = 2
    end
  end
  object Infotep: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'spGovInfotep;1'
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
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 37904d
      end
      item
        Name = '@TipoNominaID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 255
      end
      item
        Name = '@TipoEmpleadoID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 255
      end>
    Left = 320
    Top = 184
  end
  object SegAcc: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'spGovSegAcc;1'
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
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 37904d
      end
      item
        Name = '@TipoNominaID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 255
      end
      item
        Name = '@TipoEmpleadoID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 255
      end>
    Left = 320
    Top = 240
  end
  object AFP: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'spGovAFP;1'
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
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 37904d
      end
      item
        Name = '@TipoNominaID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 255
      end
      item
        Name = '@TipoEmpleadoID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 255
      end>
    Left = 320
    Top = 288
  end
  object dsInfotep: TDataSource
    DataSet = Infotep
    Left = 240
    Top = 176
  end
  object dsSegAcc: TDataSource
    DataSet = SegAcc
    Left = 240
    Top = 232
  end
  object dsAFP: TDataSource
    DataSet = AFP
    Left = 240
    Top = 288
  end
  object ARS: TADODataSet
    Connection = dm.Coneccion
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 320
    Top = 336
  end
  object dsARS: TDataSource
    DataSet = ARS
    Left = 240
    Top = 336
  end
  object RptIR4: TppReport
    AutoStop = False
    DataPipeline = plIR4
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
    Template.FileName = 'C:\Desarrollo\ZFSys\Nomina\Reportes\IR4.rtm'
    AllowPrintToFile = True
    DeviceType = 'Screen'
    ModalPreview = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = False
    Left = 56
    Top = 72
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'plIR4'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 46038
      mmPrintPosition = 0
      object ppShape8: TppShape
        UserName = 'Shape8'
        Brush.Color = 14803425
        Shape = stRoundRect
        mmHeight = 20902
        mmLeft = 0
        mmTop = 22490
        mmWidth = 266701
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 41275
        mmWidth = 266701
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        Shape = stRoundRect
        mmHeight = 8996
        mmLeft = 247121
        mmTop = 3175
        mmWidth = 19315
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        Shape = stRoundRect
        mmHeight = 8996
        mmLeft = 203730
        mmTop = 3175
        mmWidth = 42863
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        Shape = stRoundRect
        mmHeight = 8996
        mmLeft = 172509
        mmTop = 3175
        mmWidth = 30427
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Shape = stRoundRect
        mmHeight = 8996
        mmLeft = 107156
        mmTop = 3175
        mmWidth = 64823
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        AutoSize = False
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 247121
        mmTop = 7673
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        AutoSize = False
        Caption = 'HOJA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 247121
        mmTop = 3440
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        AutoSize = False
        Caption = 'Secretaria de Estado de Finanzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        mmHeight = 6085
        mmLeft = 20902
        mmTop = 3704
        mmWidth = 74083
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        AutoSize = False
        Caption = 'AGENTE DE RETENCION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 107156
        mmTop = 3440
        mmWidth = 64823
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        AutoSize = False
        Caption = 'RNC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 172509
        mmTop = 3440
        mmWidth = 30427
        BandType = 0
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        DataField = 'Compania'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 107156
        mmTop = 7673
        mmWidth = 64823
        BandType = 0
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        DataField = 'RNC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 172509
        mmTop = 7673
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        AutoSize = False
        Caption = 'PERIODO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 203730
        mmTop = 3440
        mmWidth = 42863
        BandType = 0
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        DataField = 'Mes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 203730
        mmTop = 7673
        mmWidth = 42863
        BandType = 0
      end
      object ppLine38: TppLine
        UserName = 'Line38'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 41275
        mmWidth = 266701
        BandType = 0
      end
      object ppLine40: TppLine
        UserName = 'Line40'
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 0
        mmTop = 28310
        mmWidth = 266701
        BandType = 0
      end
      object ppLine41: TppLine
        UserName = 'Line41'
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 20902
        mmTop = 13758
        mmWidth = 125942
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 14288
        mmLeft = 1323
        mmTop = 2117
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        AutoSize = False
        Caption = 'DIRECCION GENERAL DE IMPUESTOS INTERNOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 20902
        mmTop = 9525
        mmWidth = 84667
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        AutoSize = False
        Caption = 
          'FORMATO PARA EL CALCULO DE LAS RETENCIONES MENSUALES DEL ASALARI' +
          'ADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 20902
        mmTop = 14023
        mmWidth = 125148
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        Caption = 'FORM. IR-4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 16933
        mmWidth = 16933
        BandType = 0
      end
      object ppLine37: TppLine
        UserName = 'Line37'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 22754
        mmLeft = 77258
        mmTop = 22490
        mmWidth = 4233
        BandType = 0
      end
      object ppLine39: TppLine
        UserName = 'Line39'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 7144
        mmTop = 41275
        mmWidth = 3175
        BandType = 0
      end
      object ppLine67: TppLine
        UserName = 'Line67'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17198
        mmLeft = 57150
        mmTop = 28310
        mmWidth = 2381
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label601'
        AutoSize = False
        Caption = 'IDENTIFICACION DEL ASALARIADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 23548
        mmWidth = 74348
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        AutoSize = False
        Caption = 'APELLIDOS Y NOMBRES COMPLETOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 2117
        mmTop = 33867
        mmWidth = 53975
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        AutoSize = False
        Caption = 'CEDULA O PASAPORTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 57679
        mmTop = 32015
        mmWidth = 19579
        BandType = 0
      end
      object ppLine72: TppLine
        UserName = 'Line72'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17198
        mmLeft = 189177
        mmTop = 28310
        mmWidth = 4233
        BandType = 0
      end
      object ppLine73: TppLine
        UserName = 'Line73'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17198
        mmLeft = 96309
        mmTop = 28310
        mmWidth = 3175
        BandType = 0
      end
      object ppLine74: TppLine
        UserName = 'Line74'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17198
        mmLeft = 115094
        mmTop = 28310
        mmWidth = 3175
        BandType = 0
      end
      object ppLine75: TppLine
        UserName = 'Line75'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17198
        mmLeft = 133879
        mmTop = 28310
        mmWidth = 2381
        BandType = 0
      end
      object ppLine76: TppLine
        UserName = 'Line76'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17198
        mmLeft = 170921
        mmTop = 28310
        mmWidth = 3175
        BandType = 0
      end
      object ppLine77: TppLine
        UserName = 'Line77'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17198
        mmLeft = 209550
        mmTop = 28310
        mmWidth = 3175
        BandType = 0
      end
      object ppLine78: TppLine
        UserName = 'Line78'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17198
        mmLeft = 228336
        mmTop = 28310
        mmWidth = 3175
        BandType = 0
      end
      object ppLine79: TppLine
        UserName = 'Line79'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17198
        mmLeft = 248444
        mmTop = 28310
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        AutoSize = False
        Caption = 'Sueldos pagados por el agente de retencion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 12171
        mmLeft = 77788
        mmTop = 28840
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label70'
        AutoSize = False
        Caption = 'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 8467
        mmTop = 41804
        mmWidth = 48154
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label701'
        AutoSize = False
        Caption = 'NO.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 41804
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label702'
        AutoSize = False
        Caption = 'B'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 57679
        mmTop = 41804
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
        AutoSize = False
        Caption = 'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 77788
        mmTop = 41804
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        AutoSize = False
        Caption = 'D'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 96838
        mmTop = 41804
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        AutoSize = False
        Caption = 'E'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 115623
        mmTop = 41804
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        AutoSize = False
        Caption = 'F'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 134409
        mmTop = 41804
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        AutoSize = False
        Caption = 'G'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 152929
        mmTop = 41804
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        AutoSize = False
        Caption = 'I'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 189707
        mmTop = 41804
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label79'
        AutoSize = False
        Caption = 'J'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 209815
        mmTop = 41804
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label80'
        AutoSize = False
        Caption = 'K'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 228865
        mmTop = 41804
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label801'
        AutoSize = False
        Caption = 'L'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 248973
        mmTop = 41804
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
        AutoSize = False
        Caption = 'Remuneraciones pagadas por otros empleadores'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 12171
        mmLeft = 96838
        mmTop = 28840
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label83'
        AutoSize = False
        Caption = 'Otras remuneraciones pagadas por el agente de retenc.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 12171
        mmLeft = 115623
        mmTop = 28840
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label84'
        AutoSize = False
        Caption = 'TOTAL PAGADO EN EL MES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 12171
        mmLeft = 134409
        mmTop = 28840
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label85'
        AutoSize = False
        Caption = 'Sueldos y otros pagos sujetos a retencion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 12171
        mmLeft = 152929
        mmTop = 28840
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel86: TppLabel
        UserName = 'Label86'
        AutoSize = False
        Caption = 'LIQUIDACION PERIODO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 12171
        mmLeft = 189707
        mmTop = 28840
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel87: TppLabel
        UserName = 'Label87'
        AutoSize = False
        Caption = 'SALDO A FOVOR DEL ASALARIADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 12171
        mmLeft = 209815
        mmTop = 28840
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label88'
        AutoSize = False
        Caption = 
          'Saldos a favor del asal. Conpensable    en futuras retentc.     ' +
          '   (Si  H-I es Negativo)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 12171
        mmLeft = 228865
        mmTop = 28840
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label89'
        AutoSize = False
        Caption = 'Saldo a favor de la Direccion Gral.   (Si H-I es positivo)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 12171
        mmLeft = 248709
        mmTop = 28840
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'Label93'
        AutoSize = False
        Caption = 'REMUNERACIONES PERCIBIDAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 83608
        mmTop = 23548
        mmWidth = 87313
        BandType = 0
      end
      object ppLabel94: TppLabel
        UserName = 'Label94'
        AutoSize = False
        Caption = 'LIQUIDACION DEL IMPUESTO (Ley 11-92)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 171450
        mmTop = 23548
        mmWidth = 92869
        BandType = 0
      end
      object ppLine99: TppLine
        UserName = 'Line99'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 107156
        mmTop = 7408
        mmWidth = 64558
        BandType = 0
      end
      object ppLine100: TppLine
        UserName = 'Line100'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 172509
        mmTop = 7408
        mmWidth = 30163
        BandType = 0
      end
      object ppLine101: TppLine
        UserName = 'Line1001'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 203730
        mmTop = 7408
        mmWidth = 42598
        BandType = 0
      end
      object ppLine102: TppLine
        UserName = 'Line102'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 247386
        mmTop = 7408
        mmWidth = 18785
        BandType = 0
      end
      object ppLine118: TppLine
        UserName = 'Line118'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17198
        mmLeft = 152400
        mmTop = 28310
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel139: TppLabel
        UserName = 'Label139'
        AutoSize = False
        Caption = 'Seguridad Social'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 12171
        mmLeft = 171450
        mmTop = 28840
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel146: TppLabel
        UserName = 'Label146'
        AutoSize = False
        Caption = 'H'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 171450
        mmTop = 41804
        mmWidth = 17727
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'Empleado'
        DataPipeline = plIR4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plIR4'
        mmHeight = 3704
        mmLeft = 7673
        mmTop = 265
        mmWidth = 48683
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        DataField = 'Cedula'
        DataPipeline = plIR4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plIR4'
        mmHeight = 3440
        mmLeft = 57679
        mmTop = 265
        mmWidth = 19579
        BandType = 4
      end
      object ppLine68: TppLine
        UserName = 'Line401'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 4
      end
      object ppLine69: TppLine
        UserName = 'Line69'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 7144
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine70: TppLine
        UserName = 'Line70'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 57150
        mmTop = 0
        mmWidth = 2381
        BandType = 4
      end
      object ppLine71: TppLine
        UserName = 'Line701'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 77258
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        BlankWhenZero = True
        DataField = 'SueldoBase'
        DataPipeline = plIR4
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR4'
        mmHeight = 3969
        mmLeft = 77788
        mmTop = 265
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        BlankWhenZero = True
        DataField = 'SueldoExtra'
        DataPipeline = plIR4
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR4'
        mmHeight = 3969
        mmLeft = 115623
        mmTop = 265
        mmWidth = 18256
        BandType = 4
      end
      object ppLine80: TppLine
        UserName = 'Line80'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 96309
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine81: TppLine
        UserName = 'Line801'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 115094
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine82: TppLine
        UserName = 'Line82'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 133879
        mmTop = 0
        mmWidth = 2381
        BandType = 4
      end
      object ppLine83: TppLine
        UserName = 'Line83'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 170921
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine84: TppLine
        UserName = 'Line84'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 189177
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine85: TppLine
        UserName = 'Line85'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 209550
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine86: TppLine
        UserName = 'Line86'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 228336
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine87: TppLine
        UserName = 'Line87'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 248444
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine88: TppLine
        UserName = 'Line88'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 266436
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine89: TppLine
        UserName = 'Line89'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        BlankWhenZero = True
        DataField = 'Total'
        DataPipeline = plIR4
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR4'
        mmHeight = 3969
        mmLeft = 134409
        mmTop = 265
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        BlankWhenZero = True
        DataField = 'OtrosEmpleadores'
        DataPipeline = plIR4
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR4'
        mmHeight = 3969
        mmLeft = 96838
        mmTop = 265
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText40'
        BlankWhenZero = True
        DataField = 'SueldoGrabado'
        DataPipeline = plIR4
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR4'
        mmHeight = 3969
        mmLeft = 152929
        mmTop = 265
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText401'
        BlankWhenZero = True
        DataField = 'APagar'
        DataPipeline = plIR4
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR4'
        mmHeight = 3969
        mmLeft = 189707
        mmTop = 265
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        BlankWhenZero = True
        DataField = 'saldoafavor'
        DataPipeline = plIR4
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR4'
        mmHeight = 3969
        mmLeft = 209815
        mmTop = 265
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        BlankWhenZero = True
        DataField = 'saldonegativo'
        DataPipeline = plIR4
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR4'
        mmHeight = 3969
        mmLeft = 228865
        mmTop = 265
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        BlankWhenZero = True
        DataField = 'saldopositivo'
        DataPipeline = plIR4
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR4'
        mmHeight = 3969
        mmLeft = 248709
        mmTop = 265
        mmWidth = 17463
        BandType = 4
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'Empleado'
        DataPipeline = plIR4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'plIR4'
        mmHeight = 3175
        mmLeft = 529
        mmTop = 529
        mmWidth = 5821
        BandType = 4
      end
      object ppLine119: TppLine
        UserName = 'Line119'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 152400
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppDBText77: TppDBText
        UserName = 'DBText77'
        BlankWhenZero = True
        DataField = 'afp'
        DataPipeline = plIR4
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR4'
        mmHeight = 3969
        mmLeft = 171450
        mmTop = 265
        mmWidth = 17727
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 1588
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 16140
      mmPrintPosition = 0
      object ppLine90: TppLine
        UserName = 'Line90'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 7
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 5292
        mmLeft = 77788
        mmTop = 0
        mmWidth = 188648
        BandType = 7
      end
      object ppLabel90: TppLabel
        UserName = 'Label90'
        AutoSize = False
        Caption = 'TOTALES RD$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 48154
        mmTop = 794
        mmWidth = 29104
        BandType = 7
      end
      object ppLine91: TppLine
        UserName = 'Line802'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 96309
        mmTop = 0
        mmWidth = 3175
        BandType = 7
      end
      object ppLine92: TppLine
        UserName = 'Line92'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 115094
        mmTop = 0
        mmWidth = 3175
        BandType = 7
      end
      object ppLine93: TppLine
        UserName = 'Line93'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 133879
        mmTop = 0
        mmWidth = 2381
        BandType = 7
      end
      object ppLine94: TppLine
        UserName = 'Line94'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 170921
        mmTop = 0
        mmWidth = 3175
        BandType = 7
      end
      object ppLine95: TppLine
        UserName = 'Line95'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 189177
        mmTop = 0
        mmWidth = 3175
        BandType = 7
      end
      object ppLine96: TppLine
        UserName = 'Line96'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 209550
        mmTop = 0
        mmWidth = 3175
        BandType = 7
      end
      object ppLine97: TppLine
        UserName = 'Line97'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 228336
        mmTop = 0
        mmWidth = 3175
        BandType = 7
      end
      object ppLine98: TppLine
        UserName = 'Line98'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 248444
        mmTop = 0
        mmWidth = 3175
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        BlankWhenZero = True
        DataField = 'SueldoBase'
        DataPipeline = plIR4
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR4'
        mmHeight = 3440
        mmLeft = 77788
        mmTop = 794
        mmWidth = 18521
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        BlankWhenZero = True
        DataField = 'OtrosEmpleadores'
        DataPipeline = plIR4
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR4'
        mmHeight = 3440
        mmLeft = 96838
        mmTop = 794
        mmWidth = 18256
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        BlankWhenZero = True
        DataField = 'SueldoExtra'
        DataPipeline = plIR4
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR4'
        mmHeight = 3440
        mmLeft = 115623
        mmTop = 794
        mmWidth = 18256
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        BlankWhenZero = True
        DataField = 'Total'
        DataPipeline = plIR4
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR4'
        mmHeight = 3440
        mmLeft = 134409
        mmTop = 794
        mmWidth = 17992
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        BlankWhenZero = True
        DataField = 'SueldoGrabado'
        DataPipeline = plIR4
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR4'
        mmHeight = 3440
        mmLeft = 152929
        mmTop = 794
        mmWidth = 17992
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        BlankWhenZero = True
        DataField = 'APagar'
        DataPipeline = plIR4
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR4'
        mmHeight = 3440
        mmLeft = 189707
        mmTop = 794
        mmWidth = 19579
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        BlankWhenZero = True
        DataField = 'saldoafavor'
        DataPipeline = plIR4
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR4'
        mmHeight = 3440
        mmLeft = 209815
        mmTop = 794
        mmWidth = 18521
        BandType = 7
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        BlankWhenZero = True
        DataField = 'saldonegativo'
        DataPipeline = plIR4
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR4'
        mmHeight = 3440
        mmLeft = 228865
        mmTop = 794
        mmWidth = 19315
        BandType = 7
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc10'
        BlankWhenZero = True
        DataField = 'saldopositivo'
        DataPipeline = plIR4
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR4'
        mmHeight = 3440
        mmLeft = 248973
        mmTop = 794
        mmWidth = 16933
        BandType = 7
      end
      object ppLabel91: TppLabel
        UserName = 'Label91'
        AutoSize = False
        Caption = '(L)  Numero de Asalariados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 7144
        mmWidth = 42069
        BandType = 7
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc11'
        DataField = 'Empleado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DBCalcType = dcCount
        mmHeight = 3440
        mmLeft = 57679
        mmTop = 7144
        mmWidth = 10583
        BandType = 7
      end
      object ppLabel92: TppLabel
        UserName = 'Label92'
        AutoSize = False
        Caption = '(M)  Asalariados sujetos a Retencion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 11113
        mmWidth = 55033
        BandType = 7
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc12'
        DataField = 'CantSujetos'
        DataPipeline = plIR4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plIR4'
        mmHeight = 3440
        mmLeft = 57679
        mmTop = 11113
        mmWidth = 10583
        BandType = 7
      end
      object ppLine120: TppLine
        UserName = 'Line120'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 152400
        mmTop = 265
        mmWidth = 3175
        BandType = 7
      end
      object ppDBCalc21: TppDBCalc
        UserName = 'DBCalc21'
        BlankWhenZero = True
        DataField = 'afp'
        DataPipeline = plIR4
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR4'
        mmHeight = 3440
        mmLeft = 171450
        mmTop = 1058
        mmWidth = 17727
        BandType = 7
      end
    end
  end
  object plInfotep: TppDBPipeline
    DataSource = dsInfotep
    UserName = 'plInfotep'
    Left = 160
    Top = 176
  end
  object RptInfotep: TppReport
    AutoStop = False
    DataPipeline = plInfotep
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
    AllowPrintToFile = True
    DeviceType = 'Screen'
    ModalPreview = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = False
    Left = 56
    Top = 176
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'plInfotep'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Empleado'
        DataPipeline = plInfotep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plInfotep'
        mmHeight = 3969
        mmLeft = 17198
        mmTop = 3969
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object plSegAcc: TppDBPipeline
    DataSource = dsSegAcc
    UserName = 'plSegAcc'
    Left = 160
    Top = 232
  end
  object RptSegAcc: TppReport
    AutoStop = False
    DataPipeline = plSegAcc
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
    AllowPrintToFile = True
    DeviceType = 'Screen'
    ModalPreview = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = False
    Left = 56
    Top = 232
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'plSegAcc'
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'Empleado'
        DataPipeline = plSegAcc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plSegAcc'
        mmHeight = 3969
        mmLeft = 31221
        mmTop = 4763
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object plAFP: TppDBPipeline
    DataSource = dsAFP
    UserName = 'plAFP'
    Left = 160
    Top = 288
  end
  object RptAFP: TppReport
    AutoStop = False
    DataPipeline = plAFP
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
    AllowPrintToFile = True
    DeviceType = 'Screen'
    ModalPreview = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextFileType = ftCustom
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = False
    Left = 56
    Top = 288
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'plAFP'
    object ppHeaderBand5: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand5: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'Apellido'
        DataPipeline = plAFP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plAFP'
        mmHeight = 3969
        mmLeft = 26723
        mmTop = 1323
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'Apellido2'
        DataPipeline = plAFP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plAFP'
        mmHeight = 3969
        mmLeft = 56621
        mmTop = 1852
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand5: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object ppReport1: TppReport
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
    AllowPrintToFile = True
    DeviceType = 'Screen'
    ModalPreview = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = False
    Left = 56
    Top = 344
    Version = '7.04'
    mmColumnWidth = 0
    object ppHeaderBand6: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand6: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand6: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object plT60: TppDBPipeline
    DataSource = dsT60
    UserName = 'plT60'
    Left = 160
    Top = 16
  end
  object dsIR4: TDataSource
    DataSet = IR4
    Left = 240
    Top = 72
  end
  object HistEmp: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'spHitoriaEmp;1'
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
        Name = '@EmpleadoID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 55
      end
      item
        Name = '@Desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 37622d
      end
      item
        Name = '@Hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 38353d
      end>
    Left = 320
    Top = 400
    object HistEmpNominaID: TAutoIncField
      FieldName = 'NominaID'
      ReadOnly = True
    end
    object HistEmpTipoNominaID: TIntegerField
      FieldName = 'TipoNominaID'
    end
    object HistEmpTipoEmpleadoID: TIntegerField
      FieldName = 'TipoEmpleadoID'
    end
    object HistEmpFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object HistEmpHoraNormal: TBCDField
      FieldName = 'HoraNormal'
      Precision = 18
      Size = 2
    end
    object HistEmpHoraNocturna: TBCDField
      FieldName = 'HoraNocturna'
      Precision = 18
      Size = 2
    end
    object HistEmpHoraExtra: TBCDField
      FieldName = 'HoraExtra'
      Precision = 18
      Size = 2
    end
    object HistEmpHoraDoble: TBCDField
      FieldName = 'HoraDoble'
      Precision = 18
      Size = 2
    end
    object HistEmpTotalNormal: TBCDField
      FieldName = 'TotalNormal'
      Precision = 18
      Size = 2
    end
    object HistEmpTotalNocturna: TBCDField
      FieldName = 'TotalNocturna'
      Precision = 18
      Size = 2
    end
    object HistEmpTotalExtra: TBCDField
      FieldName = 'TotalExtra'
      Precision = 18
      Size = 2
    end
    object HistEmpTotalDoble: TBCDField
      FieldName = 'TotalDoble'
      Precision = 18
      Size = 2
    end
    object HistEmpOtrosIngresos: TBCDField
      FieldName = 'OtrosIngresos'
      Precision = 19
      Size = 2
    end
    object HistEmpBruto: TBCDField
      FieldName = 'Bruto'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object HistEmpSS: TBCDField
      FieldName = 'SS'
      Precision = 19
      Size = 2
    end
    object HistEmpAFP: TBCDField
      FieldName = 'AFP'
      Precision = 19
      Size = 2
    end
    object HistEmpIR: TBCDField
      FieldName = 'IR'
      Precision = 19
      Size = 2
    end
    object HistEmpOtrosDescuentos: TBCDField
      FieldName = 'OtrosDescuentos'
      Precision = 19
      Size = 2
    end
    object HistEmpTDescuentos: TBCDField
      FieldName = 'TDescuentos'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object HistEmpNeto: TBCDField
      FieldName = 'Neto'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object HistEmpAdelanto: TBCDField
      FieldName = 'Adelanto'
      Precision = 18
      Size = 2
    end
    object HistEmpDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 30
    end
    object HistEmpSeccion: TStringField
      FieldName = 'Seccion'
    end
  end
  object dsHistEmp: TDataSource
    DataSet = HistEmp
    Left = 240
    Top = 400
  end
  object plHistEmp: TppDBPipeline
    DataSource = dsHistEmp
    UserName = 'plHistEmp'
    Left = 160
    Top = 400
  end
  object RptHistEmp: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Legal'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 355601
    PrinterSetup.PaperSize = 5
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = False
    Left = 56
    Top = 400
    Version = '7.04'
    mmColumnWidth = 0
    object ppHeaderBand7: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand7: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel95: TppLabel
        UserName = 'Label95'
        AutoSize = False
        Caption = 'NominaID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 9260
        mmWidth = 10319
        BandType = 4
      end
      object ppLabel96: TppLabel
        UserName = 'Label96'
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 10583
        mmTop = 9260
        mmWidth = 16933
        BandType = 4
      end
      object ppLabel97: TppLabel
        UserName = 'Label97'
        AutoSize = False
        Caption = 'Normal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 30163
        mmTop = 9260
        mmWidth = 21167
        BandType = 4
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        AutoSize = False
        Caption = 'TotalNocturna'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 67469
        mmTop = 9260
        mmWidth = 21167
        BandType = 4
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        AutoSize = False
        Caption = 'TotalExtra'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 104775
        mmTop = 9260
        mmWidth = 21167
        BandType = 4
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        AutoSize = False
        Caption = 'TotalDoble'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 142082
        mmTop = 9260
        mmWidth = 21167
        BandType = 4
      end
      object ppLabel101: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'OtrosIngresos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 179388
        mmTop = 9260
        mmWidth = 23019
        BandType = 4
      end
      object ppLabel102: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Bruto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 203200
        mmTop = 9260
        mmWidth = 21167
        BandType = 4
      end
      object ppLabel103: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'SS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 225955
        mmTop = 9260
        mmWidth = 23019
        BandType = 4
      end
    end
    object ppFooterBand7: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        DataField = 'NominaID'
        DataPipeline = plHistEmp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plHistEmp'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 265
        mmWidth = 10319
        BandType = 8
      end
      object ppDBText45: TppDBText
        UserName = 'DBText45'
        DataField = 'Fecha'
        DataPipeline = plHistEmp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHistEmp'
        mmHeight = 3175
        mmLeft = 10583
        mmTop = 265
        mmWidth = 16933
        BandType = 8
      end
      object ppDBText46: TppDBText
        UserName = 'DBText46'
        DataField = 'TotalNormal'
        DataPipeline = plHistEmp
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plHistEmp'
        mmHeight = 3704
        mmLeft = 30163
        mmTop = 529
        mmWidth = 21167
        BandType = 8
      end
      object ppDBText47: TppDBText
        UserName = 'DBText47'
        DataField = 'TotalNocturna'
        DataPipeline = plHistEmp
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plHistEmp'
        mmHeight = 3704
        mmLeft = 67469
        mmTop = 529
        mmWidth = 21167
        BandType = 8
      end
      object ppDBText48: TppDBText
        UserName = 'DBText48'
        DataField = 'TotalExtra'
        DataPipeline = plHistEmp
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plHistEmp'
        mmHeight = 3704
        mmLeft = 104775
        mmTop = 529
        mmWidth = 21167
        BandType = 8
      end
      object ppDBText49: TppDBText
        UserName = 'DBText49'
        DataField = 'TotalDoble'
        DataPipeline = plHistEmp
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plHistEmp'
        mmHeight = 3704
        mmLeft = 142082
        mmTop = 529
        mmWidth = 21167
        BandType = 8
      end
      object ppDBText50: TppDBText
        UserName = 'DBText50'
        DataField = 'OtrosIngresos'
        DataPipeline = plHistEmp
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plHistEmp'
        mmHeight = 3704
        mmLeft = 179388
        mmTop = 529
        mmWidth = 23019
        BandType = 8
      end
      object ppDBText51: TppDBText
        UserName = 'DBText51'
        DataField = 'Bruto'
        DataPipeline = plHistEmp
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plHistEmp'
        mmHeight = 3704
        mmLeft = 203200
        mmTop = 529
        mmWidth = 21167
        BandType = 8
      end
      object ppDBText52: TppDBText
        UserName = 'DBText52'
        DataField = 'SS'
        DataPipeline = plHistEmp
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plHistEmp'
        mmHeight = 3704
        mmLeft = 225955
        mmTop = 529
        mmWidth = 23019
        BandType = 8
      end
    end
  end
  object Vacaciones: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'RPTVacaciones;1'
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
    Left = 320
    Top = 456
    object VacacionesEmpleadoID: TIntegerField
      FieldName = 'EmpleadoID'
    end
    object VacacionesNombre: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
    object VacacionesApellido: TStringField
      FieldName = 'Apellido'
      Size = 30
    end
    object Vacacionesinicio: TDateTimeField
      FieldName = 'inicio'
    end
    object Vacacionescedula: TStringField
      FieldName = 'cedula'
    end
    object Vacacionessueldomes: TBCDField
      FieldName = 'sueldomes'
      Precision = 18
      Size = 2
    end
    object VacacionesDesde: TWideStringField
      FieldName = 'Desde'
      ReadOnly = True
      Size = 30
    end
    object VacacionesHasta: TWideStringField
      FieldName = 'Hasta'
      ReadOnly = True
      Size = 30
    end
    object VacacionesTipoEmpleado: TStringField
      FieldName = 'TipoEmpleado'
      Size = 10
    end
    object VacacionesidEmpleadoRoll: TStringField
      FieldName = 'idEmpleadoRoll'
      Size = 16
    end
    object VacacionesDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 30
    end
    object VacacionesSeccion: TStringField
      FieldName = 'Seccion'
    end
    object VacacionesEmpleadoRoll: TStringField
      FieldName = 'EmpleadoRoll'
      Size = 50
    end
  end
  object dsVacaciones: TDataSource
    DataSet = Vacaciones
    Left = 240
    Top = 456
  end
  object RPTVacaciones: TppReport
    AutoStop = False
    DataPipeline = plVacaciones
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
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = False
    Left = 56
    Top = 456
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'plVacaciones'
    object ppHeaderBand8: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 23548
      mmPrintPosition = 0
      object ppShape11: TppShape
        UserName = 'Shape11'
        Brush.Color = 13553358
        Pen.Color = 15132390
        mmHeight = 5556
        mmLeft = 0
        mmTop = 17991
        mmWidth = 267230
        BandType = 0
      end
      object ppLabel104: TppLabel
        UserName = 'Label104'
        Caption = 'Vacaciones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 22
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 8996
        mmLeft = 2646
        mmTop = 794
        mmWidth = 62706
        BandType = 0
      end
      object ppDBText53: TppDBText
        UserName = 'DBText53'
        DataField = 'Desde'
        DataPipeline = plVacaciones
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVacaciones'
        mmHeight = 5556
        mmLeft = 101071
        mmTop = 794
        mmWidth = 56356
        BandType = 0
      end
      object ppDBText54: TppDBText
        UserName = 'DBText54'
        DataField = 'Hasta'
        DataPipeline = plVacaciones
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVacaciones'
        mmHeight = 5556
        mmLeft = 100806
        mmTop = 6879
        mmWidth = 56356
        BandType = 0
      end
      object ppLabel105: TppLabel
        UserName = 'Label105'
        Caption = 'Desde :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 83079
        mmTop = 794
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel106: TppLabel
        UserName = 'Label106'
        Caption = 'Hasta :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 84402
        mmTop = 6879
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel107: TppLabel
        UserName = 'Label107'
        AutoSize = False
        Caption = 'Apellidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 19315
        mmWidth = 37571
        BandType = 0
      end
      object ppLabel108: TppLabel
        UserName = 'Label108'
        AutoSize = False
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 19315
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel109: TppLabel
        UserName = 'Label109'
        AutoSize = False
        Caption = 'Sueldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 93134
        mmTop = 19315
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel110: TppLabel
        UserName = 'Label110'
        AutoSize = False
        Caption = 'Inicio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 117211
        mmTop = 19315
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel111: TppLabel
        UserName = 'Label1101'
        AutoSize = False
        Caption = 'Seccion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 190765
        mmTop = 19315
        mmWidth = 28310
        BandType = 0
      end
      object ppLabel112: TppLabel
        UserName = 'Label112'
        AutoSize = False
        Caption = 'Posicion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 142875
        mmTop = 19315
        mmWidth = 47361
        BandType = 0
      end
      object ppLabel114: TppLabel
        UserName = 'Label114'
        AutoSize = False
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 220134
        mmTop = 19315
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel115: TppLabel
        UserName = 'Label115'
        AutoSize = False
        Caption = 'Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 55298
        mmTop = 19315
        mmWidth = 37306
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 208227
        mmTop = 794
        mmWidth = 52123
        BandType = 0
      end
    end
    object ppDetailBand8: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText55: TppDBText
        UserName = 'DBText55'
        DataField = 'Apellido'
        DataPipeline = plVacaciones
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plVacaciones'
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 0
        mmWidth = 37571
        BandType = 4
      end
      object ppDBText56: TppDBText
        UserName = 'DBText56'
        DataField = 'EmpleadoID'
        DataPipeline = plVacaciones
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plVacaciones'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText57: TppDBText
        UserName = 'DBText57'
        DataField = 'Nombre'
        DataPipeline = plVacaciones
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plVacaciones'
        mmHeight = 4233
        mmLeft = 55298
        mmTop = 0
        mmWidth = 37306
        BandType = 4
      end
      object ppDBText58: TppDBText
        UserName = 'DBText58'
        DataField = 'sueldomes'
        DataPipeline = plVacaciones
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVacaciones'
        mmHeight = 4233
        mmLeft = 93134
        mmTop = 0
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText59: TppDBText
        UserName = 'DBText59'
        DataField = 'inicio'
        DataPipeline = plVacaciones
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVacaciones'
        mmHeight = 4233
        mmLeft = 117211
        mmTop = 0
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText60: TppDBText
        UserName = 'DBText60'
        DataField = 'Seccion'
        DataPipeline = plVacaciones
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plVacaciones'
        mmHeight = 4233
        mmLeft = 190765
        mmTop = 0
        mmWidth = 28310
        BandType = 4
      end
      object ppDBText61: TppDBText
        UserName = 'DBText601'
        DataField = 'EmpleadoRoll'
        DataPipeline = plVacaciones
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plVacaciones'
        mmHeight = 4233
        mmLeft = 142875
        mmTop = 0
        mmWidth = 47361
        BandType = 4
      end
      object ppDBText63: TppDBText
        UserName = 'DBText602'
        DataField = 'TipoEmpleado'
        DataPipeline = plVacaciones
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plVacaciones'
        mmHeight = 4233
        mmLeft = 220134
        mmTop = 0
        mmWidth = 21431
        BandType = 4
      end
      object ppLine103: TppLine
        UserName = 'Line103'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 4233
        mmWidth = 266436
        BandType = 4
      end
    end
    object ppFooterBand8: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'Departamento'
      DataPipeline = plVacaciones
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plVacaciones'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 11113
        mmPrintPosition = 0
        object ppDBText62: TppDBText
          UserName = 'DBText62'
          DataField = 'Departamento'
          DataPipeline = plVacaciones
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 16
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plVacaciones'
          mmHeight = 6615
          mmLeft = 24077
          mmTop = 1058
          mmWidth = 130969
          BandType = 3
          GroupNo = 0
        end
        object ppLabel113: TppLabel
          UserName = 'Label113'
          AutoSize = False
          Caption = 'Depto :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 16
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 6604
          mmLeft = 0
          mmTop = 1058
          mmWidth = 21960
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object plVacaciones: TppDBPipeline
    DataSource = dsVacaciones
    UserName = 'plVacaciones'
    Left = 160
    Top = 456
  end
  object IR13: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'spGovIR13;1'
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
    Left = 320
    Top = 128
  end
  object RptIR13: TppReport
    AutoStop = False
    DataPipeline = plIR13
    PassSetting = psTwoPass
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
    Template.FileName = 'C:\Desarrollo\ZFSys\Nomina\Reportes\IR4.rtm'
    AllowPrintToFile = True
    DeviceType = 'Screen'
    ModalPreview = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = False
    Left = 56
    Top = 128
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'plIR13'
    object ppHeaderBand9: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 62706
      mmPrintPosition = 0
      object ppShape12: TppShape
        UserName = 'Shape8'
        Brush.Color = 14803425
        Shape = stRoundRect
        mmHeight = 17198
        mmLeft = 0
        mmTop = 44715
        mmWidth = 266701
        BandType = 0
      end
      object ppShape13: TppShape
        UserName = 'Shape9'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 57944
        mmWidth = 266701
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable2'
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 182034
        mmTop = 794
        mmWidth = 83344
        BandType = 0
      end
      object ppLabel117: TppLabel
        UserName = 'Label59'
        AutoSize = False
        Caption = 'Secretaria de Estado de Finanzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        mmHeight = 6085
        mmLeft = 20902
        mmTop = 3704
        mmWidth = 74083
        BandType = 0
      end
      object ppLabel118: TppLabel
        UserName = 'Label60'
        AutoSize = False
        Caption = 'Nombre o Razon Social:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 23283
        mmWidth = 45244
        BandType = 0
      end
      object ppLabel119: TppLabel
        UserName = 'Label62'
        AutoSize = False
        Caption = 'RNC :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 133615
        mmTop = 23548
        mmWidth = 28310
        BandType = 0
      end
      object ppDBText64: TppDBText
        UserName = 'DBText32'
        DataField = 'Compania'
        DataPipeline = plConfiguracion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfiguracion'
        mmHeight = 4233
        mmLeft = 46302
        mmTop = 23283
        mmWidth = 83344
        BandType = 0
      end
      object ppDBText65: TppDBText
        UserName = 'DBText35'
        DataField = 'RNC'
        DataPipeline = plConfiguracion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfiguracion'
        mmHeight = 4233
        mmLeft = 162719
        mmTop = 23548
        mmWidth = 61119
        BandType = 0
      end
      object ppLabel120: TppLabel
        UserName = 'Label64'
        AutoSize = False
        Caption = 'A'#241'o Fiscal :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 155046
        mmTop = 18256
        mmWidth = 23813
        BandType = 0
      end
      object ppDBText66: TppDBText
        UserName = 'DBText36'
        DataField = 'Ano'
        DataPipeline = plIR13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plIR13'
        mmHeight = 4233
        mmLeft = 179652
        mmTop = 18256
        mmWidth = 43921
        BandType = 0
      end
      object ppLine104: TppLine
        UserName = 'Line38'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 57944
        mmWidth = 266701
        BandType = 0
      end
      object ppLine106: TppLine
        UserName = 'Line41'
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 20902
        mmTop = 13758
        mmWidth = 114036
        BandType = 0
      end
      object ppShape18: TppShape
        UserName = 'Shape7'
        mmHeight = 14288
        mmLeft = 1323
        mmTop = 2117
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel121: TppLabel
        UserName = 'Label61'
        AutoSize = False
        Caption = 'DIRECCION GENERAL DE IMPUESTOS INTERNOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 20902
        mmTop = 9525
        mmWidth = 84667
        BandType = 0
      end
      object ppLabel122: TppLabel
        UserName = 'Label63'
        AutoSize = False
        Caption = 'DECLARACION JURADA ANUAL DEL AGENTE DE RETENCION DE ASALARIADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 20902
        mmTop = 14023
        mmWidth = 114036
        BandType = 0
      end
      object ppLabel123: TppLabel
        UserName = 'Label65'
        Caption = 'FORM. IR-13'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 1164
        mmTop = 16933
        mmWidth = 18838
        BandType = 0
      end
      object ppLine109: TppLine
        UserName = 'Line67'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17198
        mmLeft = 60061
        mmTop = 44979
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel124: TppLabel
        UserName = 'Label601'
        AutoSize = False
        Caption = 'DATOS DE LOS ASALARIADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 40217
        mmWidth = 77523
        BandType = 0
      end
      object ppLabel125: TppLabel
        UserName = 'Label67'
        AutoSize = False
        Caption = 'APELLIDOS Y NOMBRES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 2117
        mmTop = 50536
        mmWidth = 56092
        BandType = 0
      end
      object ppLabel126: TppLabel
        UserName = 'Label68'
        AutoSize = False
        Caption = 'CEDULA DE IDENTIDAD Y ELECTORAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 11906
        mmLeft = 61648
        mmTop = 45508
        mmWidth = 21167
        BandType = 0
      end
      object ppLine111: TppLine
        UserName = 'Line73'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17198
        mmLeft = 107421
        mmTop = 44979
        mmWidth = 3175
        BandType = 0
      end
      object ppLine112: TppLine
        UserName = 'Line74'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17198
        mmLeft = 130969
        mmTop = 44979
        mmWidth = 3175
        BandType = 0
      end
      object ppLine113: TppLine
        UserName = 'Line75'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17198
        mmLeft = 197644
        mmTop = 44979
        mmWidth = 3175
        BandType = 0
      end
      object ppLine114: TppLine
        UserName = 'Line76'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17198
        mmLeft = 154782
        mmTop = 44979
        mmWidth = 3175
        BandType = 0
      end
      object ppLine115: TppLine
        UserName = 'Line77'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17198
        mmLeft = 243946
        mmTop = 44979
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel127: TppLabel
        UserName = 'Label69'
        AutoSize = False
        Caption = 'TOTAL DE SALARIOS PAGADOS EN EL A'#209'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 12171
        mmLeft = 84138
        mmTop = 45508
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel128: TppLabel
        UserName = 'Label70'
        AutoSize = False
        Caption = 'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 1588
        mmTop = 58473
        mmWidth = 57150
        BandType = 0
      end
      object ppLabel130: TppLabel
        UserName = 'Label702'
        AutoSize = False
        Caption = 'B'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 60854
        mmTop = 58473
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel131: TppLabel
        UserName = 'Label73'
        AutoSize = False
        Caption = 'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 84138
        mmTop = 58473
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel132: TppLabel
        UserName = 'Label74'
        AutoSize = False
        Caption = 'D'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 107950
        mmTop = 58473
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel133: TppLabel
        UserName = 'Label75'
        AutoSize = False
        Caption = 'E'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 131498
        mmTop = 58473
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel134: TppLabel
        UserName = 'Label76'
        AutoSize = False
        Caption = 'F'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 155311
        mmTop = 58473
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel135: TppLabel
        UserName = 'Label77'
        AutoSize = False
        Caption = 'H'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 198173
        mmTop = 58473
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel136: TppLabel
        UserName = 'Label78'
        AutoSize = False
        Caption = 'I'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 221457
        mmTop = 58473
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel137: TppLabel
        UserName = 'Label79'
        AutoSize = False
        Caption = 'J'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 244475
        mmTop = 58473
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel140: TppLabel
        UserName = 'Label82'
        AutoSize = False
        Caption = 'OTRAS REMUNERACIONES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 12171
        mmLeft = 107950
        mmTop = 45508
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel141: TppLabel
        UserName = 'Label83'
        AutoSize = False
        Caption = 'TOTAL PAGADO EN EL A'#209'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 12171
        mmLeft = 131498
        mmTop = 45508
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel142: TppLabel
        UserName = 'Label84'
        AutoSize = False
        Caption = 'SUELDOS Y OTROS PAGOS SUJETOS A RETENCION'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 12171
        mmLeft = 155311
        mmTop = 45508
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel143: TppLabel
        UserName = 'Label85'
        AutoSize = False
        Caption = 'IMPUESTO LIQUIDADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 12171
        mmLeft = 198173
        mmTop = 45508
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel144: TppLabel
        UserName = 'Label86'
        AutoSize = False
        Caption = 'IMPUESTO RETENIDO Y PAGADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 12171
        mmLeft = 221457
        mmTop = 45508
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel145: TppLabel
        UserName = 'Label87'
        AutoSize = False
        Caption = 'SALDO A FAVOR DEL EMPLEADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 12171
        mmLeft = 244475
        mmTop = 45508
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel153: TppLabel
        UserName = 'Label602'
        AutoSize = False
        Caption = 'Direccion :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 27252
        mmWidth = 45244
        BandType = 0
      end
      object ppLabel154: TppLabel
        UserName = 'Label154'
        AutoSize = False
        Caption = 'Provincia :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 31221
        mmWidth = 45244
        BandType = 0
      end
      object ppLabel116: TppLabel
        UserName = 'Label116'
        AutoSize = False
        Caption = 'Municipio :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 133615
        mmTop = 27517
        mmWidth = 28310
        BandType = 0
      end
      object ppLabel155: TppLabel
        UserName = 'Label155'
        AutoSize = False
        Caption = 'Telefono :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 133615
        mmTop = 31485
        mmWidth = 28310
        BandType = 0
      end
      object ppLine107: TppLine
        UserName = 'Line1'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 16933
        mmLeft = 83608
        mmTop = 44979
        mmWidth = 3704
        BandType = 0
      end
      object ppLine110: TppLine
        UserName = 'Line110'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17198
        mmLeft = 220928
        mmTop = 44979
        mmWidth = 3175
        BandType = 0
      end
      object ppLine108: TppLine
        UserName = 'Line108'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17198
        mmLeft = 178330
        mmTop = 44715
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel129: TppLabel
        UserName = 'Label129'
        AutoSize = False
        Caption = 'SEGURIDAD SOCIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 12171
        mmLeft = 178859
        mmTop = 45244
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel138: TppLabel
        UserName = 'Label138'
        AutoSize = False
        Caption = 'G'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 178859
        mmTop = 58473
        mmWidth = 18521
        BandType = 0
      end
    end
    object ppDetailBand9: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText67: TppDBText
        UserName = 'DBText2'
        DataField = 'Empleado'
        DataPipeline = plIR13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plIR13'
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 265
        mmWidth = 58208
        BandType = 4
      end
      object ppDBText68: TppDBText
        UserName = 'DBText33'
        DataField = 'Cedula'
        DataPipeline = plIR13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plIR13'
        mmHeight = 3440
        mmLeft = 60590
        mmTop = 265
        mmWidth = 22490
        BandType = 4
      end
      object ppLine122: TppLine
        UserName = 'Line401'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 4
      end
      object ppLine124: TppLine
        UserName = 'Line70'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 60061
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine125: TppLine
        UserName = 'Line701'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 83608
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppDBText69: TppDBText
        UserName = 'DBText34'
        BlankWhenZero = True
        DataField = 'SueldoBase'
        DataPipeline = plIR13
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR13'
        mmHeight = 3969
        mmLeft = 84138
        mmTop = 265
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText70: TppDBText
        UserName = 'DBText38'
        BlankWhenZero = True
        DataField = 'Total'
        DataPipeline = plIR13
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR13'
        mmHeight = 3969
        mmLeft = 131498
        mmTop = 265
        mmWidth = 23019
        BandType = 4
      end
      object ppLine126: TppLine
        UserName = 'Line80'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 107421
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine127: TppLine
        UserName = 'Line801'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 130969
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine128: TppLine
        UserName = 'Line82'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 197644
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine129: TppLine
        UserName = 'Line83'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 154782
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine130: TppLine
        UserName = 'Line84'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 220928
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine131: TppLine
        UserName = 'Line85'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 243946
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppLine134: TppLine
        UserName = 'Line88'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 266436
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine135: TppLine
        UserName = 'Line89'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBText71: TppDBText
        UserName = 'DBText37'
        BlankWhenZero = True
        DataField = 'SueldoGrabado'
        DataPipeline = plIR13
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR13'
        mmHeight = 3969
        mmLeft = 155311
        mmTop = 265
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText72: TppDBText
        UserName = 'DBText39'
        BlankWhenZero = True
        DataField = 'SueldoExtra'
        DataPipeline = plIR13
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR13'
        mmHeight = 3969
        mmLeft = 107950
        mmTop = 265
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText73: TppDBText
        UserName = 'DBText40'
        BlankWhenZero = True
        DataField = 'ISRReal'
        DataPipeline = plIR13
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR13'
        mmHeight = 3969
        mmLeft = 198173
        mmTop = 265
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText74: TppDBText
        UserName = 'DBText401'
        BlankWhenZero = True
        DataField = 'ISRPagado'
        DataPipeline = plIR13
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR13'
        mmHeight = 3969
        mmLeft = 221457
        mmTop = 265
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText75: TppDBText
        UserName = 'DBText42'
        BlankWhenZero = True
        DataField = 'ISRaFavor'
        DataPipeline = plIR13
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR13'
        mmHeight = 3969
        mmLeft = 244475
        mmTop = 265
        mmWidth = 21696
        BandType = 4
      end
      object ppLine116: TppLine
        UserName = 'Line116'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 178330
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppDBText76: TppDBText
        UserName = 'DBText402'
        BlankWhenZero = True
        DataField = 'AFPPagado'
        DataPipeline = plIR13
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR13'
        mmHeight = 3969
        mmLeft = 178859
        mmTop = 265
        mmWidth = 18521
        BandType = 4
      end
    end
    object ppFooterBand9: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 1588
      mmPrintPosition = 0
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 16140
      mmPrintPosition = 0
      object ppLine136: TppLine
        UserName = 'Line90'
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 7
      end
      object ppShape19: TppShape
        UserName = 'Shape10'
        mmHeight = 5292
        mmLeft = 81756
        mmTop = 0
        mmWidth = 184944
        BandType = 7
      end
      object ppLabel150: TppLabel
        UserName = 'Label90'
        AutoSize = False
        Caption = 'TOTALES RD$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 1058
        mmWidth = 79375
        BandType = 7
      end
      object ppLine137: TppLine
        UserName = 'Line802'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 107421
        mmTop = 0
        mmWidth = 3175
        BandType = 7
      end
      object ppLine138: TppLine
        UserName = 'Line92'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 130969
        mmTop = 0
        mmWidth = 3175
        BandType = 7
      end
      object ppLine140: TppLine
        UserName = 'Line94'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 154782
        mmTop = 0
        mmWidth = 3175
        BandType = 7
      end
      object ppLine141: TppLine
        UserName = 'Line95'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 197644
        mmTop = 0
        mmWidth = 3175
        BandType = 7
      end
      object ppLine142: TppLine
        UserName = 'Line96'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 220928
        mmTop = 0
        mmWidth = 3175
        BandType = 7
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc2'
        BlankWhenZero = True
        DataField = 'SueldoBase'
        DataPipeline = plIR13
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR13'
        mmHeight = 3440
        mmLeft = 84138
        mmTop = 1058
        mmWidth = 23019
        BandType = 7
      end
      object ppDBCalc15: TppDBCalc
        UserName = 'DBCalc3'
        BlankWhenZero = True
        DataField = 'SueldoExtra'
        DataPipeline = plIR13
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR13'
        mmHeight = 3440
        mmLeft = 107950
        mmTop = 1058
        mmWidth = 22754
        BandType = 7
      end
      object ppDBCalc16: TppDBCalc
        UserName = 'DBCalc4'
        BlankWhenZero = True
        DataField = 'Total'
        DataPipeline = plIR13
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR13'
        mmHeight = 3440
        mmLeft = 131498
        mmTop = 1058
        mmWidth = 23019
        BandType = 7
      end
      object ppDBCalc17: TppDBCalc
        UserName = 'DBCalc5'
        BlankWhenZero = True
        DataField = 'SueldoGrabado'
        DataPipeline = plIR13
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR13'
        mmHeight = 3440
        mmLeft = 155311
        mmTop = 1058
        mmWidth = 22754
        BandType = 7
      end
      object ppDBCalc18: TppDBCalc
        UserName = 'DBCalc6'
        BlankWhenZero = True
        DataField = 'ISRReal'
        DataPipeline = plIR13
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR13'
        mmHeight = 3440
        mmLeft = 198173
        mmTop = 1058
        mmWidth = 22490
        BandType = 7
      end
      object ppDBCalc19: TppDBCalc
        UserName = 'DBCalc7'
        BlankWhenZero = True
        DataField = 'ISRPagado'
        DataPipeline = plIR13
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR13'
        mmHeight = 3440
        mmLeft = 221457
        mmTop = 1058
        mmWidth = 22225
        BandType = 7
      end
      object ppDBCalc20: TppDBCalc
        UserName = 'DBCalc8'
        BlankWhenZero = True
        DataField = 'ISRaFavor'
        DataPipeline = plIR13
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR13'
        mmHeight = 3440
        mmLeft = 244475
        mmTop = 1058
        mmWidth = 21696
        BandType = 7
      end
      object ppLabel151: TppLabel
        UserName = 'Label91'
        AutoSize = False
        Caption = 'Numero de Asalariados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 7144
        mmWidth = 55033
        BandType = 7
      end
      object ppDBCalc23: TppDBCalc
        UserName = 'DBCalc11'
        DataField = 'Empleado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DBCalcType = dcCount
        mmHeight = 3440
        mmLeft = 57679
        mmTop = 7144
        mmWidth = 48683
        BandType = 7
      end
      object ppLabel152: TppLabel
        UserName = 'Label92'
        AutoSize = False
        Caption = 'Asalariados sujetos a Retencion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 11113
        mmWidth = 55033
        BandType = 7
      end
      object ppDBCalc24: TppDBCalc
        UserName = 'DBCalc12'
        DataField = 'CantSujetos'
        DataPipeline = plIR13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plIR13'
        mmHeight = 3440
        mmLeft = 57679
        mmTop = 11113
        mmWidth = 48683
        BandType = 7
      end
      object ppLine105: TppLine
        UserName = 'Line105'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 243946
        mmTop = 0
        mmWidth = 3175
        BandType = 7
      end
      object ppLine117: TppLine
        UserName = 'Line117'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 178330
        mmTop = 0
        mmWidth = 3175
        BandType = 7
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc13'
        BlankWhenZero = True
        DataField = 'AFPPagado'
        DataPipeline = plIR13
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIR13'
        mmHeight = 3440
        mmLeft = 178859
        mmTop = 794
        mmWidth = 18521
        BandType = 7
      end
    end
  end
  object dsIR13: TDataSource
    DataSet = IR13
    Left = 240
    Top = 128
  end
  object plIR13: TppDBPipeline
    DataSource = dsIR13
    UserName = 'plIR13'
    Left = 160
    Top = 128
    object plIR13ppField1: TppField
      FieldAlias = 'Compania'
      FieldName = 'Compania'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plIR13ppField2: TppField
      FieldAlias = 'RNC'
      FieldName = 'RNC'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object plIR13ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ano'
      FieldName = 'Ano'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object plIR13ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'EmpleadoID'
      FieldName = 'EmpleadoID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object plIR13ppField5: TppField
      FieldAlias = 'Empleado'
      FieldName = 'Empleado'
      FieldLength = 61
      DisplayWidth = 61
      Position = 4
    end
    object plIR13ppField6: TppField
      FieldAlias = 'Cedula'
      FieldName = 'Cedula'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object plIR13ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'SueldoBase'
      FieldName = 'SueldoBase'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 6
    end
    object plIR13ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'SueldoExtra'
      FieldName = 'SueldoExtra'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 22
      Position = 7
    end
    object plIR13ppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 23
      Position = 8
    end
    object plIR13ppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'AFPPagado'
      FieldName = 'AFPPagado'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 17
      Position = 9
    end
    object plIR13ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'ISRPagado'
      FieldName = 'ISRPagado'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 17
      Position = 10
    end
    object plIR13ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'ISRReal'
      FieldName = 'ISRReal'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 11
    end
    object plIR13ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'SueldoGrabado'
      FieldName = 'SueldoGrabado'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 24
      Position = 12
    end
    object plIR13ppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'ISRaFavor'
      FieldName = 'ISRaFavor'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 21
      Position = 13
    end
    object plIR13ppField15: TppField
      FieldAlias = 'CantSujetos'
      FieldName = 'CantSujetos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 14
    end
  end
  object plIR4: TppDBPipeline
    DataSource = dsIR4
    UserName = 'plIR4'
    Left = 160
    Top = 72
  end
  object CxPGenerar: TADOCommand
    CommandText = 'CxPGenerarMontos;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Frecuencia'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@Usuario'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 416
    Top = 24
  end
  object dsConfig: TDataSource
    DataSet = dm.Configuracion
    Left = 416
    Top = 110
  end
  object plConfiguracion: TppDBPipeline
    DataSource = dsConfig
    UserName = 'plConfiguracion'
    Left = 418
    Top = 168
    object plConfiguracionppField1: TppField
      FieldAlias = 'Prefijo'
      FieldName = 'Prefijo'
      FieldLength = 4
      DisplayWidth = 4
      Position = 0
    end
    object plConfiguracionppField2: TppField
      FieldAlias = 'Compania'
      FieldName = 'Compania'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object plConfiguracionppField3: TppField
      FieldAlias = 'Telefono'
      FieldName = 'Telefono'
      FieldLength = 15
      DisplayWidth = 15
      Position = 2
    end
    object plConfiguracionppField4: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object plConfiguracionppField5: TppField
      FieldAlias = 'RNC'
      FieldName = 'RNC'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object plConfiguracionppField6: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 120
      DisplayWidth = 120
      Position = 5
    end
    object plConfiguracionppField7: TppField
      FieldAlias = 'idOficina'
      FieldName = 'idOficina'
      FieldLength = 16
      DisplayWidth = 16
      Position = 6
    end
    object plConfiguracionppField8: TppField
      FieldAlias = 'AgenteAWB'
      FieldName = 'AgenteAWB'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object plConfiguracionppField9: TppField
      FieldAlias = 'CompaniaCorto'
      FieldName = 'CompaniaCorto'
      FieldLength = 16
      DisplayWidth = 16
      Position = 8
    end
    object plConfiguracionppField10: TppField
      FieldAlias = 'TituloApp'
      FieldName = 'TituloApp'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object plConfiguracionppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'idCompania'
      FieldName = 'idCompania'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object plConfiguracionppField12: TppField
      FieldAlias = 'UConfiguracion'
      FieldName = 'UConfiguracion'
      FieldLength = 38
      DisplayWidth = 38
      Position = 11
    end
  end
  object spGovDGT3: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'nomGovDGT3;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@TipoEmpleadoId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 536
    Top = 18
    object spGovDGT3Id: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object spGovDGT3Ano: TIntegerField
      FieldName = 'Ano'
    end
    object spGovDGT3EmpleadoId: TIntegerField
      FieldName = 'EmpleadoId'
    end
    object spGovDGT3Empleado: TStringField
      FieldName = 'Empleado'
      Size = 200
    end
    object spGovDGT3Cedula: TStringField
      FieldName = 'Cedula'
    end
    object spGovDGT3NumeroSS: TStringField
      FieldName = 'NumeroSS'
    end
    object spGovDGT3Nacimiento: TDateTimeField
      FieldName = 'Nacimiento'
    end
    object spGovDGT3Hombre: TStringField
      FieldName = 'Hombre'
      Size = 1
    end
    object spGovDGT3Mujer: TStringField
      FieldName = 'Mujer'
      Size = 1
    end
    object spGovDGT3Nacionalidad: TStringField
      FieldName = 'Nacionalidad'
      Size = 50
    end
    object spGovDGT3Inicio: TDateTimeField
      FieldName = 'Inicio'
    end
    object spGovDGT3EmpleadoRoll: TStringField
      FieldName = 'EmpleadoRoll'
      Size = 80
    end
    object spGovDGT3SueldoMes: TBCDField
      FieldName = 'SueldoMes'
      Precision = 18
      Size = 2
    end
    object spGovDGT3Horario: TStringField
      FieldName = 'Horario'
      Size = 50
    end
    object spGovDGT3SalidaVac: TStringField
      FieldName = 'SalidaVac'
      Size = 16
    end
    object spGovDGT3EntradaVac: TStringField
      FieldName = 'EntradaVac'
      Size = 16
    end
    object spGovDGT3Empleador: TStringField
      FieldName = 'Empleador'
      ReadOnly = True
      Size = 200
    end
    object spGovDGT3AqueSeDedida: TStringField
      FieldName = 'AqueSeDedida'
      ReadOnly = True
      Size = 200
    end
    object spGovDGT3Establecimiento: TStringField
      FieldName = 'Establecimiento'
      ReadOnly = True
      Size = 200
    end
    object spGovDGT3PolizaAccidente: TStringField
      FieldName = 'PolizaAccidente'
      ReadOnly = True
      Size = 200
    end
    object spGovDGT3Representante: TStringField
      FieldName = 'Representante'
      ReadOnly = True
      Size = 200
    end
    object spGovDGT3RNL: TStringField
      FieldName = 'RNL'
      ReadOnly = True
      Size = 200
    end
    object spGovDGT3Sector: TStringField
      FieldName = 'Sector'
      ReadOnly = True
      Size = 200
    end
    object spGovDGT3Correo: TStringField
      FieldName = 'Correo'
      ReadOnly = True
      Size = 200
    end
    object spGovDGT3Municipio: TStringField
      FieldName = 'Municipio'
      ReadOnly = True
      Size = 200
    end
    object spGovDGT3Provincia: TStringField
      FieldName = 'Provincia'
      ReadOnly = True
      Size = 200
    end
    object spGovDGT3WWW: TStringField
      FieldName = 'WWW'
      ReadOnly = True
      Size = 200
    end
    object spGovDGT3ValorInstal: TStringField
      FieldName = 'ValorInstal'
      ReadOnly = True
      Size = 100
    end
  end
  object dsGovDGT3: TDataSource
    DataSet = spGovDGT3
    Left = 539
    Top = 68
  end
  object plGovDGT3: TppDBPipeline
    DataSource = dsGovDGT3
    UserName = 'plGovDGT3'
    Left = 536
    Top = 118
  end
  object rptGovDGT3: TppReport
    AutoStop = False
    DataPipeline = plGovDGT3
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Legal'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 355601
    PrinterSetup.PaperSize = 5
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 538
    Top = 170
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'plGovDGT3'
    object ppHeaderBand10: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 77788
      mmPrintPosition = 0
      object ppShape17: TppShape
        UserName = 'Shape17'
        mmHeight = 13494
        mmLeft = 1058
        mmTop = 64294
        mmWidth = 341313
        BandType = 0
      end
      object ppShape16: TppShape
        UserName = 'Shape16'
        mmHeight = 18785
        mmLeft = 253471
        mmTop = 15875
        mmWidth = 88900
        BandType = 0
      end
      object ppShape15: TppShape
        UserName = 'Shape15'
        mmHeight = 30163
        mmLeft = 1058
        mmTop = 34396
        mmWidth = 341313
        BandType = 0
      end
      object ppShape14: TppShape
        UserName = 'Shape14'
        mmHeight = 18785
        mmLeft = 1058
        mmTop = 15875
        mmWidth = 88900
        BandType = 0
      end
      object ppLabel147: TppLabel
        UserName = 'Label147'
        Caption = 'SECRETARIA DE ESTADO DE TRABAJO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 20
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8107
        mmLeft = 103770
        mmTop = 6350
        mmWidth = 135361
        BandType = 0
      end
      object ppLabel148: TppLabel
        UserName = 'Label148'
        Caption = 'DIRECCION GENERAL DE TRABAJO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 133879
        mmTop = 15081
        mmWidth = 74877
        BandType = 0
      end
      object ppLabel149: TppLabel
        UserName = 'Label149'
        Caption = 'PLANILLA DE PERSONAL FIJO -ANEXO-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5842
        mmLeft = 123502
        mmTop = 23813
        mmWidth = 95631
        BandType = 0
      end
      object ppLabel156: TppLabel
        UserName = 'Label156'
        Caption = 
          '(De conformidad con los Arts. 159 y 161 del C'#243'digo de Trabajo y ' +
          'los Arts. 15 y 16 del reglamento No. 258-93)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 94456
        mmTop = 30163
        mmWidth = 153988
        BandType = 0
      end
      object ppLabel157: TppLabel
        UserName = 'Label157'
        Caption = 'Form. DGT-3 aNEXO/2004'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3239
        mmLeft = 2910
        mmTop = 2381
        mmWidth = 33930
        BandType = 0
      end
      object ppLabel158: TppLabel
        UserName = 'Label158'
        Caption = 'A'#241'o Reportado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 18256
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel159: TppLabel
        UserName = 'Label159'
        Caption = 'R. N. C. No.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 24342
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel160: TppLabel
        UserName = 'Label160'
        Caption = 'P'#243'liza de Accidente No.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 2910
        mmTop = 30163
        mmWidth = 30946
        BandType = 0
      end
      object ppLabel161: TppLabel
        UserName = 'Label1601'
        Caption = 'Raz'#243'n Social de la Empresa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 35983
        mmWidth = 36513
        BandType = 0
      end
      object ppLabel162: TppLabel
        UserName = 'Label162'
        Caption = 'Nombre del Establecimiento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 42333
        mmWidth = 35983
        BandType = 0
      end
      object ppLabel163: TppLabel
        UserName = 'Label163'
        Caption = 'Direccion (Ave./C y #)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 48419
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel164: TppLabel
        UserName = 'Label164'
        Caption = 'Tel'#233'fono:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 54240
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel165: TppLabel
        UserName = 'Label165'
        Caption = 'Fax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 66411
        mmTop = 54240
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel166: TppLabel
        UserName = 'Label166'
        Caption = 'Correo Electr'#243'nico:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 111390
        mmTop = 54240
        mmWidth = 24077
        BandType = 0
      end
      object ppLabel167: TppLabel
        UserName = 'Label167'
        Caption = 'W.W.W.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 174890
        mmTop = 54240
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel168: TppLabel
        UserName = 'Label168'
        Caption = 'Zona Franca:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 234950
        mmTop = 54240
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel169: TppLabel
        UserName = 'Label169'
        Caption = 'Parque:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 290248
        mmTop = 54240
        mmWidth = 9790
        BandType = 0
      end
      object myCheckBox1: TmyCheckBox
        UserName = 'CheckBox1'
        Checked = False
        Transparent = True
        mmHeight = 4498
        mmLeft = 260351
        mmTop = 53711
        mmWidth = 6350
        BandType = 0
      end
      object myCheckBox2: TmyCheckBox
        UserName = 'CheckBox2'
        Checked = False
        Transparent = True
        mmHeight = 4498
        mmLeft = 273844
        mmTop = 53711
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel170: TppLabel
        UserName = 'Label170'
        Caption = 'No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 255323
        mmTop = 54240
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel171: TppLabel
        UserName = 'Label1701'
        Caption = 'Si'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 269876
        mmTop = 54240
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel172: TppLabel
        UserName = 'Label172'
        Caption = 'Nombre del Empleador:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 150548
        mmTop = 35983
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel173: TppLabel
        UserName = 'Label173'
        Caption = 'Nombre del Representante:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 150548
        mmTop = 42333
        mmWidth = 34660
        BandType = 0
      end
      object ppLabel174: TppLabel
        UserName = 'Label174'
        Caption = 'Sector:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 111919
        mmTop = 48419
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel175: TppLabel
        UserName = 'Label175'
        Caption = 'Plaza:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 170127
        mmTop = 48419
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel176: TppLabel
        UserName = 'Label176'
        Caption = 'Municipio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 229659
        mmTop = 48419
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel177: TppLabel
        UserName = 'Label177'
        Caption = 'Provincia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 273844
        mmTop = 48419
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel178: TppLabel
        UserName = 'Label178'
        Caption = 'A que se dedica el Establecimiento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 60061
        mmWidth = 44715
        BandType = 0
      end
      object ppLabel179: TppLabel
        UserName = 'Label179'
        Caption = 'Valor de las instalaciones y/o Existencias (en RD$):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 186532
        mmTop = 60061
        mmWidth = 64558
        BandType = 0
      end
      object ppLine121: TppLine
        UserName = 'Line121'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 1323
        mmTop = 40746
        mmWidth = 340784
        BandType = 0
      end
      object ppLine123: TppLine
        UserName = 'Line123'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 1058
        mmTop = 46831
        mmWidth = 341049
        BandType = 0
      end
      object ppLine132: TppLine
        UserName = 'Line132'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 1058
        mmTop = 52652
        mmWidth = 341049
        BandType = 0
      end
      object ppLine133: TppLine
        UserName = 'Line133'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 1058
        mmTop = 58738
        mmWidth = 341049
        BandType = 0
      end
      object ppLabel180: TppLabel
        UserName = 'Label180'
        Caption = 'Nombre y Apellidos del Trabajador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3239
        mmLeft = 5027
        mmTop = 69056
        mmWidth = 43371
        BandType = 0
      end
      object ppLabel181: TppLabel
        UserName = 'Label1801'
        Caption = 'C'#233'dula de Identidad y Electoral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 76465
        mmTop = 66940
        mmWidth = 25135
        BandType = 0
      end
      object ppLabel182: TppLabel
        UserName = 'Label182'
        Caption = 'No. Sistema Dominicano de Seguridad Social -SDSS-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 10848
        mmLeft = 103188
        mmTop = 65617
        mmWidth = 30956
        BandType = 0
      end
      object ppLabel183: TppLabel
        UserName = 'Label183'
        Caption = 'Fecha de Nacimiento (dd/mm/aa)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 135467
        mmTop = 66940
        mmWidth = 26723
        BandType = 0
      end
      object ppLine139: TppLine
        UserName = 'Line139'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 1058
        mmTop = 22754
        mmWidth = 88636
        BandType = 0
      end
      object ppLine143: TppLine
        UserName = 'Line143'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 1058
        mmTop = 28840
        mmWidth = 88636
        BandType = 0
      end
      object ppLabel184: TppLabel
        UserName = 'Label1802'
        Caption = 'Sexo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 171450
        mmTop = 67469
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel185: TppLabel
        UserName = 'Label185'
        Caption = 'Hombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 164042
        mmTop = 71967
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel186: TppLabel
        UserName = 'Label186'
        Caption = 'Mujer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 177007
        mmTop = 71967
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel187: TppLabel
        UserName = 'Label187'
        Caption = 'Nacionalidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 187590
        mmTop = 69321
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel188: TppLabel
        UserName = 'Label188'
        Caption = 'Fecha Entrada (dd/mm/aa)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 218811
        mmTop = 67204
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel189: TppLabel
        UserName = 'Label189'
        Caption = 'Ocupaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 239713
        mmTop = 69056
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel190: TppLabel
        UserName = 'Label190'
        Caption = 'Salario Mensual RD$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 271992
        mmTop = 67204
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel191: TppLabel
        UserName = 'Label1901'
        Caption = 'Turno Horario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 300832
        mmTop = 67204
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel192: TppLabel
        UserName = 'Label192'
        Caption = 'Vacaciones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3239
        mmLeft = 320146
        mmTop = 65352
        mmWidth = 14605
        BandType = 0
      end
      object ppLabel193: TppLabel
        UserName = 'Label193'
        Caption = 'Inicio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 317765
        mmTop = 69850
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel194: TppLabel
        UserName = 'Label194'
        Caption = 'Fin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 331788
        mmTop = 69850
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel195: TppLabel
        UserName = 'Label195'
        Caption = 'dd/mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3239
        mmLeft = 316442
        mmTop = 74083
        mmWidth = 8615
        BandType = 0
      end
      object ppLabel196: TppLabel
        UserName = 'Label196'
        Caption = 'dd/mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 329407
        mmTop = 74348
        mmWidth = 8731
        BandType = 0
      end
      object ppLine144: TppLine
        UserName = 'Line144'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 75406
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppLine145: TppLine
        UserName = 'Line145'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 102394
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppLine146: TppLine
        UserName = 'Line146'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 134673
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppLine147: TppLine
        UserName = 'Line147'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 162984
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppLine148: TppLine
        UserName = 'Line148'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 185738
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppLine149: TppLine
        UserName = 'Line149'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 218017
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppLine150: TppLine
        UserName = 'Line150'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 238655
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppLine151: TppLine
        UserName = 'Line1501'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 271198
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppLine152: TppLine
        UserName = 'Line152'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 296599
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppLine153: TppLine
        UserName = 'Line153'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 313532
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppDBText90: TppDBText
        UserName = 'DBText90'
        DataField = 'Ano'
        DataPipeline = plGovDGT3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 3387
        mmLeft = 30163
        mmTop = 17992
        mmWidth = 17198
        BandType = 0
      end
      object ppLine167: TppLine
        UserName = 'Line167'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 162984
        mmTop = 71173
        mmWidth = 22754
        BandType = 0
      end
      object ppLine168: TppLine
        UserName = 'Line168'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 313532
        mmTop = 69056
        mmWidth = 28575
        BandType = 0
      end
      object ppLine169: TppLine
        UserName = 'Line169'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 174890
        mmTop = 71173
        mmWidth = 3704
        BandType = 0
      end
      object ppLine170: TppLine
        UserName = 'Line170'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 327555
        mmTop = 69056
        mmWidth = 3704
        BandType = 0
      end
      object ppLine176: TppLine
        UserName = 'Line176'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 253471
        mmTop = 22754
        mmWidth = 88636
        BandType = 0
      end
      object ppLine177: TppLine
        UserName = 'Line177'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 253736
        mmTop = 28840
        mmWidth = 88636
        BandType = 0
      end
      object ppLabel204: TppLabel
        UserName = 'Label204'
        Caption = 'SOLO PARA USO DE LA SET'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 278607
        mmTop = 17727
        mmWidth = 39423
        BandType = 0
      end
      object ppLabel205: TppLabel
        UserName = 'Label205'
        Caption = 'Registro de Planilla No.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3239
        mmLeft = 255059
        mmTop = 24342
        mmWidth = 30268
        BandType = 0
      end
      object ppLabel206: TppLabel
        UserName = 'Label206'
        Caption = 'Rama de Actividad No.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3239
        mmLeft = 255059
        mmTop = 30163
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel207: TppLabel
        UserName = 'Label207'
        Caption = 'Registro Nacional Laboral -RNL-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 271992
        mmTop = 3969
        mmWidth = 54144
        BandType = 0
      end
      object ppDBText91: TppDBText
        UserName = 'DBText91'
        DataField = 'RNC'
        DataPipeline = plConfiguracion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfiguracion'
        mmHeight = 3440
        mmLeft = 21431
        mmTop = 24342
        mmWidth = 67204
        BandType = 0
      end
      object ppDBText92: TppDBText
        UserName = 'DBText92'
        DataField = 'Direccion'
        DataPipeline = plConfiguracion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfiguracion'
        mmHeight = 3440
        mmLeft = 32015
        mmTop = 48154
        mmWidth = 77258
        BandType = 0
      end
      object ppDBText93: TppDBText
        UserName = 'DBText93'
        DataField = 'Telefono'
        DataPipeline = plConfiguracion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfiguracion'
        mmHeight = 3440
        mmLeft = 16404
        mmTop = 54240
        mmWidth = 46038
        BandType = 0
      end
      object ppDBText94: TppDBText
        UserName = 'DBText94'
        DataField = 'Fax'
        DataPipeline = plConfiguracion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfiguracion'
        mmHeight = 3440
        mmLeft = 73290
        mmTop = 54240
        mmWidth = 35190
        BandType = 0
      end
      object ppDBText95: TppDBText
        UserName = 'DBText95'
        DataField = 'Compania'
        DataPipeline = plConfiguracion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfiguracion'
        mmHeight = 3440
        mmLeft = 40217
        mmTop = 35983
        mmWidth = 96573
        BandType = 0
      end
      object ppDBText135: TppDBText
        UserName = 'DBText135'
        DataField = 'Sector'
        DataPipeline = plGovDGT3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 3440
        mmLeft = 121179
        mmTop = 48419
        mmWidth = 35190
        BandType = 0
      end
      object ppDBText137: TppDBText
        UserName = 'DBText137'
        DataField = 'Municipio'
        DataPipeline = plGovDGT3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 3440
        mmLeft = 242623
        mmTop = 48419
        mmWidth = 29369
        BandType = 0
      end
      object ppDBText138: TppDBText
        UserName = 'DBText138'
        DataField = 'Municipio'
        DataPipeline = plGovDGT3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 3440
        mmLeft = 287338
        mmTop = 48154
        mmWidth = 29369
        BandType = 0
      end
      object ppDBText139: TppDBText
        UserName = 'DBText139'
        DataField = 'Establecimiento'
        DataPipeline = plGovDGT3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 3440
        mmLeft = 40481
        mmTop = 42333
        mmWidth = 103452
        BandType = 0
      end
      object ppDBText140: TppDBText
        UserName = 'DBText140'
        DataField = 'Representante'
        DataPipeline = plGovDGT3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 3440
        mmLeft = 186796
        mmTop = 42333
        mmWidth = 103452
        BandType = 0
      end
      object ppDBText141: TppDBText
        UserName = 'DBText1401'
        DataField = 'Empleador'
        DataPipeline = plGovDGT3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 3440
        mmLeft = 186796
        mmTop = 35983
        mmWidth = 103452
        BandType = 0
      end
      object ppDBText142: TppDBText
        UserName = 'DBText142'
        DataField = 'WWW'
        DataPipeline = plGovDGT3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 3440
        mmLeft = 186267
        mmTop = 53975
        mmWidth = 35190
        BandType = 0
      end
      object ppDBText143: TppDBText
        UserName = 'DBText143'
        DataField = 'Correo'
        DataPipeline = plGovDGT3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 3440
        mmLeft = 135996
        mmTop = 54240
        mmWidth = 35190
        BandType = 0
      end
      object ppDBText136: TppDBText
        UserName = 'DBText136'
        DataField = 'PolizaAccidente'
        DataPipeline = plGovDGT3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 3440
        mmLeft = 35190
        mmTop = 30163
        mmWidth = 52917
        BandType = 0
      end
      object ppDBText144: TppDBText
        UserName = 'DBText144'
        DataField = 'AqueSeDedida'
        DataPipeline = plGovDGT3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 3440
        mmLeft = 48419
        mmTop = 60061
        mmWidth = 132292
        BandType = 0
      end
      object ppDBText145: TppDBText
        UserName = 'DBText145'
        DataField = 'RNL'
        DataPipeline = plGovDGT3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 6085
        mmLeft = 254794
        mmTop = 8996
        mmWidth = 86519
        BandType = 0
      end
      object ppDBText146: TppDBText
        UserName = 'DBText146'
        DataField = 'ValorInstal'
        DataPipeline = plGovDGT3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 3440
        mmLeft = 252413
        mmTop = 60061
        mmWidth = 35190
        BandType = 0
      end
    end
    object ppDetailBand10: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppShape20: TppShape
        UserName = 'Shape20'
        mmHeight = 5292
        mmLeft = 1058
        mmTop = 0
        mmWidth = 341313
        BandType = 4
      end
      object ppDBText78: TppDBText
        UserName = 'DBText78'
        DataField = 'Id'
        DataPipeline = plGovDGT3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 3440
        mmLeft = 1852
        mmTop = 794
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText79: TppDBText
        UserName = 'DBText79'
        DataField = 'Empleado'
        DataPipeline = plGovDGT3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 3440
        mmLeft = 8467
        mmTop = 794
        mmWidth = 65881
        BandType = 4
      end
      object ppDBText80: TppDBText
        UserName = 'DBText80'
        DataField = 'Cedula'
        DataPipeline = plGovDGT3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 3440
        mmLeft = 76465
        mmTop = 794
        mmWidth = 24342
        BandType = 4
      end
      object ppDBText81: TppDBText
        UserName = 'DBText801'
        DataField = 'NumeroSS'
        DataPipeline = plGovDGT3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 3440
        mmLeft = 103717
        mmTop = 794
        mmWidth = 29898
        BandType = 4
      end
      object ppDBText82: TppDBText
        UserName = 'DBText82'
        DataField = 'Nacimiento'
        DataPipeline = plGovDGT3
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 3440
        mmLeft = 135467
        mmTop = 794
        mmWidth = 26723
        BandType = 4
      end
      object ppDBText83: TppDBText
        UserName = 'DBText83'
        DataField = 'Hombre'
        DataPipeline = plGovDGT3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 3440
        mmLeft = 166159
        mmTop = 794
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText84: TppDBText
        UserName = 'DBText84'
        DataField = 'Mujer'
        DataPipeline = plGovDGT3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 3440
        mmLeft = 177536
        mmTop = 794
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText85: TppDBText
        UserName = 'DBText85'
        DataField = 'Nacionalidad'
        DataPipeline = plGovDGT3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 3440
        mmLeft = 187590
        mmTop = 794
        mmWidth = 29633
        BandType = 4
      end
      object ppDBText86: TppDBText
        UserName = 'DBText86'
        DataField = 'Inicio'
        DataPipeline = plGovDGT3
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 3440
        mmLeft = 219340
        mmTop = 794
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText87: TppDBText
        UserName = 'DBText87'
        DataField = 'EmpleadoRoll'
        DataPipeline = plGovDGT3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 3440
        mmLeft = 239978
        mmTop = 794
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText88: TppDBText
        UserName = 'DBText88'
        DataField = 'SueldoMes'
        DataPipeline = plGovDGT3
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 3440
        mmLeft = 272257
        mmTop = 794
        mmWidth = 23283
        BandType = 4
      end
      object ppLine154: TppLine
        UserName = 'Line154'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 7673
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine155: TppLine
        UserName = 'Line155'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 75406
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine156: TppLine
        UserName = 'Line156'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 102394
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine157: TppLine
        UserName = 'Line157'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 134673
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine158: TppLine
        UserName = 'Line158'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 162984
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine159: TppLine
        UserName = 'Line159'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 175155
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine160: TppLine
        UserName = 'Line160'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 185738
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine161: TppLine
        UserName = 'Line1601'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 218017
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine162: TppLine
        UserName = 'Line162'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 238655
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine163: TppLine
        UserName = 'Line163'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 271198
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine164: TppLine
        UserName = 'Line164'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 296599
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine165: TppLine
        UserName = 'Line165'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 313532
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine166: TppLine
        UserName = 'Line166'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 327555
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppDBText120: TppDBText
        UserName = 'DBText120'
        DataField = 'SalidaVac'
        DataPipeline = plGovDGT3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 3440
        mmLeft = 314590
        mmTop = 794
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText121: TppDBText
        UserName = 'DBText121'
        DataField = 'EntradaVac'
        DataPipeline = plGovDGT3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 3429
        mmLeft = 328613
        mmTop = 794
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText122: TppDBText
        UserName = 'DBText122'
        DataField = 'Horario'
        DataPipeline = plGovDGT3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plGovDGT3'
        mmHeight = 3440
        mmLeft = 297921
        mmTop = 794
        mmWidth = 14552
        BandType = 4
      end
    end
    object ppFooterBand10: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 39423
      mmPrintPosition = 0
      object ppLabel197: TppLabel
        UserName = 'Label197'
        Caption = 'Observaciones:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 2381
        mmTop = 5027
        mmWidth = 24596
        BandType = 8
      end
      object ppLine171: TppLine
        UserName = 'Line171'
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 28840
        mmTop = 9525
        mmWidth = 312738
        BandType = 8
      end
      object ppLine172: TppLine
        UserName = 'Line172'
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 28840
        mmTop = 14817
        mmWidth = 312738
        BandType = 8
      end
      object ppLabel198: TppLabel
        UserName = 'Label198'
        Caption = 'Original: Direcci'#243'n General de Trabajo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 5027
        mmTop = 20373
        mmWidth = 60325
        BandType = 8
      end
      object ppLabel199: TppLabel
        UserName = 'Label199'
        Caption = 'Duplicado Rosado: Interesado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 5292
        mmTop = 25400
        mmWidth = 47202
        BandType = 8
      end
      object ppLabel200: TppLabel
        UserName = 'Label200'
        Caption = 'Triplicado Amarillo: Direcci'#243'n de Trabajo o Representaci'#243'n Local'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 5027
        mmTop = 30163
        mmWidth = 101177
        BandType = 8
      end
      object ppLabel201: TppLabel
        UserName = 'Label1'
        Caption = 'Nombre del Inspector'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 153194
        mmTop = 32279
        mmWidth = 33867
        BandType = 8
      end
      object ppLabel202: TppLabel
        UserName = 'Label202'
        Caption = 'Firma del Inspector'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 225425
        mmTop = 32279
        mmWidth = 30163
        BandType = 8
      end
      object ppLabel203: TppLabel
        UserName = 'Label203'
        Caption = 'Firma Empleador o Representante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 279665
        mmTop = 32279
        mmWidth = 54240
        BandType = 8
      end
      object ppLine173: TppLine
        UserName = 'Line173'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 140494
        mmTop = 31485
        mmWidth = 57944
        BandType = 8
      end
      object ppLine174: TppLine
        UserName = 'Line174'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 210873
        mmTop = 31485
        mmWidth = 57944
        BandType = 8
      end
      object ppLine175: TppLine
        UserName = 'Line175'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 277284
        mmTop = 31485
        mmWidth = 57944
        BandType = 8
      end
    end
  end
  object spGovDGT4: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'nomGovDGT4;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@TipoEmpleadoId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Mes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Ano'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 646
    Top = 19
    object spGovDGT4Id: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object spGovDGT4Ano: TIntegerField
      FieldName = 'Ano'
    end
    object spGovDGT4EmpleadoId: TIntegerField
      FieldName = 'EmpleadoId'
    end
    object spGovDGT4Nombre: TStringField
      FieldName = 'Nombre'
      Size = 200
    end
    object spGovDGT4Apellido: TStringField
      FieldName = 'Apellido'
      Size = 200
    end
    object spGovDGT4Cedula: TStringField
      FieldName = 'Cedula'
    end
    object spGovDGT4NumeroSS: TStringField
      FieldName = 'NumeroSS'
    end
    object spGovDGT4DiaNacimiento: TIntegerField
      FieldName = 'DiaNacimiento'
    end
    object spGovDGT4MesNacimiento: TIntegerField
      FieldName = 'MesNacimiento'
    end
    object spGovDGT4AnoNacimiento: TIntegerField
      FieldName = 'AnoNacimiento'
    end
    object spGovDGT4FechaCambio: TDateTimeField
      FieldName = 'FechaCambio'
    end
    object spGovDGT4EntradaSueldo: TBCDField
      FieldName = 'EntradaSueldo'
      Precision = 18
      Size = 2
    end
    object spGovDGT4SalidaSueldo: TBCDField
      FieldName = 'SalidaSueldo'
      Precision = 18
      Size = 2
    end
    object spGovDGT4CambioSueldo: TBCDField
      FieldName = 'CambioSueldo'
      Precision = 18
      Size = 2
    end
    object spGovDGT4Hombre: TStringField
      FieldName = 'Hombre'
      Size = 1
    end
    object spGovDGT4Mujer: TStringField
      FieldName = 'Mujer'
      Size = 1
    end
    object spGovDGT4Nacionalidad: TStringField
      FieldName = 'Nacionalidad'
      Size = 50
    end
    object spGovDGT4Inicio: TDateTimeField
      FieldName = 'Inicio'
    end
    object spGovDGT4EmpleadoRoll: TStringField
      FieldName = 'EmpleadoRoll'
      Size = 80
    end
    object spGovDGT4SueldoMes: TBCDField
      FieldName = 'SueldoMes'
      Precision = 18
      Size = 2
    end
    object spGovDGT4Horario: TStringField
      FieldName = 'Horario'
      Size = 50
    end
    object spGovDGT4Empleador: TStringField
      FieldName = 'Empleador'
      ReadOnly = True
      Size = 200
    end
    object spGovDGT4AqueSeDedica: TStringField
      FieldName = 'AqueSeDedica'
      ReadOnly = True
      Size = 200
    end
    object spGovDGT4Establecimiento: TStringField
      FieldName = 'Establecimiento'
      ReadOnly = True
      Size = 200
    end
    object spGovDGT4PolizaAccidente: TStringField
      FieldName = 'PolizaAccidente'
      ReadOnly = True
      Size = 200
    end
    object spGovDGT4Representante: TStringField
      FieldName = 'Representante'
      ReadOnly = True
      Size = 200
    end
    object spGovDGT4MesStr: TStringField
      FieldName = 'MesStr'
      Size = 50
    end
    object spGovDGT4RNL: TStringField
      FieldName = 'RNL'
      ReadOnly = True
      Size = 200
    end
    object spGovDGT4Sector: TStringField
      FieldName = 'Sector'
      ReadOnly = True
      Size = 200
    end
    object spGovDGT4Correo: TStringField
      FieldName = 'Correo'
      ReadOnly = True
      Size = 200
    end
    object spGovDGT4Municipio: TStringField
      FieldName = 'Municipio'
      ReadOnly = True
      Size = 200
    end
    object spGovDGT4Provincia: TStringField
      FieldName = 'Provincia'
      ReadOnly = True
      Size = 200
    end
    object spGovDGT4WWW: TStringField
      FieldName = 'WWW'
      ReadOnly = True
      Size = 200
    end
    object spGovDGT4CedEmpleador: TStringField
      FieldName = 'CedEmpleador'
      ReadOnly = True
      Size = 16
    end
    object spGovDGT4CedRepresentante: TStringField
      FieldName = 'CedRepresentante'
      ReadOnly = True
      Size = 16
    end
    object spGovDGT4Entrada: TIntegerField
      FieldName = 'Entrada'
    end
    object spGovDGT4Salida: TIntegerField
      FieldName = 'Salida'
    end
    object spGovDGT4Cambio: TIntegerField
      FieldName = 'Cambio'
    end
  end
  object dsGovDGT4: TDataSource
    DataSet = spGovDGT4
    Left = 647
    Top = 68
  end
  object plGovDGT4: TppDBPipeline
    DataSource = dsGovDGT4
    UserName = 'plGovDGT4'
    Left = 646
    Top = 120
  end
  object rptGovDGT4: TppReport
    AutoStop = False
    DataPipeline = plGovDGT4
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Legal'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 355601
    PrinterSetup.PaperSize = 5
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 646
    Top = 174
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'plGovDGT4'
    object ppHeaderBand11: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 77788
      mmPrintPosition = 0
      object ppShape25: TppShape
        UserName = 'Shape17'
        mmHeight = 13494
        mmLeft = 1058
        mmTop = 64294
        mmWidth = 341313
        BandType = 0
      end
      object ppShape26: TppShape
        UserName = 'Shape16'
        mmHeight = 18785
        mmLeft = 253471
        mmTop = 15875
        mmWidth = 88900
        BandType = 0
      end
      object ppShape27: TppShape
        UserName = 'Shape15'
        mmHeight = 29633
        mmLeft = 1058
        mmTop = 34396
        mmWidth = 341313
        BandType = 0
      end
      object ppShape28: TppShape
        UserName = 'Shape14'
        mmHeight = 18785
        mmLeft = 1058
        mmTop = 15875
        mmWidth = 88900
        BandType = 0
      end
      object ppLabel208: TppLabel
        UserName = 'Label147'
        Caption = 'SECRETARIA DE ESTADO DE TRABAJO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 20
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8107
        mmLeft = 103770
        mmTop = 6350
        mmWidth = 135361
        BandType = 0
      end
      object ppLabel209: TppLabel
        UserName = 'Label148'
        Caption = 'DIRECCION GENERAL DE TRABAJO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 133879
        mmTop = 15081
        mmWidth = 74877
        BandType = 0
      end
      object ppLabel210: TppLabel
        UserName = 'Label149'
        Caption = 'CAMBIOS EN LA PLANTILLA DE PERSONAL FIJO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5842
        mmLeft = 112694
        mmTop = 23813
        mmWidth = 117264
        BandType = 0
      end
      object ppLabel211: TppLabel
        UserName = 'Label156'
        Caption = 
          '(De conformidad con el Art. 17 del  reglamento No. 258-93 del C'#243 +
          'digo de Trabajo)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 113287
        mmTop = 30163
        mmWidth = 116332
        BandType = 0
      end
      object ppLabel212: TppLabel
        UserName = 'Label157'
        Caption = 'Form. DGT-4 / 2004'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 2910
        mmTop = 2381
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel213: TppLabel
        UserName = 'Label158'
        Caption = 'A'#241'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 72496
        mmTop = 30163
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel214: TppLabel
        UserName = 'Label159'
        Caption = 'R. N. C. No.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 18256
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel215: TppLabel
        UserName = 'Label160'
        Caption = 'P'#243'liza de Accidente de Trabajo No.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 2910
        mmTop = 24342
        mmWidth = 45254
        BandType = 0
      end
      object ppLabel216: TppLabel
        UserName = 'Label1601'
        Caption = 'Raz'#243'n Social de la Empresa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 35983
        mmWidth = 36513
        BandType = 0
      end
      object ppLabel217: TppLabel
        UserName = 'Label162'
        Caption = 'Nombre del Establecimiento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 42333
        mmWidth = 35983
        BandType = 0
      end
      object ppLabel218: TppLabel
        UserName = 'Label163'
        Caption = 'Direccion (Ave./C y #)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 48419
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel219: TppLabel
        UserName = 'Label164'
        Caption = 'Tel'#233'fono:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 54240
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel220: TppLabel
        UserName = 'Label165'
        Caption = 'Fax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 66411
        mmTop = 54240
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel221: TppLabel
        UserName = 'Label166'
        Caption = 'Correo Electr'#243'nico:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 111390
        mmTop = 54240
        mmWidth = 24077
        BandType = 0
      end
      object ppLabel222: TppLabel
        UserName = 'Label167'
        Caption = 'WWW.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 174890
        mmTop = 54240
        mmWidth = 9186
        BandType = 0
      end
      object ppLabel223: TppLabel
        UserName = 'Label168'
        Caption = 'Zona Franca:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 234950
        mmTop = 54240
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel224: TppLabel
        UserName = 'Label169'
        Caption = 'Parque:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 290248
        mmTop = 54240
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel225: TppLabel
        UserName = 'Label170'
        Caption = 'No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 323321
        mmTop = 42863
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel226: TppLabel
        UserName = 'Label1701'
        Caption = 'Si'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 311944
        mmTop = 42598
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel227: TppLabel
        UserName = 'Label172'
        Caption = 'Nombre del Empleador:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 150548
        mmTop = 35983
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel228: TppLabel
        UserName = 'Label173'
        Caption = 'Nombre del Representante:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 150548
        mmTop = 42333
        mmWidth = 34660
        BandType = 0
      end
      object ppLabel229: TppLabel
        UserName = 'Label174'
        Caption = 'Sector:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 111919
        mmTop = 48419
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel231: TppLabel
        UserName = 'Label176'
        Caption = 'Municipio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 229659
        mmTop = 48419
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel232: TppLabel
        UserName = 'Label177'
        Caption = 'Provincia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 273844
        mmTop = 48419
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel233: TppLabel
        UserName = 'Label178'
        Caption = 'A que se dedica el Establecimiento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 60061
        mmWidth = 44715
        BandType = 0
      end
      object ppLabel234: TppLabel
        UserName = 'Label179'
        Caption = 'CAMBIOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 287867
        mmTop = 60061
        mmWidth = 13229
        BandType = 0
      end
      object ppLine187: TppLine
        UserName = 'Line121'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 1323
        mmTop = 40746
        mmWidth = 340784
        BandType = 0
      end
      object ppLine188: TppLine
        UserName = 'Line123'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 1058
        mmTop = 46831
        mmWidth = 341049
        BandType = 0
      end
      object ppLine189: TppLine
        UserName = 'Line132'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 1058
        mmTop = 52652
        mmWidth = 341049
        BandType = 0
      end
      object ppLine190: TppLine
        UserName = 'Line133'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 1058
        mmTop = 58738
        mmWidth = 341049
        BandType = 0
      end
      object ppLabel235: TppLabel
        UserName = 'Label180'
        Caption = 'Nombres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 10319
        mmTop = 69586
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel236: TppLabel
        UserName = 'Label1801'
        Caption = 'C'#233'dula de Identidad y Electoral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 76465
        mmTop = 66940
        mmWidth = 25135
        BandType = 0
      end
      object ppLabel237: TppLabel
        UserName = 'Label182'
        Caption = 'No. Sistema Dominicano de Seguridad Social'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 11113
        mmLeft = 103717
        mmTop = 65617
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel238: TppLabel
        UserName = 'Label183'
        Caption = 'Fecha de Nacimiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 170921
        mmTop = 65088
        mmWidth = 14224
        BandType = 0
      end
      object ppLine191: TppLine
        UserName = 'Line139'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 1058
        mmTop = 22754
        mmWidth = 88636
        BandType = 0
      end
      object ppLine192: TppLine
        UserName = 'Line143'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 1058
        mmTop = 28840
        mmWidth = 88636
        BandType = 0
      end
      object ppLabel239: TppLabel
        UserName = 'Label1802'
        Caption = 'Sexo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 132027
        mmTop = 66146
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel240: TppLabel
        UserName = 'Label185'
        Caption = 'F'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 130440
        mmTop = 72761
        mmWidth = 1736
        BandType = 0
      end
      object ppLabel241: TppLabel
        UserName = 'Label186'
        Caption = 'M'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 138377
        mmTop = 72761
        mmWidth = 2328
        BandType = 0
      end
      object ppLabel242: TppLabel
        UserName = 'Label187'
        Caption = 'Nacionalidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 145257
        mmTop = 69850
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel243: TppLabel
        UserName = 'Label188'
        Caption = 'D'#237'a del Cambio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 193146
        mmTop = 66675
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel244: TppLabel
        UserName = 'Label189'
        Caption = 'Ocupaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 208757
        mmTop = 69056
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel245: TppLabel
        UserName = 'Label190'
        Caption = 'Salario Mensual en RD$'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 5757
        mmLeft = 263526
        mmTop = 70908
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel246: TppLabel
        UserName = 'Label1901'
        Caption = 'Turno Horario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 241565
        mmTop = 66940
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel247: TppLabel
        UserName = 'Label192'
        Caption = 'Salida'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 292101
        mmTop = 65617
        mmWidth = 7874
        BandType = 0
      end
      object ppLine193: TppLine
        UserName = 'Line144'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 75406
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppLine194: TppLine
        UserName = 'Line145'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 102394
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppLine195: TppLine
        UserName = 'Line146'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 127000
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppLine196: TppLine
        UserName = 'Line147'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 143140
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppLine197: TppLine
        UserName = 'Line148'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 164307
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppLine198: TppLine
        UserName = 'Line149'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 191559
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppLine199: TppLine
        UserName = 'Line150'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 207698
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppLine200: TppLine
        UserName = 'Line1501'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 240242
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppLine201: TppLine
        UserName = 'Line152'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 252413
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppLine202: TppLine
        UserName = 'Line153'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 312738
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppDBText89: TppDBText
        UserName = 'DBText90'
        DataField = 'Ano'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3429
        mmLeft = 79111
        mmTop = 29898
        mmWidth = 9525
        BandType = 0
      end
      object ppLine203: TppLine
        UserName = 'Line167'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 127265
        mmTop = 71173
        mmWidth = 15875
        BandType = 0
      end
      object ppLine204: TppLine
        UserName = 'Line168'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 252413
        mmTop = 69586
        mmWidth = 89694
        BandType = 0
      end
      object ppLine205: TppLine
        UserName = 'Line169'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 135202
        mmTop = 71173
        mmWidth = 3704
        BandType = 0
      end
      object ppLine206: TppLine
        UserName = 'Line170'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 293159
        mmTop = 69586
        mmWidth = 3704
        BandType = 0
      end
      object ppLine207: TppLine
        UserName = 'Line176'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 253471
        mmTop = 22754
        mmWidth = 88636
        BandType = 0
      end
      object ppLine208: TppLine
        UserName = 'Line177'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 253736
        mmTop = 28840
        mmWidth = 88636
        BandType = 0
      end
      object ppLabel252: TppLabel
        UserName = 'Label204'
        Caption = 'SOLO PARA USO DE LA SET'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 278607
        mmTop = 17727
        mmWidth = 43180
        BandType = 0
      end
      object ppLabel253: TppLabel
        UserName = 'Label205'
        Caption = 'Registro de Planilla No.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3239
        mmLeft = 255059
        mmTop = 24342
        mmWidth = 30268
        BandType = 0
      end
      object ppLabel254: TppLabel
        UserName = 'Label206'
        Caption = 'Rama de Actividad No.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3239
        mmLeft = 255059
        mmTop = 30163
        mmWidth = 29633
        BandType = 0
      end
      object ppShape29: TppShape
        UserName = 'Shape21'
        mmHeight = 5556
        mmLeft = 253471
        mmTop = 10583
        mmWidth = 88900
        BandType = 0
      end
      object ppLabel255: TppLabel
        UserName = 'Label207'
        Caption = 'Registro Nacional Laboral -RNL-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 254530
        mmTop = 11642
        mmWidth = 43656
        BandType = 0
      end
      object ppDBText96: TppDBText
        UserName = 'DBText91'
        DataField = 'RNC'
        DataPipeline = plConfiguracion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfiguracion'
        mmHeight = 3440
        mmLeft = 24606
        mmTop = 18256
        mmWidth = 64029
        BandType = 0
      end
      object ppDBText97: TppDBText
        UserName = 'DBText92'
        DataField = 'Direccion'
        DataPipeline = plConfiguracion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfiguracion'
        mmHeight = 3440
        mmLeft = 36248
        mmTop = 48154
        mmWidth = 73025
        BandType = 0
      end
      object ppDBText98: TppDBText
        UserName = 'DBText93'
        DataField = 'Telefono'
        DataPipeline = plConfiguracion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfiguracion'
        mmHeight = 3440
        mmLeft = 19579
        mmTop = 54240
        mmWidth = 42863
        BandType = 0
      end
      object ppDBText99: TppDBText
        UserName = 'DBText94'
        DataField = 'Fax'
        DataPipeline = plConfiguracion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfiguracion'
        mmHeight = 3429
        mmLeft = 73290
        mmTop = 54240
        mmWidth = 35190
        BandType = 0
      end
      object ppDBText100: TppDBText
        UserName = 'DBText95'
        DataField = 'Compania'
        DataPipeline = plConfiguracion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfiguracion'
        mmHeight = 3440
        mmLeft = 45244
        mmTop = 35983
        mmWidth = 91546
        BandType = 0
      end
      object ppLabel263: TppLabel
        UserName = 'Label1803'
        Caption = 'Apellidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 40746
        mmTop = 69586
        mmWidth = 11515
        BandType = 0
      end
      object ppLine236: TppLine
        UserName = 'Line236'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 38894
        mmTop = 64558
        mmWidth = 2381
        BandType = 0
      end
      object ppLabel264: TppLabel
        UserName = 'Label264'
        Caption = '  Dia    Mes    A'#241'o  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 165365
        mmTop = 73819
        mmWidth = 24257
        BandType = 0
      end
      object ppLabel265: TppLabel
        UserName = 'Label265'
        Caption = 'Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 261409
        mmTop = 65617
        mmWidth = 9906
        BandType = 0
      end
      object ppLine237: TppLine
        UserName = 'Line237'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 280988
        mmTop = 64558
        mmWidth = 2381
        BandType = 0
      end
      object ppLabel266: TppLabel
        UserName = 'Label266'
        Caption = 'Aumento Salario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 316442
        mmTop = 65617
        mmWidth = 20997
        BandType = 0
      end
      object ppLine238: TppLine
        UserName = 'Line1701'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 262203
        mmTop = 69850
        mmWidth = 3704
        BandType = 0
      end
      object ppLine239: TppLine
        UserName = 'Line239'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 323057
        mmTop = 69586
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel248: TppLabel
        UserName = 'Label1902'
        Caption = 'Llene con "X"'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6085
        mmLeft = 252942
        mmTop = 70644
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel249: TppLabel
        UserName = 'Label249'
        Caption = 'Llene con "X"'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6085
        mmLeft = 282311
        mmTop = 70644
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel250: TppLabel
        UserName = 'Label1903'
        Caption = 'Salario Mensual en RD$'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 294482
        mmTop = 70908
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel251: TppLabel
        UserName = 'Label251'
        Caption = 'Llene con "X"'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6085
        mmLeft = 313532
        mmTop = 70908
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel267: TppLabel
        UserName = 'Label1904'
        Caption = 'Salario Actual'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 4233
        mmLeft = 323851
        mmTop = 73554
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel269: TppLabel
        UserName = 'Label269'
        Caption = 'Cambios Efectuados en el mes de :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 30163
        mmWidth = 44979
        BandType = 0
      end
      object ppDBText124: TppDBText
        UserName = 'DBText901'
        DataField = 'MesStr'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 52388
        mmTop = 30163
        mmWidth = 18785
        BandType = 0
      end
      object ppDBText125: TppDBText
        UserName = 'DBText125'
        DataField = 'Establecimiento'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 43656
        mmTop = 42333
        mmWidth = 82815
        BandType = 0
      end
      object ppDBText126: TppDBText
        UserName = 'DBText126'
        DataField = 'AqueSeDedica'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 52917
        mmTop = 60061
        mmWidth = 82286
        BandType = 0
      end
      object ppDBText127: TppDBText
        UserName = 'DBText127'
        DataField = 'Empleador'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 186532
        mmTop = 35719
        mmWidth = 65088
        BandType = 0
      end
      object ppDBText128: TppDBText
        UserName = 'DBText128'
        DataField = 'Representante'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 186796
        mmTop = 42069
        mmWidth = 64558
        BandType = 0
      end
      object ppDBText129: TppDBText
        UserName = 'DBText129'
        DataField = 'RNL'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 299244
        mmTop = 11642
        mmWidth = 38100
        BandType = 0
      end
      object ppDBText130: TppDBText
        UserName = 'DBText130'
        DataField = 'Sector'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 121973
        mmTop = 48419
        mmWidth = 38100
        BandType = 0
      end
      object ppDBText131: TppDBText
        UserName = 'DBText1301'
        DataField = 'Municipio'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 243417
        mmTop = 48419
        mmWidth = 28840
        BandType = 0
      end
      object ppDBText132: TppDBText
        UserName = 'DBText132'
        DataField = 'Provincia'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 287338
        mmTop = 48419
        mmWidth = 44186
        BandType = 0
      end
      object ppDBText133: TppDBText
        UserName = 'DBText133'
        DataField = 'WWW'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 186532
        mmTop = 54240
        mmWidth = 44186
        BandType = 0
      end
      object ppDBText134: TppDBText
        UserName = 'DBText134'
        DataField = 'Correo'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 138642
        mmTop = 54240
        mmWidth = 34925
        BandType = 0
      end
      object ppDBText147: TppDBText
        UserName = 'DBText802'
        DataField = 'CedEmpleador'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 269611
        mmTop = 35983
        mmWidth = 24342
        BandType = 0
      end
      object ppDBText148: TppDBText
        UserName = 'DBText148'
        DataField = 'CedRepresentante'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 269611
        mmTop = 42333
        mmWidth = 24342
        BandType = 0
      end
      object ppLabel270: TppLabel
        UserName = 'Label270'
        Caption = 'C'#233'dula:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 258498
        mmTop = 36248
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel271: TppLabel
        UserName = 'Label2701'
        Caption = 'C'#233'dula:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 259028
        mmTop = 42333
        mmWidth = 9790
        BandType = 0
      end
      object myCheckBox3: TmyCheckBox
        UserName = 'CheckBox3'
        Transparent = True
        mmHeight = 6350
        mmLeft = 327290
        mmTop = 41540
        mmWidth = 6350
        BandType = 0
      end
      object myCheckBox4: TmyCheckBox
        UserName = 'CheckBox4'
        Checked = False
        Transparent = True
        mmHeight = 6350
        mmLeft = 315384
        mmTop = 41275
        mmWidth = 6350
        BandType = 0
      end
      object ppDBText149: TppDBText
        UserName = 'DBText149'
        DataField = 'PolizaAccidente'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 49477
        mmTop = 24342
        mmWidth = 38365
        BandType = 0
      end
      object ppLabel272: TppLabel
        UserName = 'Label272'
        Caption = 'Sucursal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 298186
        mmTop = 42598
        mmWidth = 11853
        BandType = 0
      end
      object myCheckBox5: TmyCheckBox
        UserName = 'CheckBox5'
        Checked = False
        Transparent = True
        mmHeight = 6350
        mmLeft = 270934
        mmTop = 52917
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel273: TppLabel
        UserName = 'Label273'
        Caption = 'Si'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 268023
        mmTop = 53975
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel274: TppLabel
        UserName = 'Label1702'
        Caption = 'No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 255059
        mmTop = 54240
        mmWidth = 3704
        BandType = 0
      end
      object myCheckBox6: TmyCheckBox
        UserName = 'CheckBox6'
        Transparent = True
        mmHeight = 6350
        mmLeft = 259557
        mmTop = 52917
        mmWidth = 6350
        BandType = 0
      end
    end
    object ppDetailBand11: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppShape33: TppShape
        UserName = 'Shape20'
        mmHeight = 5292
        mmLeft = 1058
        mmTop = 0
        mmWidth = 341313
        BandType = 4
      end
      object ppDBText101: TppDBText
        UserName = 'DBText78'
        DataField = 'Id'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 1852
        mmTop = 794
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText102: TppDBText
        UserName = 'DBText79'
        DataField = 'Nombre'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 8467
        mmTop = 794
        mmWidth = 29369
        BandType = 4
      end
      object ppDBText103: TppDBText
        UserName = 'DBText80'
        DataField = 'Cedula'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 76465
        mmTop = 794
        mmWidth = 24342
        BandType = 4
      end
      object ppDBText104: TppDBText
        UserName = 'DBText801'
        DataField = 'NumeroSS'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 103717
        mmTop = 794
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText105: TppDBText
        UserName = 'DBText82'
        DataField = 'FechaCambio'
        DataPipeline = plGovDGT4
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 192882
        mmTop = 794
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText106: TppDBText
        UserName = 'DBText83'
        DataField = 'Hombre'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 136261
        mmTop = 1058
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText107: TppDBText
        UserName = 'DBText84'
        DataField = 'Mujer'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 127794
        mmTop = 794
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText108: TppDBText
        UserName = 'DBText85'
        DataField = 'Nacionalidad'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 144463
        mmTop = 1058
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText110: TppDBText
        UserName = 'DBText87'
        DataField = 'EmpleadoRoll'
        DataPipeline = plGovDGT4
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3429
        mmLeft = 209021
        mmTop = 794
        mmWidth = 30163
        BandType = 4
      end
      object ppDBText111: TppDBText
        UserName = 'DBText88'
        DataField = 'EntradaSueldo'
        DataPipeline = plGovDGT4
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 263526
        mmTop = 794
        mmWidth = 16140
        BandType = 4
      end
      object ppLine218: TppLine
        UserName = 'Line154'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 7673
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine219: TppLine
        UserName = 'Line155'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 75406
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine220: TppLine
        UserName = 'Line156'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 102394
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine221: TppLine
        UserName = 'Line157'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 135202
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine222: TppLine
        UserName = 'Line158'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 164307
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine224: TppLine
        UserName = 'Line160'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 191823
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine225: TppLine
        UserName = 'Line1601'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 207963
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine226: TppLine
        UserName = 'Line162'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 240242
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine227: TppLine
        UserName = 'Line163'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 262203
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine228: TppLine
        UserName = 'Line164'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 293159
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine229: TppLine
        UserName = 'Line165'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 313267
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine230: TppLine
        UserName = 'Line166'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 323057
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppDBText112: TppDBText
        UserName = 'DBText112'
        DataField = 'Apellido'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 40217
        mmTop = 794
        mmWidth = 33073
        BandType = 4
      end
      object ppDBText113: TppDBText
        UserName = 'DBText113'
        DataField = 'DiaNacimiento'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3429
        mmLeft = 165100
        mmTop = 1058
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText114: TppDBText
        UserName = 'DBText114'
        DataField = 'MesNacimiento'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3429
        mmLeft = 173567
        mmTop = 1058
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText115: TppDBText
        UserName = 'DBText115'
        DataField = 'AnoNacimiento'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3429
        mmLeft = 182298
        mmTop = 1058
        mmWidth = 8731
        BandType = 4
      end
      object ppLine223: TppLine
        UserName = 'Line1602'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 172773
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine240: TppLine
        UserName = 'Line240'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 181505
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppDBText109: TppDBText
        UserName = 'DBText86'
        BlankWhenZero = True
        DataField = 'Entrada'
        DataPipeline = plGovDGT4
        DisplayFormat = ' X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 254265
        mmTop = 1058
        mmWidth = 6085
        BandType = 4
      end
      object ppLine241: TppLine
        UserName = 'Line241'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 252678
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine242: TppLine
        UserName = 'Line242'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 280988
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppDBText116: TppDBText
        UserName = 'DBText116'
        BlankWhenZero = True
        DataField = 'Salida'
        DataPipeline = plGovDGT4
        DisplayFormat = ' X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 284428
        mmTop = 794
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText117: TppDBText
        UserName = 'DBText117'
        BlankWhenZero = True
        DataField = 'Cambio'
        DataPipeline = plGovDGT4
        DisplayFormat = ' X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 315119
        mmTop = 1058
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText118: TppDBText
        UserName = 'DBText118'
        DataField = 'SalidaSueldo'
        DataPipeline = plGovDGT4
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 293953
        mmTop = 794
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText119: TppDBText
        UserName = 'DBText119'
        DataField = 'CambioSueldo'
        DataPipeline = plGovDGT4
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 324644
        mmTop = 794
        mmWidth = 16140
        BandType = 4
      end
      object ppLine243: TppLine
        UserName = 'Line243'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 143404
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine244: TppLine
        UserName = 'Line244'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 127000
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine245: TppLine
        UserName = 'Line245'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 38894
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppDBText123: TppDBText
        UserName = 'DBText123'
        DataField = 'Horario'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 241300
        mmTop = 794
        mmWidth = 10583
        BandType = 4
      end
    end
    object ppFooterBand11: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 29898
      mmPrintPosition = 0
      object ppLabel256: TppLabel
        UserName = 'Label197'
        Caption = 'Observaciones:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 2381
        mmTop = 14288
        mmWidth = 20638
        BandType = 8
      end
      object ppLine231: TppLine
        UserName = 'Line171'
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 23548
        mmTop = 17463
        mmWidth = 200025
        BandType = 8
      end
      object ppLine232: TppLine
        UserName = 'Line172'
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 23548
        mmTop = 21431
        mmWidth = 200025
        BandType = 8
      end
      object ppLabel257: TppLabel
        UserName = 'Label198'
        Caption = 'Original: Direcci'#243'n General de Trabajo,'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 2646
        mmTop = 24606
        mmWidth = 42333
        BandType = 8
      end
      object ppLabel258: TppLabel
        UserName = 'Label199'
        Caption = 'Duplicado Rosado: Interesado,'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 45508
        mmTop = 24606
        mmWidth = 34396
        BandType = 8
      end
      object ppLabel259: TppLabel
        UserName = 'Label200'
        Caption = 'Triplicado Amarillo: Direcci'#243'n de Trabajo o Representaci'#243'n Local'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 80963
        mmTop = 24606
        mmWidth = 70379
        BandType = 8
      end
      object ppLabel260: TppLabel
        UserName = 'Label1'
        Caption = 'Nombre del Inspector'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 29104
        mmTop = 6085
        mmWidth = 33697
        BandType = 8
      end
      object ppLabel261: TppLabel
        UserName = 'Label202'
        Caption = 'Firma del Inspector'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 166159
        mmTop = 6085
        mmWidth = 30141
        BandType = 8
      end
      object ppLabel262: TppLabel
        UserName = 'Label203'
        Caption = 'Firma Empleador o Representante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 266701
        mmTop = 6085
        mmWidth = 53044
        BandType = 8
      end
      object ppLine233: TppLine
        UserName = 'Line173'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 4498
        mmTop = 5556
        mmWidth = 88106
        BandType = 8
      end
      object ppLine234: TppLine
        UserName = 'Line174'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 138642
        mmTop = 5556
        mmWidth = 84931
        BandType = 8
      end
      object ppLine235: TppLine
        UserName = 'Line175'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 254001
        mmTop = 5556
        mmWidth = 78317
        BandType = 8
      end
    end
    object ppSummaryBand4: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppShape34: TppShape
        UserName = 'Shape34'
        mmHeight = 6085
        mmLeft = 252678
        mmTop = 0
        mmWidth = 89694
        BandType = 7
      end
      object ppLabel268: TppLabel
        UserName = 'Label268'
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 241830
        mmTop = 1323
        mmWidth = 9229
        BandType = 7
      end
      object ppDBCalc22: TppDBCalc
        UserName = 'DBCalc22'
        DataField = 'SalidaSueldo'
        DataPipeline = plGovDGT4
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 293953
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc25: TppDBCalc
        UserName = 'DBCalc25'
        DataField = 'CambioSueldo'
        DataPipeline = plGovDGT4
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 323586
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc26: TppDBCalc
        UserName = 'DBCalc26'
        DataField = 'EntradaSueldo'
        DataPipeline = plGovDGT4
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 263526
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
      end
      object ppLine246: TppLine
        UserName = 'Line246'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 280988
        mmTop = 0
        mmWidth = 1323
        BandType = 7
      end
      object ppLine247: TppLine
        UserName = 'Line247'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 313003
        mmTop = 0
        mmWidth = 1058
        BandType = 7
      end
      object ppDBCalc27: TppDBCalc
        UserName = 'DBCalc27'
        BlankWhenZero = True
        DataField = 'Entrada'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3969
        mmLeft = 253736
        mmTop = 1058
        mmWidth = 7673
        BandType = 7
      end
      object ppDBCalc28: TppDBCalc
        UserName = 'DBCalc28'
        BlankWhenZero = True
        DataField = 'Salida'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3969
        mmLeft = 284163
        mmTop = 1058
        mmWidth = 7673
        BandType = 7
      end
      object ppDBCalc29: TppDBCalc
        UserName = 'DBCalc29'
        BlankWhenZero = True
        DataField = 'Cambio'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3969
        mmLeft = 314590
        mmTop = 1058
        mmWidth = 6879
        BandType = 7
      end
      object ppLine178: TppLine
        UserName = 'Line178'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 262203
        mmTop = 0
        mmWidth = 1323
        BandType = 7
      end
      object ppLine179: TppLine
        UserName = 'Line179'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 293159
        mmTop = 265
        mmWidth = 1058
        BandType = 7
      end
      object ppLine180: TppLine
        UserName = 'Line180'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 322792
        mmTop = 0
        mmWidth = 529
        BandType = 7
      end
    end
  end
  object spGovDGT2: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'nomGovDGT4;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@TipoEmpleadoId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Mes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Ano'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 532
    Top = 249
    object AutoIncField1: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'Ano'
    end
    object IntegerField2: TIntegerField
      FieldName = 'EmpleadoId'
    end
    object StringField1: TStringField
      FieldName = 'Nombre'
      Size = 200
    end
    object StringField2: TStringField
      FieldName = 'Apellido'
      Size = 200
    end
    object StringField3: TStringField
      FieldName = 'Cedula'
    end
    object StringField4: TStringField
      FieldName = 'NumeroSS'
    end
    object IntegerField3: TIntegerField
      FieldName = 'DiaNacimiento'
    end
    object IntegerField4: TIntegerField
      FieldName = 'MesNacimiento'
    end
    object IntegerField5: TIntegerField
      FieldName = 'AnoNacimiento'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'FechaCambio'
    end
    object BCDField1: TBCDField
      FieldName = 'EntradaSueldo'
      Precision = 18
      Size = 2
    end
    object BCDField2: TBCDField
      FieldName = 'SalidaSueldo'
      Precision = 18
      Size = 2
    end
    object BCDField3: TBCDField
      FieldName = 'CambioSueldo'
      Precision = 18
      Size = 2
    end
    object StringField5: TStringField
      FieldName = 'Hombre'
      Size = 1
    end
    object StringField6: TStringField
      FieldName = 'Mujer'
      Size = 1
    end
    object StringField7: TStringField
      FieldName = 'Nacionalidad'
      Size = 50
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'Inicio'
    end
    object StringField8: TStringField
      FieldName = 'EmpleadoRoll'
      Size = 80
    end
    object BCDField4: TBCDField
      FieldName = 'SueldoMes'
      Precision = 18
      Size = 2
    end
    object StringField9: TStringField
      FieldName = 'Horario'
      Size = 50
    end
    object StringField10: TStringField
      FieldName = 'Empleador'
      ReadOnly = True
      Size = 200
    end
    object StringField11: TStringField
      FieldName = 'AqueSeDedica'
      ReadOnly = True
      Size = 200
    end
    object StringField12: TStringField
      FieldName = 'Establecimiento'
      ReadOnly = True
      Size = 200
    end
    object StringField13: TStringField
      FieldName = 'PolizaAccidente'
      ReadOnly = True
      Size = 200
    end
    object StringField14: TStringField
      FieldName = 'Representante'
      ReadOnly = True
      Size = 200
    end
    object StringField15: TStringField
      FieldName = 'MesStr'
      Size = 50
    end
    object StringField16: TStringField
      FieldName = 'RNL'
      ReadOnly = True
      Size = 200
    end
    object StringField17: TStringField
      FieldName = 'Sector'
      ReadOnly = True
      Size = 200
    end
    object StringField18: TStringField
      FieldName = 'Correo'
      ReadOnly = True
      Size = 200
    end
    object StringField19: TStringField
      FieldName = 'Municipio'
      ReadOnly = True
      Size = 200
    end
    object StringField20: TStringField
      FieldName = 'Provincia'
      ReadOnly = True
      Size = 200
    end
    object StringField21: TStringField
      FieldName = 'WWW'
      ReadOnly = True
      Size = 200
    end
    object StringField22: TStringField
      FieldName = 'CedEmpleador'
      ReadOnly = True
      Size = 16
    end
    object StringField23: TStringField
      FieldName = 'CedRepresentante'
      ReadOnly = True
      Size = 16
    end
    object IntegerField6: TIntegerField
      FieldName = 'Entrada'
    end
    object IntegerField7: TIntegerField
      FieldName = 'Salida'
    end
    object IntegerField8: TIntegerField
      FieldName = 'Cambio'
    end
  end
  object dsGovDGT2: TDataSource
    DataSet = spGovDGT2
    Left = 533
    Top = 310
  end
  object plGovDGT2: TppDBPipeline
    DataSource = dsGovDGT2
    UserName = 'plGovDGT2'
    Left = 534
    Top = 378
    object plGovDGT2ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Id'
      FieldName = 'Id'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 0
      Position = 0
    end
    object plGovDGT2ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ano'
      FieldName = 'Ano'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object plGovDGT2ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'EmpleadoId'
      FieldName = 'EmpleadoId'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object plGovDGT2ppField4: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 200
      DisplayWidth = 200
      Position = 3
    end
    object plGovDGT2ppField5: TppField
      FieldAlias = 'Apellido'
      FieldName = 'Apellido'
      FieldLength = 200
      DisplayWidth = 200
      Position = 4
    end
    object plGovDGT2ppField6: TppField
      FieldAlias = 'Cedula'
      FieldName = 'Cedula'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object plGovDGT2ppField7: TppField
      FieldAlias = 'NumeroSS'
      FieldName = 'NumeroSS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object plGovDGT2ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'DiaNacimiento'
      FieldName = 'DiaNacimiento'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object plGovDGT2ppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'MesNacimiento'
      FieldName = 'MesNacimiento'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object plGovDGT2ppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'AnoNacimiento'
      FieldName = 'AnoNacimiento'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object plGovDGT2ppField11: TppField
      FieldAlias = 'FechaCambio'
      FieldName = 'FechaCambio'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 10
    end
    object plGovDGT2ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'EntradaSueldo'
      FieldName = 'EntradaSueldo'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 11
    end
    object plGovDGT2ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'SalidaSueldo'
      FieldName = 'SalidaSueldo'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 12
    end
    object plGovDGT2ppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'CambioSueldo'
      FieldName = 'CambioSueldo'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 13
    end
    object plGovDGT2ppField15: TppField
      FieldAlias = 'Hombre'
      FieldName = 'Hombre'
      FieldLength = 1
      DisplayWidth = 1
      Position = 14
    end
    object plGovDGT2ppField16: TppField
      FieldAlias = 'Mujer'
      FieldName = 'Mujer'
      FieldLength = 1
      DisplayWidth = 1
      Position = 15
    end
    object plGovDGT2ppField17: TppField
      FieldAlias = 'Nacionalidad'
      FieldName = 'Nacionalidad'
      FieldLength = 50
      DisplayWidth = 50
      Position = 16
    end
    object plGovDGT2ppField18: TppField
      FieldAlias = 'Inicio'
      FieldName = 'Inicio'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 17
    end
    object plGovDGT2ppField19: TppField
      FieldAlias = 'EmpleadoRoll'
      FieldName = 'EmpleadoRoll'
      FieldLength = 80
      DisplayWidth = 80
      Position = 18
    end
    object plGovDGT2ppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'SueldoMes'
      FieldName = 'SueldoMes'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 19
    end
    object plGovDGT2ppField21: TppField
      FieldAlias = 'Horario'
      FieldName = 'Horario'
      FieldLength = 50
      DisplayWidth = 50
      Position = 20
    end
    object plGovDGT2ppField22: TppField
      FieldAlias = 'Empleador'
      FieldName = 'Empleador'
      FieldLength = 200
      DisplayWidth = 200
      Position = 21
    end
    object plGovDGT2ppField23: TppField
      FieldAlias = 'AqueSeDedica'
      FieldName = 'AqueSeDedica'
      FieldLength = 200
      DisplayWidth = 200
      Position = 22
    end
    object plGovDGT2ppField24: TppField
      FieldAlias = 'Establecimiento'
      FieldName = 'Establecimiento'
      FieldLength = 200
      DisplayWidth = 200
      Position = 23
    end
    object plGovDGT2ppField25: TppField
      FieldAlias = 'PolizaAccidente'
      FieldName = 'PolizaAccidente'
      FieldLength = 200
      DisplayWidth = 200
      Position = 24
    end
    object plGovDGT2ppField26: TppField
      FieldAlias = 'Representante'
      FieldName = 'Representante'
      FieldLength = 200
      DisplayWidth = 200
      Position = 25
    end
    object plGovDGT2ppField27: TppField
      FieldAlias = 'MesStr'
      FieldName = 'MesStr'
      FieldLength = 50
      DisplayWidth = 50
      Position = 26
    end
    object plGovDGT2ppField28: TppField
      FieldAlias = 'RNL'
      FieldName = 'RNL'
      FieldLength = 200
      DisplayWidth = 200
      Position = 27
    end
    object plGovDGT2ppField29: TppField
      FieldAlias = 'Sector'
      FieldName = 'Sector'
      FieldLength = 200
      DisplayWidth = 200
      Position = 28
    end
    object plGovDGT2ppField30: TppField
      FieldAlias = 'Correo'
      FieldName = 'Correo'
      FieldLength = 200
      DisplayWidth = 200
      Position = 29
    end
    object plGovDGT2ppField31: TppField
      FieldAlias = 'Municipio'
      FieldName = 'Municipio'
      FieldLength = 200
      DisplayWidth = 200
      Position = 30
    end
    object plGovDGT2ppField32: TppField
      FieldAlias = 'Provincia'
      FieldName = 'Provincia'
      FieldLength = 200
      DisplayWidth = 200
      Position = 31
    end
    object plGovDGT2ppField33: TppField
      FieldAlias = 'WWW'
      FieldName = 'WWW'
      FieldLength = 200
      DisplayWidth = 200
      Position = 32
    end
    object plGovDGT2ppField34: TppField
      FieldAlias = 'CedEmpleador'
      FieldName = 'CedEmpleador'
      FieldLength = 16
      DisplayWidth = 16
      Position = 33
    end
    object plGovDGT2ppField35: TppField
      FieldAlias = 'CedRepresentante'
      FieldName = 'CedRepresentante'
      FieldLength = 16
      DisplayWidth = 16
      Position = 34
    end
    object plGovDGT2ppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'Entrada'
      FieldName = 'Entrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 35
    end
    object plGovDGT2ppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'Salida'
      FieldName = 'Salida'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 36
    end
    object plGovDGT2ppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cambio'
      FieldName = 'Cambio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 37
    end
  end
  object rptGovDGT2: TppReport
    AutoStop = False
    DataPipeline = plGovDGT4
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Legal'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 355601
    PrinterSetup.PaperSize = 5
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 532
    Top = 438
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'plGovDGT4'
    object ppHeaderBand12: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 77788
      mmPrintPosition = 0
      object ppShape21: TppShape
        UserName = 'Shape17'
        mmHeight = 13494
        mmLeft = 1058
        mmTop = 64294
        mmWidth = 341313
        BandType = 0
      end
      object ppShape22: TppShape
        UserName = 'Shape16'
        mmHeight = 18785
        mmLeft = 253471
        mmTop = 15875
        mmWidth = 88900
        BandType = 0
      end
      object ppShape23: TppShape
        UserName = 'Shape15'
        mmHeight = 29633
        mmLeft = 1058
        mmTop = 34396
        mmWidth = 341313
        BandType = 0
      end
      object ppShape24: TppShape
        UserName = 'Shape14'
        mmHeight = 18785
        mmLeft = 1058
        mmTop = 15875
        mmWidth = 88900
        BandType = 0
      end
      object ppLabel230: TppLabel
        UserName = 'Label147'
        Caption = 'SECRETARIA DE ESTADO DE TRABAJO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 20
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8107
        mmLeft = 103770
        mmTop = 6350
        mmWidth = 135361
        BandType = 0
      end
      object ppLabel275: TppLabel
        UserName = 'Label148'
        Caption = 'DIRECCION GENERAL DE TRABAJO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 133879
        mmTop = 15081
        mmWidth = 74877
        BandType = 0
      end
      object ppLabel276: TppLabel
        UserName = 'Label149'
        Caption = 'CAMBIOS EN LA PLANTILLA DE PERSONAL FIJO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5842
        mmLeft = 112694
        mmTop = 23813
        mmWidth = 117264
        BandType = 0
      end
      object ppLabel277: TppLabel
        UserName = 'Label156'
        Caption = 
          '(De conformidad con el Art. 17 del  reglamento No. 258-93 del C'#243 +
          'digo de Trabajo)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 113287
        mmTop = 30163
        mmWidth = 116332
        BandType = 0
      end
      object ppLabel278: TppLabel
        UserName = 'Label157'
        Caption = 'Form. DGT-4 / 2004'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 2910
        mmTop = 2381
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel279: TppLabel
        UserName = 'Label158'
        Caption = 'A'#241'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 72496
        mmTop = 30163
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel280: TppLabel
        UserName = 'Label159'
        Caption = 'R. N. C. No.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 18256
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel281: TppLabel
        UserName = 'Label160'
        Caption = 'P'#243'liza de Accidente de Trabajo No.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 2910
        mmTop = 24342
        mmWidth = 45254
        BandType = 0
      end
      object ppLabel282: TppLabel
        UserName = 'Label1601'
        Caption = 'Raz'#243'n Social de la Empresa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 35983
        mmWidth = 36513
        BandType = 0
      end
      object ppLabel283: TppLabel
        UserName = 'Label162'
        Caption = 'Nombre del Establecimiento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 42333
        mmWidth = 35983
        BandType = 0
      end
      object ppLabel284: TppLabel
        UserName = 'Label163'
        Caption = 'Direccion (Ave./C y #)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 48419
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel285: TppLabel
        UserName = 'Label164'
        Caption = 'Tel'#233'fono:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 54240
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel286: TppLabel
        UserName = 'Label165'
        Caption = 'Fax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 66411
        mmTop = 54240
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel287: TppLabel
        UserName = 'Label166'
        Caption = 'Correo Electr'#243'nico:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 111390
        mmTop = 54240
        mmWidth = 24077
        BandType = 0
      end
      object ppLabel288: TppLabel
        UserName = 'Label167'
        Caption = 'WWW.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 174890
        mmTop = 54240
        mmWidth = 9186
        BandType = 0
      end
      object ppLabel289: TppLabel
        UserName = 'Label168'
        Caption = 'Zona Franca:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 234950
        mmTop = 54240
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel290: TppLabel
        UserName = 'Label169'
        Caption = 'Parque:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 290248
        mmTop = 54240
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel291: TppLabel
        UserName = 'Label170'
        Caption = 'No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 323321
        mmTop = 42863
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel292: TppLabel
        UserName = 'Label1701'
        Caption = 'Si'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 311944
        mmTop = 42598
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel293: TppLabel
        UserName = 'Label172'
        Caption = 'Nombre del Empleador:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 150548
        mmTop = 35983
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel294: TppLabel
        UserName = 'Label173'
        Caption = 'Nombre del Representante:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 150548
        mmTop = 42333
        mmWidth = 34660
        BandType = 0
      end
      object ppLabel295: TppLabel
        UserName = 'Label174'
        Caption = 'Sector:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 111919
        mmTop = 48419
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel296: TppLabel
        UserName = 'Label176'
        Caption = 'Municipio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 229659
        mmTop = 48419
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel297: TppLabel
        UserName = 'Label177'
        Caption = 'Provincia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 273844
        mmTop = 48419
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel298: TppLabel
        UserName = 'Label178'
        Caption = 'A que se dedica el Establecimiento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 60061
        mmWidth = 44715
        BandType = 0
      end
      object ppLabel299: TppLabel
        UserName = 'Label179'
        Caption = 'CAMBIOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 287867
        mmTop = 60061
        mmWidth = 13229
        BandType = 0
      end
      object ppLine181: TppLine
        UserName = 'Line121'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 1323
        mmTop = 40746
        mmWidth = 340784
        BandType = 0
      end
      object ppLine182: TppLine
        UserName = 'Line123'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 1058
        mmTop = 46831
        mmWidth = 341049
        BandType = 0
      end
      object ppLine183: TppLine
        UserName = 'Line132'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 1058
        mmTop = 52652
        mmWidth = 341049
        BandType = 0
      end
      object ppLine184: TppLine
        UserName = 'Line133'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 1058
        mmTop = 58738
        mmWidth = 341049
        BandType = 0
      end
      object ppLabel300: TppLabel
        UserName = 'Label180'
        Caption = 'Nombres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 10319
        mmTop = 69586
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel301: TppLabel
        UserName = 'Label1801'
        Caption = 'C'#233'dula de Identidad y Electoral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 76465
        mmTop = 66940
        mmWidth = 25135
        BandType = 0
      end
      object ppLabel302: TppLabel
        UserName = 'Label182'
        Caption = 'No. Sistema Dominicano de Seguridad Social'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 11113
        mmLeft = 103717
        mmTop = 65617
        mmWidth = 22225
        BandType = 0
      end
      object ppLine185: TppLine
        UserName = 'Line139'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 1058
        mmTop = 22754
        mmWidth = 88636
        BandType = 0
      end
      object ppLine186: TppLine
        UserName = 'Line143'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 1058
        mmTop = 28840
        mmWidth = 88636
        BandType = 0
      end
      object ppLine209: TppLine
        UserName = 'Line144'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 75406
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppLine210: TppLine
        UserName = 'Line145'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 102394
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppLine211: TppLine
        UserName = 'Line146'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 127000
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppLine213: TppLine
        UserName = 'Line148'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 145257
        mmTop = 64029
        mmWidth = 1852
        BandType = 0
      end
      object ppLine214: TppLine
        UserName = 'Line149'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 191559
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppLine215: TppLine
        UserName = 'Line150'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 207698
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppLine216: TppLine
        UserName = 'Line1501'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 240242
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppLine217: TppLine
        UserName = 'Line152'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 252413
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppLine248: TppLine
        UserName = 'Line153'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 312738
        mmTop = 64294
        mmWidth = 2381
        BandType = 0
      end
      object ppDBText150: TppDBText
        UserName = 'DBText90'
        DataField = 'Ano'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3429
        mmLeft = 79111
        mmTop = 29898
        mmWidth = 9525
        BandType = 0
      end
      object ppLine253: TppLine
        UserName = 'Line176'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 253471
        mmTop = 22754
        mmWidth = 88636
        BandType = 0
      end
      object ppLine254: TppLine
        UserName = 'Line177'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 253736
        mmTop = 28840
        mmWidth = 88636
        BandType = 0
      end
      object ppLabel313: TppLabel
        UserName = 'Label204'
        Caption = 'SOLO PARA USO DE LA SET'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 278607
        mmTop = 17727
        mmWidth = 43180
        BandType = 0
      end
      object ppLabel314: TppLabel
        UserName = 'Label205'
        Caption = 'Registro de Planilla No.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3239
        mmLeft = 255059
        mmTop = 24342
        mmWidth = 30268
        BandType = 0
      end
      object ppLabel315: TppLabel
        UserName = 'Label206'
        Caption = 'Rama de Actividad No.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3239
        mmLeft = 255059
        mmTop = 30163
        mmWidth = 29633
        BandType = 0
      end
      object ppShape30: TppShape
        UserName = 'Shape21'
        mmHeight = 5556
        mmLeft = 253471
        mmTop = 10583
        mmWidth = 88900
        BandType = 0
      end
      object ppLabel316: TppLabel
        UserName = 'Label207'
        Caption = 'Registro Nacional Laboral -RNL-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 254530
        mmTop = 11642
        mmWidth = 43656
        BandType = 0
      end
      object ppDBText151: TppDBText
        UserName = 'DBText91'
        DataField = 'RNC'
        DataPipeline = plConfiguracion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfiguracion'
        mmHeight = 3440
        mmLeft = 24606
        mmTop = 18256
        mmWidth = 64029
        BandType = 0
      end
      object ppDBText152: TppDBText
        UserName = 'DBText92'
        DataField = 'Direccion'
        DataPipeline = plConfiguracion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfiguracion'
        mmHeight = 3440
        mmLeft = 36248
        mmTop = 48154
        mmWidth = 73025
        BandType = 0
      end
      object ppDBText153: TppDBText
        UserName = 'DBText93'
        DataField = 'Telefono'
        DataPipeline = plConfiguracion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfiguracion'
        mmHeight = 3440
        mmLeft = 19579
        mmTop = 54240
        mmWidth = 42863
        BandType = 0
      end
      object ppDBText154: TppDBText
        UserName = 'DBText94'
        DataField = 'Fax'
        DataPipeline = plConfiguracion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfiguracion'
        mmHeight = 3429
        mmLeft = 73290
        mmTop = 54240
        mmWidth = 35190
        BandType = 0
      end
      object ppDBText155: TppDBText
        UserName = 'DBText95'
        DataField = 'Compania'
        DataPipeline = plConfiguracion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfiguracion'
        mmHeight = 3440
        mmLeft = 45244
        mmTop = 35983
        mmWidth = 91546
        BandType = 0
      end
      object ppLabel317: TppLabel
        UserName = 'Label1803'
        Caption = 'Apellidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 40746
        mmTop = 69586
        mmWidth = 11515
        BandType = 0
      end
      object ppLine255: TppLine
        UserName = 'Line236'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 38894
        mmTop = 64558
        mmWidth = 2381
        BandType = 0
      end
      object ppLine256: TppLine
        UserName = 'Line237'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 280988
        mmTop = 64558
        mmWidth = 2381
        BandType = 0
      end
      object ppLabel326: TppLabel
        UserName = 'Label269'
        Caption = 'Cambios Efectuados en el mes de :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 30163
        mmWidth = 44979
        BandType = 0
      end
      object ppDBText156: TppDBText
        UserName = 'DBText901'
        DataField = 'MesStr'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 52388
        mmTop = 30163
        mmWidth = 18785
        BandType = 0
      end
      object ppDBText157: TppDBText
        UserName = 'DBText125'
        DataField = 'Establecimiento'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 43656
        mmTop = 42333
        mmWidth = 82815
        BandType = 0
      end
      object ppDBText158: TppDBText
        UserName = 'DBText126'
        DataField = 'AqueSeDedica'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 52917
        mmTop = 60061
        mmWidth = 82286
        BandType = 0
      end
      object ppDBText159: TppDBText
        UserName = 'DBText127'
        DataField = 'Empleador'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 186532
        mmTop = 35719
        mmWidth = 65088
        BandType = 0
      end
      object ppDBText160: TppDBText
        UserName = 'DBText128'
        DataField = 'Representante'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 186796
        mmTop = 42069
        mmWidth = 64558
        BandType = 0
      end
      object ppDBText161: TppDBText
        UserName = 'DBText129'
        DataField = 'RNL'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 299244
        mmTop = 11642
        mmWidth = 38100
        BandType = 0
      end
      object ppDBText162: TppDBText
        UserName = 'DBText130'
        DataField = 'Sector'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 121973
        mmTop = 48419
        mmWidth = 38100
        BandType = 0
      end
      object ppDBText163: TppDBText
        UserName = 'DBText1301'
        DataField = 'Municipio'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 243417
        mmTop = 48419
        mmWidth = 28840
        BandType = 0
      end
      object ppDBText164: TppDBText
        UserName = 'DBText132'
        DataField = 'Provincia'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 287338
        mmTop = 48419
        mmWidth = 44186
        BandType = 0
      end
      object ppDBText165: TppDBText
        UserName = 'DBText133'
        DataField = 'WWW'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 186532
        mmTop = 54240
        mmWidth = 44186
        BandType = 0
      end
      object ppDBText166: TppDBText
        UserName = 'DBText134'
        DataField = 'Correo'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 138642
        mmTop = 54240
        mmWidth = 34925
        BandType = 0
      end
      object ppDBText167: TppDBText
        UserName = 'DBText802'
        DataField = 'CedEmpleador'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 269611
        mmTop = 35983
        mmWidth = 24342
        BandType = 0
      end
      object ppDBText168: TppDBText
        UserName = 'DBText148'
        DataField = 'CedRepresentante'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 269611
        mmTop = 42333
        mmWidth = 24342
        BandType = 0
      end
      object ppLabel327: TppLabel
        UserName = 'Label270'
        Caption = 'C'#233'dula:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 258498
        mmTop = 36248
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel328: TppLabel
        UserName = 'Label2701'
        Caption = 'C'#233'dula:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 259028
        mmTop = 42333
        mmWidth = 9790
        BandType = 0
      end
      object myCheckBox7: TmyCheckBox
        UserName = 'CheckBox3'
        Transparent = True
        mmHeight = 6350
        mmLeft = 327290
        mmTop = 41540
        mmWidth = 6350
        BandType = 0
      end
      object myCheckBox8: TmyCheckBox
        UserName = 'CheckBox4'
        Checked = False
        Transparent = True
        mmHeight = 6350
        mmLeft = 315384
        mmTop = 41275
        mmWidth = 6350
        BandType = 0
      end
      object ppDBText169: TppDBText
        UserName = 'DBText149'
        DataField = 'PolizaAccidente'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 49477
        mmTop = 24342
        mmWidth = 38365
        BandType = 0
      end
      object ppLabel329: TppLabel
        UserName = 'Label272'
        Caption = 'Sucursal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 298186
        mmTop = 42598
        mmWidth = 11853
        BandType = 0
      end
      object myCheckBox9: TmyCheckBox
        UserName = 'CheckBox5'
        Checked = False
        Transparent = True
        mmHeight = 6350
        mmLeft = 270934
        mmTop = 52917
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel330: TppLabel
        UserName = 'Label273'
        Caption = 'Si'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 268023
        mmTop = 53975
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel331: TppLabel
        UserName = 'Label1702'
        Caption = 'No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 255059
        mmTop = 54240
        mmWidth = 3704
        BandType = 0
      end
      object myCheckBox10: TmyCheckBox
        UserName = 'CheckBox6'
        Transparent = True
        mmHeight = 6350
        mmLeft = 259557
        mmTop = 52917
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel303: TppLabel
        UserName = 'Label303'
        Caption = 'Valor de la Hora normal (en RD$)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 11377
        mmLeft = 127529
        mmTop = 65881
        mmWidth = 17463
        BandType = 0
      end
    end
    object ppDetailBand12: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppShape31: TppShape
        UserName = 'Shape20'
        mmHeight = 5292
        mmLeft = 1058
        mmTop = 0
        mmWidth = 341313
        BandType = 4
      end
      object ppDBText170: TppDBText
        UserName = 'DBText78'
        DataField = 'Id'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 1852
        mmTop = 794
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText171: TppDBText
        UserName = 'DBText79'
        DataField = 'Nombre'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 8467
        mmTop = 794
        mmWidth = 29369
        BandType = 4
      end
      object ppDBText172: TppDBText
        UserName = 'DBText80'
        DataField = 'Cedula'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 76465
        mmTop = 794
        mmWidth = 24342
        BandType = 4
      end
      object ppDBText173: TppDBText
        UserName = 'DBText801'
        DataField = 'NumeroSS'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 103717
        mmTop = 794
        mmWidth = 19579
        BandType = 4
      end
      object ppLine259: TppLine
        UserName = 'Line154'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 7673
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine260: TppLine
        UserName = 'Line155'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 75406
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine261: TppLine
        UserName = 'Line156'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 102394
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppDBText180: TppDBText
        UserName = 'DBText112'
        DataField = 'Apellido'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 40217
        mmTop = 794
        mmWidth = 33073
        BandType = 4
      end
      object ppLine276: TppLine
        UserName = 'Line244'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 127000
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine277: TppLine
        UserName = 'Line245'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 38894
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
    end
    object ppFooterBand12: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 29898
      mmPrintPosition = 0
      object ppLabel332: TppLabel
        UserName = 'Label197'
        Caption = 'Observaciones:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 2381
        mmTop = 14288
        mmWidth = 20638
        BandType = 8
      end
      object ppLine278: TppLine
        UserName = 'Line171'
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 23548
        mmTop = 17463
        mmWidth = 200025
        BandType = 8
      end
      object ppLine279: TppLine
        UserName = 'Line172'
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 23548
        mmTop = 21431
        mmWidth = 200025
        BandType = 8
      end
      object ppLabel333: TppLabel
        UserName = 'Label198'
        Caption = 'Original: Direcci'#243'n General de Trabajo,'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 2646
        mmTop = 24606
        mmWidth = 42333
        BandType = 8
      end
      object ppLabel334: TppLabel
        UserName = 'Label199'
        Caption = 'Duplicado Rosado: Interesado,'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 45508
        mmTop = 24606
        mmWidth = 34396
        BandType = 8
      end
      object ppLabel335: TppLabel
        UserName = 'Label200'
        Caption = 'Triplicado Amarillo: Direcci'#243'n de Trabajo o Representaci'#243'n Local'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 80963
        mmTop = 24606
        mmWidth = 70379
        BandType = 8
      end
      object ppLabel336: TppLabel
        UserName = 'Label1'
        Caption = 'Nombre del Inspector'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 29104
        mmTop = 6085
        mmWidth = 33697
        BandType = 8
      end
      object ppLabel337: TppLabel
        UserName = 'Label202'
        Caption = 'Firma del Inspector'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 166159
        mmTop = 6085
        mmWidth = 30141
        BandType = 8
      end
      object ppLabel338: TppLabel
        UserName = 'Label203'
        Caption = 'Firma Empleador o Representante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 266701
        mmTop = 6085
        mmWidth = 53044
        BandType = 8
      end
      object ppLine280: TppLine
        UserName = 'Line173'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 4498
        mmTop = 5556
        mmWidth = 88106
        BandType = 8
      end
      object ppLine281: TppLine
        UserName = 'Line174'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 138642
        mmTop = 5556
        mmWidth = 84931
        BandType = 8
      end
      object ppLine282: TppLine
        UserName = 'Line175'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 254001
        mmTop = 5556
        mmWidth = 78317
        BandType = 8
      end
    end
    object ppSummaryBand5: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppShape32: TppShape
        UserName = 'Shape34'
        mmHeight = 6085
        mmLeft = 252678
        mmTop = 0
        mmWidth = 89694
        BandType = 7
      end
      object ppLabel339: TppLabel
        UserName = 'Label268'
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 241830
        mmTop = 1323
        mmWidth = 9229
        BandType = 7
      end
      object ppDBCalc30: TppDBCalc
        UserName = 'DBCalc22'
        DataField = 'SalidaSueldo'
        DataPipeline = plGovDGT4
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 293953
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc31: TppDBCalc
        UserName = 'DBCalc25'
        DataField = 'CambioSueldo'
        DataPipeline = plGovDGT4
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 323586
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc32: TppDBCalc
        UserName = 'DBCalc26'
        DataField = 'EntradaSueldo'
        DataPipeline = plGovDGT4
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3440
        mmLeft = 263526
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
      end
      object ppLine283: TppLine
        UserName = 'Line246'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 280988
        mmTop = 0
        mmWidth = 1323
        BandType = 7
      end
      object ppLine284: TppLine
        UserName = 'Line247'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 313003
        mmTop = 0
        mmWidth = 1058
        BandType = 7
      end
      object ppDBCalc33: TppDBCalc
        UserName = 'DBCalc27'
        BlankWhenZero = True
        DataField = 'Entrada'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3969
        mmLeft = 253736
        mmTop = 1058
        mmWidth = 7673
        BandType = 7
      end
      object ppDBCalc34: TppDBCalc
        UserName = 'DBCalc28'
        BlankWhenZero = True
        DataField = 'Salida'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3969
        mmLeft = 284163
        mmTop = 1058
        mmWidth = 7673
        BandType = 7
      end
      object ppDBCalc35: TppDBCalc
        UserName = 'DBCalc29'
        BlankWhenZero = True
        DataField = 'Cambio'
        DataPipeline = plGovDGT4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plGovDGT4'
        mmHeight = 3969
        mmLeft = 314590
        mmTop = 1058
        mmWidth = 6879
        BandType = 7
      end
      object ppLine285: TppLine
        UserName = 'Line178'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 262203
        mmTop = 0
        mmWidth = 1323
        BandType = 7
      end
      object ppLine286: TppLine
        UserName = 'Line179'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 293159
        mmTop = 265
        mmWidth = 1058
        BandType = 7
      end
      object ppLine287: TppLine
        UserName = 'Line180'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 322792
        mmTop = 0
        mmWidth = 529
        BandType = 7
      end
    end
  end
end

object DataM: TDataM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 332
  Top = 216
  Height = 369
  Width = 477
  object RptBalAntCiudad: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'SPBalanceAlAntiguedadporCiudad;1'
    CommandTimeout = 120
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
        Name = '@Periodo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 30
      end
      item
        Name = '@FecHoy'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 37048d
      end
      item
        Name = '@Grupo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 255
      end>
    Prepared = True
    Left = 48
    Top = 8
    object RptBalAntCiudadCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object RptBalAntCiudadTipoCliente: TStringField
      FieldName = 'TipoCliente'
      Size = 50
    end
    object RptBalAntCiudadEstacionID: TIntegerField
      FieldName = 'EstacionID'
    end
    object RptBalAntCiudadEstacion: TStringField
      FieldName = 'Estacion'
      Size = 60
    end
    object RptBalAntCiudadPeriodo: TIntegerField
      FieldName = 'Periodo'
    end
    object RptBalAntCiudadBal1: TFloatField
      FieldName = 'Bal1'
      ReadOnly = True
    end
    object RptBalAntCiudadBal2: TFloatField
      FieldName = 'Bal2'
      ReadOnly = True
    end
    object RptBalAntCiudadBal3: TFloatField
      FieldName = 'Bal3'
      ReadOnly = True
    end
    object RptBalAntCiudadBal4: TFloatField
      FieldName = 'Bal4'
      ReadOnly = True
    end
    object RptBalAntCiudadBal5: TFloatField
      FieldName = 'Bal5'
      ReadOnly = True
    end
    object RptBalAntCiudadBalGral: TFloatField
      FieldName = 'BalGral'
      ReadOnly = True
    end
  end
  object dsRptBalAntCiudad: TDataSource
    DataSet = RptBalAntCiudad
    Left = 48
    Top = 72
  end
  object plRptBalAntCiudad: TppDBPipeline
    DataSource = dsRptBalAntCiudad
    CloseDataSource = True
    UserName = 'plRptBalAntCiudad'
    Left = 48
    Top = 128
  end
  object BalAntCiudad: TppReport
    AutoStop = False
    DataPipeline = plRptBalAntCiudad
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
    ThumbnailSettings.Enabled = False
    ThumbnailSettings.Visible = False
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
    Left = 48
    Top = 184
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plRptBalAntCiudad'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 15081
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        Caption = 'Balance de Antiguedad por Ciudad y Tipo de Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 195527
        BandType = 1
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 167217
        mmTop = 10583
        mmWidth = 34925
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object fondo: TppShape
        OnPrint = fondoPrint
        UserName = 'fondo'
        Brush.Style = bsClear
        Pen.Style = psClear
        mmHeight = 2910
        mmLeft = 529
        mmTop = 0
        mmWidth = 203465
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'EstacionID'
        DataPipeline = plRptBalAntCiudad
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRptBalAntCiudad'
        mmHeight = 3175
        mmLeft = 5556
        mmTop = 0
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Estacion'
        DataPipeline = plRptBalAntCiudad
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRptBalAntCiudad'
        mmHeight = 3175
        mmLeft = 16404
        mmTop = 0
        mmWidth = 63236
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Bal1'
        DataPipeline = plRptBalAntCiudad
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptBalAntCiudad'
        mmHeight = 3175
        mmLeft = 80433
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Bal2'
        DataPipeline = plRptBalAntCiudad
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptBalAntCiudad'
        mmHeight = 3175
        mmLeft = 101071
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Bal3'
        DataPipeline = plRptBalAntCiudad
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptBalAntCiudad'
        mmHeight = 3175
        mmLeft = 121709
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Bal4'
        DataPipeline = plRptBalAntCiudad
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptBalAntCiudad'
        mmHeight = 3175
        mmLeft = 143140
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Bal5'
        DataPipeline = plRptBalAntCiudad
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptBalAntCiudad'
        mmHeight = 3175
        mmLeft = 162984
        mmTop = 0
        mmWidth = 19578
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'BalGral'
        DataPipeline = plRptBalAntCiudad
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptBalAntCiudad'
        mmHeight = 3175
        mmLeft = 183621
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 180975
        mmTop = 265
        mmWidth = 21696
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Color = clSilver
        mmHeight = 5821
        mmLeft = 0
        mmTop = 0
        mmWidth = 203465
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Bal1'
        DataPipeline = plRptBalAntCiudad
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptBalAntCiudad'
        mmHeight = 3969
        mmLeft = 81492
        mmTop = 265
        mmWidth = 19579
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Bal2'
        DataPipeline = plRptBalAntCiudad
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptBalAntCiudad'
        mmHeight = 3969
        mmLeft = 102129
        mmTop = 265
        mmWidth = 19579
        BandType = 7
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Bal3'
        DataPipeline = plRptBalAntCiudad
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptBalAntCiudad'
        mmHeight = 3969
        mmLeft = 122767
        mmTop = 265
        mmWidth = 19579
        BandType = 7
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc10'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Bal4'
        DataPipeline = plRptBalAntCiudad
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptBalAntCiudad'
        mmHeight = 3969
        mmLeft = 143140
        mmTop = 265
        mmWidth = 19579
        BandType = 7
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc11'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Bal5'
        DataPipeline = plRptBalAntCiudad
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptBalAntCiudad'
        mmHeight = 3969
        mmLeft = 162984
        mmTop = 265
        mmWidth = 19579
        BandType = 7
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc12'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'BalGral'
        DataPipeline = plRptBalAntCiudad
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRptBalAntCiudad'
        mmHeight = 3969
        mmLeft = 182827
        mmTop = 265
        mmWidth = 19579
        BandType = 7
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Totales de General'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 52652
        mmTop = 265
        mmWidth = 28046
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Ciudad'
      DataPipeline = plRptBalAntCiudad
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plRptBalAntCiudad'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Brush.Color = clSilver
          mmHeight = 5821
          mmLeft = 0
          mmTop = 0
          mmWidth = 203465
          BandType = 3
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Ciudad :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4763
          mmLeft = 794
          mmTop = 529
          mmWidth = 20902
          BandType = 3
          GroupNo = 0
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          HyperlinkEnabled = False
          DataField = 'Ciudad'
          DataPipeline = plRptBalAntCiudad
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plRptBalAntCiudad'
          mmHeight = 4763
          mmLeft = 22225
          mmTop = 529
          mmWidth = 111390
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 8731
        mmPrintPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape2'
          Brush.Color = clSilver
          mmHeight = 5821
          mmLeft = 0
          mmTop = 0
          mmWidth = 203465
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Bal1'
          DataPipeline = plRptBalAntCiudad
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plRptBalAntCiudad'
          mmHeight = 3969
          mmLeft = 80433
          mmTop = 265
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Bal2'
          DataPipeline = plRptBalAntCiudad
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plRptBalAntCiudad'
          mmHeight = 3969
          mmLeft = 101071
          mmTop = 265
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Bal3'
          DataPipeline = plRptBalAntCiudad
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plRptBalAntCiudad'
          mmHeight = 3969
          mmLeft = 121709
          mmTop = 265
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Bal4'
          DataPipeline = plRptBalAntCiudad
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plRptBalAntCiudad'
          mmHeight = 3969
          mmLeft = 143140
          mmTop = 265
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Bal5'
          DataPipeline = plRptBalAntCiudad
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plRptBalAntCiudad'
          mmHeight = 3969
          mmLeft = 162984
          mmTop = 265
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'BalGral'
          DataPipeline = plRptBalAntCiudad
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plRptBalAntCiudad'
          mmHeight = 3969
          mmLeft = 183621
          mmTop = 265
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Totales de Ciudad'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 51594
          mmTop = 265
          mmWidth = 28046
          BandType = 5
          GroupNo = 0
        end
        object ppDBText11: TppDBText
          UserName = 'DBText11'
          HyperlinkEnabled = False
          DataField = 'Ciudad'
          DataPipeline = plRptBalAntCiudad
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plRptBalAntCiudad'
          mmHeight = 4233
          mmLeft = 11642
          mmTop = 0
          mmWidth = 39158
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'TipoCliente'
      DataPipeline = plRptBalAntCiudad
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plRptBalAntCiudad'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          HyperlinkEnabled = False
          DataField = 'TipoCliente'
          DataPipeline = plRptBalAntCiudad
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plRptBalAntCiudad'
          mmHeight = 4498
          mmLeft = 0
          mmTop = 0
          mmWidth = 93663
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object Negocio: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'Select * From Negocio Order By NegocioID'
    Parameters = <>
    Left = 56
    Top = 264
    object NegocioNegocio: TStringField
      DisplayWidth = 50
      FieldName = 'Negocio'
      Size = 50
    end
    object NegocioNegocioID: TIntegerField
      FieldName = 'NegocioID'
      Visible = False
    end
  end
  object dsNegocio: TDataSource
    DataSet = Negocio
    Left = 112
    Top = 264
  end
  object Productos: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select idProducto, Producto From Producto'
    Parameters = <>
    Left = 168
    Top = 16
    object ProductosidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object ProductosProducto: TStringField
      FieldName = 'Producto'
      Size = 100
    end
  end
  object Cierre: TADOCommand
    CommandText = 'FechaCierre;1'
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
        Name = '@FechaCierre'
        Attributes = [paNullable]
        DataType = ftDateTime
        Direction = pdInputOutput
        Value = Null
      end>
    Left = 168
    Top = 72
  end
  object Timer1: TTimer
    Interval = 300000
    OnTimer = Timer1Timer
    Left = 168
    Top = 128
  end
  object deseno: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtParadox
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 336
    Top = 56
  end
end

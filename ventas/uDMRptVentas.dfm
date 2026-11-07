object dmRptVentas: TdmRptVentas
  OldCreateOrder = False
  Left = 239
  Top = 135
  Height = 658
  Width = 1101
  object ReciboList: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'RPTReciboList;1'
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
        Name = '@IdEmpleado'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = -1
      end>
    Left = 150
    Top = 6
    object ReciboListidRecibo: TGuidField
      FieldName = 'idRecibo'
      FixedChar = True
      Size = 38
    end
    object ReciboListidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object ReciboListCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object ReciboListesCxc: TBooleanField
      FieldName = 'esCxc'
    end
    object ReciboListFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ReciboListidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object ReciboListReferencia: TIntegerField
      FieldName = 'Referencia'
    end
    object ReciboListCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object ReciboListConcepto: TStringField
      FieldName = 'Concepto'
      Size = 150
    end
    object ReciboListUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object ReciboListValor: TBCDField
      FieldName = 'Valor'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 19
      Size = 2
    end
    object ReciboListCobros: TBCDField
      FieldName = 'Cobros'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 19
      Size = 2
    end
    object ReciboListOtrosIng: TBCDField
      FieldName = 'OtrosIng'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 19
      Size = 2
    end
    object ReciboListRecibo: TStringField
      FieldName = 'Recibo'
      Size = 16
    end
    object ReciboListempleado: TStringField
      FieldName = 'empleado'
      Size = 40
    end
    object ReciboListidPagoForma: TStringField
      FieldName = 'idPagoForma'
      Size = 16
    end
    object ReciboListCompania: TStringField
      FieldName = 'Compania'
      Size = 50
    end
    object ReciboListNumeroChk: TStringField
      FieldName = 'NumeroChk'
      Size = 16
    end
    object ReciboListBanco: TStringField
      FieldName = 'Banco'
      Size = 100
    end
    object ReciboListMoneda: TStringField
      FieldName = 'Moneda'
    end
    object ReciboListidSucursal: TStringField
      FieldName = 'idSucursal'
      Size = 16
    end
  end
  object dsReciboList: TDataSource
    DataSet = ReciboList
    Left = 150
    Top = 54
  end
  object RPTReciboList: TppReport
    AutoStop = False
    DataPipeline = plReciboList
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 12700
    PrinterSetup.mmMarginLeft = 12700
    PrinterSetup.mmMarginRight = 12700
    PrinterSetup.mmMarginTop = 12700
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
    OutlineSettings.CreatePageNodes = False
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
    Left = 150
    Top = 158
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plReciboList'
    object ppTitleBand2: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 24342
      mmPrintPosition = 0
      object ppLine4: TppLine
        UserName = 'Line1'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 22758
        mmWidth = 253471
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Recibo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 17730
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 21696
        mmTop = 17730
        mmWidth = 19050
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 41010
        mmTop = 17730
        mmWidth = 44715
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'CxC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 87313
        mmTop = 17730
        mmWidth = 7144
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Canc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 95250
        mmTop = 17730
        mmWidth = 9525
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Refer.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 105304
        mmTop = 17730
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Forma'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 121179
        mmTop = 17730
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Concepto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 139171
        mmTop = 17730
        mmWidth = 37571
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total Gral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 177271
        mmTop = 17730
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Usuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 242094
        mmTop = 17730
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total CxC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 198438
        mmTop = 17730
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel29: TppLabel
        UserName = 'Label14'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total Otros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 220663
        mmTop = 17730
        mmWidth = 20638
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Listado de Recibos de Ingresos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5556
        mmLeft = 794
        mmTop = 8999
        mmWidth = 120386
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 195527
        mmTop = 529
        mmWidth = 57150
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText177: TppDBText
        UserName = 'DBText177'
        HyperlinkEnabled = False
        DataField = 'compania'
        DataPipeline = plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 5821
        mmLeft = 794
        mmTop = 795
        mmWidth = 186002
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 170921
        mmTop = 5556
        mmWidth = 82021
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText12: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Recibo'
        DataPipeline = plReciboList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3344
        mmLeft = 1323
        mmTop = 529
        mmWidth = 19844
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plReciboList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3344
        mmLeft = 21696
        mmTop = 529
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Cliente'
        DataPipeline = plReciboList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3344
        mmLeft = 41010
        mmTop = 529
        mmWidth = 44715
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = plReciboList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3344
        mmLeft = 105569
        mmTop = 529
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'idPagoForma'
        DataPipeline = plReciboList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3344
        mmLeft = 121444
        mmTop = 529
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'Valor'
        DataPipeline = plReciboList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3440
        mmLeft = 177536
        mmTop = 529
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'Usuario'
        DataPipeline = plReciboList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3440
        mmLeft = 242094
        mmTop = 529
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground
      end
      object myDBCheckBox3: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = plReciboList
        DataField = 'esCxc'
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 4233
        mmLeft = 88636
        mmTop = 265
        mmWidth = 4498
        BandType = 4
        LayerName = Foreground
      end
      object myDBCheckBox4: TmyDBCheckBox
        UserName = 'DBCheckBox2'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = plReciboList
        DataField = 'Cancelado'
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 4233
        mmLeft = 97896
        mmTop = 265
        mmWidth = 4498
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        UserName = 'DBText101'
        HyperlinkEnabled = False
        DataField = 'Cobros'
        DataPipeline = plReciboList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3440
        mmLeft = 198702
        mmTop = 529
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText22: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'OtrosIng'
        DataPipeline = plReciboList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3440
        mmLeft = 220928
        mmTop = 529
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Concepto'
        DataPipeline = plReciboList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3440
        mmLeft = 139436
        mmTop = 529
        mmWidth = 37571
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup24: TppGroup
      BreakName = 'idSucursal'
      DataPipeline = plReciboList
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group24'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReciboList'
      NewFile = False
      object ppGroupHeaderBand24: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 8202
        mmPrintPosition = 0
        object ppDBText232: TppDBText
          UserName = 'DBText2301'
          HyperlinkEnabled = False
          DataField = 'idSucursal'
          DataPipeline = plReciboList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 6350
          mmLeft = 1323
          mmTop = 794
          mmWidth = 121973
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand24: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup23: TppGroup
      BreakName = 'Moneda'
      DataPipeline = plReciboList
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group23'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReciboList'
      NewFile = False
      object ppGroupHeaderBand23: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppDBText230: TppDBText
          UserName = 'DBText230'
          HyperlinkEnabled = False
          DataField = 'Moneda'
          DataPipeline = plReciboList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 6879
          mmLeft = 1323
          mmTop = 265
          mmWidth = 58473
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand23: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          DataField = 'Valor'
          DataPipeline = plReciboList
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup23
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 3440
          mmLeft = 177536
          mmTop = 2117
          mmWidth = 20902
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel30: TppLabel
          UserName = 'Label15'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Totales :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 153194
          mmTop = 1852
          mmWidth = 19844
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          DataField = 'Cobros'
          DataPipeline = plReciboList
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup23
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 3440
          mmLeft = 198702
          mmTop = 2117
          mmWidth = 21960
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          DataField = 'OtrosIng'
          DataPipeline = plReciboList
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup23
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 3440
          mmLeft = 221457
          mmTop = 2117
          mmWidth = 20108
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine6: TppLine
          UserName = 'Line3'
          Weight = 1.000000000000000000
          mmHeight = 1852
          mmLeft = 265
          mmTop = 794
          mmWidth = 252148
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object VentasdeProductosResumen: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'RPTVentasdeProductosResumen;1'
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
    Left = 374
    Top = 6
    object VentasdeProductosResumenDesde: TDateTimeField
      FieldName = 'Desde'
      ReadOnly = True
    end
    object VentasdeProductosResumenHasta: TDateTimeField
      FieldName = 'Hasta'
      ReadOnly = True
    end
    object VentasdeProductosResumenidGrupo: TStringField
      FieldName = 'idGrupo'
      Size = 16
    end
    object VentasdeProductosResumenGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
    object VentasdeProductosResumenidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object VentasdeProductosResumenProducto: TStringField
      FieldName = 'Producto'
      Size = 120
    end
    object VentasdeProductosResumenCantidad: TFloatField
      FieldName = 'Cantidad'
      ReadOnly = True
      DisplayFormat = '#,#.##'
    end
    object VentasdeProductosResumenPrecio: TBCDField
      FieldName = 'Precio'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 6
    end
    object VentasdeProductosResumenDescuento: TBCDField
      FieldName = 'Descuento'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object VentasdeProductosResumenItbis: TBCDField
      FieldName = 'Itbis'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object VentasdeProductosResumenTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object VentasdeProductosResumenTotalBruto: TBCDField
      FieldName = 'TotalBruto'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object VentasdeProductosResumenTotalNeto: TBCDField
      FieldName = 'TotalNeto'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object VentasdeProductosResumenCompania: TStringField
      FieldName = 'Compania'
      Size = 50
    end
    object VentasdeProductosResumenPromedio: TFloatField
      FieldName = 'Promedio'
      ReadOnly = True
    end
    object VentasdeProductosResumenPromedioCat: TFloatField
      FieldName = 'PromedioCat'
      ReadOnly = True
    end
    object VentasdeProductosResumenPromedioGral: TFloatField
      FieldName = 'PromedioGral'
      ReadOnly = True
    end
  end
  object dsVentasdeProductosResumen: TDataSource
    DataSet = VentasdeProductosResumen
    Left = 374
    Top = 54
  end
  object plVentasdeProductosResumen: TppDBPipeline
    DataSource = dsVentasdeProductosResumen
    UserName = 'plVentasdeProductosResumen'
    Left = 374
    Top = 102
  end
  object RPTVentasdeProductosResumen: TppReport
    AutoStop = False
    DataPipeline = plVentasdeProductosResumen
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
    OutlineSettings.CreatePageNodes = False
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
    Left = 374
    Top = 158
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plVentasdeProductosResumen'
    object ppTitleBand3: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 16933
      mmPrintPosition = 0
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Resumen Ventas de Productos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7408
        mmLeft = 1588
        mmTop = 9260
        mmWidth = 124619
        BandType = 1
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        HyperlinkEnabled = False
        DataField = 'Desde'
        DataPipeline = plVentasdeProductosResumen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 226484
        mmTop = 2117
        mmWidth = 31750
        BandType = 1
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        HyperlinkEnabled = False
        DataField = 'Hasta'
        DataPipeline = plVentasdeProductosResumen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 226484
        mmTop = 6350
        mmWidth = 31750
        BandType = 1
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Desde :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 201084
        mmTop = 2117
        mmWidth = 23813
        BandType = 1
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Hasta :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 201084
        mmTop = 6350
        mmWidth = 23813
        BandType = 1
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 180711
        mmTop = 11113
        mmWidth = 78317
        BandType = 1
      end
      object ppDBText180: TppDBText
        UserName = 'DBText180'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = plVentasdeProductosResumen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 7408
        mmLeft = 1058
        mmTop = 1058
        mmWidth = 183886
        BandType = 1
      end
    end
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppLine7: TppLine
        UserName = 'Line7'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1323
        mmLeft = 1323
        mmTop = 5291
        mmWidth = 264055
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 794
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Producto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 25400
        mmTop = 794
        mmWidth = 74348
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cantidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 101071
        mmTop = 1323
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Precio Prom.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 119856
        mmTop = 1323
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Descuento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 168011
        mmTop = 1323
        mmWidth = 23548
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Itbis'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 217488
        mmTop = 1323
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 240507
        mmTop = 1323
        mmWidth = 26194
        BandType = 0
      end
      object ppLabel87: TppLabel
        UserName = 'Label87'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cant x Precio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 142611
        mmTop = 1323
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label88'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total Bruto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 192617
        mmTop = 1323
        mmWidth = 24077
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkEnabled = False
        DataField = 'idProducto'
        DataPipeline = plVentasdeProductosResumen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3344
        mmLeft = 1323
        mmTop = 529
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkEnabled = False
        DataField = 'Producto'
        DataPipeline = plVentasdeProductosResumen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3344
        mmLeft = 25665
        mmTop = 529
        mmWidth = 74348
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkEnabled = False
        DataField = 'Cantidad'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 101071
        mmTop = 529
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkEnabled = False
        DataField = 'Promedio'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3344
        mmLeft = 119856
        mmTop = 529
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        HyperlinkEnabled = False
        DataField = 'Descuento'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 168011
        mmTop = 529
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        HyperlinkEnabled = False
        DataField = 'Itbis'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 217488
        mmTop = 529
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        HyperlinkEnabled = False
        DataField = 'TotalNeto'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 240507
        mmTop = 529
        mmWidth = 26194
        BandType = 4
      end
      object ppDBText71: TppDBText
        UserName = 'DBText71'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 142611
        mmTop = 529
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText73: TppDBText
        UserName = 'DBText73'
        HyperlinkEnabled = False
        DataField = 'TotalBruto'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 192617
        mmTop = 529
        mmWidth = 24077
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 230982
        mmTop = 1323
        mmWidth = 34396
        BandType = 8
      end
    end
    object ppSummaryBand3: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 11642
      mmPrintPosition = 0
      object ppShape5: TppShape
        UserName = 'Shape5'
        Brush.Color = 13882323
        Pen.Style = psClear
        mmHeight = 7408
        mmLeft = 0
        mmTop = 3175
        mmWidth = 266965
        BandType = 7
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 529
        mmTop = 0
        mmWidth = 264055
        BandType = 7
      end
      object ppDBCalc25: TppDBCalc
        UserName = 'DBCalc25'
        HyperlinkEnabled = False
        DataField = 'Cantidad'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 98425
        mmTop = 5292
        mmWidth = 21431
        BandType = 7
      end
      object ppDBCalc26: TppDBCalc
        UserName = 'DBCalc26'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 142875
        mmTop = 5292
        mmWidth = 25665
        BandType = 7
      end
      object ppDBCalc27: TppDBCalc
        UserName = 'DBCalc27'
        HyperlinkEnabled = False
        DataField = 'Descuento'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 169598
        mmTop = 5292
        mmWidth = 23283
        BandType = 7
      end
      object ppLabel102: TppLabel
        UserName = 'Label601'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'TOTALES DEL GENRAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 52917
        mmTop = 5292
        mmWidth = 44715
        BandType = 7
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1588
        mmLeft = 529
        mmTop = 3440
        mmWidth = 264055
        BandType = 7
      end
      object ppDBCalc28: TppDBCalc
        UserName = 'DBCalc28'
        HyperlinkEnabled = False
        DataField = 'TotalBruto'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 194734
        mmTop = 5292
        mmWidth = 23283
        BandType = 7
      end
      object ppDBCalc29: TppDBCalc
        UserName = 'DBCalc29'
        HyperlinkEnabled = False
        DataField = 'Itbis'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 218282
        mmTop = 5292
        mmWidth = 22490
        BandType = 7
      end
      object ppDBCalc30: TppDBCalc
        UserName = 'DBCalc30'
        HyperlinkEnabled = False
        DataField = 'TotalNeto'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 238125
        mmTop = 5292
        mmWidth = 26458
        BandType = 7
      end
      object ppDBText183: TppDBText
        UserName = 'DBText183'
        HyperlinkEnabled = False
        DataField = 'PromedioGral'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 121179
        mmTop = 5292
        mmWidth = 20373
        BandType = 7
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'idGrupo'
      DataPipeline = plVentasdeProductosResumen
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plVentasdeProductosResumen'
      NewFile = False
      object ppGroupHeaderBand7: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppShape4: TppShape
          UserName = 'Shape4'
          Brush.Color = 13882323
          Pen.Style = psClear
          mmHeight = 7408
          mmLeft = 0
          mmTop = 0
          mmWidth = 266965
          BandType = 3
          GroupNo = 0
        end
        object ppDBText87: TppDBText
          UserName = 'DBText87'
          HyperlinkEnabled = False
          DataField = 'Grupo'
          DataPipeline = plVentasdeProductosResumen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumen'
          mmHeight = 5027
          mmLeft = 21696
          mmTop = 794
          mmWidth = 140494
          BandType = 3
          GroupNo = 0
        end
        object ppLabel101: TppLabel
          UserName = 'Label101'
          HyperlinkEnabled = False
          Caption = 'Categoria:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4880
          mmLeft = 1323
          mmTop = 794
          mmWidth = 19269
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 11906
        mmPrintPosition = 0
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc7'
          HyperlinkEnabled = False
          DataField = 'Cantidad'
          DataPipeline = plVentasdeProductosResumen
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumen'
          mmHeight = 3440
          mmLeft = 97631
          mmTop = 3175
          mmWidth = 21431
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc8'
          HyperlinkEnabled = False
          DataField = 'Total'
          DataPipeline = plVentasdeProductosResumen
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumen'
          mmHeight = 3440
          mmLeft = 143140
          mmTop = 3175
          mmWidth = 25665
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc9'
          HyperlinkEnabled = False
          DataField = 'Descuento'
          DataPipeline = plVentasdeProductosResumen
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumen'
          mmHeight = 3440
          mmLeft = 169863
          mmTop = 3175
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppLabel60: TppLabel
          UserName = 'Label60'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'TOTALES CATEGORIA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 52123
          mmTop = 3175
          mmWidth = 44715
          BandType = 5
          GroupNo = 0
        end
        object ppLine9: TppLine
          UserName = 'Line9'
          Pen.Color = clGray
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 1588
          mmLeft = 1588
          mmTop = 1323
          mmWidth = 264055
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc14: TppDBCalc
          UserName = 'DBCalc14'
          HyperlinkEnabled = False
          DataField = 'TotalBruto'
          DataPipeline = plVentasdeProductosResumen
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumen'
          mmHeight = 3440
          mmLeft = 194998
          mmTop = 3175
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc15: TppDBCalc
          UserName = 'DBCalc15'
          HyperlinkEnabled = False
          DataField = 'Itbis'
          DataPipeline = plVentasdeProductosResumen
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumen'
          mmHeight = 3440
          mmLeft = 218546
          mmTop = 3175
          mmWidth = 22490
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc16: TppDBCalc
          UserName = 'DBCalc16'
          HyperlinkEnabled = False
          DataField = 'TotalNeto'
          DataPipeline = plVentasdeProductosResumen
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumen'
          mmHeight = 3440
          mmLeft = 241830
          mmTop = 3175
          mmWidth = 26458
          BandType = 5
          GroupNo = 0
        end
        object ppDBText182: TppDBText
          UserName = 'DBText182'
          HyperlinkEnabled = False
          DataField = 'PromedioCat'
          DataPipeline = plVentasdeProductosResumen
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumen'
          mmHeight = 3387
          mmLeft = 119856
          mmTop = 3175
          mmWidth = 21696
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object Aplicaciondecobros: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'RPTAplicaciondeCobros;1'
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
    Left = 518
    Top = 6
    object AplicaciondecobrosDesde: TDateTimeField
      FieldName = 'Desde'
      ReadOnly = True
    end
    object AplicaciondecobrosHasta: TDateTimeField
      FieldName = 'Hasta'
      ReadOnly = True
    end
    object AplicaciondecobrosidFactura: TGuidField
      FieldName = 'idFactura'
      FixedChar = True
      Size = 38
    end
    object AplicaciondecobrosFactura: TStringField
      FieldName = 'Factura'
      Size = 16
    end
    object AplicaciondecobrosidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object AplicaciondecobrosCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object AplicaciondecobrosidTipoDocumento: TStringField
      FieldName = 'idTipoDocumento'
      Size = 16
    end
    object AplicaciondecobrosValor: TBCDField
      FieldName = 'Valor'
      currency = True
      Precision = 18
      Size = 2
    end
    object AplicaciondecobrosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object AplicaciondecobrosAplicado: TBCDField
      FieldName = 'Aplicado'
      currency = True
      Precision = 18
      Size = 2
    end
    object AplicaciondecobrosFechaAplicado: TDateTimeField
      FieldName = 'FechaAplicado'
    end
    object AplicaciondecobrosRecibo: TStringField
      FieldName = 'Recibo'
      Size = 16
    end
    object AplicaciondecobrosFechaRecibo: TDateTimeField
      FieldName = 'FechaRecibo'
    end
    object AplicaciondecobrosidRecibo: TGuidField
      FieldName = 'idRecibo'
      FixedChar = True
      Size = 38
    end
    object AplicaciondecobrosMes1: TBCDField
      FieldName = 'Mes1'
      ReadOnly = True
      DisplayFormat = '#,#.##'
      Precision = 20
    end
    object AplicaciondecobrosMes2: TBCDField
      FieldName = 'Mes2'
      ReadOnly = True
      DisplayFormat = '#,#.##'
      Precision = 20
    end
    object AplicaciondecobrosMes3: TBCDField
      FieldName = 'Mes3'
      ReadOnly = True
      DisplayFormat = '#,#.##'
      Precision = 20
    end
    object AplicaciondecobrosMes4: TBCDField
      FieldName = 'Mes4'
      ReadOnly = True
      DisplayFormat = '#,#.##'
      Precision = 20
    end
    object AplicaciondecobrosMes5: TBCDField
      FieldName = 'Mes5'
      ReadOnly = True
      DisplayFormat = '#,#.##'
      Precision = 20
    end
    object AplicaciondecobrosMes6: TBCDField
      FieldName = 'Mes6'
      ReadOnly = True
      DisplayFormat = '#,#.##'
      Precision = 20
    end
    object AplicaciondecobrosMes7: TBCDField
      FieldName = 'Mes7'
      ReadOnly = True
      DisplayFormat = '#,#.##'
      Precision = 20
    end
    object AplicaciondecobrosMes8: TBCDField
      FieldName = 'Mes8'
      ReadOnly = True
      DisplayFormat = '#,#.##'
      Precision = 20
    end
    object AplicaciondecobrosMes9: TBCDField
      FieldName = 'Mes9'
      ReadOnly = True
      DisplayFormat = '#,#.##'
      Precision = 20
    end
    object AplicaciondecobrosMes10: TBCDField
      FieldName = 'Mes10'
      ReadOnly = True
      DisplayFormat = '#,#.##'
      Precision = 20
    end
    object AplicaciondecobrosMes11: TBCDField
      FieldName = 'Mes11'
      ReadOnly = True
      DisplayFormat = '#,#.##'
      Precision = 20
    end
    object AplicaciondecobrosMes12: TBCDField
      FieldName = 'Mes12'
      ReadOnly = True
      DisplayFormat = '#,#.##'
      Precision = 20
    end
  end
  object dsAplicaciondecobros: TDataSource
    DataSet = Aplicaciondecobros
    Left = 518
    Top = 54
  end
  object plAplicaciondecobros: TppDBPipeline
    DataSource = dsAplicaciondecobros
    UserName = 'plAplicaciondecobros'
    Left = 518
    Top = 110
  end
  object RPTAplicaciondecobros: TppReport
    AutoStop = False
    DataPipeline = plAplicaciondecobros
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
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
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
    Left = 518
    Top = 158
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plAplicaciondecobros'
    object ppTitleBand4: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 17992
      mmPrintPosition = 0
      object ppLine10: TppLine
        UserName = 'Line10'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 14817
        mmWidth = 264055
        BandType = 1
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Aplicacion de Cobros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 24
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 9525
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 162190
        BandType = 1
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable7'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1588
        mmTop = 10848
        mmWidth = 35454
        BandType = 1
      end
      object ppDBText50: TppDBText
        UserName = 'DBText50'
        HyperlinkEnabled = False
        DataField = 'Desde'
        DataPipeline = plAplicaciondecobros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plAplicaciondecobros'
        mmHeight = 3969
        mmLeft = 224367
        mmTop = 2117
        mmWidth = 25929
        BandType = 1
      end
      object ppDBText51: TppDBText
        UserName = 'DBText501'
        HyperlinkEnabled = False
        DataField = 'Hasta'
        DataPipeline = plAplicaciondecobros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plAplicaciondecobros'
        mmHeight = 3969
        mmLeft = 224367
        mmTop = 6350
        mmWidth = 25929
        BandType = 1
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Desde :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 203200
        mmTop = 2117
        mmWidth = 19315
        BandType = 1
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Hasta :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 203200
        mmTop = 6350
        mmWidth = 19315
        BandType = 1
      end
    end
    object ppHeaderBand4: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppLabel41: TppLabel
        UserName = 'Label41'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Aplicado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 1323
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 19844
        mmTop = 1323
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Recibo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 34660
        mmTop = 1323
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fec. Rec.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 51329
        mmTop = 1323
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Mes1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 65617
        mmTop = 1323
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Mes2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 81756
        mmTop = 1323
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Mes3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 97896
        mmTop = 1323
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Mes4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 114036
        mmTop = 1323
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Mes5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 130175
        mmTop = 1323
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Mes6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 146315
        mmTop = 1323
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Mes7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 162454
        mmTop = 1323
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Mes8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 178859
        mmTop = 1323
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Mes9'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 194998
        mmTop = 1323
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Mes10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 211138
        mmTop = 1323
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Mes11'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 227278
        mmTop = 1323
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Mes12'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 243417
        mmTop = 1323
        mmWidth = 16404
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Aplicado'
        DataPipeline = plAplicaciondecobros
        DisplayFormat = '$#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAplicaciondecobros'
        mmHeight = 3344
        mmLeft = 1058
        mmTop = 529
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'FechaAplicado'
        DataPipeline = plAplicaciondecobros
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plAplicaciondecobros'
        mmHeight = 3344
        mmLeft = 20902
        mmTop = 529
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Recibo'
        DataPipeline = plAplicaciondecobros
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plAplicaciondecobros'
        mmHeight = 3344
        mmLeft = 35719
        mmTop = 529
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'FechaRecibo'
        DataPipeline = plAplicaciondecobros
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plAplicaciondecobros'
        mmHeight = 3344
        mmLeft = 52388
        mmTop = 529
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Mes1'
        DataPipeline = plAplicaciondecobros
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAplicaciondecobros'
        mmHeight = 3344
        mmLeft = 66675
        mmTop = 529
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Mes2'
        DataPipeline = plAplicaciondecobros
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAplicaciondecobros'
        mmHeight = 3344
        mmLeft = 82815
        mmTop = 529
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Mes3'
        DataPipeline = plAplicaciondecobros
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAplicaciondecobros'
        mmHeight = 3344
        mmLeft = 98954
        mmTop = 529
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Mes4'
        DataPipeline = plAplicaciondecobros
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAplicaciondecobros'
        mmHeight = 3344
        mmLeft = 115094
        mmTop = 529
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Mes5'
        DataPipeline = plAplicaciondecobros
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAplicaciondecobros'
        mmHeight = 3344
        mmLeft = 131234
        mmTop = 529
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText40'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Mes6'
        DataPipeline = plAplicaciondecobros
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAplicaciondecobros'
        mmHeight = 3344
        mmLeft = 147373
        mmTop = 529
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Mes7'
        DataPipeline = plAplicaciondecobros
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAplicaciondecobros'
        mmHeight = 3344
        mmLeft = 163513
        mmTop = 529
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Mes8'
        DataPipeline = plAplicaciondecobros
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAplicaciondecobros'
        mmHeight = 3344
        mmLeft = 179917
        mmTop = 529
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Mes9'
        DataPipeline = plAplicaciondecobros
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAplicaciondecobros'
        mmHeight = 3344
        mmLeft = 196057
        mmTop = 529
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Mes10'
        DataPipeline = plAplicaciondecobros
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAplicaciondecobros'
        mmHeight = 3344
        mmLeft = 212196
        mmTop = 529
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText45'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Mes11'
        DataPipeline = plAplicaciondecobros
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAplicaciondecobros'
        mmHeight = 3344
        mmLeft = 228336
        mmTop = 529
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText46'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Mes12'
        DataPipeline = plAplicaciondecobros
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plAplicaciondecobros'
        mmHeight = 3429
        mmLeft = 244475
        mmTop = 529
        mmWidth = 16404
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine13: TppLine
        UserName = 'Line13'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 264055
        BandType = 8
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable8'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 197644
        mmTop = 1323
        mmWidth = 67733
        BandType = 8
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Factura'
      DataPipeline = plAplicaciondecobros
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plAplicaciondecobros'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Brush.Color = 14211288
          Pen.Style = psClear
          mmHeight = 5292
          mmLeft = 0
          mmTop = 0
          mmWidth = 266701
          BandType = 3
          GroupNo = 0
        end
        object ppDBText30: TppDBText
          UserName = 'DBText30'
          HyperlinkEnabled = False
          DataField = 'Factura'
          DataPipeline = plAplicaciondecobros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plAplicaciondecobros'
          mmHeight = 3969
          mmLeft = 26458
          mmTop = 529
          mmWidth = 26458
          BandType = 3
          GroupNo = 0
        end
        object ppLabel57: TppLabel
          UserName = 'Label57'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'FACT./ ND:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 0
          mmTop = 529
          mmWidth = 19844
          BandType = 3
          GroupNo = 0
        end
        object ppDBText47: TppDBText
          UserName = 'DBText301'
          HyperlinkEnabled = False
          DataField = 'Fecha'
          DataPipeline = plAplicaciondecobros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plAplicaciondecobros'
          mmHeight = 3969
          mmLeft = 56092
          mmTop = 529
          mmWidth = 25929
          BandType = 3
          GroupNo = 0
        end
        object ppDBText48: TppDBText
          UserName = 'DBText48'
          HyperlinkEnabled = False
          DataField = 'Cliente'
          DataPipeline = plAplicaciondecobros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plAplicaciondecobros'
          mmHeight = 3969
          mmLeft = 83608
          mmTop = 529
          mmWidth = 86784
          BandType = 3
          GroupNo = 0
        end
        object ppDBText49: TppDBText
          UserName = 'DBText49'
          HyperlinkEnabled = False
          DataField = 'Valor'
          DataPipeline = plAplicaciondecobros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plAplicaciondecobros'
          mmHeight = 3969
          mmLeft = 191294
          mmTop = 529
          mmWidth = 25929
          BandType = 3
          GroupNo = 0
        end
        object ppDBText52: TppDBText
          UserName = 'DBText52'
          HyperlinkEnabled = False
          DataField = 'Valor'
          DataPipeline = plAplicaciondecobros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plAplicaciondecobros'
          mmHeight = 3969
          mmLeft = 234157
          mmTop = 529
          mmWidth = 25929
          BandType = 3
          GroupNo = 0
        end
        object ppLabel61: TppLabel
          UserName = 'Label61'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Facturado :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 173567
          mmTop = 794
          mmWidth = 16669
          BandType = 3
          GroupNo = 0
        end
        object ppLabel62: TppLabel
          UserName = 'Label62'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Aplicado :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 218017
          mmTop = 794
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppLine12: TppLine
          UserName = 'Line12'
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 3969
          mmLeft = 2117
          mmTop = 0
          mmWidth = 264055
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object VentasporCliente: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'VentasPorCliente;1'
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
        Name = '@idCli'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
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
        Name = '@idProducto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end>
    Left = 38
    Top = 270
    object VentasporClienteDesde: TDateTimeField
      FieldName = 'Desde'
      ReadOnly = True
    end
    object VentasporClienteHasta: TDateTimeField
      FieldName = 'Hasta'
      ReadOnly = True
    end
    object VentasporClienteidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object VentasporClienteCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object VentasporClienteidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object VentasporClienteProducto: TStringField
      FieldName = 'Producto'
      Size = 100
    end
    object VentasporClienteTotalCant: TFloatField
      FieldName = 'TotalCant'
      ReadOnly = True
    end
    object VentasporClienteTotalValor: TBCDField
      FieldName = 'TotalValor'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object VentasporClientefecha: TDateTimeField
      FieldName = 'fecha'
    end
    object VentasporClientefactura: TStringField
      FieldName = 'factura'
      Size = 16
    end
    object VentasporClientereferencia: TStringField
      FieldName = 'referencia'
    end
    object VentasporClientePrecio: TBCDField
      FieldName = 'Precio'
      Precision = 19
      Size = 5
    end
  end
  object dsVentasporCliente: TDataSource
    DataSet = VentasporCliente
    Left = 38
    Top = 318
  end
  object RPTVentasporCliente: TppReport
    AutoStop = False
    DataPipeline = plVentasporCliente
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
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
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
    Left = 38
    Top = 430
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plVentasporCliente'
    object ppTitleBand5: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 794
      mmPrintPosition = 0
    end
    object ppHeaderBand5: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 18256
      mmPrintPosition = 0
      object ppLine14: TppLine
        UserName = 'Line14'
        Pen.Width = 2
        Style = lsDouble
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 9525
        mmWidth = 200555
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Ventas de Productos de Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 24
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 9525
        mmLeft = 0
        mmTop = 0
        mmWidth = 120386
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable9'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 794
        mmTop = 11377
        mmWidth = 84138
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Desde :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 144727
        mmTop = 794
        mmWidth = 28046
        BandType = 0
      end
      object ppDBText58: TppDBText
        UserName = 'DBText58'
        HyperlinkEnabled = False
        DataField = 'Desde'
        DataPipeline = plVentasporCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVentasporCliente'
        mmHeight = 3440
        mmLeft = 173567
        mmTop = 794
        mmWidth = 26988
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Hasta :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 144727
        mmTop = 4763
        mmWidth = 28046
        BandType = 0
      end
      object ppDBText59: TppDBText
        UserName = 'DBText59'
        HyperlinkEnabled = False
        DataField = 'Desde'
        DataPipeline = plVentasporCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVentasporCliente'
        mmHeight = 3440
        mmLeft = 173567
        mmTop = 4763
        mmWidth = 26988
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText56: TppDBText
        UserName = 'DBText56'
        HyperlinkEnabled = False
        DataField = 'TotalCant'
        DataPipeline = plVentasporCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasporCliente'
        mmHeight = 3704
        mmLeft = 162984
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText57: TppDBText
        UserName = 'DBText57'
        HyperlinkEnabled = False
        DataField = 'TotalValor'
        DataPipeline = plVentasporCliente
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasporCliente'
        mmHeight = 3704
        mmLeft = 180182
        mmTop = 0
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText61: TppDBText
        UserName = 'DBText61'
        HyperlinkEnabled = False
        DataField = 'fecha'
        DataPipeline = plVentasporCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasporCliente'
        mmHeight = 3704
        mmLeft = 102129
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText62: TppDBText
        UserName = 'DBText62'
        HyperlinkEnabled = False
        DataField = 'factura'
        DataPipeline = plVentasporCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasporCliente'
        mmHeight = 3704
        mmLeft = 120386
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText63: TppDBText
        UserName = 'DBText63'
        HyperlinkEnabled = False
        DataField = 'idProducto'
        DataPipeline = plVentasporCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVentasporCliente'
        mmHeight = 3704
        mmLeft = 11113
        mmTop = 0
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText64: TppDBText
        UserName = 'DBText64'
        HyperlinkEnabled = False
        DataField = 'Producto'
        DataPipeline = plVentasporCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVentasporCliente'
        mmHeight = 3704
        mmLeft = 32808
        mmTop = 0
        mmWidth = 68527
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Precio'
        DataPipeline = plVentasporCliente
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasporCliente'
        mmHeight = 3704
        mmLeft = 139436
        mmTop = 0
        mmWidth = 21431
        BandType = 4
      end
    end
    object ppFooterBand5: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine17: TppLine
        UserName = 'Line17'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 200555
        BandType = 8
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable10'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 96838
        mmTop = 1323
        mmWidth = 105040
        BandType = 8
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'Cliente'
      DataPipeline = plVentasporCliente
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plVentasporCliente'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 11906
        mmPrintPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape2'
          Brush.Color = 13816530
          mmHeight = 5556
          mmLeft = 0
          mmTop = 529
          mmWidth = 202936
          BandType = 3
          GroupNo = 0
        end
        object ppLine16: TppLine
          UserName = 'Line16'
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 1058
          mmLeft = 10054
          mmTop = 10848
          mmWidth = 193940
          BandType = 3
          GroupNo = 0
        end
        object ppLine15: TppLine
          UserName = 'Line15'
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 3969
          mmLeft = 9790
          mmTop = 7408
          mmWidth = 193940
          BandType = 3
          GroupNo = 0
        end
        object ppDBText53: TppDBText
          UserName = 'DBText53'
          HyperlinkEnabled = False
          DataField = 'Cliente'
          DataPipeline = plVentasporCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plVentasporCliente'
          mmHeight = 4763
          mmLeft = 23283
          mmTop = 794
          mmWidth = 144463
          BandType = 3
          GroupNo = 0
        end
        object ppLabel64: TppLabel
          UserName = 'Label64'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Codigo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 11113
          mmTop = 7408
          mmWidth = 20902
          BandType = 3
          GroupNo = 0
        end
        object ppLabel65: TppLabel
          UserName = 'Label65'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Producto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 33073
          mmTop = 7408
          mmWidth = 67998
          BandType = 3
          GroupNo = 0
        end
        object ppLabel66: TppLabel
          UserName = 'Label66'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Cantidad'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 164571
          mmTop = 7408
          mmWidth = 14023
          BandType = 3
          GroupNo = 0
        end
        object ppLabel67: TppLabel
          UserName = 'Label67'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 180975
          mmTop = 7408
          mmWidth = 21696
          BandType = 3
          GroupNo = 0
        end
        object ppDBText60: TppDBText
          UserName = 'DBText60'
          HyperlinkEnabled = False
          DataField = 'idCliente'
          DataPipeline = plVentasporCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plVentasporCliente'
          mmHeight = 4763
          mmLeft = 168805
          mmTop = 794
          mmWidth = 33338
          BandType = 3
          GroupNo = 0
        end
        object ppLabel70: TppLabel
          UserName = 'Label70'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'CLIENTE :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5027
          mmLeft = 794
          mmTop = 794
          mmWidth = 22225
          BandType = 3
          GroupNo = 0
        end
        object ppLabel71: TppLabel
          UserName = 'Label71'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Fecha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 101865
          mmTop = 7408
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppLabel72: TppLabel
          UserName = 'Label72'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Factura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 120650
          mmTop = 7408
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
        end
        object ppLabel11: TppLabel
          UserName = 'Label1'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Precio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 140759
          mmTop = 7408
          mmWidth = 20108
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 9790
        mmPrintPosition = 0
        object ppDBCalc10: TppDBCalc
          UserName = 'DBCalc10'
          HyperlinkEnabled = False
          DataField = 'TotalValor'
          DataPipeline = plVentasporCliente
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasporCliente'
          mmHeight = 4498
          mmLeft = 175684
          mmTop = 794
          mmWidth = 27252
          BandType = 5
          GroupNo = 0
        end
        object ppLine18: TppLine
          UserName = 'Line18'
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 1323
          mmLeft = 9525
          mmTop = 0
          mmWidth = 193940
          BandType = 5
          GroupNo = 0
        end
        object ppLabel74: TppLabel
          UserName = 'Label74'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total del Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4498
          mmLeft = 133350
          mmTop = 794
          mmWidth = 37571
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'idProducto'
      DataPipeline = plVentasporCliente
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plVentasporCliente'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc101'
          HyperlinkEnabled = False
          DataField = 'TotalValor'
          DataPipeline = plVentasporCliente
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasporCliente'
          mmHeight = 3440
          mmLeft = 180182
          mmTop = 1058
          mmWidth = 22754
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc12'
          HyperlinkEnabled = False
          DataField = 'TotalCant'
          DataPipeline = plVentasporCliente
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasporCliente'
          mmHeight = 3440
          mmLeft = 162984
          mmTop = 1058
          mmWidth = 15610
          BandType = 5
          GroupNo = 1
        end
        object ppLabel73: TppLabel
          UserName = 'Label73'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total del Producto :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 98954
          mmTop = 1058
          mmWidth = 37571
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          DataField = 'Precio'
          DataPipeline = plVentasporCliente
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcAverage
          DataPipelineName = 'plVentasporCliente'
          mmHeight = 3440
          mmLeft = 139436
          mmTop = 1058
          mmWidth = 21696
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object plVentasporCliente: TppDBPipeline
    DataSource = dsVentasporCliente
    UserName = 'plVentasporCliente'
    Left = 38
    Top = 374
  end
  object Cartera: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'CarteradeClientes;1'
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
        Name = '@idEmpleado'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 128
    Top = 270
  end
  object dsCartera: TDataSource
    DataSet = Cartera
    Left = 128
    Top = 318
  end
  object plCartera: TppDBPipeline
    DataSource = dsCartera
    UserName = 'plCartera'
    Left = 128
    Top = 374
  end
  object RPTCartera: TppReport
    AutoStop = False
    DataPipeline = plCartera
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
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
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
    Left = 128
    Top = 430
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plCartera'
    object ppTitleBand6: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand6: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 28046
      mmPrintPosition = 0
      object ppLabel75: TppLabel
        UserName = 'Label75'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cartera de Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 24
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 9525
        mmLeft = 0
        mmTop = 11642
        mmWidth = 166688
        BandType = 0
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable11'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 794
        mmTop = 23019
        mmWidth = 125413
        BandType = 0
      end
      object ppDBText196: TppDBText
        UserName = 'DBText196'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 24
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 10160
        mmLeft = 0
        mmTop = 529
        mmWidth = 133615
        BandType = 0
      end
    end
    object ppDetailBand6: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText55: TppDBText
        UserName = 'DBText55'
        HyperlinkEnabled = False
        DataField = 'idCliente'
        DataPipeline = plCartera
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCartera'
        mmHeight = 3344
        mmLeft = 529
        mmTop = 529
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText65: TppDBText
        UserName = 'DBText65'
        HyperlinkEnabled = False
        DataField = 'Cliente'
        DataPipeline = plCartera
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCartera'
        mmHeight = 3344
        mmLeft = 13494
        mmTop = 529
        mmWidth = 47096
        BandType = 4
      end
      object ppDBText66: TppDBText
        UserName = 'DBText66'
        HyperlinkEnabled = False
        DataField = 'Contacto'
        DataPipeline = plCartera
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCartera'
        mmHeight = 3344
        mmLeft = 61383
        mmTop = 529
        mmWidth = 24342
        BandType = 4
      end
      object ppDBText67: TppDBText
        UserName = 'DBText67'
        HyperlinkEnabled = False
        DataField = 'Direccion'
        DataPipeline = plCartera
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCartera'
        mmHeight = 3344
        mmLeft = 86784
        mmTop = 529
        mmWidth = 53446
        BandType = 4
      end
      object ppDBText68: TppDBText
        UserName = 'DBText68'
        HyperlinkEnabled = False
        DataField = 'Sector'
        DataPipeline = plCartera
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCartera'
        mmHeight = 3344
        mmLeft = 141023
        mmTop = 529
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText69: TppDBText
        UserName = 'DBText69'
        HyperlinkEnabled = False
        DataField = 'Ciudad'
        DataPipeline = plCartera
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCartera'
        mmHeight = 3344
        mmLeft = 160602
        mmTop = 529
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText70: TppDBText
        UserName = 'DBText70'
        HyperlinkEnabled = False
        DataField = 'Telefono'
        DataPipeline = plCartera
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCartera'
        mmHeight = 3344
        mmLeft = 174890
        mmTop = 529
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText72: TppDBText
        UserName = 'DBText72'
        HyperlinkEnabled = False
        DataField = 'Beeper'
        DataPipeline = plCartera
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCartera'
        mmHeight = 3344
        mmLeft = 193146
        mmTop = 529
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText74: TppDBText
        UserName = 'DBText74'
        HyperlinkEnabled = False
        DataField = 'LimiteCredito'
        DataPipeline = plCartera
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCartera'
        mmHeight = 3344
        mmLeft = 211138
        mmTop = 529
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText77: TppDBText
        UserName = 'DBText77'
        HyperlinkEnabled = False
        DataField = 'Descuento'
        DataPipeline = plCartera
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCartera'
        mmHeight = 3344
        mmLeft = 227807
        mmTop = 529
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText78: TppDBText
        UserName = 'DBText78'
        HyperlinkEnabled = False
        DataField = 'UltFactura'
        DataPipeline = plCartera
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCartera'
        mmHeight = 3440
        mmLeft = 240507
        mmTop = 529
        mmWidth = 18785
        BandType = 4
      end
    end
    object ppFooterBand6: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine22: TppLine
        UserName = 'Line22'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 264055
        BandType = 8
      end
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable12'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 131498
        mmTop = 1323
        mmWidth = 133879
        BandType = 8
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'Empleado'
      DataPipeline = plCartera
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      StartOnOddPage = False
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plCartera'
      NewFile = False
      object ppGroupHeaderBand4: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 20902
        mmPrintPosition = 0
        object ppShape3: TppShape
          UserName = 'Shape3'
          Brush.Color = 14408667
          mmHeight = 8996
          mmLeft = 0
          mmTop = 0
          mmWidth = 265378
          BandType = 3
          GroupNo = 0
        end
        object ppLine21: TppLine
          UserName = 'Line21'
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 17463
          mmWidth = 265113
          BandType = 3
          GroupNo = 0
        end
        object ppLine20: TppLine
          UserName = 'Line20'
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 3969
          mmLeft = 0
          mmTop = 12965
          mmWidth = 264848
          BandType = 3
          GroupNo = 0
        end
        object ppDBText54: TppDBText
          UserName = 'DBText54'
          HyperlinkEnabled = False
          DataField = 'Empleado'
          DataPipeline = plCartera
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plCartera'
          mmHeight = 5821
          mmLeft = 33602
          mmTop = 1852
          mmWidth = 119063
          BandType = 3
          GroupNo = 0
        end
        object ppLabel77: TppLabel
          UserName = 'Label77'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 13494
          mmTop = 12965
          mmWidth = 47096
          BandType = 3
          GroupNo = 0
        end
        object ppLabel78: TppLabel
          UserName = 'Label78'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Contacto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 61383
          mmTop = 12965
          mmWidth = 24342
          BandType = 3
          GroupNo = 0
        end
        object ppLabel79: TppLabel
          UserName = 'Label79'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Direccion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 86784
          mmTop = 12965
          mmWidth = 53446
          BandType = 3
          GroupNo = 0
        end
        object ppLabel80: TppLabel
          UserName = 'Label80'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Sector'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 141023
          mmTop = 12965
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
        end
        object ppLabel81: TppLabel
          UserName = 'Label81'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Ciudad'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 160602
          mmTop = 12965
          mmWidth = 13758
          BandType = 3
          GroupNo = 0
        end
        object ppLabel82: TppLabel
          UserName = 'Label82'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Telefono'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 174890
          mmTop = 12965
          mmWidth = 17463
          BandType = 3
          GroupNo = 0
        end
        object ppLabel86: TppLabel
          UserName = 'Label86'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Limite CR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 211138
          mmTop = 12965
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
        end
        object ppLabel89: TppLabel
          UserName = 'Label89'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Desc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 227807
          mmTop = 12965
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
        object ppLabel90: TppLabel
          UserName = 'Label90'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'UltFactura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 240507
          mmTop = 12965
          mmWidth = 18785
          BandType = 3
          GroupNo = 0
        end
        object ppLabel83: TppLabel
          UserName = 'Label83'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Fax'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 192882
          mmTop = 12965
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
        end
        object ppLabel84: TppLabel
          UserName = 'Label84'
          HyperlinkEnabled = False
          Caption = 'VENDEDOR :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5842
          mmLeft = 1323
          mmTop = 1588
          mmWidth = 31115
          BandType = 3
          GroupNo = 0
        end
        object ppLabel76: TppLabel
          UserName = 'Label76'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Codigo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 265
          mmTop = 13229
          mmWidth = 12171
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc13'
          HyperlinkEnabled = False
          DataField = 'idCliente'
          DataPipeline = plCartera
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'plCartera'
          mmHeight = 4763
          mmLeft = 41275
          mmTop = 794
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLabel85: TppLabel
          UserName = 'Label85'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Clientes en la Cartera :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4106
          mmLeft = 2117
          mmTop = 794
          mmWidth = 36777
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
  object VentasporVendedor: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'RPTVentadeProductosporVendedor;1'
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
        Name = '@idVendedor'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 232
    Top = 266
    object VentasporVendedoridEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object VentasporVendedorEmpleado: TStringField
      FieldName = 'Empleado'
      Size = 40
    end
    object VentasporVendedoridCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object VentasporVendedorCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object VentasporVendedorFactura: TStringField
      FieldName = 'Factura'
      Size = 16
    end
    object VentasporVendedorFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object VentasporVendedoridProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object VentasporVendedorProducto: TStringField
      FieldName = 'Producto'
      Size = 120
    end
    object VentasporVendedorCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object VentasporVendedorPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 18
      Size = 2
    end
    object VentasporVendedorLineTotal: TBCDField
      FieldName = 'LineTotal'
      Precision = 18
      Size = 2
    end
    object VentasporVendedorDescuento: TBCDField
      FieldName = 'Descuento'
      Precision = 18
      Size = 2
    end
    object VentasporVendedorItbis: TBCDField
      FieldName = 'Itbis'
      Precision = 18
      Size = 2
    end
    object VentasporVendedorPrecioFinal: TFloatField
      FieldName = 'PrecioFinal'
      ReadOnly = True
    end
    object VentasporVendedorDesde: TDateTimeField
      FieldName = 'Desde'
      ReadOnly = True
    end
    object VentasporVendedorHasta: TDateTimeField
      FieldName = 'Hasta'
      ReadOnly = True
    end
    object VentasporVendedorTotalFactura: TBCDField
      FieldName = 'TotalFactura'
      Precision = 19
      Size = 2
    end
    object VentasporVendedorPromedioVendProd: TFloatField
      FieldName = 'PromedioVendProd'
      ReadOnly = True
    end
    object VentasporVendedorPromedioVend: TFloatField
      FieldName = 'PromedioVend'
      ReadOnly = True
    end
  end
  object dsVentasporVendedor: TDataSource
    DataSet = VentasporVendedor
    Left = 232
    Top = 310
  end
  object plVentasporVendedor: TppDBPipeline
    DataSource = dsVentasporVendedor
    UserName = 'plVentasporVendedor'
    Left = 232
    Top = 366
  end
  object RPTVentasporVendedor: TppReport
    AutoStop = False
    DataPipeline = plVentasporVendedor
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
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
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
    Left = 232
    Top = 422
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plVentasporVendedor'
    object ppTitleBand7: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand7: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 41804
      mmPrintPosition = 0
      object ppLine24: TppLine
        UserName = 'Line24'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 21696
        mmWidth = 202936
        BandType = 0
      end
      object ppLabel91: TppLabel
        UserName = 'Label91'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Ventas de Productos por Vendedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7662
        mmLeft = 265
        mmTop = 12435
        mmWidth = 140229
        BandType = 0
      end
      object ppSystemVariable13: TppSystemVariable
        UserName = 'SystemVariable13'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 0
        mmTop = 22225
        mmWidth = 107156
        BandType = 0
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1323
        mmLeft = 2117
        mmTop = 40481
        mmWidth = 201613
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'Label93'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Factura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 44715
        mmTop = 36513
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel94: TppLabel
        UserName = 'Label94'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 70115
        mmTop = 36513
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel96: TppLabel
        UserName = 'Label96'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 88636
        mmTop = 36777
        mmWidth = 51065
        BandType = 0
      end
      object ppLabel97: TppLabel
        UserName = 'Label97'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cantidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 152665
        mmTop = 36513
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Precio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 180446
        mmTop = 36513
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText85: TppDBText
        UserName = 'DBText85'
        HyperlinkEnabled = False
        DataField = 'Desde'
        DataPipeline = plVentasporVendedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVentasporVendedor'
        mmHeight = 3440
        mmLeft = 175684
        mmTop = 24342
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Desde :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 154517
        mmTop = 24342
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Hasta :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 154517
        mmTop = 28840
        mmWidth = 19315
        BandType = 0
      end
      object ppDBText86: TppDBText
        UserName = 'DBText86'
        HyperlinkEnabled = False
        DataField = 'Hasta'
        DataPipeline = plVentasporVendedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVentasporVendedor'
        mmHeight = 3440
        mmLeft = 175684
        mmTop = 28840
        mmWidth = 25400
        BandType = 0
      end
      object ppDBText197: TppDBText
        UserName = 'DBText197'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 24
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 10160
        mmLeft = 0
        mmTop = 529
        mmWidth = 133615
        BandType = 0
      end
    end
    object ppDetailBand7: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText75: TppDBText
        UserName = 'DBText75'
        HyperlinkEnabled = False
        DataField = 'Cliente'
        DataPipeline = plVentasporVendedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVentasporVendedor'
        mmHeight = 3344
        mmLeft = 88636
        mmTop = 529
        mmWidth = 53181
        BandType = 4
      end
      object ppDBText76: TppDBText
        UserName = 'DBText76'
        HyperlinkEnabled = False
        DataField = 'Factura'
        DataPipeline = plVentasporVendedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVentasporVendedor'
        mmHeight = 3344
        mmLeft = 40217
        mmTop = 529
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText79: TppDBText
        UserName = 'DBText79'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plVentasporVendedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVentasporVendedor'
        mmHeight = 3344
        mmLeft = 63765
        mmTop = 529
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText82: TppDBText
        UserName = 'DBText82'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Cantidad'
        DataPipeline = plVentasporVendedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasporVendedor'
        mmHeight = 3440
        mmLeft = 143669
        mmTop = 529
        mmWidth = 28840
        BandType = 4
      end
      object ppDBText83: TppDBText
        UserName = 'DBText83'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'PrecioFinal'
        DataPipeline = plVentasporVendedor
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasporVendedor'
        mmHeight = 3440
        mmLeft = 173302
        mmTop = 529
        mmWidth = 29633
        BandType = 4
      end
    end
    object ppFooterBand7: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppSystemVariable14: TppSystemVariable
        UserName = 'SystemVariable14'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 118534
        mmTop = 0
        mmWidth = 84667
        BandType = 8
      end
    end
    object ppGroup5: TppGroup
      BreakName = 'Empleado'
      DataPipeline = plVentasporVendedor
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      StartOnOddPage = False
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plVentasporVendedor'
      NewFile = False
      object ppGroupHeaderBand5: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 9260
        mmPrintPosition = 0
        object ppDBText84: TppDBText
          UserName = 'DBText84'
          HyperlinkEnabled = False
          DataField = 'Empleado'
          DataPipeline = plVentasporVendedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plVentasporVendedor'
          mmHeight = 7662
          mmLeft = 0
          mmTop = 794
          mmWidth = 153988
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 10583
        mmPrintPosition = 0
        object ppDBCalc18: TppDBCalc
          UserName = 'DBCalc18'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Cantidad'
          DataPipeline = plVentasporVendedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasporVendedor'
          mmHeight = 3440
          mmLeft = 138642
          mmTop = 5821
          mmWidth = 33867
          BandType = 5
          GroupNo = 0
        end
        object ppLine26: TppLine
          UserName = 'Line26'
          Pen.Width = 3
          Weight = 2.250000000000000000
          mmHeight = 1588
          mmLeft = 1323
          mmTop = 3969
          mmWidth = 201877
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc20: TppDBCalc
          UserName = 'DBCalc20'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'PrecioFinal'
          DataPipeline = plVentasporVendedor
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasporVendedor'
          mmHeight = 3440
          mmLeft = 173302
          mmTop = 5821
          mmWidth = 29633
          BandType = 5
          GroupNo = 0
        end
        object ppLabel95: TppLabel
          UserName = 'Label95'
          HyperlinkEnabled = False
          Caption = 'Total del Vendedor :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 84931
          mmTop = 5821
          mmWidth = 49742
          BandType = 5
          GroupNo = 0
        end
        object ppLabel193: TppLabel
          UserName = 'Label193'
          HyperlinkEnabled = False
          Caption = 'Precio promedio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 12435
          mmTop = 5556
          mmWidth = 39158
          BandType = 5
          GroupNo = 0
        end
        object ppDBText185: TppDBText
          UserName = 'DBText185'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'PromedioVend'
          DataPipeline = plVentasporVendedor
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasporVendedor'
          mmHeight = 3440
          mmLeft = 52652
          mmTop = 5556
          mmWidth = 29633
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup6: TppGroup
      BreakName = 'idProducto'
      DataPipeline = plVentasporVendedor
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group6'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plVentasporVendedor'
      NewFile = False
      object ppGroupHeaderBand6: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppDBText80: TppDBText
          UserName = 'DBText80'
          HyperlinkEnabled = False
          DataField = 'idProducto'
          DataPipeline = plVentasporVendedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plVentasporVendedor'
          mmHeight = 5292
          mmLeft = 5821
          mmTop = 794
          mmWidth = 35983
          BandType = 3
          GroupNo = 1
        end
        object ppDBText81: TppDBText
          UserName = 'DBText81'
          HyperlinkEnabled = False
          DataField = 'Producto'
          DataPipeline = plVentasporVendedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          DataPipelineName = 'plVentasporVendedor'
          mmHeight = 5292
          mmLeft = 45244
          mmTop = 794
          mmWidth = 132821
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppDBCalc17: TppDBCalc
          UserName = 'DBCalc17'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Cantidad'
          DataPipeline = plVentasporVendedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasporVendedor'
          mmHeight = 3440
          mmLeft = 138642
          mmTop = 792
          mmWidth = 33867
          BandType = 5
          GroupNo = 1
        end
        object ppLine27: TppLine
          UserName = 'Line27'
          Pen.Color = clGray
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 265
          mmWidth = 202671
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc19: TppDBCalc
          UserName = 'DBCalc19'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'PrecioFinal'
          DataPipeline = plVentasporVendedor
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasporVendedor'
          mmHeight = 3440
          mmLeft = 173567
          mmTop = 792
          mmWidth = 29369
          BandType = 5
          GroupNo = 1
        end
        object ppLabel92: TppLabel
          UserName = 'Label92'
          HyperlinkEnabled = False
          Caption = 'Total del Producto :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 90488
          mmTop = 792
          mmWidth = 44450
          BandType = 5
          GroupNo = 1
        end
        object ppLabel194: TppLabel
          UserName = 'Label194'
          HyperlinkEnabled = False
          Caption = 'Precio promedio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 12965
          mmTop = 794
          mmWidth = 39158
          BandType = 5
          GroupNo = 1
        end
        object ppDBText184: TppDBText
          UserName = 'DBText184'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'PromedioVendProd'
          DataPipeline = plVentasporVendedor
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasporVendedor'
          mmHeight = 3440
          mmLeft = 53181
          mmTop = 794
          mmWidth = 29633
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppParameterList6: TppParameterList
    end
  end
  object CobrosMensuales: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'RPTCobrosMensuales;1'
    CommandTimeout = 120
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = -6
      end
      item
        Name = '@Desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 348
    Top = 260
    object CobrosMensualesMes: TWideStringField
      FieldName = 'Mes'
      ReadOnly = True
      Size = 30
    end
    object CobrosMensualesAno: TIntegerField
      FieldName = 'Ano'
      ReadOnly = True
    end
    object CobrosMensualesFacturacion: TBCDField
      FieldName = 'Facturacion'
      Precision = 32
      Size = 2
    end
    object CobrosMensualesContado: TBCDField
      FieldName = 'Contado'
      Precision = 32
      Size = 2
    end
    object CobrosMensualesContadoPorc: TBCDField
      FieldName = 'ContadoPorc'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object CobrosMensualesCobrado30: TBCDField
      FieldName = 'Cobrado30'
      Precision = 32
      Size = 2
    end
    object CobrosMensualesCobrado30Porc: TBCDField
      FieldName = 'Cobrado30Porc'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object CobrosMensualesCobrado60: TBCDField
      FieldName = 'Cobrado60'
      Precision = 32
      Size = 2
    end
    object CobrosMensualesCobrado60Porc: TBCDField
      FieldName = 'Cobrado60Porc'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object CobrosMensualesCobrado90: TBCDField
      FieldName = 'Cobrado90'
      Precision = 32
      Size = 2
    end
    object CobrosMensualesCobrado90Porc: TBCDField
      FieldName = 'Cobrado90Porc'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object CobrosMensualesCobrado120: TBCDField
      FieldName = 'Cobrado120'
      Precision = 32
      Size = 2
    end
    object CobrosMensualesCobrado120Porc: TBCDField
      FieldName = 'Cobrado120Porc'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object CobrosMensualesCobrado150: TBCDField
      FieldName = 'Cobrado150'
      Precision = 32
      Size = 2
    end
    object CobrosMensualesCobrado150Porc: TBCDField
      FieldName = 'Cobrado150Porc'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object CobrosMensualesCobradoMas: TBCDField
      FieldName = 'CobradoMas'
      Precision = 32
      Size = 2
    end
    object CobrosMensualesCobradoMasPorc: TBCDField
      FieldName = 'CobradoMasPorc'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object CobrosMensualesTotalCobrado: TBCDField
      FieldName = 'TotalCobrado'
      Precision = 32
      Size = 2
    end
    object CobrosMensualesTotalCobradoPorc: TBCDField
      FieldName = 'TotalCobradoPorc'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object CobrosMensualesCompania: TStringField
      FieldName = 'Compania'
      Size = 50
    end
  end
  object dsCobrosMensuales: TDataSource
    DataSet = CobrosMensuales
    Left = 348
    Top = 308
  end
  object plCobrosMensuales: TppDBPipeline
    DataSource = dsCobrosMensuales
    UserName = 'plCobrosMensuales'
    Left = 348
    Top = 364
    object plCobrosMensualesppField1: TppField
      FieldAlias = 'Mes'
      FieldName = 'Mes'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plCobrosMensualesppField2: TppField
      FieldAlias = 'Ano'
      FieldName = 'Ano'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plCobrosMensualesppField3: TppField
      FieldAlias = 'Facturacion'
      FieldName = 'Facturacion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object plCobrosMensualesppField4: TppField
      FieldAlias = 'Contado'
      FieldName = 'Contado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object plCobrosMensualesppField5: TppField
      FieldAlias = 'ContadoPorc'
      FieldName = 'ContadoPorc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object plCobrosMensualesppField6: TppField
      FieldAlias = 'Cobrado30'
      FieldName = 'Cobrado30'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object plCobrosMensualesppField7: TppField
      FieldAlias = 'Cobrado30Porc'
      FieldName = 'Cobrado30Porc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object plCobrosMensualesppField8: TppField
      FieldAlias = 'Cobrado60'
      FieldName = 'Cobrado60'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object plCobrosMensualesppField9: TppField
      FieldAlias = 'Cobrado60Porc'
      FieldName = 'Cobrado60Porc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object plCobrosMensualesppField10: TppField
      FieldAlias = 'Cobrado90'
      FieldName = 'Cobrado90'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object plCobrosMensualesppField11: TppField
      FieldAlias = 'Cobrado90Porc'
      FieldName = 'Cobrado90Porc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object plCobrosMensualesppField12: TppField
      FieldAlias = 'Cobrado120'
      FieldName = 'Cobrado120'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object plCobrosMensualesppField13: TppField
      FieldAlias = 'Cobrado120Porc'
      FieldName = 'Cobrado120Porc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object plCobrosMensualesppField14: TppField
      FieldAlias = 'Cobrado150'
      FieldName = 'Cobrado150'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object plCobrosMensualesppField15: TppField
      FieldAlias = 'Cobrado150Porc'
      FieldName = 'Cobrado150Porc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object plCobrosMensualesppField16: TppField
      FieldAlias = 'CobradoMas'
      FieldName = 'CobradoMas'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object plCobrosMensualesppField17: TppField
      FieldAlias = 'CobradoMasPorc'
      FieldName = 'CobradoMasPorc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object plCobrosMensualesppField18: TppField
      FieldAlias = 'TotalCobrado'
      FieldName = 'TotalCobrado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object plCobrosMensualesppField19: TppField
      FieldAlias = 'TotalCobradoPorc'
      FieldName = 'TotalCobradoPorc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object plCompania: TppField
      FieldAlias = 'Compania'
      FieldName = 'Compania'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
  end
  object RPTCobrosMensuales: TppReport
    AutoStop = False
    DataPipeline = plCobrosMensuales
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
    Left = 348
    Top = 422
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plCobrosMensuales'
    object ppTitleBand8: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 21431
      mmPrintPosition = 0
      object ppLabel103: TppLabel
        UserName = 'Label103'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cobros Mensuales'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 22
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 9172
        mmLeft = 0
        mmTop = 11377
        mmWidth = 72496
        BandType = 1
      end
      object ppDBText115: TppDBText
        UserName = 'DBText901'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = plCobrosMensuales
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plCobrosMensuales'
        mmHeight = 10054
        mmLeft = 0
        mmTop = 1058
        mmWidth = 159809
        BandType = 1
      end
    end
    object ppHeaderBand8: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 11642
      mmPrintPosition = 0
      object ppLine8: TppLine
        UserName = 'Line8'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 7673
        mmWidth = 201348
        BandType = 0
      end
      object ppLabel106: TppLabel
        UserName = 'Label106'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 2117
        mmTop = 794
        mmWidth = 20108
        BandType = 0
      end
      object ppDBText88: TppDBText
        UserName = 'DBText88'
        HyperlinkEnabled = False
        DataField = 'Mes'
        DataPipeline = plCobrosMensuales
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCobrosMensuales'
        mmHeight = 5821
        mmLeft = 42333
        mmTop = 794
        mmWidth = 28840
        BandType = 0
      end
      object ppDBText89: TppDBText
        UserName = 'DBText89'
        HyperlinkEnabled = False
        DataField = 'Ano'
        DataPipeline = plCobrosMensuales
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCobrosMensuales'
        mmHeight = 5821
        mmLeft = 25400
        mmTop = 794
        mmWidth = 14817
        BandType = 0
      end
    end
    object ppDetailBand8: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 28310
      mmPrintPosition = 0
      object ppDBText90: TppDBText
        UserName = 'DBText90'
        HyperlinkEnabled = False
        DataField = 'Facturacion'
        DataPipeline = plCobrosMensuales
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plCobrosMensuales'
        mmHeight = 5821
        mmLeft = 33867
        mmTop = 1852
        mmWidth = 42598
        BandType = 4
      end
      object ppDBText91: TppDBText
        UserName = 'DBText91'
        HyperlinkEnabled = False
        DataField = 'Contado'
        DataPipeline = plCobrosMensuales
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCobrosMensuales'
        mmHeight = 3725
        mmLeft = 265
        mmTop = 18521
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText92: TppDBText
        UserName = 'DBText92'
        HyperlinkEnabled = False
        DataField = 'ContadoPorc'
        DataPipeline = plCobrosMensuales
        DisplayFormat = '#,0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCobrosMensuales'
        mmHeight = 3725
        mmLeft = 265
        mmTop = 22754
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText93: TppDBText
        UserName = 'DBText93'
        HyperlinkEnabled = False
        DataField = 'Cobrado30'
        DataPipeline = plCobrosMensuales
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCobrosMensuales'
        mmHeight = 3725
        mmLeft = 25665
        mmTop = 18521
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText94: TppDBText
        UserName = 'DBText94'
        HyperlinkEnabled = False
        DataField = 'Cobrado30Porc'
        DataPipeline = plCobrosMensuales
        DisplayFormat = '#,0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCobrosMensuales'
        mmHeight = 3725
        mmLeft = 25665
        mmTop = 22754
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText95: TppDBText
        UserName = 'DBText95'
        HyperlinkEnabled = False
        DataField = 'Cobrado60'
        DataPipeline = plCobrosMensuales
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCobrosMensuales'
        mmHeight = 3725
        mmLeft = 51329
        mmTop = 18521
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText96: TppDBText
        UserName = 'DBText96'
        HyperlinkEnabled = False
        DataField = 'Cobrado60Porc'
        DataPipeline = plCobrosMensuales
        DisplayFormat = '#,0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCobrosMensuales'
        mmHeight = 3725
        mmLeft = 51329
        mmTop = 22754
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText97: TppDBText
        UserName = 'DBText97'
        HyperlinkEnabled = False
        DataField = 'Cobrado90'
        DataPipeline = plCobrosMensuales
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCobrosMensuales'
        mmHeight = 3725
        mmLeft = 76729
        mmTop = 18521
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText98: TppDBText
        UserName = 'DBText98'
        HyperlinkEnabled = False
        DataField = 'Cobrado90Porc'
        DataPipeline = plCobrosMensuales
        DisplayFormat = '#,0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCobrosMensuales'
        mmHeight = 3725
        mmLeft = 76729
        mmTop = 22754
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText99: TppDBText
        UserName = 'DBText99'
        HyperlinkEnabled = False
        DataField = 'Cobrado120'
        DataPipeline = plCobrosMensuales
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCobrosMensuales'
        mmHeight = 3725
        mmLeft = 102394
        mmTop = 18521
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText100: TppDBText
        UserName = 'DBText100'
        HyperlinkEnabled = False
        DataField = 'Cobrado120Porc'
        DataPipeline = plCobrosMensuales
        DisplayFormat = '#,0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCobrosMensuales'
        mmHeight = 3725
        mmLeft = 102394
        mmTop = 22754
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText101: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Cobrado150'
        DataPipeline = plCobrosMensuales
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCobrosMensuales'
        mmHeight = 3725
        mmLeft = 127794
        mmTop = 18521
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText102: TppDBText
        UserName = 'DBText102'
        HyperlinkEnabled = False
        DataField = 'Cobrado150Porc'
        DataPipeline = plCobrosMensuales
        DisplayFormat = '#,0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCobrosMensuales'
        mmHeight = 3725
        mmLeft = 127794
        mmTop = 22754
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText103: TppDBText
        UserName = 'DBText103'
        HyperlinkEnabled = False
        DataField = 'CobradoMas'
        DataPipeline = plCobrosMensuales
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCobrosMensuales'
        mmHeight = 3725
        mmLeft = 153194
        mmTop = 18521
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText104: TppDBText
        UserName = 'DBText104'
        HyperlinkEnabled = False
        DataField = 'CobradoMasPorc'
        DataPipeline = plCobrosMensuales
        DisplayFormat = '#,0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCobrosMensuales'
        mmHeight = 3725
        mmLeft = 153194
        mmTop = 22754
        mmWidth = 24871
        BandType = 4
      end
      object ppLabel121: TppLabel
        UserName = 'Label121'
        HyperlinkEnabled = False
        Caption = 'Facturacion :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 794
        mmTop = 1852
        mmWidth = 30956
        BandType = 4
      end
      object ppLabel107: TppLabel
        UserName = 'Label107'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Contado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 12171
        mmWidth = 24871
        BandType = 4
      end
      object ppLabel109: TppLabel
        UserName = 'Label109'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cobrado 30 dias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 25665
        mmTop = 12171
        mmWidth = 24871
        BandType = 4
      end
      object ppLabel111: TppLabel
        UserName = 'Label111'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cobrado 60 dias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 51329
        mmTop = 12171
        mmWidth = 24871
        BandType = 4
      end
      object ppLabel113: TppLabel
        UserName = 'Label113'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cobrado 90 dias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 76729
        mmTop = 12171
        mmWidth = 24871
        BandType = 4
      end
      object ppLabel115: TppLabel
        UserName = 'Label115'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cobrado 120 dias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 102394
        mmTop = 12171
        mmWidth = 24871
        BandType = 4
      end
      object ppLabel117: TppLabel
        UserName = 'Label117'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cobrado 150 dias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 127794
        mmTop = 12171
        mmWidth = 24871
        BandType = 4
      end
      object ppLabel119: TppLabel
        UserName = 'Label119'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Mas de 150 dias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 153194
        mmTop = 12171
        mmWidth = 25135
        BandType = 4
      end
      object ppLine30: TppLine
        UserName = 'Line30'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 8996
        mmWidth = 202407
        BandType = 4
      end
      object ppDBText105: TppDBText
        UserName = 'DBText105'
        HyperlinkEnabled = False
        DataField = 'TotalCobrado'
        DataPipeline = plCobrosMensuales
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCobrosMensuales'
        mmHeight = 3704
        mmLeft = 178594
        mmTop = 18521
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText106: TppDBText
        UserName = 'DBText106'
        HyperlinkEnabled = False
        DataField = 'TotalCobradoPorc'
        DataPipeline = plCobrosMensuales
        DisplayFormat = '#,0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCobrosMensuales'
        mmHeight = 3725
        mmLeft = 178594
        mmTop = 22754
        mmWidth = 24606
        BandType = 4
      end
      object ppLabel104: TppLabel
        UserName = 'Label104'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total Cobros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 178594
        mmTop = 12171
        mmWidth = 24871
        BandType = 4
      end
      object ppLine31: TppLine
        UserName = 'Line301'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 16404
        mmWidth = 202407
        BandType = 4
      end
      object ppLine32: TppLine
        UserName = 'Line32'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 16933
        mmLeft = 25400
        mmTop = 11113
        mmWidth = 1058
        BandType = 4
      end
      object ppLine33: TppLine
        UserName = 'Line33'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 16933
        mmLeft = 51065
        mmTop = 11377
        mmWidth = 1058
        BandType = 4
      end
      object ppLine34: TppLine
        UserName = 'Line34'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 16933
        mmLeft = 76729
        mmTop = 11377
        mmWidth = 1058
        BandType = 4
      end
      object ppLine35: TppLine
        UserName = 'Line35'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 16933
        mmLeft = 102129
        mmTop = 11377
        mmWidth = 1058
        BandType = 4
      end
      object ppLine36: TppLine
        UserName = 'Line36'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 16933
        mmLeft = 127529
        mmTop = 11377
        mmWidth = 1058
        BandType = 4
      end
      object ppLine37: TppLine
        UserName = 'Line37'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 16933
        mmLeft = 152929
        mmTop = 11377
        mmWidth = 1058
        BandType = 4
      end
      object ppLine38: TppLine
        UserName = 'Line38'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 16933
        mmLeft = 178330
        mmTop = 11377
        mmWidth = 1058
        BandType = 4
      end
    end
    object ppFooterBand8: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine29: TppLine
        UserName = 'Line29'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 201613
        BandType = 8
      end
      object ppSystemVariable15: TppSystemVariable
        UserName = 'SystemVariable15'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 64558
        BandType = 8
      end
      object ppSystemVariable16: TppSystemVariable
        UserName = 'SystemVariable16'
        HyperlinkEnabled = False
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 122767
        mmTop = 794
        mmWidth = 77788
        BandType = 8
      end
    end
    object ppParameterList7: TppParameterList
    end
  end
  object CreditoPorDistribuir: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'RPTCreditosporDistribuir;1'
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
        Name = '@idCliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 462
    Top = 260
    object CreditoPorDistribuiridCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object CreditoPorDistribuirCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object CreditoPorDistribuirFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object CreditoPorDistribuirCxc: TStringField
      FieldName = 'Cxc'
      Size = 16
    end
    object CreditoPorDistribuirPorDist: TBCDField
      FieldName = 'PorDist'
      Precision = 19
      Size = 2
    end
    object CreditoPorDistribuirDesde: TDateTimeField
      FieldName = 'Desde'
    end
    object CreditoPorDistribuirHasta: TDateTimeField
      FieldName = 'Hasta'
    end
    object CreditoPorDistribuirValor: TBCDField
      FieldName = 'Valor'
      Precision = 18
      Size = 2
    end
  end
  object dsCreditoPorDistribuir: TDataSource
    DataSet = CreditoPorDistribuir
    Left = 462
    Top = 308
  end
  object plCreditoPorDistribuir: TppDBPipeline
    DataSource = dsCreditoPorDistribuir
    UserName = 'plCreditoPorDistribuir'
    Left = 462
    Top = 364
  end
  object RPTCreditoPorDistribuir: TppReport
    AutoStop = False
    DataPipeline = plCreditoPorDistribuir
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
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
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
    Left = 462
    Top = 420
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plCreditoPorDistribuir'
    object ppTitleBand9: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 18256
      mmPrintPosition = 0
      object ppLine40: TppLine
        UserName = 'Line40'
        Pen.Width = 2
        Style = lsDouble
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 10848
        mmWidth = 200555
        BandType = 1
      end
      object ppLabel105: TppLabel
        UserName = 'Label105'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Creditos Por Distribuir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 24
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 9525
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 85461
        BandType = 1
      end
      object ppSystemVariable17: TppSystemVariable
        UserName = 'SystemVariable17'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 136790
        mmTop = 13229
        mmWidth = 65088
        BandType = 1
      end
      object ppDBText113: TppDBText
        UserName = 'DBText113'
        HyperlinkEnabled = False
        DataPipeline = plCreditoPorDistribuir
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCreditoPorDistribuir'
        mmHeight = 4191
        mmLeft = 174096
        mmTop = 794
        mmWidth = 27517
        BandType = 1
      end
      object ppDBText114: TppDBText
        UserName = 'DBText114'
        HyperlinkEnabled = False
        DataPipeline = plCreditoPorDistribuir
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCreditoPorDistribuir'
        mmHeight = 4233
        mmLeft = 174096
        mmTop = 5292
        mmWidth = 27517
        BandType = 1
      end
      object ppLabel108: TppLabel
        UserName = 'Label108'
        HyperlinkEnabled = False
        Caption = 'Desde :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 160602
        mmTop = 794
        mmWidth = 12171
        BandType = 1
      end
      object ppLabel118: TppLabel
        UserName = 'Label118'
        HyperlinkEnabled = False
        Caption = 'Hasta :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 161661
        mmTop = 5292
        mmWidth = 11113
        BandType = 1
      end
    end
    object ppHeaderBand9: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand9: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText109: TppDBText
        UserName = 'DBText109'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plCreditoPorDistribuir
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCreditoPorDistribuir'
        mmHeight = 3175
        mmLeft = 32279
        mmTop = 794
        mmWidth = 28575
        BandType = 4
      end
      object ppDBText110: TppDBText
        UserName = 'DBText110'
        HyperlinkEnabled = False
        DataField = 'Cxc'
        DataPipeline = plCreditoPorDistribuir
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCreditoPorDistribuir'
        mmHeight = 3175
        mmLeft = 62177
        mmTop = 794
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText111: TppDBText
        UserName = 'DBText111'
        HyperlinkEnabled = False
        DataField = 'PorDist'
        DataPipeline = plCreditoPorDistribuir
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCreditoPorDistribuir'
        mmHeight = 3175
        mmLeft = 120386
        mmTop = 794
        mmWidth = 31750
        BandType = 4
      end
      object ppDBText112: TppDBText
        UserName = 'DBText112'
        HyperlinkEnabled = False
        DataField = 'valor'
        DataPipeline = plCreditoPorDistribuir
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCreditoPorDistribuir'
        mmHeight = 3175
        mmLeft = 88900
        mmTop = 794
        mmWidth = 30163
        BandType = 4
      end
    end
    object ppFooterBand9: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine43: TppLine
        UserName = 'Line43'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 200555
        BandType = 8
      end
      object ppSystemVariable18: TppSystemVariable
        UserName = 'SystemVariable18'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 114036
        mmTop = 1323
        mmWidth = 87842
        BandType = 8
      end
    end
    object ppGroup8: TppGroup
      BreakName = 'idCliente'
      DataPipeline = plCreditoPorDistribuir
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group8'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plCreditoPorDistribuir'
      NewFile = False
      object ppGroupHeaderBand8: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 12700
        mmPrintPosition = 0
        object ppLine42: TppLine
          UserName = 'Line42'
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 1058
          mmLeft = 1323
          mmTop = 11641
          mmWidth = 200555
          BandType = 3
          GroupNo = 0
        end
        object ppLine41: TppLine
          UserName = 'Line41'
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 3969
          mmLeft = 1323
          mmTop = 8202
          mmWidth = 200555
          BandType = 3
          GroupNo = 0
        end
        object ppDBText107: TppDBText
          UserName = 'DBText107'
          HyperlinkEnabled = False
          DataField = 'idCliente'
          DataPipeline = plCreditoPorDistribuir
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 12
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plCreditoPorDistribuir'
          mmHeight = 4763
          mmLeft = 794
          mmTop = 529
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
        end
        object ppLabel110: TppLabel
          UserName = 'Label110'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Fecha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 32279
          mmTop = 8467
          mmWidth = 28575
          BandType = 3
          GroupNo = 0
        end
        object ppLabel112: TppLabel
          UserName = 'Label112'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 62177
          mmTop = 8467
          mmWidth = 25400
          BandType = 3
          GroupNo = 0
        end
        object ppLabel114: TppLabel
          UserName = 'Label114'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Por Distribuir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 120386
          mmTop = 8467
          mmWidth = 31750
          BandType = 3
          GroupNo = 0
        end
        object ppLabel116: TppLabel
          UserName = 'Label116'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Monto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 88900
          mmTop = 8467
          mmWidth = 30163
          BandType = 3
          GroupNo = 0
        end
        object ppDBText108: TppDBText
          UserName = 'DBText108'
          HyperlinkEnabled = False
          DataField = 'Cliente'
          DataPipeline = plCreditoPorDistribuir
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plCreditoPorDistribuir'
          mmHeight = 4763
          mmLeft = 18521
          mmTop = 529
          mmWidth = 77788
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand8: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppDBCalc32: TppDBCalc
          UserName = 'DBCalc32'
          HyperlinkEnabled = False
          DataField = 'PorDist'
          DataPipeline = plCreditoPorDistribuir
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plCreditoPorDistribuir'
          mmHeight = 4498
          mmLeft = 111390
          mmTop = 794
          mmWidth = 40746
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList8: TppParameterList
    end
  end
  object ClienteBalanceList: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'ClienteBalanceList;1'
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
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 630
    Top = 6
  end
  object dsClienteBalanceList: TDataSource
    DataSet = ClienteBalanceList
    Left = 630
    Top = 54
  end
  object plClienteBalanceList: TppDBPipeline
    DataSource = dsClienteBalanceList
    UserName = 'plClienteBalanceList'
    Left = 630
    Top = 102
  end
  object RptClienteBalanceList: TppReport
    AutoStop = False
    DataPipeline = plClienteBalanceList
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
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 630
    Top = 150
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plClienteBalanceList'
    object ppTitleBand10: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand10: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 32279
      mmPrintPosition = 0
      object ppLabel122: TppLabel
        UserName = 'Label122'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 27781
        mmWidth = 23548
        BandType = 0
      end
      object ppLabel123: TppLabel
        UserName = 'Label123'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 24342
        mmTop = 27781
        mmWidth = 106892
        BandType = 0
      end
      object ppLabel124: TppLabel
        UserName = 'Label124'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'BALANCE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 132557
        mmTop = 27781
        mmWidth = 34131
        BandType = 0
      end
      object ppLine39: TppLine
        UserName = 'Line39'
        Pen.Color = clNavy
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 31750
        mmWidth = 202671
        BandType = 0
      end
      object ppLabel120: TppLabel
        UserName = 'Label120'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'CxC - Balances de Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 20
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 8202
        mmLeft = 0
        mmTop = 13229
        mmWidth = 119327
        BandType = 0
      end
      object ppSystemVariable21: TppSystemVariable
        UserName = 'SystemVariable21'
        HyperlinkEnabled = False
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 146844
        mmTop = 529
        mmWidth = 56356
        BandType = 0
      end
      object ppDBText198: TppDBText
        UserName = 'DBText198'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 24
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 10160
        mmLeft = 0
        mmTop = 529
        mmWidth = 133615
        BandType = 0
      end
      object ppSystemVariable33: TppSystemVariable
        UserName = 'SystemVariable33'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 163248
        mmTop = 5292
        mmWidth = 39952
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        Caption = 'Moneda de curso legal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3831
        mmLeft = 165365
        mmTop = 18785
        mmWidth = 36777
        BandType = 0
      end
    end
    object ppDetailBand10: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object lin: TppShape
        OnPrint = linPrint
        UserName = 'lin'
        Brush.Color = 15395562
        Pen.Style = psClear
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 202936
        BandType = 4
      end
      object ppDBText116: TppDBText
        UserName = 'DBText116'
        HyperlinkEnabled = False
        DataField = 'idCliente'
        DataPipeline = plClienteBalanceList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClienteBalanceList'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText117: TppDBText
        UserName = 'DBText117'
        HyperlinkEnabled = False
        DataField = 'Cliente'
        DataPipeline = plClienteBalanceList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClienteBalanceList'
        mmHeight = 3704
        mmLeft = 24342
        mmTop = 0
        mmWidth = 106892
        BandType = 4
      end
      object ppDBText118: TppDBText
        UserName = 'DBText118'
        HyperlinkEnabled = False
        DataField = 'Balance'
        DataPipeline = plClienteBalanceList
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClienteBalanceList'
        mmHeight = 3704
        mmLeft = 132557
        mmTop = 0
        mmWidth = 34131
        BandType = 4
      end
    end
    object ppFooterBand10: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 794
      mmPrintPosition = 0
      object ppLine44: TppLine
        UserName = 'Line44'
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 0
        mmWidth = 202671
        BandType = 8
      end
    end
    object ppSummaryBand4: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBCalc33: TppDBCalc
        UserName = 'DBCalc33'
        HyperlinkEnabled = False
        DataField = 'Balance'
        DataPipeline = plClienteBalanceList
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClienteBalanceList'
        mmHeight = 4233
        mmLeft = 132557
        mmTop = 1058
        mmWidth = 34131
        BandType = 7
      end
      object ppLabel125: TppLabel
        UserName = 'Label125'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'TOTAL  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 97631
        mmTop = 1058
        mmWidth = 34131
        BandType = 7
      end
    end
    object ppParameterList9: TppParameterList
    end
  end
  object CxCList: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'RPTCXCList;1'
    CommandTimeout = 120
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
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
        Name = '@idCxcTipo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 246
    Top = 6
    object CxCListidCxc: TGuidField
      FieldName = 'idCxc'
      FixedChar = True
      Size = 38
    end
    object CxCListidTipoDocumento: TStringField
      FieldName = 'idTipoDocumento'
      Size = 16
    end
    object CxCListidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object CxCListCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object CxCListFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object CxCListCxc: TStringField
      FieldName = 'Cxc'
      Size = 16
    end
    object CxCListValor: TBCDField
      FieldName = 'Valor'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object CxCListConcepto: TStringField
      FieldName = 'Concepto'
      Size = 100
    end
    object CxCListReferencia: TGuidField
      FieldName = 'Referencia'
      FixedChar = True
      Size = 38
    end
    object CxCListCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object CxCListidCxcTipo: TIntegerField
      FieldName = 'idCxcTipo'
    end
    object CxCListCxcTipo: TStringField
      FieldName = 'CxcTipo'
      Size = 50
    end
    object CxCListCC: TStringField
      FieldName = 'CC'
    end
    object CxCListUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object CxCListDescuento: TBCDField
      FieldName = 'Descuento'
      Precision = 19
      Size = 2
    end
    object CxCListTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 20
      Size = 2
    end
    object CxCListidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object CxCListTasa: TBCDField
      FieldName = 'Tasa'
      Precision = 18
      Size = 2
    end
    object CxCListMoneda: TStringField
      FieldName = 'Moneda'
    end
  end
  object dsCxCList: TDataSource
    DataSet = CxCList
    Left = 246
    Top = 54
  end
  object plCxCList: TppDBPipeline
    DataSource = dsCxCList
    UserName = 'plCxCList'
    Left = 246
    Top = 102
    object plCxCListppField1: TppField
      FieldAlias = 'idCxc'
      FieldName = 'idCxc'
      FieldLength = 38
      DataType = dtGUID
      DisplayWidth = 38
      Position = 0
    end
    object plCxCListppField2: TppField
      FieldAlias = 'idTipoDocumento'
      FieldName = 'idTipoDocumento'
      FieldLength = 16
      DisplayWidth = 16
      Position = 1
    end
    object plCxCListppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'idCliente'
      FieldName = 'idCliente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object plCxCListppField4: TppField
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object plCxCListppField5: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 4
    end
    object plCxCListppField6: TppField
      FieldAlias = 'Cxc'
      FieldName = 'Cxc'
      FieldLength = 16
      DisplayWidth = 16
      Position = 5
    end
    object plCxCListppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor'
      FieldName = 'Valor'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 6
    end
    object plCxCListppField8: TppField
      FieldAlias = 'Concepto'
      FieldName = 'Concepto'
      FieldLength = 100
      DisplayWidth = 100
      Position = 7
    end
    object plCxCListppField9: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 38
      DataType = dtGUID
      DisplayWidth = 38
      Position = 8
    end
    object plCxCListppField10: TppField
      FieldAlias = 'Cancelado'
      FieldName = 'Cancelado'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 9
    end
    object plCxCListppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'idCxcTipo'
      FieldName = 'idCxcTipo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object plCxCListppField12: TppField
      FieldAlias = 'CxcTipo'
      FieldName = 'CxcTipo'
      FieldLength = 50
      DisplayWidth = 50
      Position = 11
    end
    object plCxCListppField13: TppField
      FieldAlias = 'CC'
      FieldName = 'CC'
      FieldLength = 20
      DisplayWidth = 20
      Position = 12
    end
    object plCxCListppField14: TppField
      FieldAlias = 'Usuario'
      FieldName = 'Usuario'
      FieldLength = 30
      DisplayWidth = 30
      Position = 13
    end
    object plCxCListppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'Descuento'
      FieldName = 'Descuento'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 14
    end
    object plCxCListppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 21
      Position = 15
    end
    object plCxCListppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'idMoneda'
      FieldName = 'idMoneda'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object plCxCListppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tasa'
      FieldName = 'Tasa'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 17
    end
    object plCxCListppField19: TppField
      FieldAlias = 'Moneda'
      FieldName = 'Moneda'
      FieldLength = 20
      DisplayWidth = 20
      Position = 18
    end
  end
  object RPTCxcList: TppReport
    AutoStop = False
    DataPipeline = plCxCList
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 12700
    PrinterSetup.mmMarginLeft = 12700
    PrinterSetup.mmMarginRight = 12700
    PrinterSetup.mmMarginTop = 12700
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
    OutlineSettings.CreatePageNodes = False
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
    Left = 246
    Top = 158
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plCxCList'
    object ppTitleBand11: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand11: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 30692
      mmPrintPosition = 0
      object ppLabel126: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Listado de Transacciones de CxC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6011
        mmLeft = 0
        mmTop = 11377
        mmWidth = 120386
        BandType = 0
      end
      object ppSystemVariable19: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 203200
        mmTop = 794
        mmWidth = 50006
        BandType = 0
      end
      object ppDBText179: TppDBText
        UserName = 'DBText179'
        HyperlinkEnabled = False
        DataField = 'compania'
        DataPipeline = plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 18
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 7662
        mmLeft = 794
        mmTop = 1058
        mmWidth = 186002
        BandType = 0
      end
      object ppLabel133: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Tipo Doc.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 794
        mmTop = 20638
        mmWidth = 17463
        BandType = 0
      end
      object ppLine45: TppLine
        UserName = 'Line1'
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 30427
        mmWidth = 254001
        BandType = 0
      end
      object ppLabel127: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 1323
        mmTop = 26723
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel128: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 21696
        mmTop = 26723
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel129: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 41010
        mmTop = 26723
        mmWidth = 53446
        BandType = 0
      end
      object ppLabel131: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Canc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 94986
        mmTop = 26723
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel134: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Concepto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 106892
        mmTop = 26723
        mmWidth = 69586
        BandType = 0
      end
      object ppLabel135: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 215636
        mmTop = 26723
        mmWidth = 25135
        BandType = 0
      end
      object ppLabel136: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Usuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 242094
        mmTop = 26723
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel130: TppLabel
        UserName = 'Label130'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Tipo Concepto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 177007
        mmTop = 26723
        mmWidth = 37835
        BandType = 0
      end
      object ppDBText123: TppDBText
        UserName = 'DBText123'
        HyperlinkEnabled = False
        DataField = 'idTipoDocumento'
        DataPipeline = plCxCList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plCxCList'
        mmHeight = 4233
        mmLeft = 19050
        mmTop = 20638
        mmWidth = 24077
        BandType = 0
      end
      object ppSystemVariable22: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 208757
        mmTop = 6085
        mmWidth = 44979
        BandType = 0
      end
    end
    object ppDetailBand11: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText120: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plCxCList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCxCList'
        mmHeight = 3429
        mmLeft = 21696
        mmTop = 529
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText121: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Cliente'
        DataPipeline = plCxCList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCxCList'
        mmHeight = 3429
        mmLeft = 41010
        mmTop = 529
        mmWidth = 53446
        BandType = 4
      end
      object ppDBText124: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plCxCList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxCList'
        mmHeight = 3429
        mmLeft = 215636
        mmTop = 529
        mmWidth = 25135
        BandType = 4
      end
      object ppDBText125: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'Usuario'
        DataPipeline = plCxCList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxCList'
        mmHeight = 3429
        mmLeft = 242094
        mmTop = 529
        mmWidth = 11642
        BandType = 4
      end
      object myDBCheckBox6: TmyDBCheckBox
        UserName = 'DBCheckBox2'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = plCxCList
        DataField = 'Cancelado'
        Transparent = True
        DataPipelineName = 'plCxCList'
        mmHeight = 4233
        mmLeft = 97631
        mmTop = 265
        mmWidth = 4498
        BandType = 4
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Concepto'
        DataPipeline = plCxCList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plCxCList'
        mmHeight = 3440
        mmLeft = 107421
        mmTop = 529
        mmWidth = 69321
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText128: TppDBText
        UserName = 'DBText128'
        HyperlinkEnabled = False
        DataField = 'CxcTipo'
        DataPipeline = plCxCList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCxCList'
        mmHeight = 3429
        mmLeft = 177271
        mmTop = 529
        mmWidth = 37306
        BandType = 4
      end
      object ppDBText227: TppDBText
        UserName = 'DBText227'
        HyperlinkEnabled = False
        DataField = 'Cxc'
        DataPipeline = plCxCList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCxCList'
        mmHeight = 3429
        mmLeft = 1588
        mmTop = 529
        mmWidth = 19844
        BandType = 4
      end
    end
    object ppFooterBand11: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBCalc75: TppDBCalc
        UserName = 'DBCalc75'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plCxCList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCxCList'
        mmHeight = 3440
        mmLeft = 209815
        mmTop = 1323
        mmWidth = 30956
        BandType = 8
      end
      object ppLabel240: TppLabel
        UserName = 'Label240'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Totales :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 188384
        mmTop = 1323
        mmWidth = 19844
        BandType = 8
      end
      object ppLabel241: TppLabel
        UserName = 'Label241'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Tipo Doc.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 142082
        mmTop = 1323
        mmWidth = 17463
        BandType = 8
      end
      object ppDBText229: TppDBText
        UserName = 'DBText229'
        HyperlinkEnabled = False
        DataField = 'idTipoDocumento'
        DataPipeline = plCxCList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plCxCList'
        mmHeight = 3440
        mmLeft = 160338
        mmTop = 1323
        mmWidth = 24077
        BandType = 8
      end
      object ppLine46: TppLine
        UserName = 'Line46'
        ParentWidth = True
        Weight = 1.000000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 529
        mmWidth = 254001
        BandType = 8
      end
    end
    object ppSummaryBand5: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup9: TppGroup
      BreakName = 'Moneda'
      DataPipeline = plCxCList
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group9'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plCxCList'
      NewFile = False
      object ppGroupHeaderBand9: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object ppDBText119: TppDBText
          UserName = 'DBText1'
          HyperlinkEnabled = False
          DataField = 'Cxc'
          DataPipeline = plCxCList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 18
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plCxCList'
          mmHeight = 5821
          mmLeft = 1058
          mmTop = 794
          mmWidth = 92604
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand9: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppDBCalc34: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          DataField = 'Total'
          DataPipeline = plCxCList
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plCxCList'
          mmHeight = 3440
          mmLeft = 209815
          mmTop = 794
          mmWidth = 30956
          BandType = 5
          GroupNo = 0
        end
        object ppLabel139: TppLabel
          UserName = 'Label15'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Totales :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 188384
          mmTop = 794
          mmWidth = 19844
          BandType = 5
          GroupNo = 0
        end
        object ppLine47: TppLine
          UserName = 'Line3'
          ParentWidth = True
          Weight = 1.000000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 0
          mmWidth = 254001
          BandType = 5
          GroupNo = 0
        end
        object ppLabel137: TppLabel
          UserName = 'Label137'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Tipo Doc.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 142082
          mmTop = 794
          mmWidth = 17463
          BandType = 5
          GroupNo = 0
        end
        object ppDBText126: TppDBText
          UserName = 'DBText126'
          HyperlinkEnabled = False
          DataField = 'idTipoDocumento'
          DataPipeline = plCxCList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plCxCList'
          mmHeight = 3440
          mmLeft = 160338
          mmTop = 794
          mmWidth = 24077
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup22: TppGroup
      BreakName = 'idTipoDocumento'
      DataPipeline = plCxCList
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group22'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plCxCList'
      NewFile = False
      object ppGroupHeaderBand22: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand22: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList10: TppParameterList
    end
  end
  object InvEntradasSalidas: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'InvEntradaSalidas;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
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
        Name = '@Salida'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 576
    Top = 260
    object InvEntradasSalidasID: TGuidField
      FieldName = 'ID'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object InvEntradasSalidasDesde: TDateTimeField
      FieldName = 'Desde'
      ReadOnly = True
    end
    object InvEntradasSalidasHasta: TDateTimeField
      FieldName = 'Hasta'
      ReadOnly = True
    end
    object InvEntradasSalidasidProMov: TGuidField
      FieldName = 'idProMov'
      FixedChar = True
      Size = 38
    end
    object InvEntradasSalidasProMov: TStringField
      FieldName = 'ProMov'
      Size = 16
    end
    object InvEntradasSalidasFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object InvEntradasSalidasEntregadoPor: TStringField
      FieldName = 'EntregadoPor'
      Size = 50
    end
    object InvEntradasSalidasReferencia: TStringField
      FieldName = 'Referencia'
    end
    object InvEntradasSalidasConcepto: TStringField
      FieldName = 'Concepto'
      Size = 100
    end
    object InvEntradasSalidasidProMovDet: TGuidField
      FieldName = 'idProMovDet'
      FixedChar = True
      Size = 38
    end
    object InvEntradasSalidasProMovDet: TStringField
      FieldName = 'ProMovDet'
      Size = 60
    end
    object InvEntradasSalidasidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object InvEntradasSalidasProducto: TStringField
      FieldName = 'Producto'
      Size = 120
    end
    object InvEntradasSalidasReferenciaDet: TStringField
      FieldName = 'ReferenciaDet'
    end
    object InvEntradasSalidasCC: TStringField
      FieldName = 'CC'
      Size = 25
    end
    object InvEntradasSalidasCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 16
      Size = 2
    end
    object InvEntradasSalidasCosto: TBCDField
      FieldName = 'Costo'
      Precision = 18
      Size = 2
    end
    object InvEntradasSalidasidalmacen: TStringField
      FieldName = 'idalmacen'
      Size = 16
    end
  end
  object dsInvEntradasSalidas: TDataSource
    DataSet = InvEntradasSalidas
    Left = 576
    Top = 308
  end
  object RptInvEntradasSalidas: TppReport
    AutoStop = False
    DataPipeline = plInvEntradasSalidas
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
    OutlineSettings.CreatePageNodes = False
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
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    SavePrinterSetup = True
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 576
    Top = 420
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plInvEntradasSalidas'
    object ppTitleBand12: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel138: TppLabel
        UserName = 'Label138'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Entradas / Salidas de Almacen'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 20
        Font.Style = []
        Transparent = True
        mmHeight = 8467
        mmLeft = 1852
        mmTop = 529
        mmWidth = 138377
        BandType = 1
      end
      object ppLine49: TppLine
        UserName = 'Line49'
        Pen.Width = 2
        Style = lsDouble
        Weight = 1.500000000000000000
        mmHeight = 1852
        mmLeft = 1323
        mmTop = 10848
        mmWidth = 198967
        BandType = 1
      end
      object ppLabel141: TppLabel
        UserName = 'Label141'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3528
        mmLeft = 159809
        mmTop = 1323
        mmWidth = 12700
        BandType = 1
      end
      object ppDBText129: TppDBText
        UserName = 'DBText129'
        HyperlinkEnabled = False
        DataField = 'Desde'
        DataPipeline = plInvEntradasSalidas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plInvEntradasSalidas'
        mmHeight = 3704
        mmLeft = 173302
        mmTop = 1323
        mmWidth = 25400
        BandType = 1
      end
      object ppLabel142: TppLabel
        UserName = 'Label142'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3528
        mmLeft = 159809
        mmTop = 5292
        mmWidth = 12700
        BandType = 1
      end
      object ppDBText130: TppDBText
        UserName = 'DBText130'
        HyperlinkEnabled = False
        DataField = 'Hasta'
        DataPipeline = plInvEntradasSalidas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plInvEntradasSalidas'
        mmHeight = 3704
        mmLeft = 173302
        mmTop = 5292
        mmWidth = 25400
        BandType = 1
      end
    end
    object ppHeaderBand12: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand12: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText136: TppDBText
        UserName = 'DBText136'
        HyperlinkEnabled = False
        DataField = 'Concepto'
        DataPipeline = plInvEntradasSalidas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plInvEntradasSalidas'
        mmHeight = 3440
        mmLeft = 85461
        mmTop = 792
        mmWidth = 34131
        BandType = 4
      end
      object ppDBText139: TppDBText
        UserName = 'DBText139'
        HyperlinkEnabled = False
        DataField = 'idProducto'
        DataPipeline = plInvEntradasSalidas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plInvEntradasSalidas'
        mmHeight = 3440
        mmLeft = 7673
        mmTop = 792
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText140: TppDBText
        UserName = 'DBText140'
        HyperlinkEnabled = False
        DataField = 'Producto'
        DataPipeline = plInvEntradasSalidas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plInvEntradasSalidas'
        mmHeight = 3440
        mmLeft = 26194
        mmTop = 792
        mmWidth = 58738
        BandType = 4
      end
      object ppDBText141: TppDBText
        UserName = 'DBText141'
        HyperlinkEnabled = False
        DataField = 'ReferenciaDet'
        DataPipeline = plInvEntradasSalidas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plInvEntradasSalidas'
        mmHeight = 3440
        mmLeft = 166159
        mmTop = 792
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText142: TppDBText
        UserName = 'DBText142'
        HyperlinkEnabled = False
        DataField = 'CC'
        DataPipeline = plInvEntradasSalidas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plInvEntradasSalidas'
        mmHeight = 3440
        mmLeft = 183357
        mmTop = 529
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText127: TppDBText
        UserName = 'DBText127'
        HyperlinkEnabled = False
        DataField = 'Cantidad'
        DataPipeline = plInvEntradasSalidas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plInvEntradasSalidas'
        mmHeight = 3440
        mmLeft = 120386
        mmTop = 792
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText131: TppDBText
        UserName = 'DBText131'
        HyperlinkEnabled = False
        DataField = 'Costo'
        DataPipeline = plInvEntradasSalidas
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plInvEntradasSalidas'
        mmHeight = 3440
        mmLeft = 142082
        mmTop = 792
        mmWidth = 23019
        BandType = 4
      end
    end
    object ppFooterBand12: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppLine52: TppLine
        UserName = 'Line52'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 200555
        BandType = 8
      end
      object ppSystemVariable23: TppSystemVariable
        UserName = 'SystemVariable23'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 2117
        mmTop = 1323
        mmWidth = 69321
        BandType = 8
      end
      object ppSystemVariable24: TppSystemVariable
        UserName = 'SystemVariable24'
        HyperlinkEnabled = False
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 133350
        mmTop = 1323
        mmWidth = 67204
        BandType = 8
      end
    end
    object ppGroup10: TppGroup
      BreakName = 'idProMov'
      DataPipeline = plInvEntradasSalidas
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group10'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plInvEntradasSalidas'
      NewFile = False
      object ppGroupHeaderBand10: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 16140
        mmPrintPosition = 0
        object ppShape6: TppShape
          UserName = 'Shape6'
          Brush.Color = 14671839
          Pen.Color = 9145227
          mmHeight = 10583
          mmLeft = 0
          mmTop = 0
          mmWidth = 201348
          BandType = 3
          GroupNo = 0
        end
        object ppLine50: TppLine
          UserName = 'Line50'
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 6615
          mmTop = 15081
          mmWidth = 195263
          BandType = 3
          GroupNo = 0
        end
        object ppLabel143: TppLabel
          UserName = 'Label143'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Movimiento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3528
          mmLeft = 794
          mmTop = 1323
          mmWidth = 19315
          BandType = 3
          GroupNo = 0
        end
        object ppLabel144: TppLabel
          UserName = 'Label144'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Fecha:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 794
          mmTop = 5556
          mmWidth = 19315
          BandType = 3
          GroupNo = 0
        end
        object ppLabel145: TppLabel
          UserName = 'Label145'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Suplidor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 41275
          mmTop = 1323
          mmWidth = 20373
          BandType = 3
          GroupNo = 0
        end
        object ppLabel146: TppLabel
          UserName = 'Label146'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Documento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 40481
          mmTop = 5556
          mmWidth = 21167
          BandType = 3
          GroupNo = 0
        end
        object ppLabel147: TppLabel
          UserName = 'Label147'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Concepto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 122502
          mmTop = 1323
          mmWidth = 18256
          BandType = 3
          GroupNo = 0
        end
        object ppLabel149: TppLabel
          UserName = 'Label149'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Descripcion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3528
          mmLeft = 85461
          mmTop = 11642
          mmWidth = 34131
          BandType = 3
          GroupNo = 0
        end
        object ppLabel150: TppLabel
          UserName = 'Label150'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Codigo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3528
          mmLeft = 7673
          mmTop = 11642
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
        end
        object ppLabel151: TppLabel
          UserName = 'Label151'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Producto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3528
          mmLeft = 26458
          mmTop = 11642
          mmWidth = 41010
          BandType = 3
          GroupNo = 0
        end
        object ppLabel152: TppLabel
          UserName = 'Label152'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Ficha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3528
          mmLeft = 166159
          mmTop = 11642
          mmWidth = 15875
          BandType = 3
          GroupNo = 0
        end
        object ppLabel153: TppLabel
          UserName = 'Label153'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'CC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3528
          mmLeft = 183621
          mmTop = 11642
          mmWidth = 17463
          BandType = 3
          GroupNo = 0
        end
        object ppDBText132: TppDBText
          UserName = 'DBText132'
          HyperlinkEnabled = False
          DataField = 'ProMov'
          DataPipeline = plInvEntradasSalidas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plInvEntradasSalidas'
          mmHeight = 3440
          mmLeft = 20638
          mmTop = 1323
          mmWidth = 19315
          BandType = 3
          GroupNo = 0
        end
        object ppDBText133: TppDBText
          UserName = 'DBText133'
          HyperlinkEnabled = False
          DataField = 'Fecha'
          DataPipeline = plInvEntradasSalidas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plInvEntradasSalidas'
          mmHeight = 3440
          mmLeft = 20638
          mmTop = 5556
          mmWidth = 19315
          BandType = 3
          GroupNo = 0
        end
        object ppDBText134: TppDBText
          UserName = 'DBText134'
          HyperlinkEnabled = False
          DataField = 'EntregadoPor'
          DataPipeline = plInvEntradasSalidas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plInvEntradasSalidas'
          mmHeight = 3440
          mmLeft = 62177
          mmTop = 1323
          mmWidth = 57944
          BandType = 3
          GroupNo = 0
        end
        object ppDBText135: TppDBText
          UserName = 'DBText135'
          HyperlinkEnabled = False
          DataField = 'Referencia'
          DataPipeline = plInvEntradasSalidas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plInvEntradasSalidas'
          mmHeight = 3440
          mmLeft = 62177
          mmTop = 5556
          mmWidth = 22754
          BandType = 3
          GroupNo = 0
        end
        object ppDBText138: TppDBText
          UserName = 'DBText138'
          HyperlinkEnabled = False
          DataField = 'ProMovDet'
          DataPipeline = plInvEntradasSalidas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          WordWrap = True
          DataPipelineName = 'plInvEntradasSalidas'
          mmHeight = 8202
          mmLeft = 141288
          mmTop = 1323
          mmWidth = 58738
          BandType = 3
          GroupNo = 0
        end
        object ppLabel140: TppLabel
          UserName = 'Label1501'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Cantidad'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3528
          mmLeft = 120386
          mmTop = 11642
          mmWidth = 20902
          BandType = 3
          GroupNo = 0
        end
        object ppLabel148: TppLabel
          UserName = 'Label148'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Costo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3528
          mmLeft = 142082
          mmTop = 11642
          mmWidth = 23019
          BandType = 3
          GroupNo = 0
        end
        object ppLabel154: TppLabel
          UserName = 'Label154'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Almacen:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 86519
          mmTop = 5556
          mmWidth = 14023
          BandType = 3
          GroupNo = 0
        end
        object ppDBText137: TppDBText
          UserName = 'DBText137'
          HyperlinkEnabled = False
          DataField = 'idalmacen'
          DataPipeline = plInvEntradasSalidas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plInvEntradasSalidas'
          mmHeight = 3440
          mmLeft = 101600
          mmTop = 5556
          mmWidth = 18521
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand10: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppLine51: TppLine
          UserName = 'Line51'
          Weight = 0.750000000000000000
          mmHeight = 2117
          mmLeft = 6615
          mmTop = 265
          mmWidth = 194469
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList11: TppParameterList
    end
  end
  object plInvEntradasSalidas: TppDBPipeline
    DataSource = dsInvEntradasSalidas
    UserName = 'plInvEntradasSalidas'
    Left = 576
    Top = 364
    object plInvEntradasSalidasppField1: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plInvEntradasSalidasppField2: TppField
      FieldAlias = 'Desde'
      FieldName = 'Desde'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object plInvEntradasSalidasppField3: TppField
      FieldAlias = 'Hasta'
      FieldName = 'Hasta'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object plInvEntradasSalidasppField4: TppField
      FieldAlias = 'idProMov'
      FieldName = 'idProMov'
      FieldLength = 38
      DisplayWidth = 38
      Position = 3
    end
    object plInvEntradasSalidasppField5: TppField
      FieldAlias = 'ProMov'
      FieldName = 'ProMov'
      FieldLength = 16
      DisplayWidth = 16
      Position = 4
    end
    object plInvEntradasSalidasppField6: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 5
    end
    object plInvEntradasSalidasppField7: TppField
      FieldAlias = 'EntregadoPor'
      FieldName = 'EntregadoPor'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
    object plInvEntradasSalidasppField8: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object plInvEntradasSalidasppField9: TppField
      FieldAlias = 'Concepto'
      FieldName = 'Concepto'
      FieldLength = 100
      DisplayWidth = 100
      Position = 8
    end
    object plInvEntradasSalidasppField10: TppField
      FieldAlias = 'idProMovDet'
      FieldName = 'idProMovDet'
      FieldLength = 38
      DisplayWidth = 38
      Position = 9
    end
    object plInvEntradasSalidasppField11: TppField
      FieldAlias = 'ProMovDet'
      FieldName = 'ProMovDet'
      FieldLength = 60
      DisplayWidth = 60
      Position = 10
    end
    object plInvEntradasSalidasppField12: TppField
      FieldAlias = 'idProducto'
      FieldName = 'idProducto'
      FieldLength = 25
      DisplayWidth = 25
      Position = 11
    end
    object plInvEntradasSalidasppField13: TppField
      FieldAlias = 'Producto'
      FieldName = 'Producto'
      FieldLength = 120
      DisplayWidth = 120
      Position = 12
    end
    object plInvEntradasSalidasppField14: TppField
      FieldAlias = 'ReferenciaDet'
      FieldName = 'ReferenciaDet'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object plInvEntradasSalidasppField15: TppField
      FieldAlias = 'CC'
      FieldName = 'CC'
      FieldLength = 25
      DisplayWidth = 25
      Position = 14
    end
    object plInvEntradasSalidasppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cantidad'
      FieldName = 'Cantidad'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 17
      Position = 15
    end
    object plInvEntradasSalidasppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'Costo'
      FieldName = 'Costo'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 16
    end
    object plInvEntradasSalidasppField18: TppField
      FieldAlias = 'idalmacen'
      FieldName = 'idalmacen'
      FieldLength = 16
      DisplayWidth = 16
      Position = 17
    end
  end
  object DespChofer: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'RPTDespachosPorChofer;1'
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
        Name = '@desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 742
    Top = 6
    object DespChoferDesde: TDateTimeField
      FieldName = 'Desde'
      ReadOnly = True
    end
    object DespChoferHasta: TDateTimeField
      FieldName = 'Hasta'
      ReadOnly = True
    end
    object DespChoferidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object DespChoferEmpleado: TStringField
      FieldName = 'Empleado'
      Size = 40
    end
    object DespChoferidPlanta: TStringField
      FieldName = 'idPlanta'
      Size = 16
    end
    object DespChoferfecha: TDateTimeField
      FieldName = 'fecha'
    end
    object DespChoferCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object DespChoferidClienteObra: TStringField
      FieldName = 'idClienteObra'
      Size = 25
    end
    object DespChoferClase: TBCDField
      FieldName = 'Clase'
      Precision = 9
      Size = 2
    end
    object DespChoferComision: TFloatField
      FieldName = 'Comision'
    end
    object DespChoferhora: TDateTimeField
      FieldName = 'hora'
    end
  end
  object dsDespChofer: TDataSource
    DataSet = DespChofer
    Left = 742
    Top = 54
  end
  object RptDespChofer: TppReport
    AutoStop = False
    DataPipeline = plDespChofer
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 8890
    PrinterSetup.mmMarginLeft = 8890
    PrinterSetup.mmMarginRight = 8890
    PrinterSetup.mmMarginTop = 8890
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
    Left = 742
    Top = 150
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plDespChofer'
    object ppTitleBand13: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand13: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand13: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText149: TppDBText
        UserName = 'DBText149'
        HyperlinkEnabled = False
        DataField = 'Cliente'
        DataPipeline = plDespChofer
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plDespChofer'
        mmHeight = 3969
        mmLeft = 65088
        mmTop = 0
        mmWidth = 47625
        BandType = 4
      end
      object ppDBText150: TppDBText
        UserName = 'DBText150'
        HyperlinkEnabled = False
        DataField = 'idClienteObra'
        DataPipeline = plDespChofer
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDespChofer'
        mmHeight = 3969
        mmLeft = 114036
        mmTop = 0
        mmWidth = 38365
        BandType = 4
      end
      object ppDBText151: TppDBText
        UserName = 'DBText151'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Comision'
        DataPipeline = plDespChofer
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDespChofer'
        mmHeight = 3969
        mmLeft = 166952
        mmTop = 0
        mmWidth = 26458
        BandType = 4
      end
      object ppDBText148: TppDBText
        UserName = 'DBText148'
        HyperlinkEnabled = False
        DataField = 'fecha'
        DataPipeline = plDespChofer
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDespChofer'
        mmHeight = 3969
        mmLeft = 22490
        mmTop = 0
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText152: TppDBText
        UserName = 'DBText152'
        HyperlinkEnabled = False
        DataField = 'Clase'
        DataPipeline = plDespChofer
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDespChofer'
        mmHeight = 3969
        mmLeft = 153988
        mmTop = 0
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText153: TppDBText
        UserName = 'DBText153'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'hora'
        DataPipeline = plDespChofer
        DisplayFormat = 'hh:mm am/pm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDespChofer'
        mmHeight = 3969
        mmLeft = 44715
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
    end
    object ppFooterBand13: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine55: TppLine
        UserName = 'Line55'
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 194205
        BandType = 8
      end
      object ppSystemVariable25: TppSystemVariable
        UserName = 'SystemVariable25'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 58738
        BandType = 8
      end
      object ppSystemVariable26: TppSystemVariable
        UserName = 'SystemVariable26'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 176477
        mmTop = 1323
        mmWidth = 17992
        BandType = 8
      end
    end
    object ppGroup11: TppGroup
      BreakName = 'idEmpleado'
      DataPipeline = plDespChofer
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group11'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plDespChofer'
      NewFile = False
      object ppGroupHeaderBand11: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppDBText146: TppDBText
          UserName = 'DBText146'
          HyperlinkEnabled = False
          DataField = 'Empleado'
          DataPipeline = plDespChofer
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plDespChofer'
          mmHeight = 4498
          mmLeft = 20373
          mmTop = 0
          mmWidth = 83079
          BandType = 3
          GroupNo = 0
        end
        object ppLabel158: TppLabel
          UserName = 'Label158'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Empleado :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 11
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4498
          mmLeft = 0
          mmTop = 0
          mmWidth = 19315
          BandType = 3
          GroupNo = 0
        end
        object ppLine53: TppLine
          UserName = 'Line53'
          Pen.Color = clNavy
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 4233
          mmWidth = 194205
          BandType = 3
          GroupNo = 0
        end
        object ppDBText145: TppDBText
          UserName = 'DBText145'
          HyperlinkEnabled = False
          DataField = 'idEmpleado'
          DataPipeline = plDespChofer
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plDespChofer'
          mmHeight = 4498
          mmLeft = 104246
          mmTop = 0
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
        end
        object ppLabel156: TppLabel
          UserName = 'Label156'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Periodo :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 133879
          mmTop = 0
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
        end
        object ppDBText143: TppDBText
          UserName = 'DBText143'
          HyperlinkEnabled = False
          DataField = 'Desde'
          DataPipeline = plDespChofer
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plDespChofer'
          mmHeight = 4498
          mmLeft = 150813
          mmTop = 0
          mmWidth = 20108
          BandType = 3
          GroupNo = 0
        end
        object ppDBText144: TppDBText
          UserName = 'DBText144'
          HyperlinkEnabled = False
          DataField = 'Desde'
          DataPipeline = plDespChofer
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plDespChofer'
          mmHeight = 4498
          mmLeft = 173567
          mmTop = 265
          mmWidth = 20108
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand11: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 9260
        mmPrintPosition = 0
        object ppDBCalc35: TppDBCalc
          UserName = 'DBCalc35'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Comision'
          DataPipeline = plDespChofer
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 11
          Font.Style = [fsBold]
          ResetGroup = ppGroup11
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plDespChofer'
          mmHeight = 4939
          mmLeft = 166952
          mmTop = 1058
          mmWidth = 26458
          BandType = 5
          GroupNo = 0
        end
        object ppLine54: TppLine
          UserName = 'Line54'
          Pen.Color = clNavy
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 0
          mmWidth = 194205
          BandType = 5
          GroupNo = 0
        end
        object ppLabel160: TppLabel
          UserName = 'Label160'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total Comision :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4498
          mmLeft = 105834
          mmTop = 1058
          mmWidth = 60854
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup12: TppGroup
      BreakName = 'idPlanta'
      DataPipeline = plDespChofer
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group12'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plDespChofer'
      NewFile = False
      object ppGroupHeaderBand12: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppLabel159: TppLabel
          UserName = 'Label159'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Planta :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4498
          mmLeft = 9525
          mmTop = 0
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object ppDBText147: TppDBText
          UserName = 'DBText147'
          HyperlinkEnabled = False
          DataField = 'idPlanta'
          DataPipeline = plDespChofer
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plDespChofer'
          mmHeight = 4498
          mmLeft = 24342
          mmTop = 0
          mmWidth = 91281
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand12: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList12: TppParameterList
    end
  end
  object plDespChofer: TppDBPipeline
    DataSource = dsDespChofer
    UserName = 'plDespChofer'
    Left = 742
    Top = 102
    object plDespChoferppField1: TppField
      FieldAlias = 'Desde'
      FieldName = 'Desde'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 0
      Position = 0
    end
    object plDespChoferppField2: TppField
      FieldAlias = 'Hasta'
      FieldName = 'Hasta'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object plDespChoferppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'idEmpleado'
      FieldName = 'idEmpleado'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object plDespChoferppField4: TppField
      FieldAlias = 'Empleado'
      FieldName = 'Empleado'
      FieldLength = 40
      DisplayWidth = 40
      Position = 3
    end
    object plDespChoferppField5: TppField
      FieldAlias = 'idPlanta'
      FieldName = 'idPlanta'
      FieldLength = 16
      DisplayWidth = 16
      Position = 4
    end
    object plDespChoferppField6: TppField
      FieldAlias = 'fecha'
      FieldName = 'fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 5
    end
    object plDespChoferppField7: TppField
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
    object plDespChoferppField8: TppField
      FieldAlias = 'idClienteObra'
      FieldName = 'idClienteObra'
      FieldLength = 25
      DisplayWidth = 25
      Position = 7
    end
    object plDespChoferppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Clase'
      FieldName = 'Clase'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object plDespChoferppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Comision'
      FieldName = 'Comision'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object plDespChoferppField11: TppField
      FieldAlias = 'hora'
      FieldName = 'hora'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 10
    end
  end
  object RPTRcCobrador: TppReport
    AutoStop = False
    DataPipeline = plReciboList
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 12700
    PrinterSetup.mmMarginLeft = 12700
    PrinterSetup.mmMarginRight = 12700
    PrinterSetup.mmMarginTop = 12700
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
    OutlineSettings.CreatePageNodes = False
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
    Left = 94
    Top = 206
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plReciboList'
    object ppTitleBand14: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 18785
      mmPrintPosition = 0
      object ppLabel157: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Listado de Recibos de Ingresos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7408
        mmLeft = 0
        mmTop = 10848
        mmWidth = 120386
        BandType = 1
      end
      object ppSystemVariable27: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 195527
        mmTop = 13229
        mmWidth = 57150
        BandType = 1
      end
      object ppDBText176: TppDBText
        UserName = 'DBText176'
        HyperlinkEnabled = False
        DataField = 'compania'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 20
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 8297
        mmLeft = 1058
        mmTop = 529
        mmWidth = 186002
        BandType = 1
      end
    end
    object ppHeaderBand14: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine48: TppLine
        UserName = 'Line1'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 6350
        mmWidth = 253471
        BandType = 0
      end
      object ppLabel161: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Recibo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel162: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 21696
        mmTop = 1323
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel163: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 41010
        mmTop = 1323
        mmWidth = 44715
        BandType = 0
      end
      object ppLabel164: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'CxC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 87313
        mmTop = 1323
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel165: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Canc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 95250
        mmTop = 1323
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel166: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Refer.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 105304
        mmTop = 1323
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel167: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Forma Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 121179
        mmTop = 1323
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel168: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Concepto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 139171
        mmTop = 1323
        mmWidth = 37571
        BandType = 0
      end
      object ppLabel169: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total Gral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 177271
        mmTop = 1323
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel170: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Usuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 242094
        mmTop = 1323
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel171: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total CxC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 198438
        mmTop = 1323
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel172: TppLabel
        UserName = 'Label14'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total Otros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 220663
        mmTop = 1323
        mmWidth = 20638
        BandType = 0
      end
    end
    object ppDetailBand14: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText155: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Recibo'
        DataPipeline = plReciboList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3344
        mmLeft = 1323
        mmTop = 529
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText156: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plReciboList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3344
        mmLeft = 21696
        mmTop = 529
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText157: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Cliente'
        DataPipeline = plReciboList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3344
        mmLeft = 41010
        mmTop = 529
        mmWidth = 44715
        BandType = 4
      end
      object ppDBText158: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = plReciboList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3344
        mmLeft = 105569
        mmTop = 529
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText159: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'idPagoForma'
        DataPipeline = plReciboList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3344
        mmLeft = 121444
        mmTop = 529
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText160: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Valor'
        DataPipeline = plReciboList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3440
        mmLeft = 177536
        mmTop = 529
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText161: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'Usuario'
        DataPipeline = plReciboList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3440
        mmLeft = 242094
        mmTop = 529
        mmWidth = 11642
        BandType = 4
      end
      object myDBCheckBox5: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = plReciboList
        DataField = 'esCxc'
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 4233
        mmLeft = 88636
        mmTop = 265
        mmWidth = 4498
        BandType = 4
      end
      object myDBCheckBox7: TmyDBCheckBox
        UserName = 'DBCheckBox2'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = plReciboList
        DataField = 'Cancelado'
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 4233
        mmLeft = 97896
        mmTop = 265
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText162: TppDBText
        UserName = 'DBText101'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Cobros'
        DataPipeline = plReciboList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3440
        mmLeft = 198702
        mmTop = 529
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText163: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'OtrosIng'
        DataPipeline = plReciboList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3440
        mmLeft = 220928
        mmTop = 529
        mmWidth = 20638
        BandType = 4
      end
      object ppDBMemo3: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Concepto'
        DataPipeline = plReciboList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3440
        mmLeft = 139436
        mmTop = 529
        mmWidth = 37571
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppFooterBand14: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine56: TppLine
        UserName = 'Line2'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 252148
        BandType = 8
      end
      object ppSystemVariable28: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 170127
        mmTop = 1323
        mmWidth = 82021
        BandType = 8
      end
    end
    object ppSummaryBand6: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppDBCalc36: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Valor'
        DataPipeline = plReciboList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3440
        mmLeft = 177271
        mmTop = 1852
        mmWidth = 20902
        BandType = 7
      end
      object ppLabel173: TppLabel
        UserName = 'Label15'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Totales :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 153988
        mmTop = 1588
        mmWidth = 19844
        BandType = 7
      end
      object ppDBCalc37: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Cobros'
        DataPipeline = plReciboList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3440
        mmLeft = 198438
        mmTop = 1852
        mmWidth = 21960
        BandType = 7
      end
      object ppDBCalc38: TppDBCalc
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'OtrosIng'
        DataPipeline = plReciboList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3440
        mmLeft = 221192
        mmTop = 1852
        mmWidth = 20108
        BandType = 7
      end
      object ppLine57: TppLine
        UserName = 'Line3'
        Weight = 1.000000000000000000
        mmHeight = 1852
        mmLeft = 1058
        mmTop = 529
        mmWidth = 252148
        BandType = 7
      end
    end
    object ppGroup13: TppGroup
      BreakName = 'idEmpleado'
      DataPipeline = plReciboList
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group13'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReciboList'
      NewFile = False
      object ppGroupHeaderBand13: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 10319
        mmPrintPosition = 0
        object ppLabel174: TppLabel
          UserName = 'Label174'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Cobrador :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5821
          mmLeft = 0
          mmTop = 1852
          mmWidth = 26988
          BandType = 3
          GroupNo = 0
        end
        object ppDBText164: TppDBText
          UserName = 'DBText164'
          HyperlinkEnabled = False
          DataField = 'empleado'
          DataPipeline = plReciboList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 14
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 5821
          mmLeft = 28575
          mmTop = 1852
          mmWidth = 183886
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand13: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object ppDBCalc39: TppDBCalc
          UserName = 'DBCalc39'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Valor'
          DataPipeline = plReciboList
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup13
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 3440
          mmLeft = 177800
          mmTop = 794
          mmWidth = 20902
          BandType = 5
          GroupNo = 0
        end
        object ppLabel175: TppLabel
          UserName = 'Label175'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Totales por Cobrador:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 105040
          mmTop = 265
          mmWidth = 69321
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc40: TppDBCalc
          UserName = 'DBCalc40'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Cobros'
          DataPipeline = plReciboList
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup13
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 3440
          mmLeft = 198967
          mmTop = 794
          mmWidth = 21960
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc41: TppDBCalc
          UserName = 'DBCalc41'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'OtrosIng'
          DataPipeline = plReciboList
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup13
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 3440
          mmLeft = 221721
          mmTop = 794
          mmWidth = 20108
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList13: TppParameterList
    end
  end
  object plReciboList: TppDBPipeline
    DataSource = dsReciboList
    UserName = 'plReciboList'
    Left = 150
    Top = 102
    object plReciboListppField1: TppField
      FieldAlias = 'idRecibo'
      FieldName = 'idRecibo'
      FieldLength = 38
      DataType = dtGUID
      DisplayWidth = 38
      Position = 0
    end
    object plReciboListppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'idCliente'
      FieldName = 'idCliente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object plReciboListppField3: TppField
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object plReciboListppField4: TppField
      FieldAlias = 'esCxc'
      FieldName = 'esCxc'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 3
    end
    object plReciboListppField5: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 4
    end
    object plReciboListppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'idEmpleado'
      FieldName = 'idEmpleado'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object plReciboListppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object plReciboListppField8: TppField
      FieldAlias = 'Cancelado'
      FieldName = 'Cancelado'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 7
    end
    object plReciboListppField9: TppField
      FieldAlias = 'Concepto'
      FieldName = 'Concepto'
      FieldLength = 150
      DisplayWidth = 150
      Position = 8
    end
    object plReciboListppField10: TppField
      FieldAlias = 'Usuario'
      FieldName = 'Usuario'
      FieldLength = 30
      DisplayWidth = 30
      Position = 9
    end
    object plReciboListppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor'
      FieldName = 'Valor'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 10
    end
    object plReciboListppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cobros'
      FieldName = 'Cobros'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 11
    end
    object plReciboListppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'OtrosIng'
      FieldName = 'OtrosIng'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 12
    end
    object plReciboListppField14: TppField
      FieldAlias = 'Recibo'
      FieldName = 'Recibo'
      FieldLength = 16
      DisplayWidth = 16
      Position = 13
    end
    object plReciboListppField15: TppField
      FieldAlias = 'empleado'
      FieldName = 'empleado'
      FieldLength = 40
      DisplayWidth = 40
      Position = 14
    end
    object plReciboListppField16: TppField
      FieldAlias = 'idPagoForma'
      FieldName = 'idPagoForma'
      FieldLength = 16
      DisplayWidth = 16
      Position = 15
    end
    object plReciboListppField17: TppField
      FieldAlias = 'Compania'
      FieldName = 'Compania'
      FieldLength = 50
      DisplayWidth = 50
      Position = 16
    end
    object plReciboListppField18: TppField
      FieldAlias = 'NumeroChk'
      FieldName = 'NumeroChk'
      FieldLength = 16
      DisplayWidth = 16
      Position = 17
    end
    object plReciboListppField19: TppField
      FieldAlias = 'Banco'
      FieldName = 'Banco'
      FieldLength = 100
      DisplayWidth = 100
      Position = 18
    end
    object plReciboListppField20: TppField
      FieldAlias = 'Moneda'
      FieldName = 'Moneda'
      FieldLength = 20
      DisplayWidth = 20
      Position = 19
    end
    object plReciboListppField21: TppField
      FieldAlias = 'idSucursal'
      FieldName = 'idSucursal'
      FieldLength = 16
      DisplayWidth = 16
      Position = 20
    end
  end
  object RPTRcPagoForma: TppReport
    AutoStop = False
    DataPipeline = plReciboList
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 12700
    PrinterSetup.mmMarginLeft = 12700
    PrinterSetup.mmMarginRight = 12700
    PrinterSetup.mmMarginTop = 12700
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
    OutlineSettings.CreatePageNodes = False
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
    Left = 198
    Top = 206
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plReciboList'
    object ppTitleBand15: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 18785
      mmPrintPosition = 0
      object ppLabel176: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Listado de Recibos de Ingresos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7408
        mmLeft = 1058
        mmTop = 10583
        mmWidth = 120386
        BandType = 1
      end
      object ppSystemVariable29: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 195527
        mmTop = 11113
        mmWidth = 57150
        BandType = 1
      end
      object ppDBText178: TppDBText
        UserName = 'DBText178'
        HyperlinkEnabled = False
        DataField = 'compania'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 20
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 8297
        mmLeft = 1058
        mmTop = 529
        mmWidth = 186002
        BandType = 1
      end
    end
    object ppHeaderBand15: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine58: TppLine
        UserName = 'Line1'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 6350
        mmWidth = 253471
        BandType = 0
      end
      object ppLabel177: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Recibo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel178: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 21696
        mmTop = 1323
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel179: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 41010
        mmTop = 1323
        mmWidth = 39423
        BandType = 0
      end
      object ppLabel180: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'CxC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 81756
        mmTop = 1323
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel181: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Canc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 89694
        mmTop = 1323
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel182: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Refer.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 99219
        mmTop = 1323
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel183: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cobrador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 126207
        mmTop = 1323
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel184: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Concepto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 144198
        mmTop = 1323
        mmWidth = 37571
        BandType = 0
      end
      object ppLabel185: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total Gral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 182563
        mmTop = 1323
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel186: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Usuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 242094
        mmTop = 1323
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel187: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total CxC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 202936
        mmTop = 1323
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel188: TppLabel
        UserName = 'Label14'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total Otros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 222780
        mmTop = 1323
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '# Chk'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 115359
        mmTop = 1323
        mmWidth = 10054
        BandType = 0
      end
    end
    object ppDetailBand15: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText165: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Recibo'
        DataPipeline = plReciboList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3344
        mmLeft = 1323
        mmTop = 529
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText166: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plReciboList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3344
        mmLeft = 21696
        mmTop = 529
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText167: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Cliente'
        DataPipeline = plReciboList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3344
        mmLeft = 41010
        mmTop = 529
        mmWidth = 38894
        BandType = 4
      end
      object ppDBText168: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = plReciboList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3344
        mmLeft = 99748
        mmTop = 529
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText169: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'empleado'
        DataPipeline = plReciboList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3344
        mmLeft = 126471
        mmTop = 529
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText170: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Valor'
        DataPipeline = plReciboList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3440
        mmLeft = 182563
        mmTop = 529
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText171: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'Usuario'
        DataPipeline = plReciboList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3440
        mmLeft = 242094
        mmTop = 529
        mmWidth = 11642
        BandType = 4
      end
      object myDBCheckBox8: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = plReciboList
        DataField = 'esCxc'
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 4233
        mmLeft = 83344
        mmTop = 265
        mmWidth = 4498
        BandType = 4
      end
      object myDBCheckBox9: TmyDBCheckBox
        UserName = 'DBCheckBox2'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = plReciboList
        DataField = 'Cancelado'
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 4233
        mmLeft = 92604
        mmTop = 265
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText172: TppDBText
        UserName = 'DBText101'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Cobros'
        DataPipeline = plReciboList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3440
        mmLeft = 202671
        mmTop = 529
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText173: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'OtrosIng'
        DataPipeline = plReciboList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3440
        mmLeft = 223044
        mmTop = 529
        mmWidth = 17992
        BandType = 4
      end
      object ppDBMemo4: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Concepto'
        DataPipeline = plReciboList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3440
        mmLeft = 144463
        mmTop = 529
        mmWidth = 37571
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'NumeroChk'
        DataPipeline = plReciboList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3440
        mmLeft = 115888
        mmTop = 529
        mmWidth = 9790
        BandType = 4
      end
    end
    object ppFooterBand15: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine59: TppLine
        UserName = 'Line2'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 252148
        BandType = 8
      end
      object ppSystemVariable30: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 170127
        mmTop = 1323
        mmWidth = 82021
        BandType = 8
      end
    end
    object ppSummaryBand7: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppDBCalc42: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Valor'
        DataPipeline = plReciboList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3440
        mmLeft = 181240
        mmTop = 1852
        mmWidth = 20902
        BandType = 7
      end
      object ppLabel189: TppLabel
        UserName = 'Label15'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Totales :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 153988
        mmTop = 1588
        mmWidth = 19844
        BandType = 7
      end
      object ppDBCalc43: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Cobros'
        DataPipeline = plReciboList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3440
        mmLeft = 202671
        mmTop = 1852
        mmWidth = 20108
        BandType = 7
      end
      object ppDBCalc44: TppDBCalc
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'OtrosIng'
        DataPipeline = plReciboList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3440
        mmLeft = 223309
        mmTop = 1852
        mmWidth = 20108
        BandType = 7
      end
      object ppLine60: TppLine
        UserName = 'Line3'
        Weight = 1.000000000000000000
        mmHeight = 1852
        mmLeft = 1058
        mmTop = 529
        mmWidth = 252148
        BandType = 7
      end
    end
    object ppGroup17: TppGroup
      BreakName = 'Moneda'
      DataPipeline = plReciboList
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group17'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReciboList'
      NewFile = False
      object ppGroupHeaderBand17: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6879
        mmPrintPosition = 0
        object ppShape9: TppShape
          UserName = 'Shape9'
          Brush.Color = clInfoBk
          Pen.Style = psClear
          mmHeight = 6350
          mmLeft = 0
          mmTop = 265
          mmWidth = 252678
          BandType = 3
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label16'
          HyperlinkEnabled = False
          Caption = 'Moneda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 11
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4678
          mmLeft = 1852
          mmTop = 1058
          mmWidth = 16785
          BandType = 3
          GroupNo = 0
        end
        object ppDBText3: TppDBText
          UserName = 'DBText9'
          HyperlinkEnabled = False
          DataField = 'Moneda'
          DataPipeline = plReciboList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 4763
          mmLeft = 20902
          mmTop = 1058
          mmWidth = 29104
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand17: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppLabel3: TppLabel
          UserName = 'Label17'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Totales por Moneda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 104775
          mmTop = 1058
          mmWidth = 69321
          BandType = 5
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line4'
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 794
          mmTop = 529
          mmWidth = 251884
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc21: TppDBCalc
          UserName = 'DBCalc6'
          HyperlinkEnabled = False
          DataField = 'Valor'
          DataPipeline = plReciboList
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup17
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 3440
          mmLeft = 178330
          mmTop = 1323
          mmWidth = 23548
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc22: TppDBCalc
          UserName = 'DBCalc22'
          HyperlinkEnabled = False
          DataField = 'Cobros'
          DataPipeline = plReciboList
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup17
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 3440
          mmLeft = 202142
          mmTop = 1323
          mmWidth = 20108
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc23: TppDBCalc
          UserName = 'DBCalc23'
          HyperlinkEnabled = False
          DataField = 'OtrosIng'
          DataPipeline = plReciboList
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup17
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 3440
          mmLeft = 222780
          mmTop = 1323
          mmWidth = 20638
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup14: TppGroup
      BreakName = 'idPagoForma'
      DataPipeline = plReciboList
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group13'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReciboList'
      NewFile = False
      object ppGroupHeaderBand14: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppLabel190: TppLabel
          UserName = 'Label174'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Forma de Pago:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5821
          mmLeft = 0
          mmTop = 264
          mmWidth = 41010
          BandType = 3
          GroupNo = 0
        end
        object ppDBText174: TppDBText
          UserName = 'DBText164'
          HyperlinkEnabled = False
          DataField = 'idPagoForma'
          DataPipeline = plReciboList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 14
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 5821
          mmLeft = 41275
          mmTop = 264
          mmWidth = 171186
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand14: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object ppDBCalc45: TppDBCalc
          UserName = 'DBCalc39'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Valor'
          DataPipeline = plReciboList
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup14
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 3440
          mmLeft = 180975
          mmTop = 794
          mmWidth = 20902
          BandType = 5
          GroupNo = 0
        end
        object ppLabel191: TppLabel
          UserName = 'Label175'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Totales por Forma de Pago:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 105040
          mmTop = 265
          mmWidth = 69321
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc46: TppDBCalc
          UserName = 'DBCalc40'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Cobros'
          DataPipeline = plReciboList
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup14
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 3440
          mmLeft = 202407
          mmTop = 794
          mmWidth = 20108
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc47: TppDBCalc
          UserName = 'DBCalc41'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'OtrosIng'
          DataPipeline = plReciboList
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup14
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 3440
          mmLeft = 223044
          mmTop = 794
          mmWidth = 20108
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup15: TppGroup
      BreakName = 'Banco'
      DataPipeline = plReciboList
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group15'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReciboList'
      NewFile = False
      object ppGroupHeaderBand15: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          UserName = 'DBText4'
          HyperlinkEnabled = False
          DataField = 'Banco'
          DataPipeline = plReciboList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 4233
          mmLeft = 16669
          mmTop = 0
          mmWidth = 96309
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand15: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList14: TppParameterList
    end
  end
  object rsCobrosPorProducto: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'svPagosPorProducto;1'
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
        Name = '@desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 680
    Top = 308
    object rsCobrosPorProductofactura: TStringField
      FieldName = 'factura'
    end
    object rsCobrosPorProductofecha: TDateTimeField
      FieldName = 'fecha'
    end
    object rsCobrosPorProductoidProducto: TStringField
      FieldName = 'idProducto'
      Size = 30
    end
    object rsCobrosPorProductoLineTotalBruto: TBCDField
      FieldName = 'LineTotalBruto'
      Precision = 19
      Size = 2
    end
    object rsCobrosPorProductoTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
      Size = 2
    end
    object rsCobrosPorProductoPagado: TBCDField
      FieldName = 'Pagado'
      Precision = 19
      Size = 2
    end
    object rsCobrosPorProductoPagadoProducto: TBCDField
      FieldName = 'PagadoProducto'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object rsCobrosPorProductoProducto: TStringField
      FieldName = 'Producto'
      Size = 100
    end
    object rsCobrosPorProductoCliente: TStringField
      FieldName = 'Cliente'
      Size = 100
    end
    object rsCobrosPorProductoTotalDia: TBCDField
      FieldName = 'TotalDia'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object rsCobrosPorProductoTotalGeneral: TBCDField
      FieldName = 'TotalGeneral'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
  end
  object dsCobrosPorProd: TDataSource
    DataSet = rsCobrosPorProducto
    Left = 682
    Top = 366
  end
  object plCobrosPorProd: TppDBPipeline
    DataSource = dsCobrosPorProd
    UserName = 'plInvEntradasSalidas1'
    Left = 682
    Top = 424
  end
  object RPTCobrosXProd: TppReport
    AutoStop = False
    DataPipeline = plCobrosPorProd
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 12700
    PrinterSetup.mmMarginLeft = 12700
    PrinterSetup.mmMarginRight = 12700
    PrinterSetup.mmMarginTop = 12700
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
    OutlineSettings.CreatePageNodes = False
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
    Left = 824
    Top = 148
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plCobrosPorProd'
    object ppTitleBand16: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 17727
      mmPrintPosition = 0
      object ppLabel195: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'COBROS POR TIPO DE CARGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7451
        mmLeft = 794
        mmTop = 10277
        mmWidth = 120386
        BandType = 1
      end
      object ppSystemVariable31: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 196321
        mmTop = 12700
        mmWidth = 57150
        BandType = 1
      end
      object ppDBText186: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'compania'
        DataPipeline = plCobrosPorProd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 20
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plCobrosPorProd'
        mmHeight = 8297
        mmLeft = 1058
        mmTop = 529
        mmWidth = 186002
        BandType = 1
      end
    end
    object ppHeaderBand16: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppLine63: TppLine
        UserName = 'Line1'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 5291
        mmWidth = 253471
        BandType = 0
      end
      object ppLabel196: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Factura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel197: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 21431
        mmTop = 1323
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel198: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 38894
        mmTop = 1323
        mmWidth = 60854
        BandType = 0
      end
      object ppLabel201: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cargo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 105304
        mmTop = 1323
        mmWidth = 62177
        BandType = 0
      end
      object ppLabel202: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total FT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 172509
        mmTop = 1323
        mmWidth = 24871
        BandType = 0
      end
      object ppLabel203: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Pagado FT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 200025
        mmTop = 1323
        mmWidth = 23548
        BandType = 0
      end
      object ppLabel204: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Pagado cargo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 225425
        mmTop = 1323
        mmWidth = 24077
        BandType = 0
      end
    end
    object ppDetailBand16: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText187: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Factura'
        DataPipeline = plCobrosPorProd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCobrosPorProd'
        mmHeight = 3387
        mmLeft = 1323
        mmTop = 529
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText188: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plCobrosPorProd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCobrosPorProd'
        mmHeight = 3387
        mmLeft = 21431
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText189: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Cliente'
        DataPipeline = plCobrosPorProd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCobrosPorProd'
        mmHeight = 3387
        mmLeft = 38894
        mmTop = 529
        mmWidth = 60854
        BandType = 4
      end
      object ppDBText190: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Producto'
        DataPipeline = plCobrosPorProd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCobrosPorProd'
        mmHeight = 3387
        mmLeft = 104775
        mmTop = 529
        mmWidth = 64029
        BandType = 4
      end
      object ppDBText191: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plCobrosPorProd
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCobrosPorProd'
        mmHeight = 3387
        mmLeft = 172509
        mmTop = 529
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText192: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'Pagado'
        DataPipeline = plCobrosPorProd
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCobrosPorProd'
        mmHeight = 3387
        mmLeft = 200025
        mmTop = 529
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText193: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'PagadoProducto'
        DataPipeline = plCobrosPorProd
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCobrosPorProd'
        mmHeight = 3387
        mmLeft = 225425
        mmTop = 529
        mmWidth = 24077
        BandType = 4
      end
    end
    object ppFooterBand16: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine64: TppLine
        UserName = 'Line2'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 5821
        mmWidth = 252148
        BandType = 8
      end
      object ppSystemVariable32: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 232392
        mmTop = 1323
        mmWidth = 19756
        BandType = 8
      end
    end
    object ppSummaryBand8: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppLabel210: TppLabel
        UserName = 'Label15'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total General :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 76465
        mmTop = 1588
        mmWidth = 41010
        BandType = 7
      end
      object ppLine65: TppLine
        UserName = 'Line3'
        Weight = 1.000000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 0
        mmWidth = 252148
        BandType = 7
      end
      object ppDBCalc55: TppDBCalc
        UserName = 'DBCalc21'
        HyperlinkEnabled = False
        DataField = 'PagadoProducto'
        DataPipeline = plCobrosPorProd
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCobrosPorProd'
        mmHeight = 3387
        mmLeft = 225955
        mmTop = 1588
        mmWidth = 23548
        BandType = 7
      end
      object ppDBText195: TppDBText
        UserName = 'DBText195'
        HyperlinkEnabled = False
        DataField = 'TotalGeneral'
        DataPipeline = plCobrosPorProd
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCobrosPorProd'
        mmHeight = 3440
        mmLeft = 174361
        mmTop = 1588
        mmWidth = 24871
        BandType = 7
      end
    end
    object ppGroup16: TppGroup
      BreakName = 'Fecha'
      DataPipeline = plCobrosPorProd
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group15'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plCobrosPorProd'
      NewFile = False
      object ppGroupHeaderBand16: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 1852
        mmPrintPosition = 0
        object ppLine66: TppLine
          UserName = 'Line62'
          Pen.Color = clGray
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 0
          mmWidth = 252148
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand16: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7144
        mmPrintPosition = 0
        object ppDBText199: TppDBText
          UserName = 'DBText181'
          HyperlinkEnabled = False
          DataField = 'Fecha'
          DataPipeline = plCobrosPorProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plCobrosPorProd'
          mmHeight = 4233
          mmLeft = 37306
          mmTop = 1323
          mmWidth = 50271
          BandType = 5
          GroupNo = 0
        end
        object ppLabel211: TppLabel
          UserName = 'Label192'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total del D'#237'a :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3387
          mmLeft = 88371
          mmTop = 1323
          mmWidth = 28046
          BandType = 5
          GroupNo = 0
        end
        object ppLine67: TppLine
          UserName = 'Line61'
          Pen.Color = clGray
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 265
          mmWidth = 252148
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc61: TppDBCalc
          UserName = 'DBCalc51'
          HyperlinkEnabled = False
          DataField = 'PagadoProducto'
          DataPipeline = plCobrosPorProd
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup16
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plCobrosPorProd'
          mmHeight = 3387
          mmLeft = 226748
          mmTop = 1323
          mmWidth = 22754
          BandType = 5
          GroupNo = 0
        end
        object ppDBText194: TppDBText
          UserName = 'DBText194'
          HyperlinkEnabled = False
          DataField = 'TotalDia'
          DataPipeline = plCobrosPorProd
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plCobrosPorProd'
          mmHeight = 3440
          mmLeft = 172773
          mmTop = 1323
          mmWidth = 24871
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList15: TppParameterList
    end
  end
  object plConfig: TppDBPipeline
    DataSource = dsConfig
    UserName = 'plConfig'
    Left = 828
    Top = 22
    object plConfigppField1: TppField
      FieldAlias = 'Compania'
      FieldName = 'Compania'
      FieldLength = 50
      DisplayWidth = 50
      Position = 0
    end
    object plConfigppField2: TppField
      FieldAlias = 'Telefono'
      FieldName = 'Telefono'
      FieldLength = 15
      DisplayWidth = 15
      Position = 1
    end
    object plConfigppField3: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 15
      DisplayWidth = 15
      Position = 2
    end
    object plConfigppField4: TppField
      FieldAlias = 'RNC'
      FieldName = 'RNC'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object plConfigppField5: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 120
      DisplayWidth = 120
      Position = 4
    end
    object plConfigppField6: TppField
      FieldAlias = 'CompaniaCorto'
      FieldName = 'CompaniaCorto'
      FieldLength = 16
      DisplayWidth = 16
      Position = 5
    end
    object plConfigppField7: TppField
      FieldAlias = 'TituloApp'
      FieldName = 'TituloApp'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
    object plConfigppField8: TppField
      FieldAlias = 'UConfiguracion'
      FieldName = 'UConfiguracion'
      FieldLength = 38
      DataType = dtGUID
      DisplayWidth = 38
      Position = 7
    end
    object plConfigppField9: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 100
      DisplayWidth = 100
      Position = 8
    end
    object plConfigppField10: TppField
      FieldAlias = 'Logo'
      FieldName = 'Logo'
      FieldLength = 0
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 9
      Searchable = False
      Sortable = False
    end
    object plConfigppField11: TppField
      FieldAlias = 'Introduccion'
      FieldName = 'Introduccion'
      FieldLength = 0
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 10
      Searchable = False
      Sortable = False
    end
  end
  object dsConfig: TDataSource
    DataSet = dm.Configuracion
    Left = 828
    Top = 82
  end
  object rptCliente: TppReport
    AutoStop = False
    DataPipeline = plCliente
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
    Left = 759
    Top = 434
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plCliente'
    object ppHeaderBand17: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 29104
      mmPrintPosition = 0
      object ppShape7: TppShape
        UserName = 'Shape1'
        Brush.Color = clSilver
        mmHeight = 5821
        mmLeft = 0
        mmTop = 23283
        mmWidth = 266436
        BandType = 0
      end
      object ppDBText200: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Compania'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 1058
        mmWidth = 78581
        BandType = 0
      end
      object ppLabel199: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        Caption = 'REPORTE MAESTRO DE CLEINTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 103188
        mmTop = 12435
        mmWidth = 60061
        BandType = 0
      end
      object ppLabel200: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        Caption = 'CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3323
        mmLeft = 963
        mmTop = 24606
        mmWidth = 11388
        BandType = 0
      end
      object ppLabel205: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        Caption = 'NOMBRE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 14552
        mmTop = 24606
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel206: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        Caption = 'DIRECCION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 51065
        mmTop = 24606
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel207: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        Caption = 'CONTACTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 92869
        mmTop = 24606
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel208: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        Caption = 'CIUDAD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 137319
        mmTop = 24606
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel209: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        Caption = 'RNC / CEDULA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 167482
        mmTop = 24606
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel212: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        Caption = 'TELEFONO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 194205
        mmTop = 24606
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel213: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        Caption = 'FAX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 216430
        mmTop = 24606
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel214: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        Caption = 'EMAIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 237332
        mmTop = 24606
        mmWidth = 8731
        BandType = 0
      end
    end
    object ppDetailBand17: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText201: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'IdCliente'
        DataPipeline = plCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 2910
        mmLeft = 1323
        mmTop = 0
        mmWidth = 11377
        BandType = 4
      end
      object ppDBMemo5: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Cliente'
        DataPipeline = plCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 2910
        mmLeft = 14288
        mmTop = 0
        mmWidth = 35190
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBMemo6: TppDBMemo
        UserName = 'DBMemo2'
        CharWrap = False
        DataField = 'Direccion'
        DataPipeline = plCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 2910
        mmLeft = 50800
        mmTop = 0
        mmWidth = 40746
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBMemo7: TppDBMemo
        UserName = 'DBMemo3'
        CharWrap = False
        DataField = 'Contacto'
        DataPipeline = plCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 2910
        mmLeft = 93134
        mmTop = 0
        mmWidth = 40746
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText202: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Ciudad'
        DataPipeline = plCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 2910
        mmLeft = 137054
        mmTop = 0
        mmWidth = 27781
        BandType = 4
      end
      object ppDBText203: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Rnc_Cedula'
        DataPipeline = plCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 2910
        mmLeft = 167217
        mmTop = 0
        mmWidth = 25929
        BandType = 4
      end
      object ppDBText204: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Telefono'
        DataPipeline = plCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 2910
        mmLeft = 194205
        mmTop = 0
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText205: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Fax'
        DataPipeline = plCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 2910
        mmLeft = 216165
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object ppDBMemo8: TppDBMemo
        UserName = 'DBMemo4'
        CharWrap = False
        DataPipeline = plCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 3175
        mmLeft = 237067
        mmTop = 0
        mmWidth = 28575
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppSummaryBand9: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppShape8: TppShape
        UserName = 'Shape2'
        Brush.Color = clSilver
        mmHeight = 5821
        mmLeft = 0
        mmTop = 265
        mmWidth = 266436
        BandType = 7
      end
      object ppLabel215: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        Caption = 'TOTAL DE CLIENTES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 1323
        mmTop = 1852
        mmWidth = 25135
        BandType = 7
      end
      object ppDBCalc24: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        DataPipeline = plCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'plCliente'
        mmHeight = 2910
        mmLeft = 28310
        mmTop = 1852
        mmWidth = 17198
        BandType = 7
      end
    end
    object ppParameterList16: TppParameterList
    end
  end
  object plCliente: TppDBPipeline
    DataSource = DS
    UserName = 'plCliente'
    Left = 760
    Top = 374
    object plClienteppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'IdCliente'
      FieldName = 'IdCliente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object plClienteppField2: TppField
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object plClienteppField3: TppField
      FieldAlias = 'Contacto'
      FieldName = 'Contacto'
      FieldLength = 40
      DisplayWidth = 40
      Position = 2
    end
    object plClienteppField4: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 120
      DisplayWidth = 120
      Position = 3
    end
    object plClienteppField5: TppField
      FieldAlias = 'Ciudad'
      FieldName = 'Ciudad'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object plClienteppField6: TppField
      FieldAlias = 'Telefono'
      FieldName = 'Telefono'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object plClienteppField7: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object plClienteppField8: TppField
      FieldAlias = 'Rnc_Cedula'
      FieldName = 'Rnc_Cedula'
      FieldLength = 80
      DisplayWidth = 80
      Position = 7
    end
  end
  object spClienteRpt: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    ProcedureName = 'ClienteRpt;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Activo'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 758
    Top = 254
    object spClienteRptIdCliente: TIntegerField
      FieldName = 'IdCliente'
    end
    object spClienteRptCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object spClienteRptContacto: TStringField
      FieldName = 'Contacto'
      Size = 40
    end
    object spClienteRptDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object spClienteRptCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object spClienteRptTelefono: TStringField
      FieldName = 'Telefono'
    end
    object spClienteRptFax: TStringField
      FieldName = 'Fax'
    end
    object spClienteRptRnc_Cedula: TStringField
      FieldName = 'Rnc_Cedula'
      Size = 80
    end
  end
  object DS: TwwDataSource
    AutoEdit = False
    DataSet = spClienteRpt
    Left = 759
    Top = 311
  end
  object ClienteBalMoneda: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'svClienteBalanceRpt;1'
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
        Name = '@FechaAl'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 852
    Top = 250
    object ClienteBalMonedaIdCliente: TIntegerField
      FieldName = 'IdCliente'
    end
    object ClienteBalMonedaCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object ClienteBalMonedaMoneda: TStringField
      FieldName = 'Moneda'
    end
    object ClienteBalMonedaBalance: TBCDField
      FieldName = 'Balance'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
  end
  object dsClienteBal: TDataSource
    DataSet = ClienteBalMoneda
    Left = 853
    Top = 298
  end
  object plClienteBalMoneda: TppDBPipeline
    DataSource = dsClienteBal
    UserName = 'plClienteBalMoneda'
    Left = 854
    Top = 344
    object plClienteBalMonedappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'IdCliente'
      FieldName = 'IdCliente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object plClienteBalMonedappField2: TppField
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object plClienteBalMonedappField3: TppField
      FieldAlias = 'Moneda'
      FieldName = 'Moneda'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object plClienteBalMonedappField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'Balance'
      FieldName = 'Balance'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 39
      Position = 3
    end
  end
  object rptClienteBalMoneda: TppReport
    AutoStop = False
    DataPipeline = plClienteBalMoneda
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
    Left = 854
    Top = 394
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plClienteBalMoneda'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 21431
      mmPrintPosition = 0
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
        mmLeft = 189526
        mmTop = 6085
        mmWidth = 12086
        BandType = 1
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3831
        mmLeft = 166423
        mmTop = 1588
        mmWidth = 35158
        BandType = 1
      end
      object ppDBText8: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 20
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 8509
        mmLeft = 1323
        mmTop = 794
        mmWidth = 137584
        BandType = 1
      end
      object ppLabel5: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        Caption = 'Balances de Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 1323
        mmTop = 13229
        mmWidth = 58738
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppShape10: TppShape
        UserName = 'Shape10'
        Pen.Width = 2
        mmHeight = 7408
        mmLeft = 265
        mmTop = 0
        mmWidth = 203200
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'IdCliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 25400
        mmTop = 1323
        mmWidth = 129646
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Balance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4678
        mmLeft = 161661
        mmTop = 1323
        mmWidth = 40217
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object pClienteBalMoneda: TppShape
        OnPrint = pClienteBalMonedaPrint
        UserName = 'pClienteBalMoneda'
        Brush.Color = clInfoBk
        Pen.Style = psClear
        mmHeight = 6085
        mmLeft = 529
        mmTop = 265
        mmWidth = 202671
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'IdCliente'
        DataPipeline = plClienteBalMoneda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClienteBalMoneda'
        mmHeight = 4678
        mmLeft = 1323
        mmTop = 794
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Cliente'
        DataPipeline = plClienteBalMoneda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClienteBalMoneda'
        mmHeight = 4763
        mmLeft = 24606
        mmTop = 794
        mmWidth = 131234
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Balance'
        DataPipeline = plClienteBalMoneda
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClienteBalMoneda'
        mmHeight = 4763
        mmLeft = 160602
        mmTop = 794
        mmWidth = 39952
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup18: TppGroup
      BreakName = 'Moneda'
      DataPipeline = plClienteBalMoneda
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group18'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plClienteBalMoneda'
      NewFile = False
      object ppGroupHeaderBand18: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object TppShape
          UserName = 'Shape1'
          Brush.Color = 13882323
          Pen.Color = 11842740
          mmHeight = 6879
          mmLeft = 265
          mmTop = 265
          mmWidth = 202936
          BandType = 3
          GroupNo = 0
        end
        object ppLabel8: TppLabel
          UserName = 'Label4'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Moneda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4763
          mmLeft = 3440
          mmTop = 1323
          mmWidth = 33073
          BandType = 3
          GroupNo = 0
        end
        object ppDBText6: TppDBText
          UserName = 'DBText3'
          HyperlinkEnabled = False
          DataField = 'Moneda'
          DataPipeline = plClienteBalMoneda
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plClienteBalMoneda'
          mmHeight = 4763
          mmLeft = 37042
          mmTop = 1323
          mmWidth = 33073
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand18: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 8731
        mmPrintPosition = 0
        object ppLine2: TppLine
          UserName = 'Line1'
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 3969
          mmLeft = 794
          mmTop = 794
          mmWidth = 201613
          BandType = 5
          GroupNo = 0
        end
        object ppLabel10: TppLabel
          UserName = 'Label6'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4763
          mmLeft = 88106
          mmTop = 2646
          mmWidth = 33073
          BandType = 5
          GroupNo = 0
        end
        object ppDBText9: TppDBText
          UserName = 'DBText6'
          HyperlinkEnabled = False
          DataField = 'Moneda'
          DataPipeline = plClienteBalMoneda
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plClienteBalMoneda'
          mmHeight = 4763
          mmLeft = 123031
          mmTop = 2646
          mmWidth = 18521
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          DataField = 'Balance'
          DataPipeline = plClienteBalMoneda
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 11
          Font.Style = [fsBold]
          ResetGroup = ppGroup18
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plClienteBalMoneda'
          mmHeight = 4763
          mmLeft = 157957
          mmTop = 2646
          mmWidth = 42598
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList17: TppParameterList
    end
  end
  object VentasdeProductosResumenM: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'RPTVentasdeProductosResumenPorMoneda;1'
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
    Left = 980
    Top = 254
    object DateTimeField1: TDateTimeField
      FieldName = 'Desde'
      ReadOnly = True
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'Hasta'
      ReadOnly = True
    end
    object StringField1: TStringField
      FieldName = 'idGrupo'
      Size = 16
    end
    object StringField2: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object StringField4: TStringField
      FieldName = 'Producto'
      Size = 120
    end
    object FloatField1: TFloatField
      FieldName = 'Cantidad'
      ReadOnly = True
      DisplayFormat = '#,#.##'
    end
    object BCDField1: TBCDField
      FieldName = 'Precio'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 6
    end
    object BCDField2: TBCDField
      FieldName = 'Descuento'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object BCDField3: TBCDField
      FieldName = 'Itbis'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object BCDField4: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object BCDField5: TBCDField
      FieldName = 'TotalBruto'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object BCDField6: TBCDField
      FieldName = 'TotalNeto'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object StringField5: TStringField
      FieldName = 'Compania'
      Size = 50
    end
    object FloatField2: TFloatField
      FieldName = 'Promedio'
      ReadOnly = True
    end
    object FloatField3: TFloatField
      FieldName = 'PromedioCat'
      ReadOnly = True
    end
    object FloatField4: TFloatField
      FieldName = 'PromedioGral'
      ReadOnly = True
    end
    object VentasdeProductosResumenMMoneda: TStringField
      FieldName = 'Moneda'
    end
    object VentasdeProductosResumenMTotalbrutoRD: TBCDField
      FieldName = 'TotalbrutoRD'
      ReadOnly = True
      Precision = 32
    end
    object VentasdeProductosResumenMTotalNetoRD: TBCDField
      FieldName = 'TotalNetoRD'
      ReadOnly = True
      Precision = 32
    end
    object VentasdeProductosResumenMItbisRD: TBCDField
      FieldName = 'ItbisRD'
      ReadOnly = True
      Precision = 32
    end
    object VentasdeProductosResumenMDescuentoRD: TBCDField
      FieldName = 'DescuentoRD'
      ReadOnly = True
      Precision = 32
    end
    object VentasdeProductosResumenMLineTotalRD: TBCDField
      FieldName = 'LineTotalRD'
      ReadOnly = True
      Precision = 32
    end
  end
  object dsVentasdeProductosResumenM: TDataSource
    DataSet = VentasdeProductosResumenM
    Left = 980
    Top = 302
  end
  object plVentasdeProductosResumenM: TppDBPipeline
    DataSource = dsVentasdeProductosResumenM
    UserName = 'plVentasdeProductosResumen1'
    Left = 980
    Top = 350
  end
  object RPTVentasdeProductosResumenM: TppReport
    AutoStop = False
    DataPipeline = plVentasdeProductosResumenM
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
    OutlineSettings.CreatePageNodes = False
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
    Left = 980
    Top = 406
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plVentasdeProductosResumenM'
    object ppTitleBand17: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 16933
      mmPrintPosition = 0
      object ppLabel12: TppLabel
        UserName = 'Label25'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Resumen Ventas de Productos x Moneda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7673
        mmLeft = 1588
        mmTop = 9260
        mmWidth = 145257
        BandType = 1
      end
      object ppDBText11: TppDBText
        UserName = 'DBText28'
        HyperlinkEnabled = False
        DataField = 'Desde'
        DataPipeline = plVentasdeProductosResumenM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumenM'
        mmHeight = 3440
        mmLeft = 226484
        mmTop = 2117
        mmWidth = 31750
        BandType = 1
      end
      object ppDBText122: TppDBText
        UserName = 'DBText29'
        HyperlinkEnabled = False
        DataField = 'Hasta'
        DataPipeline = plVentasdeProductosResumenM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumenM'
        mmHeight = 3440
        mmLeft = 226484
        mmTop = 6350
        mmWidth = 31750
        BandType = 1
      end
      object ppLabel13: TppLabel
        UserName = 'Label38'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Desde :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4255
        mmLeft = 201084
        mmTop = 2117
        mmWidth = 23813
        BandType = 1
      end
      object ppLabel14: TppLabel
        UserName = 'Label39'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Hasta :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4255
        mmLeft = 201084
        mmTop = 6350
        mmWidth = 23813
        BandType = 1
      end
      object ppSystemVariable20: TppSystemVariable
        UserName = 'SystemVariable5'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 180711
        mmTop = 11113
        mmWidth = 31263
        BandType = 1
      end
      object ppDBText154: TppDBText
        UserName = 'DBText180'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = plVentasdeProductosResumenM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumenM'
        mmHeight = 7408
        mmLeft = 1058
        mmTop = 1058
        mmWidth = 183886
        BandType = 1
      end
    end
    object ppHeaderBand18: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line7'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1323
        mmLeft = 1323
        mmTop = 5291
        mmWidth = 264055
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label31'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4255
        mmLeft = 1323
        mmTop = 794
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel132: TppLabel
        UserName = 'Label32'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Producto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4255
        mmLeft = 25400
        mmTop = 794
        mmWidth = 74348
        BandType = 0
      end
      object ppLabel155: TppLabel
        UserName = 'Label33'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cantidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4255
        mmLeft = 101071
        mmTop = 1323
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel192: TppLabel
        UserName = 'Label34'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Precio Prom.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4255
        mmLeft = 119856
        mmTop = 1323
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel216: TppLabel
        UserName = 'Label35'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Descuento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4255
        mmLeft = 168011
        mmTop = 1323
        mmWidth = 23548
        BandType = 0
      end
      object ppLabel217: TppLabel
        UserName = 'Label36'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Itbis'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4255
        mmLeft = 217488
        mmTop = 1323
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel218: TppLabel
        UserName = 'Label37'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4255
        mmLeft = 240507
        mmTop = 1323
        mmWidth = 26194
        BandType = 0
      end
      object ppLabel219: TppLabel
        UserName = 'Label87'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cant x Precio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4255
        mmLeft = 142611
        mmTop = 1323
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel220: TppLabel
        UserName = 'Label88'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total Bruto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4255
        mmLeft = 192617
        mmTop = 1323
        mmWidth = 24077
        BandType = 0
      end
    end
    object ppDetailBand18: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText175: TppDBText
        UserName = 'DBText17'
        HyperlinkEnabled = False
        DataField = 'idProducto'
        DataPipeline = plVentasdeProductosResumenM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumenM'
        mmHeight = 3344
        mmLeft = 1323
        mmTop = 529
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText181: TppDBText
        UserName = 'DBText18'
        HyperlinkEnabled = False
        DataField = 'Producto'
        DataPipeline = plVentasdeProductosResumenM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumenM'
        mmHeight = 3344
        mmLeft = 25665
        mmTop = 529
        mmWidth = 74348
        BandType = 4
      end
      object ppDBText206: TppDBText
        UserName = 'DBText23'
        HyperlinkEnabled = False
        DataField = 'Cantidad'
        DataPipeline = plVentasdeProductosResumenM
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumenM'
        mmHeight = 3450
        mmLeft = 101071
        mmTop = 529
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText207: TppDBText
        UserName = 'DBText24'
        HyperlinkEnabled = False
        DataField = 'Promedio'
        DataPipeline = plVentasdeProductosResumenM
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumenM'
        mmHeight = 3344
        mmLeft = 119856
        mmTop = 529
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText208: TppDBText
        UserName = 'DBText25'
        HyperlinkEnabled = False
        DataField = 'Descuento'
        DataPipeline = plVentasdeProductosResumenM
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumenM'
        mmHeight = 3450
        mmLeft = 168011
        mmTop = 529
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText209: TppDBText
        UserName = 'DBText26'
        HyperlinkEnabled = False
        DataField = 'Itbis'
        DataPipeline = plVentasdeProductosResumenM
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumenM'
        mmHeight = 3450
        mmLeft = 217488
        mmTop = 529
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText210: TppDBText
        UserName = 'DBText27'
        HyperlinkEnabled = False
        DataField = 'TotalNeto'
        DataPipeline = plVentasdeProductosResumenM
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumenM'
        mmHeight = 3450
        mmLeft = 240507
        mmTop = 529
        mmWidth = 26194
        BandType = 4
      end
      object ppDBText211: TppDBText
        UserName = 'DBText71'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plVentasdeProductosResumenM
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumenM'
        mmHeight = 3450
        mmLeft = 142611
        mmTop = 529
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText212: TppDBText
        UserName = 'DBText73'
        HyperlinkEnabled = False
        DataField = 'TotalBruto'
        DataPipeline = plVentasdeProductosResumenM
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumenM'
        mmHeight = 3450
        mmLeft = 192617
        mmTop = 529
        mmWidth = 24077
        BandType = 4
      end
    end
    object ppFooterBand17: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppSystemVariable34: TppSystemVariable
        UserName = 'SystemVariable6'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 248296
        mmTop = 1323
        mmWidth = 17082
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 17198
      mmPrintPosition = 0
      object ppShape11: TppShape
        UserName = 'Shape5'
        Brush.Color = 13882323
        Pen.Style = psClear
        mmHeight = 12700
        mmLeft = 0
        mmTop = 3175
        mmWidth = 266965
        BandType = 7
      end
      object ppLine11: TppLine
        UserName = 'Line23'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 529
        mmTop = 0
        mmWidth = 264055
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc25'
        HyperlinkEnabled = False
        DataField = 'Cantidad'
        DataPipeline = plVentasdeProductosResumenM
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumenM'
        mmHeight = 3387
        mmLeft = 98425
        mmTop = 5292
        mmWidth = 21431
        BandType = 7
      end
      object ppDBCalc31: TppDBCalc
        UserName = 'DBCalc26'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plVentasdeProductosResumenM
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumenM'
        mmHeight = 3440
        mmLeft = 137584
        mmTop = 9525
        mmWidth = 30956
        BandType = 7
      end
      object ppDBCalc48: TppDBCalc
        UserName = 'DBCalc27'
        HyperlinkEnabled = False
        DataField = 'DescuentoRD'
        DataPipeline = plVentasdeProductosResumenM
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumenM'
        mmHeight = 3387
        mmLeft = 169598
        mmTop = 5292
        mmWidth = 23283
        BandType = 7
      end
      object ppLabel221: TppLabel
        UserName = 'Label601'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'TOTALES DEL GENRAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4255
        mmLeft = 52917
        mmTop = 5292
        mmWidth = 44715
        BandType = 7
      end
      object ppLine19: TppLine
        UserName = 'Line28'
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1588
        mmLeft = 529
        mmTop = 3440
        mmWidth = 264055
        BandType = 7
      end
      object ppDBCalc49: TppDBCalc
        UserName = 'DBCalc28'
        HyperlinkEnabled = False
        DataField = 'TotalbrutoRD'
        DataPipeline = plVentasdeProductosResumenM
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumenM'
        mmHeight = 3387
        mmLeft = 194734
        mmTop = 5292
        mmWidth = 23283
        BandType = 7
      end
      object ppDBCalc50: TppDBCalc
        UserName = 'DBCalc29'
        HyperlinkEnabled = False
        DataField = 'ItbisRD'
        DataPipeline = plVentasdeProductosResumenM
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumenM'
        mmHeight = 3440
        mmLeft = 216694
        mmTop = 9260
        mmWidth = 22754
        BandType = 7
      end
      object ppDBCalc51: TppDBCalc
        UserName = 'DBCalc30'
        HyperlinkEnabled = False
        DataField = 'TotalNetoRD'
        DataPipeline = plVentasdeProductosResumenM
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumenM'
        mmHeight = 3387
        mmLeft = 238125
        mmTop = 5292
        mmWidth = 26458
        BandType = 7
      end
      object ppDBText213: TppDBText
        UserName = 'DBText183'
        HyperlinkEnabled = False
        DataField = 'PromedioGral'
        DataPipeline = plVentasdeProductosResumenM
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumenM'
        mmHeight = 3450
        mmLeft = 121179
        mmTop = 5292
        mmWidth = 20373
        BandType = 7
      end
    end
    object ppGroup20: TppGroup
      BreakName = 'Moneda'
      DataPipeline = plVentasdeProductosResumenM
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group20'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plVentasdeProductosResumenM'
      NewFile = False
      object ppGroupHeaderBand20: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppShape12: TppShape
          UserName = 'Shape12'
          Brush.Color = clSilver
          Pen.Style = psClear
          mmHeight = 7144
          mmLeft = 529
          mmTop = 264
          mmWidth = 266171
          BandType = 3
          GroupNo = 0
        end
        object ppLabel222: TppLabel
          UserName = 'Label222'
          HyperlinkEnabled = False
          Caption = 'Moneda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5948
          mmLeft = 2910
          mmTop = 794
          mmWidth = 21378
          BandType = 3
          GroupNo = 0
        end
        object ppDBText214: TppDBText
          UserName = 'DBText214'
          HyperlinkEnabled = False
          DataField = 'Moneda'
          DataPipeline = plVentasdeProductosResumenM
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumenM'
          mmHeight = 5821
          mmLeft = 25135
          mmTop = 794
          mmWidth = 60854
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand20: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 10583
        mmPrintPosition = 0
        object ppLine62: TppLine
          UserName = 'Line2'
          Pen.Color = clGray
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 1588
          mmLeft = 2117
          mmTop = 794
          mmWidth = 264055
          BandType = 5
          GroupNo = 0
        end
        object ppLabel225: TppLabel
          UserName = 'Label225'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'TOTALES MONEDA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 53446
          mmTop = 1852
          mmWidth = 44715
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc59: TppDBCalc
          UserName = 'DBCalc59'
          HyperlinkEnabled = False
          DataField = 'Cantidad'
          DataPipeline = plVentasdeProductosResumenM
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup20
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumenM'
          mmHeight = 3440
          mmLeft = 98954
          mmTop = 1852
          mmWidth = 21431
          BandType = 5
          GroupNo = 0
        end
        object ppDBText217: TppDBText
          UserName = 'DBText217'
          HyperlinkEnabled = False
          DataField = 'PromedioGral'
          DataPipeline = plVentasdeProductosResumenM
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumenM'
          mmHeight = 3440
          mmLeft = 121709
          mmTop = 1852
          mmWidth = 20373
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc60: TppDBCalc
          UserName = 'DBCalc60'
          HyperlinkEnabled = False
          DataField = 'Total'
          DataPipeline = plVentasdeProductosResumenM
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup20
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumenM'
          mmHeight = 3440
          mmLeft = 143404
          mmTop = 1852
          mmWidth = 25665
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc62: TppDBCalc
          UserName = 'DBCalc62'
          HyperlinkEnabled = False
          DataField = 'Descuento'
          DataPipeline = plVentasdeProductosResumenM
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup20
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumenM'
          mmHeight = 3440
          mmLeft = 170127
          mmTop = 1852
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc63: TppDBCalc
          UserName = 'DBCalc63'
          HyperlinkEnabled = False
          DataField = 'TotalBruto'
          DataPipeline = plVentasdeProductosResumenM
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup20
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumenM'
          mmHeight = 3440
          mmLeft = 193940
          mmTop = 1852
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc64: TppDBCalc
          UserName = 'DBCalc64'
          HyperlinkEnabled = False
          DataField = 'Itbis'
          DataPipeline = plVentasdeProductosResumenM
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup20
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumenM'
          mmHeight = 3440
          mmLeft = 219340
          mmTop = 1852
          mmWidth = 20108
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc65: TppDBCalc
          UserName = 'DBCalc65'
          HyperlinkEnabled = False
          DataField = 'TotalNeto'
          DataPipeline = plVentasdeProductosResumenM
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup20
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumenM'
          mmHeight = 3440
          mmLeft = 239713
          mmTop = 1852
          mmWidth = 26458
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc70: TppDBCalc
          UserName = 'DBCalc70'
          HyperlinkEnabled = False
          DataField = 'TotalbrutoRD'
          DataPipeline = plVentasdeProductosResumenM
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup20
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumenM'
          mmHeight = 3440
          mmLeft = 193940
          mmTop = 6350
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc71: TppDBCalc
          UserName = 'DBCalc71'
          HyperlinkEnabled = False
          DataField = 'TotalNetoRD'
          DataPipeline = plVentasdeProductosResumenM
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup20
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumenM'
          mmHeight = 3440
          mmLeft = 239713
          mmTop = 6350
          mmWidth = 26458
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc72: TppDBCalc
          UserName = 'DBCalc72'
          HyperlinkEnabled = False
          DataField = 'ItbisRD'
          DataPipeline = plVentasdeProductosResumenM
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup20
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumenM'
          mmHeight = 3440
          mmLeft = 219340
          mmTop = 6350
          mmWidth = 20108
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc74: TppDBCalc
          UserName = 'DBCalc74'
          HyperlinkEnabled = False
          DataField = 'DescuentoRD'
          DataPipeline = plVentasdeProductosResumenM
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup20
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumenM'
          mmHeight = 3440
          mmLeft = 170127
          mmTop = 6350
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppLabel239: TppLabel
          UserName = 'Label239'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'RD$:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 53446
          mmTop = 6350
          mmWidth = 44715
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup21: TppGroup
      BreakName = 'idGrupo'
      DataPipeline = plVentasdeProductosResumenM
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group21'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plVentasdeProductosResumenM'
      NewFile = False
      object ppGroupHeaderBand21: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 7144
        mmPrintPosition = 0
        object ppShape13: TppShape
          UserName = 'Shape13'
          Brush.Color = 14803425
          Pen.Style = psClear
          mmHeight = 7144
          mmLeft = 529
          mmTop = 0
          mmWidth = 266171
          BandType = 3
          GroupNo = 1
        end
        object ppLabel223: TppLabel
          UserName = 'Label223'
          HyperlinkEnabled = False
          Caption = 'Grupo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5948
          mmLeft = 15610
          mmTop = 529
          mmWidth = 16933
          BandType = 3
          GroupNo = 1
        end
        object ppDBText215: TppDBText
          UserName = 'DBText215'
          HyperlinkEnabled = False
          DataField = 'Grupo'
          DataPipeline = plVentasdeProductosResumenM
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumenM'
          mmHeight = 5821
          mmLeft = 33338
          mmTop = 529
          mmWidth = 161661
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand21: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 11113
        mmPrintPosition = 0
        object ppLine61: TppLine
          UserName = 'Line1'
          Pen.Color = clGray
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 1588
          mmLeft = 1058
          mmTop = 794
          mmWidth = 264055
          BandType = 5
          GroupNo = 1
        end
        object ppLabel224: TppLabel
          UserName = 'Label224'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'TOTALES GRUPO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 52123
          mmTop = 2117
          mmWidth = 44715
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc52: TppDBCalc
          UserName = 'DBCalc52'
          HyperlinkEnabled = False
          DataField = 'Cantidad'
          DataPipeline = plVentasdeProductosResumenM
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup21
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumenM'
          mmHeight = 3440
          mmLeft = 97631
          mmTop = 2117
          mmWidth = 21431
          BandType = 5
          GroupNo = 1
        end
        object ppDBText216: TppDBText
          UserName = 'DBText216'
          HyperlinkEnabled = False
          DataField = 'PromedioGral'
          DataPipeline = plVentasdeProductosResumenM
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumenM'
          mmHeight = 3440
          mmLeft = 120386
          mmTop = 2117
          mmWidth = 20373
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc53: TppDBCalc
          UserName = 'DBCalc53'
          HyperlinkEnabled = False
          DataField = 'Total'
          DataPipeline = plVentasdeProductosResumenM
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup21
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumenM'
          mmHeight = 3440
          mmLeft = 142082
          mmTop = 2117
          mmWidth = 25665
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc54: TppDBCalc
          UserName = 'DBCalc54'
          HyperlinkEnabled = False
          DataField = 'Descuento'
          DataPipeline = plVentasdeProductosResumenM
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup21
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumenM'
          mmHeight = 3440
          mmLeft = 168805
          mmTop = 2117
          mmWidth = 23283
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc56: TppDBCalc
          UserName = 'DBCalc56'
          HyperlinkEnabled = False
          DataField = 'TotalBruto'
          DataPipeline = plVentasdeProductosResumenM
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup21
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumenM'
          mmHeight = 3440
          mmLeft = 193940
          mmTop = 2117
          mmWidth = 23283
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc57: TppDBCalc
          UserName = 'DBCalc57'
          HyperlinkEnabled = False
          DataField = 'Itbis'
          DataPipeline = plVentasdeProductosResumenM
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup21
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumenM'
          mmHeight = 3440
          mmLeft = 217488
          mmTop = 2117
          mmWidth = 21960
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc58: TppDBCalc
          UserName = 'DBCalc301'
          HyperlinkEnabled = False
          DataField = 'TotalNeto'
          DataPipeline = plVentasdeProductosResumenM
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup21
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumenM'
          mmHeight = 3440
          mmLeft = 239713
          mmTop = 2117
          mmWidth = 26458
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc68: TppDBCalc
          UserName = 'DBCalc68'
          HyperlinkEnabled = False
          DataField = 'TotalNetoRD'
          DataPipeline = plVentasdeProductosResumenM
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup21
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumenM'
          mmHeight = 3440
          mmLeft = 239713
          mmTop = 6879
          mmWidth = 26458
          BandType = 5
          GroupNo = 1
        end
        object ppLabel238: TppLabel
          UserName = 'Label238'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'RD$:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 52123
          mmTop = 6615
          mmWidth = 44715
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc69: TppDBCalc
          UserName = 'DBCalc69'
          HyperlinkEnabled = False
          DataField = 'TotalbrutoRD'
          DataPipeline = plVentasdeProductosResumenM
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup21
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumenM'
          mmHeight = 3440
          mmLeft = 193940
          mmTop = 6879
          mmWidth = 23283
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc73: TppDBCalc
          UserName = 'DBCalc73'
          HyperlinkEnabled = False
          DataField = 'ItbisRD'
          DataPipeline = plVentasdeProductosResumenM
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup21
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumenM'
          mmHeight = 3440
          mmLeft = 217488
          mmTop = 6879
          mmWidth = 21960
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppParameterList18: TppParameterList
    end
  end
  object ConduceTranspFlete: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'svConduceTranpFleteRPT;1'
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
    Left = 50
    Top = 20
    object ConduceTranspFleteCodTransp: TStringField
      FieldName = 'CodTransp'
      Size = 16
    end
    object ConduceTranspFleteTransportista: TStringField
      FieldName = 'Transportista'
      Size = 50
    end
    object ConduceTranspFleteConduce: TStringField
      FieldName = 'Conduce'
      Size = 16
    end
    object ConduceTranspFleteFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ConduceTranspFleteCostoFlete: TBCDField
      FieldName = 'CostoFlete'
      Precision = 18
      Size = 2
    end
    object ConduceTranspFleteidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object ConduceTranspFleteCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object ConduceTranspFleteidVehiculo: TStringField
      FieldName = 'idVehiculo'
      Size = 16
    end
    object ConduceTranspFleteFactorDistancia: TBCDField
      FieldName = 'FactorDistancia'
      Precision = 9
      Size = 2
    end
    object ConduceTranspFleteCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
  end
  object dsConduceTranspFlete: TDataSource
    DataSet = ConduceTranspFlete
    Left = 48
    Top = 68
  end
  object plconducetranspflete: TppDBPipeline
    DataSource = dsConduceTranspFlete
    UserName = 'plconducetranspflete'
    Left = 52
    Top = 122
  end
  object RPTConduceFlete: TppReport
    AutoStop = False
    DataPipeline = plconducetranspflete
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
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
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
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 54
    Top = 174
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plconducetranspflete'
    object ppTitleBand18: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 21167
      mmPrintPosition = 0
      object ppLabel226: TppLabel
        UserName = 'Label226'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Costo de Flete por Transportista'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 18
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 7408
        mmLeft = 1323
        mmTop = 10054
        mmWidth = 135202
        BandType = 1
      end
      object ppDBText228: TppDBText
        UserName = 'DBText228'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 20
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 8202
        mmLeft = 794
        mmTop = 1323
        mmWidth = 135996
        BandType = 1
      end
    end
    object ppHeaderBand19: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand19: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText220: TppDBText
        UserName = 'DBText220'
        HyperlinkEnabled = False
        DataField = 'Conduce'
        DataPipeline = plconducetranspflete
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plconducetranspflete'
        mmHeight = 3175
        mmLeft = 2117
        mmTop = 529
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText221: TppDBText
        UserName = 'DBText221'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plconducetranspflete
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plconducetranspflete'
        mmHeight = 3175
        mmLeft = 25665
        mmTop = 529
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText222: TppDBText
        UserName = 'DBText222'
        HyperlinkEnabled = False
        DataField = 'CostoFlete'
        DataPipeline = plconducetranspflete
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plconducetranspflete'
        mmHeight = 3175
        mmLeft = 71173
        mmTop = 529
        mmWidth = 31750
        BandType = 4
      end
      object ppDBText223: TppDBText
        UserName = 'DBText223'
        HyperlinkEnabled = False
        DataField = 'idCliente'
        DataPipeline = plconducetranspflete
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plconducetranspflete'
        mmHeight = 3175
        mmLeft = 109802
        mmTop = 529
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText224: TppDBText
        UserName = 'DBText224'
        HyperlinkEnabled = False
        DataField = 'Cliente'
        DataPipeline = plconducetranspflete
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plconducetranspflete'
        mmHeight = 3175
        mmLeft = 129382
        mmTop = 529
        mmWidth = 65881
        BandType = 4
      end
      object ppDBText225: TppDBText
        UserName = 'DBText225'
        HyperlinkEnabled = False
        DataField = 'idVehiculo'
        DataPipeline = plconducetranspflete
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plconducetranspflete'
        mmHeight = 3175
        mmLeft = 203465
        mmTop = 529
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText226: TppDBText
        UserName = 'DBText226'
        HyperlinkEnabled = False
        DataField = 'FactorDistancia'
        DataPipeline = plconducetranspflete
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plconducetranspflete'
        mmHeight = 3175
        mmLeft = 232040
        mmTop = 529
        mmWidth = 17727
        BandType = 4
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = plconducetranspflete
        DataField = 'Cancelado'
        Transparent = True
        DataPipelineName = 'plconducetranspflete'
        mmHeight = 4233
        mmLeft = 256911
        mmTop = 0
        mmWidth = 5292
        BandType = 4
      end
    end
    object ppFooterBand18: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine72: TppLine
        UserName = 'Line72'
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1323
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 264055
        BandType = 8
      end
      object ppSystemVariable35: TppSystemVariable
        UserName = 'SystemVariable35'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 82550
        BandType = 8
      end
      object ppSystemVariable36: TppSystemVariable
        UserName = 'SystemVariable36'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3725
        mmLeft = 248053
        mmTop = 1323
        mmWidth = 17314
        BandType = 8
      end
    end
    object ppSummaryBand10: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 10583
      mmPrintPosition = 0
      object ppLabel237: TppLabel
        UserName = 'Label237'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total del Transportista'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 11377
        mmTop = 3969
        mmWidth = 35454
        BandType = 7
      end
      object ppDBCalc67: TppDBCalc
        UserName = 'DBCalc67'
        HyperlinkEnabled = False
        DataField = 'CostoFlete'
        DataPipeline = plconducetranspflete
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plconducetranspflete'
        mmHeight = 3969
        mmLeft = 48419
        mmTop = 4233
        mmWidth = 31750
        BandType = 7
      end
    end
    object ppGroup19: TppGroup
      BreakName = 'CodTransp'
      DataPipeline = plconducetranspflete
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group19'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plconducetranspflete'
      NewFile = False
      object ppGroupHeaderBand19: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 11642
        mmPrintPosition = 0
        object ppLine71: TppLine
          UserName = 'Line71'
          Pen.Color = clNavy
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 3969
          mmLeft = 1323
          mmTop = 10319
          mmWidth = 264055
          BandType = 3
          GroupNo = 0
        end
        object ppLine70: TppLine
          UserName = 'Line70'
          Pen.Color = clNavy
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 3969
          mmLeft = 1323
          mmTop = 6350
          mmWidth = 264055
          BandType = 3
          GroupNo = 0
        end
        object ppDBText218: TppDBText
          UserName = 'DBText218'
          HyperlinkEnabled = False
          DataField = 'CodTransp'
          DataPipeline = plconducetranspflete
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plconducetranspflete'
          mmHeight = 4487
          mmLeft = 197644
          mmTop = 529
          mmWidth = 26458
          BandType = 3
          GroupNo = 0
        end
        object ppLabel227: TppLabel
          UserName = 'Label227'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Transportista :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4995
          mmLeft = 0
          mmTop = 265
          mmWidth = 27252
          BandType = 3
          GroupNo = 0
        end
        object ppLabel228: TppLabel
          UserName = 'Label228'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Conduce'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 2117
          mmTop = 6350
          mmWidth = 20373
          BandType = 3
          GroupNo = 0
        end
        object ppLabel229: TppLabel
          UserName = 'Label229'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Fecha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 25665
          mmTop = 6350
          mmWidth = 22754
          BandType = 3
          GroupNo = 0
        end
        object ppLabel230: TppLabel
          UserName = 'Label230'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Costo Flete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 71173
          mmTop = 6350
          mmWidth = 31750
          BandType = 3
          GroupNo = 0
        end
        object ppLabel231: TppLabel
          UserName = 'Label231'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Codigo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 109802
          mmTop = 6615
          mmWidth = 18785
          BandType = 3
          GroupNo = 0
        end
        object ppLabel232: TppLabel
          UserName = 'Label232'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 129382
          mmTop = 6615
          mmWidth = 65881
          BandType = 3
          GroupNo = 0
        end
        object ppLabel233: TppLabel
          UserName = 'Label233'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Vehiculo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 203465
          mmTop = 6350
          mmWidth = 24871
          BandType = 3
          GroupNo = 0
        end
        object ppLabel234: TppLabel
          UserName = 'Label234'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Distancia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 232040
          mmTop = 6879
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
        end
        object ppLabel235: TppLabel
          UserName = 'Label235'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Cancelado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 253736
          mmTop = 6350
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
        end
        object ppDBText219: TppDBText
          UserName = 'DBText219'
          HyperlinkEnabled = False
          DataField = 'Transportista'
          DataPipeline = plconducetranspflete
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plconducetranspflete'
          mmHeight = 4487
          mmLeft = 28575
          mmTop = 529
          mmWidth = 164307
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand19: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object ppDBCalc66: TppDBCalc
          UserName = 'DBCalc66'
          HyperlinkEnabled = False
          DataField = 'CostoFlete'
          DataPipeline = plconducetranspflete
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup19
          Transparent = True
          DataPipelineName = 'plconducetranspflete'
          mmHeight = 3969
          mmLeft = 71173
          mmTop = 1058
          mmWidth = 31750
          BandType = 5
          GroupNo = 0
        end
        object ppLabel236: TppLabel
          UserName = 'Label236'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total del Transportista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 34396
          mmTop = 794
          mmWidth = 35454
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList19: TppParameterList
    end
  end
end

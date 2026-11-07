inherited RPTFacturasXCobrador: TRPTFacturasXCobrador
  Left = 524
  Top = 226
  Caption = 'Facturas asignadas'
  ClientHeight = 425
  ClientWidth = 746
  Color = 16444903
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 10
    Top = 8
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label2: TLabel [1]
    Left = 228
    Top = 10
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object deDesde: TcxDateEdit [2]
    Left = 46
    Top = 6
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object deHasta: TcxDateEdit [3]
    Left = 262
    Top = 6
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object cbTodas: TcxCheckBox [4]
    Left = 400
    Top = 8
    Width = 159
    Height = 21
    Caption = 'Solo facturas pendientes'
    Properties.ImmediatePost = True
    State = cbsChecked
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object cxButton1: TcxButton [5]
    Left = 8
    Top = 32
    Width = 115
    Height = 29
    Caption = 'Mostrar'
    TabOrder = 3
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid [6]
    Left = 10
    Top = 64
    Width = 735
    Height = 353
    TabOrder = 4
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsFacturaList
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsView.CellAutoHeight = True
      object cxGrid1DBTableView1Factura: TcxGridDBColumn
        DataBinding.FieldName = 'Factura'
        Options.Editing = False
        Options.Filtering = False
        Width = 74
      end
      object cxGrid1DBTableView1Cliente: TcxGridDBColumn
        DataBinding.FieldName = 'Cliente'
        Options.Editing = False
        Options.Filtering = False
        Width = 243
      end
      object cxGrid1DBTableView1fecha: TcxGridDBColumn
        DataBinding.FieldName = 'fecha'
        Options.Editing = False
        Options.Filtering = False
        Width = 78
      end
      object cxGrid1DBTableView1Total: TcxGridDBColumn
        DataBinding.FieldName = 'Total'
        Options.Editing = False
        Options.Filtering = False
        Width = 95
      end
      object cxGrid1DBTableView1Cobrado: TcxGridDBColumn
        DataBinding.FieldName = 'Cobrado'
        Options.Editing = False
        Options.Filtering = False
        Width = 98
      end
      object cxGrid1DBTableView1Cobrador: TcxGridDBColumn
        DataBinding.FieldName = 'Cobrador'
        Visible = False
        GroupIndex = 0
        Options.Editing = False
        Options.Filtering = False
      end
      object cxGrid1DBTableView1Balance: TcxGridDBColumn
        DataBinding.FieldName = 'Balance'
        Options.Editing = False
        Options.Filtering = False
        Width = 110
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton2: TcxButton [7]
    Left = 180
    Top = 32
    Width = 115
    Height = 29
    Caption = 'Imprimir'
    TabOrder = 5
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [8]
    Left = 630
    Top = 32
    Width = 115
    Height = 29
    Caption = 'Salir'
    TabOrder = 6
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object FacturaList: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = FacturaListCalcFields
    CommandText = 'svFacturasXCobrador;1'
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
      end
      item
        Name = '@todas'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 38
    Top = 136
    object FacturaListidFactura: TGuidField
      FieldName = 'idFactura'
      FixedChar = True
      Size = 38
    end
    object FacturaListFactura: TStringField
      FieldName = 'Factura'
      Size = 16
    end
    object FacturaListfecha: TDateTimeField
      FieldName = 'fecha'
    end
    object FacturaListTotal: TBCDField
      FieldName = 'Total'
      currency = True
      Precision = 19
      Size = 2
    end
    object FacturaListCobrado: TBCDField
      FieldName = 'Cobrado'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object FacturaListidCobrador: TIntegerField
      FieldName = 'idCobrador'
    end
    object FacturaListCobrador: TStringField
      FieldName = 'Cobrador'
      ReadOnly = True
      Size = 62
    end
    object FacturaListCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object FacturaListBalance: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Balance'
      Calculated = True
    end
    object FacturaListCondicion: TIntegerField
      FieldName = 'Condicion'
    end
    object FacturaListReferencia: TStringField
      FieldName = 'Referencia'
    end
  end
  object dsFacturaList: TDataSource
    DataSet = FacturaList
    Left = 38
    Top = 184
  end
  object plFacturaList: TppDBPipeline
    DataSource = dsFacturaList
    UserName = 'plFacturaList'
    Left = 38
    Top = 232
    object plFacturaListppField1: TppField
      FieldAlias = 'idFactura'
      FieldName = 'idFactura'
      FieldLength = 38
      DataType = dtGUID
      DisplayWidth = 38
      Position = 0
    end
    object plFacturaListppField2: TppField
      FieldAlias = 'Factura'
      FieldName = 'Factura'
      FieldLength = 16
      DisplayWidth = 16
      Position = 1
    end
    object plFacturaListppField3: TppField
      FieldAlias = 'fecha'
      FieldName = 'fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object plFacturaListppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 3
    end
    object plFacturaListppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cobrado'
      FieldName = 'Cobrado'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 4
    end
    object plFacturaListppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'idCobrador'
      FieldName = 'idCobrador'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object plFacturaListppField7: TppField
      FieldAlias = 'Cobrador'
      FieldName = 'Cobrador'
      FieldLength = 62
      DisplayWidth = 62
      Position = 6
    end
    object plFacturaListppField8: TppField
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object plFacturaListppField9: TppField
      FieldAlias = 'Balance'
      FieldName = 'Balance'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 8
    end
    object plFacturaListppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Condicion'
      FieldName = 'Condicion'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object plFacturaListppField11: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 20
      DisplayWidth = 20
      Position = 10
    end
  end
  object RPTFacturaList: TppReport
    AutoStop = False
    DataPipeline = plFacturaList
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 12700
    PrinterSetup.mmMarginLeft = 12700
    PrinterSetup.mmMarginRight = 12700
    PrinterSetup.mmMarginTop = 12700
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
    Left = 38
    Top = 288
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plFacturaList'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 17727
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Facturas asignadas a cobradores'
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
      object ppSystemVariable1: TppSystemVariable
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
        mmLeft = 130175
        mmTop = 9790
        mmWidth = 57150
        BandType = 1
      end
      object ppDBText175: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 20
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 8297
        mmLeft = 1058
        mmTop = 529
        mmWidth = 186002
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 12965
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 12171
        mmWidth = 190500
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Factura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 7673
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel3: TppLabel
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
        mmLeft = 21431
        mmTop = 7673
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel4: TppLabel
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
        mmLeft = 38894
        mmTop = 7673
        mmWidth = 43656
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Ref.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 100277
        mmTop = 7673
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
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
        mmLeft = 118798
        mmTop = 7938
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cobrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 141288
        mmTop = 7673
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Balance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 164571
        mmTop = 7673
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel155: TppLabel
        UserName = 'Label155'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cond.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 89165
        mmTop = 7673
        mmWidth = 10054
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Factura'
        DataPipeline = plFacturaList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plFacturaList'
        mmHeight = 3344
        mmLeft = 1323
        mmTop = 529
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plFacturaList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plFacturaList'
        mmHeight = 3440
        mmLeft = 21431
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Cliente'
        DataPipeline = plFacturaList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plFacturaList'
        mmHeight = 3440
        mmLeft = 38894
        mmTop = 529
        mmWidth = 48948
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = plFacturaList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plFacturaList'
        mmHeight = 3344
        mmLeft = 100542
        mmTop = 529
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Total'
        DataPipeline = plFacturaList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plFacturaList'
        mmHeight = 3440
        mmLeft = 118798
        mmTop = 794
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Cobrado'
        DataPipeline = plFacturaList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plFacturaList'
        mmHeight = 3440
        mmLeft = 141288
        mmTop = 529
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Balance'
        DataPipeline = plFacturaList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plFacturaList'
        mmHeight = 3440
        mmLeft = 164836
        mmTop = 529
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText154: TppDBText
        UserName = 'DBText154'
        HyperlinkEnabled = False
        DataField = 'Condicion'
        DataPipeline = plFacturaList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plFacturaList'
        mmHeight = 3440
        mmLeft = 89429
        mmTop = 529
        mmWidth = 10054
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Color = clGray
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 5821
        mmWidth = 190500
        BandType = 8
      end
      object ppSystemVariable2: TppSystemVariable
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
        mmHeight = 3440
        mmLeft = 107686
        mmTop = 1852
        mmWidth = 82021
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 12700
      mmPrintPosition = 0
      object ppShape14: TppShape
        UserName = 'Shape14'
        Brush.Color = 15395562
        ParentWidth = True
        Pen.Style = psClear
        mmHeight = 6085
        mmLeft = 0
        mmTop = 3969
        mmWidth = 190500
        BandType = 7
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Totales Generales :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 76465
        mmTop = 5027
        mmWidth = 41010
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        ParentWidth = True
        Weight = 1.000000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 10319
        mmWidth = 190500
        BandType = 7
      end
      object ppDBCalc21: TppDBCalc
        UserName = 'DBCalc21'
        HyperlinkEnabled = False
        DataField = 'Balance'
        DataPipeline = plFacturaList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plFacturaList'
        mmHeight = 3440
        mmLeft = 165100
        mmTop = 5292
        mmWidth = 23548
        BandType = 7
      end
      object ppDBCalc22: TppDBCalc
        UserName = 'DBCalc22'
        HyperlinkEnabled = False
        DataField = 'Cobrado'
        DataPipeline = plFacturaList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plFacturaList'
        mmHeight = 3440
        mmLeft = 140494
        mmTop = 5292
        mmWidth = 22225
        BandType = 7
      end
      object ppDBCalc23: TppDBCalc
        UserName = 'DBCalc23'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plFacturaList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plFacturaList'
        mmHeight = 3440
        mmLeft = 118798
        mmTop = 5292
        mmWidth = 20108
        BandType = 7
      end
    end
    object ppGroup15: TppGroup
      BreakName = 'Cobrador'
      DataPipeline = plFacturaList
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      StartOnOddPage = False
      UserName = 'Group15'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plFacturaList'
      NewFile = False
      object ppGroupHeaderBand15: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 8731
        mmPrintPosition = 0
        object ppDBText4: TppDBText
          UserName = 'DBText5'
          HyperlinkEnabled = False
          DataField = 'Cobrador'
          DataPipeline = plFacturaList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plFacturaList'
          mmHeight = 6615
          mmLeft = 0
          mmTop = 1852
          mmWidth = 108215
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand15: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 10054
        mmPrintPosition = 0
        object ppShape13: TppShape
          UserName = 'Shape13'
          Brush.Color = 15395562
          ParentWidth = True
          Pen.Style = psClear
          mmHeight = 6085
          mmLeft = 0
          mmTop = 265
          mmWidth = 190500
          BandType = 5
          GroupNo = 0
        end
        object ppLabel192: TppLabel
          UserName = 'Label192'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Subtotal:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 71702
          mmTop = 1323
          mmWidth = 44979
          BandType = 5
          GroupNo = 0
        end
        object ppLine61: TppLine
          UserName = 'Line61'
          Pen.Color = clGray
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 2646
          mmLeft = 0
          mmTop = 6350
          mmWidth = 190500
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc51: TppDBCalc
          UserName = 'DBCalc51'
          HyperlinkEnabled = False
          DataField = 'Balance'
          DataPipeline = plFacturaList
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup15
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plFacturaList'
          mmHeight = 3440
          mmLeft = 165629
          mmTop = 1852
          mmWidth = 23019
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc52: TppDBCalc
          UserName = 'DBCalc52'
          HyperlinkEnabled = False
          DataField = 'Cobrado'
          DataPipeline = plFacturaList
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup15
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plFacturaList'
          mmHeight = 3440
          mmLeft = 141023
          mmTop = 1852
          mmWidth = 21696
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc53: TppDBCalc
          UserName = 'DBCalc53'
          HyperlinkEnabled = False
          DataField = 'Total'
          DataPipeline = plFacturaList
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup15
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plFacturaList'
          mmHeight = 3440
          mmLeft = 118798
          mmTop = 1852
          mmWidth = 20108
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end

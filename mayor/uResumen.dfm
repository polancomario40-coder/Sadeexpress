object ResumenEntradas: TResumenEntradas
  Left = 356
  Top = 244
  Width = 667
  Height = 461
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Resumen de Entradas por Numero'
  Color = 15922418
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    659
    427)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 12
    Top = 12
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label1: TLabel
    Left = 12
    Top = 36
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object Label3: TLabel
    Left = 228
    Top = 12
    Width = 78
    Height = 13
    Caption = 'Numero Entrada'
  end
  object dtDesde: TwwDBDateTimePicker
    Left = 50
    Top = 9
    Width = 121
    Height = 19
    BorderStyle = bsNone
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    Frame.Enabled = True
    Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
    ShowButton = True
    TabOrder = 0
  end
  object dtHasta: TwwDBDateTimePicker
    Left = 49
    Top = 33
    Width = 121
    Height = 19
    BorderStyle = bsNone
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    Frame.Enabled = True
    Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
    ShowButton = True
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 418
    Top = 13
    Width = 93
    Height = 33
    Caption = 'Mostrar'
    Default = True
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object wwDBGrid1: TwwDBGrid
    Left = 4
    Top = 64
    Width = 655
    Height = 365
    DisableThemes = False
    Selected.Strings = (
      'idCuenta'#9'16'#9'Numero Cta'
      'Cuenta'#9'51'#9'Cuenta'
      'Debito'#9'17'#9'Debito'
      'Credito'#9'16'#9'Credito')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = Edds
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object EntradaNum: TdxEdit
    Left = 228
    Top = 32
    Width = 121
    Style.BorderStyle = xbsSingle
    Style.HotTrack = False
    TabOrder = 4
    Text = '01'
  end
  object BitBtn2: TBitBtn
    Left = 552
    Top = 13
    Width = 91
    Height = 33
    Caption = 'Imprimir'
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object Edds: TDataSource
    DataSet = rsEntradas
    Left = 248
    Top = 168
  end
  object rsEntradas: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cgResumenEntrada;1'
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
        Name = '@Hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Entrada'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end>
    Left = 156
    Top = 148
    object rsEntradasidCuenta: TStringField
      DisplayLabel = 'Numero Cta'
      DisplayWidth = 16
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsEntradasCuenta: TStringField
      DisplayWidth = 51
      FieldName = 'Cuenta'
      Size = 60
    end
    object rsEntradasDebito: TBCDField
      DisplayWidth = 17
      FieldName = 'Debito'
      DisplayFormat = '#,0.00;(#,0.00)'
      Precision = 32
      Size = 2
    end
    object rsEntradasCredito: TBCDField
      DisplayWidth = 16
      FieldName = 'Credito'
      DisplayFormat = '#,0.00;(#,0.00)'
      Precision = 32
      Size = 2
    end
    object rsEntradasNumeroEntrada: TStringField
      FieldName = 'NumeroEntrada'
      ReadOnly = True
      Visible = False
    end
    object rsEntradasDebCre: TSmallintField
      FieldName = 'DebCre'
      Visible = False
    end
    object rsEntradasConcepto: TStringField
      FieldName = 'Concepto'
      Visible = False
      Size = 400
    end
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = plEntradas
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
    Left = 78
    Top = 128
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plEntradas'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 37042
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Anchors = [atLeft, atBottom]
        Pen.Color = clNavy
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 35983
        mmWidth = 203200
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Numero Entrada '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 1058
        mmTop = 23548
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 265
        mmTop = 31750
        mmWidth = 33602
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Caption = 'Debito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 132821
        mmTop = 31750
        mmWidth = 29369
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Caption = 'Credito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 168011
        mmTop = 31750
        mmWidth = 32015
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Caption = 'Concepto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 34396
        mmTop = 31750
        mmWidth = 97367
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Resumen de Entradas de Diario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 16
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 6816
        mmLeft = 1058
        mmTop = 11113
        mmWidth = 126471
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        DisplayFormat = 'dd/mm/yyyy @hh:nn AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 154782
        mmTop = 1323
        mmWidth = 46567
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
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
        mmLeft = 168275
        mmTop = 5292
        mmWidth = 33073
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'NumeroEntrada'
        DataPipeline = plEntradas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEntradas'
        mmHeight = 3440
        mmLeft = 31485
        mmTop = 23548
        mmWidth = 22490
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
        Font.Size = 8
        Font.Style = [fsBold]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 3387
        mmLeft = 1058
        mmTop = 18521
        mmWidth = 15198
        BandType = 0
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Concepto'
        DataPipeline = plEntradas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plEntradas'
        mmHeight = 3704
        mmLeft = 55033
        mmTop = 23548
        mmWidth = 135996
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = gldm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 5969
        mmLeft = 1058
        mmTop = 1588
        mmWidth = 106363
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppShape1: TppShape
        OnPrint = ppShape1Print
        UserName = 'Shape1'
        Brush.Color = 14869218
        ParentWidth = True
        Pen.Style = psClear
        mmHeight = 3440
        mmLeft = 0
        mmTop = 264
        mmWidth = 203200
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'idCuenta'
        DataPipeline = plEntradas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEntradas'
        mmHeight = 3387
        mmLeft = 265
        mmTop = 265
        mmWidth = 33602
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Debito'
        DataPipeline = plEntradas
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEntradas'
        mmHeight = 3387
        mmLeft = 133086
        mmTop = 265
        mmWidth = 29369
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Credito'
        DataPipeline = plEntradas
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEntradas'
        mmHeight = 3440
        mmLeft = 168011
        mmTop = 265
        mmWidth = 32015
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Cuenta'
        DataPipeline = plEntradas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEntradas'
        mmHeight = 3440
        mmLeft = 34660
        mmTop = 265
        mmWidth = 97367
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 1323
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Color = clGray
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 265
        mmWidth = 203200
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        DataField = 'Credito'
        DataPipeline = plEntradas
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEntradas'
        mmHeight = 3440
        mmLeft = 167217
        mmTop = 794
        mmWidth = 32808
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        DataField = 'Debito'
        DataPipeline = plEntradas
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEntradas'
        mmHeight = 3440
        mmLeft = 132027
        mmTop = 794
        mmWidth = 30427
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object plEntradas: TppDBPipeline
    DataSource = Edds
    UserName = 'plEntradas'
    Left = 330
    Top = 172
  end
end

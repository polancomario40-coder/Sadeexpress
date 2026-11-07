object fRelacionCks: TfRelacionCks
  Left = 341
  Top = 176
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relacion de cheques emitidos'
  ClientHeight = 378
  ClientWidth = 613
  Color = 15922418
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 11
    Top = 10
    Width = 34
    Height = 13
    Caption = 'Desde:'
    Transparent = True
  end
  object Label2: TLabel
    Left = 269
    Top = 10
    Width = 32
    Height = 13
    Caption = 'Hasta:'
    Transparent = True
  end
  object Label3: TLabel
    Left = 11
    Top = 32
    Width = 39
    Height = 13
    Caption = 'Cuenta:'
    Transparent = True
  end
  object Label4: TLabel
    Left = 11
    Top = 54
    Width = 42
    Height = 13
    Caption = 'Suplidor:'
    Transparent = True
  end
  object Label5: TLabel
    Left = 9
    Top = 76
    Width = 45
    Height = 13
    Caption = 'Desde #:'
  end
  object Label6: TLabel
    Left = 256
    Top = 76
    Width = 43
    Height = 13
    Caption = 'Hasta #:'
  end
  object SpeedButton1: TcxButton
    Left = 3
    Top = 348
    Width = 117
    Height = 26
    Caption = 'F7 - Imprimir'
    TabOrder = 8
    OnClick = SpeedButton1Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
      66666666666666FFF66666660000666666600066666666666666F888FFF66666
      00006666600788006666666666F8866888FFF666000066600778008800666666
      688668888888FFF60000660778878800880066668F688688888888F600006688
      877788880080666688866688888888F600006887777788888800666886666688
      888888F6000068F7777F888888880668F6666F888888888F000068F77FF77788
      88880668F66FF6FF8888888F000068FFF779977788880668FFF6F8866688888F
      000068F77AA7778807880668F6688666888F888600006688F77788FF07006666
      88F666886686F8660000666688F8FFFFF06666666688F8F666686F6600006666
      6688FFFFFF0666666666886F666686FF0000666666668FFFFFF0066666666686
      F666F88600006666666668FFF8866666666666686FF886660000666666666688
      8666666666666666888666660000666666666666666666666666666666666666
      0000}
    LookAndFeel.NativeStyle = True
    NumGlyphs = 2
  end
  object sbSalir: TcxButton
    Left = 491
    Top = 348
    Width = 117
    Height = 26
    Caption = 'F10 - Salir'
    TabOrder = 9
    OnClick = sbSalirClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
      0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
      0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
      0333337F777FFFFF7F3333000000000003333377777777777333}
    LookAndFeel.NativeStyle = True
    NumGlyphs = 2
  end
  object sbOpen: TcxButton
    Left = 513
    Top = 12
    Width = 89
    Height = 63
    Caption = 'F6 - Refrescar'
    TabOrder = 7
    OnClick = sbOpenClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
      6666666666666F6666666666000066666636666666666666666686F666666666
      0000666666306666666666666666886F66666666000066666663066666666666
      66666886F6666666000066666663B066666666666666F8F86F66666600006666
      63000F06666666666668888686F666660000666663FBFBF06666666666686F66
      686F666600006666663FB0333666666666668F688886666600006666663BFB06
      6666666666FF8FF686F66666000066630000BFB06666666668888866686F6666
      00006663FBFBFBFB06666666686F6666668F6666000066663FBFB03336666666
      668F666888866666000066663BFBFB06666666666686F66686F6666600006666
      63BFBFB0666666666668F666686F66660000666663FBFBFB0666666666686F66
      6686F66600006666663FBFBFB066666666668FFFFFF8FF660000666666333333
      3336666666668888888886660000666666666666666666666666666666666666
      0000}
    Layout = blGlyphTop
    LookAndFeel.NativeStyle = True
    NumGlyphs = 2
  end
  object dtDesde: TwwDBDateTimePicker
    Left = 55
    Top = 7
    Width = 130
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
    Frame.Transparent = True
    Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
    ShowButton = True
    TabOrder = 0
  end
  object dtHasta: TwwDBDateTimePicker
    Left = 304
    Top = 7
    Width = 130
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
    Frame.Transparent = True
    Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
    ShowButton = True
    TabOrder = 1
  end
  object Grid: TdxDBGrid
    Left = 3
    Top = 107
    Width = 605
    Height = 236
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'Iddocumento'
    ShowGroupPanel = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = []
    DataSource = relsource
    Filter.Criteria = {00000000}
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = []
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoPreview, edgoRowAutoHeight, edgoUseBitmap]
    PreviewFieldName = 'TextoConcepto'
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -9
    PreviewFont.Name = 'Verdana'
    PreviewFont.Style = []
    object GridDescripcionCuenta: TdxDBGridMaskColumn
      Caption = 'Cuenta de Banco'
      Sorted = csUp
      Visible = False
      Width = 209
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DescripcionCuenta'
      GroupIndex = 0
    end
    object GridNumero: TdxDBGridMaskColumn
      Width = 57
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Numero'
    end
    object Gridfecha: TdxDBGridDateColumn
      Width = 79
      BandIndex = 0
      RowIndex = 0
      FieldName = 'fecha'
    end
    object GridST: TdxDBGridColumn
      Width = 22
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ST'
    end
    object GridNombre: TdxDBGridMaskColumn
      Sorted = csUp
      Width = 295
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Nombre'
    end
    object GridValorCheque: TdxDBGridCurrencyColumn
      Caption = 'Valor'
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'cValor'
      Nullable = False
    end
  end
  object cbCuenta: TwwDBLookupCombo
    Left = 55
    Top = 29
    Width = 379
    Height = 19
    BorderStyle = bsNone
    DisableThemes = False
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Nombre'#9'100'#9'Nombre'#9'F')
    LookupTable = rsBancos
    LookupField = 'idCuentaBanco'
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    Navigator = False
    Frame.Enabled = True
    Frame.Transparent = True
    Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
    TabOrder = 2
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = True
    ShowMatchText = True
  end
  object cbEnts: TwwDBLookupCombo
    Left = 55
    Top = 51
    Width = 379
    Height = 19
    BorderStyle = bsNone
    DisableThemes = False
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Nombre'#9'60'#9'Nombre'#9'F')
    LookupTable = rsEnts
    LookupField = 'idSuplidor'
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    Navigator = False
    Frame.Enabled = True
    Frame.Transparent = True
    Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
    TabOrder = 3
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = True
    ShowMatchText = True
  end
  object seDesde: TwwDBSpinEdit
    Left = 55
    Top = 73
    Width = 130
    Height = 19
    Increment = 1.000000000000000000
    BorderStyle = bsNone
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    Frame.Enabled = True
    Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
    TabOrder = 4
    UnboundDataType = wwDefault
  end
  object seHasta: TwwDBSpinEdit
    Left = 304
    Top = 73
    Width = 130
    Height = 19
    Increment = 1.000000000000000000
    BorderStyle = bsNone
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    Frame.Enabled = True
    Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
    TabOrder = 5
    UnboundDataType = wwDefault
  end
  object rsRelacionCks: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = rsRelacionCksCalcFields
    CommandText = 'cxpRelacionCheques'
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
        Name = '@inicio'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@final'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 185
    Top = 128
    object rsRelacionCkscValor: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'cValor'
      Calculated = True
    end
    object rsRelacionCksNumero: TIntegerField
      FieldName = 'Numero'
      ReadOnly = True
    end
    object rsRelacionCksIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
      ReadOnly = True
    end
    object rsRelacionCksFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsRelacionCksIdEntidad: TIntegerField
      FieldName = 'IdEntidad'
    end
    object rsRelacionCksCuentaBanco: TStringField
      FieldName = 'CuentaBanco'
      Size = 30
    end
    object rsRelacionCksNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsRelacionCksIdCuenta: TStringField
      FieldName = 'IdCuenta'
      Size = 16
    end
    object rsRelacionCksDescripcionCuenta: TStringField
      FieldName = 'DescripcionCuenta'
      Size = 100
    end
    object rsRelacionCksValorCheque: TBCDField
      FieldName = 'ValorCheque'
      Precision = 19
      Size = 2
    end
    object rsRelacionCksTextoConcepto: TStringField
      FieldName = 'TextoConcepto'
      Size = 600
    end
    object rsRelacionCksST: TStringField
      FieldName = 'ST'
      FixedChar = True
      Size = 1
    end
    object rsRelacionCksFechaProcesado: TDateTimeField
      FieldName = 'FechaProcesado'
    end
    object rsRelacionCksidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
    end
    object rsRelacionCksTotalNeto: TBCDField
      FieldName = 'TotalNeto'
      ReadOnly = True
      Precision = 20
      Size = 2
    end
  end
  object relsource: TDataSource
    DataSet = rsRelacionCks
    Left = 315
    Top = 98
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = plRelacion
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Relacion de Cheques emitidos'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 19050
    PrinterSetup.mmMarginLeft = 13970
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
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 335
    Top = 164
    Version = '15.02'
    mmColumnWidth = 266701
    DataPipelineName = 'plRelacion'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Numero'
        DataPipeline = plRelacion
        DisplayFormat = '00000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRelacion'
        mmHeight = 3440
        mmLeft = 2910
        mmTop = 529
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'fecha'
        DataPipeline = plRelacion
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRelacion'
        mmHeight = 3440
        mmLeft = 19315
        mmTop = 529
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Nombre'
        DataPipeline = plRelacion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRelacion'
        mmHeight = 3440
        mmLeft = 46831
        mmTop = 529
        mmWidth = 77788
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'cValor'
        DataPipeline = plRelacion
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRelacion'
        mmHeight = 3440
        mmLeft = 125148
        mmTop = 529
        mmWidth = 29369
        BandType = 4
      end
      object ppDBRichText1: TppDBRichText
        UserName = 'DBRichText1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        DataField = 'TextoConcepto'
        DataPipeline = plRelacion
        RemoveEmptyLines = False
        Stretch = True
        DataPipelineName = 'plRelacion'
        mmHeight = 3440
        mmLeft = 157692
        mmTop = 529
        mmWidth = 91017
        BandType = 4
        mmBottomOffset = 2540
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeftMargin = 794
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Anchors = [atLeft, atBottom]
        Pen.Color = clGray
        Pen.Width = 0
        ParentWidth = True
        Weight = 0.125000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 3969
        mmWidth = 259081
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'ST'
        DataPipeline = plRelacion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRelacion'
        mmHeight = 3440
        mmLeft = 40217
        mmTop = 529
        mmWidth = 5556
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 4233
        mmWidth = 259081
        BandType = 7
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total Gral.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1852
        mmTop = 265
        mmWidth = 23019
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        DataField = 'cValor'
        DataPipeline = plRelacion
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRelacion'
        mmHeight = 3440
        mmLeft = 110861
        mmTop = 265
        mmWidth = 43656
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        HyperlinkEnabled = False
        DataPipeline = plRelacion
        DisplayFormat = '#### "cheques "'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'plRelacion'
        mmHeight = 3440
        mmLeft = 42069
        mmTop = 265
        mmWidth = 44450
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'DescripcionCuenta'
      DataPipeline = plRelacion
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plRelacion'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 31221
        mmPrintPosition = 0
        object ppLine1: TppLine
          UserName = 'Line1'
          Pen.Width = 0
          ParentWidth = True
          Weight = 0.250000000000000000
          mmHeight = 529
          mmLeft = 0
          mmTop = 30692
          mmWidth = 259081
          BandType = 3
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Numero'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 2910
          mmTop = 26988
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'fecha'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 19315
          mmTop = 26988
          mmWidth = 20108
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Nombre'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 46831
          mmTop = 26988
          mmWidth = 77788
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Valor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 125148
          mmTop = 26988
          mmWidth = 29369
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Concepto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 157427
          mmTop = 26988
          mmWidth = 42863
          BandType = 3
          GroupNo = 0
        end
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          HyperlinkEnabled = False
          DataField = 'DescripcionCuenta'
          DataPipeline = plRelacion
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plRelacion'
          mmHeight = 3704
          mmLeft = 2646
          mmTop = 19050
          mmWidth = 118004
          BandType = 3
          GroupNo = 0
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          HyperlinkEnabled = False
          DataField = 'CuentaBanco'
          DataPipeline = plRelacion
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plRelacion'
          mmHeight = 3704
          mmLeft = 2646
          mmTop = 23019
          mmWidth = 118004
          BandType = 3
          GroupNo = 0
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'ST'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 40217
          mmTop = 26988
          mmWidth = 5556
          BandType = 3
          GroupNo = 0
        end
        object ppSystemVariable1: TppSystemVariable
          UserName = 'SystemVariable1'
          HyperlinkEnabled = False
          VarType = vtPrintDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 195792
          mmTop = 4498
          mmWidth = 49213
          BandType = 3
          GroupNo = 0
        end
        object ppSystemVariable2: TppSystemVariable
          UserName = 'SystemVariable2'
          HyperlinkEnabled = False
          VarType = vtPageSetDesc
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 224367
          mmTop = 794
          mmWidth = 20638
          BandType = 3
          GroupNo = 0
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Relacion de Cheques Emitidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5969
          mmLeft = 2381
          mmTop = 8202
          mmWidth = 165894
          BandType = 3
          GroupNo = 0
        end
        object ppVariable1: TppVariable
          UserName = 'Variable1'
          HyperlinkEnabled = False
          BlankWhenZero = False
          CalcOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 10
          Font.Style = [fsBold, fsItalic]
          OnCalc = ppVariable1Calc
          Transparent = True
          mmHeight = 4233
          mmLeft = 2646
          mmTop = 14552
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          HyperlinkEnabled = False
          DataField = 'Compania'
          DataPipeline = dm.plConfig
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 18
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plConfig'
          mmHeight = 7673
          mmLeft = 2381
          mmTop = 265
          mmWidth = 172509
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppLine3: TppLine
          UserName = 'Line3'
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 529
          mmLeft = 0
          mmTop = 4498
          mmWidth = 259081
          BandType = 5
          GroupNo = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'SubTotal:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 1852
          mmTop = 794
          mmWidth = 23019
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          DataField = 'cValor'
          DataPipeline = plRelacion
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plRelacion'
          mmHeight = 3440
          mmLeft = 110861
          mmTop = 794
          mmWidth = 43656
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          DataPipeline = plRelacion
          DisplayFormat = '#### "cheques "'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'plRelacion'
          mmHeight = 3440
          mmLeft = 42069
          mmTop = 529
          mmWidth = 44450
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object plRelacion: TppBDEPipeline
    DataSource = relsource
    UserName = 'plRelacion'
    Left = 205
    Top = 170
    object plRelacionppField1: TppField
      FieldAlias = 'cValor'
      FieldName = 'cValor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 0
      Position = 0
    end
    object plRelacionppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object plRelacionppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'IdDocumento'
      FieldName = 'IdDocumento'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object plRelacionppField4: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object plRelacionppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'IdEntidad'
      FieldName = 'IdEntidad'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object plRelacionppField6: TppField
      FieldAlias = 'CuentaBanco'
      FieldName = 'CuentaBanco'
      FieldLength = 30
      DisplayWidth = 30
      Position = 5
    end
    object plRelacionppField7: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 100
      DisplayWidth = 100
      Position = 6
    end
    object plRelacionppField8: TppField
      FieldAlias = 'IdCuenta'
      FieldName = 'IdCuenta'
      FieldLength = 16
      DisplayWidth = 16
      Position = 7
    end
    object plRelacionppField9: TppField
      FieldAlias = 'DescripcionCuenta'
      FieldName = 'DescripcionCuenta'
      FieldLength = 100
      DisplayWidth = 100
      Position = 8
    end
    object plRelacionppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'ValorCheque'
      FieldName = 'ValorCheque'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 9
    end
    object plRelacionppField11: TppField
      FieldAlias = 'TextoConcepto'
      FieldName = 'TextoConcepto'
      FieldLength = 600
      DisplayWidth = 600
      Position = 10
    end
    object plRelacionppField12: TppField
      FieldAlias = 'ST'
      FieldName = 'ST'
      FieldLength = 1
      DisplayWidth = 1
      Position = 11
    end
    object plRelacionppField13: TppField
      FieldAlias = 'FechaProcesado'
      FieldName = 'FechaProcesado'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 12
    end
    object plRelacionppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'idCuentaBanco'
      FieldName = 'idCuentaBanco'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object plRelacionppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalNeto'
      FieldName = 'TotalNeto'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 21
      Position = 14
    end
  end
  object rsEnts: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select idSuplidor,  Nombre'#13#10'from cxpSuplidores'#13#10'order by Nombre '
    Parameters = <>
    Left = 117
    Top = 254
    object rsEntsidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
      ReadOnly = True
    end
    object rsEntsNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
  end
  object rsBancos: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select * from cxpBancos'#13#10'order by Nombre'
    Parameters = <>
    Left = 63
    Top = 145
    object rsBancosNombre: TStringField
      DisplayWidth = 100
      FieldName = 'Nombre'
      Size = 100
    end
    object rsBancosidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
      ReadOnly = True
      Visible = False
    end
    object rsBancosidMoneda: TIntegerField
      FieldName = 'idMoneda'
      Visible = False
    end
    object rsBancosTipoCuenta: TStringField
      FieldName = 'TipoCuenta'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object rsBancosUltimoCheque: TIntegerField
      FieldName = 'UltimoCheque'
      Visible = False
    end
    object rsBancosidCuentaMayor: TStringField
      FieldName = 'idCuentaMayor'
      Visible = False
      Size = 16
    end
    object rsBancosNumCuenta: TStringField
      FieldName = 'NumCuenta'
      Visible = False
      Size = 30
    end
  end
  object dsBcos: TDataSource
    DataSet = rsBancos
    Left = 339
    Top = 281
  end
end

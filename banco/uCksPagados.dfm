object fCksPagados: TfCksPagados
  Left = 481
  Top = 248
  BorderStyle = bsSingle
  Caption = 'Cheques pagados'
  ClientHeight = 440
  ClientWidth = 664
  Color = 14870499
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 12
    Top = 8
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label2: TLabel
    Left = 190
    Top = 8
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object Label3: TLabel
    Left = 7
    Top = 30
    Width = 39
    Height = 13
    Caption = 'Cuenta:'
  end
  object sbOpen: TcxButton
    Left = 460
    Top = 20
    Width = 133
    Height = 28
    Caption = 'Refrescar'
    TabOrder = 3
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
    LookAndFeel.NativeStyle = True
    NumGlyphs = 2
  end
  object SpeedButton1: TcxButton
    Left = 3
    Top = 392
    Width = 65
    Height = 46
    Caption = 'Imprimir'
    TabOrder = 4
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
    Layout = blGlyphTop
    LookAndFeel.NativeStyle = True
    NumGlyphs = 2
  end
  object SpeedButton2: TcxButton
    Left = 596
    Top = 392
    Width = 65
    Height = 46
    Caption = 'Salir'
    TabOrder = 5
    OnClick = SpeedButton2Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF006FF00FF00FF0
      07700766666666666F6666660000F00FF00FF000800880666666666688F66666
      00000FF00FF00F0700800866666666668F8F66660000F00FF00FF007800880FF
      FFFFFFF68F68FFFF000000000000070788000088888888868F66888800006666
      660770078880666666668F668F6668F600006666660000078880666666668F66
      8F6668F600006666660888078880666666668F668F6668F60000666666088807
      888066666FFFFFF68F6668F6000066000000080708806666888888868F6668F6
      0000660999990807888066668F666F868F6668F6000060999990880788806668
      F6F6F8668F6668F6000060909908880788806668F8FF8F668F6668F600006000
      900888078880666888F88F668F6668F600006660060888807880666668868F66
      68F668F600006666660888880780666666668F66668F68F60000666666088888
      8070666666668FFFFFF8F8F60000666666000000000066666666888888888866
      0000}
    Layout = blGlyphTop
    LookAndFeel.NativeStyle = True
    NumGlyphs = 2
  end
  object SpeedButton3: TcxButton
    Left = 93
    Top = 392
    Width = 92
    Height = 46
    Caption = 'Imprimir x Dia'
    TabOrder = 6
    Visible = False
    OnClick = SpeedButton3Click
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
    Layout = blGlyphTop
    LookAndFeel.NativeStyle = True
    NumGlyphs = 2
  end
  object leCuenta: TcxLookupComboBox
    Left = 50
    Top = 28
    Width = 371
    Height = 21
    Properties.KeyFieldNames = 'idCuentaBanco'
    Properties.ListColumns = <
      item
        FieldName = 'Nombre'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsBcos
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object dtHasta: TcxDateEdit
    Left = 228
    Top = 4
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object dtDesde: TcxDateEdit
    Left = 50
    Top = 4
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object Grid: TcxGrid
    Left = 4
    Top = 58
    Width = 659
    Height = 329
    TabOrder = 7
    LookAndFeel.NativeStyle = True
    object GridDBTableView1: TcxGridDBTableView
      DataController.DataSource = relsource
      DataController.KeyFieldNames = 'IdDocumento'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      object GridDBTableView1Referencia: TcxGridDBColumn
        DataBinding.FieldName = 'Numero'
        Options.Editing = False
        Options.Filtering = False
        Width = 61
      end
      object GridDBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'TextoConcepto'
        PropertiesClassName = 'TcxMemoProperties'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Width = 252
      end
      object GridDBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Options.Editing = False
        Options.Filtering = False
        Width = 79
      end
      object GridDBTableView1Valor: TcxGridDBColumn
        DataBinding.FieldName = 'ValorCheque'
        Options.Editing = False
        Options.Filtering = False
        Width = 84
      end
      object GridDBTableView1Status: TcxGridDBColumn
        DataBinding.FieldName = 'ST'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Recibido'
            ImageIndex = 0
            Value = '$'
          end
          item
            Description = 'Transito'
            Value = 'T'
          end
          item
            Description = 'Cancelado'
            Value = 'C'
          end>
        Options.Filtering = False
        Width = 88
      end
      object GridDBTableView1FechaStatus: TcxGridDBColumn
        Caption = 'Fecha pagado'
        DataBinding.FieldName = 'FechaStatus'
        Options.Filtering = False
        Width = 77
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridDBTableView1
    end
  end
  object rsRelacionCks: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'bcoReporteCksPagados'
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
      end
      item
        Name = '@idCta'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 46
    Top = 118
    object rsRelacionCksIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
      ReadOnly = True
    end
    object rsRelacionCksFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsRelacionCksCuentaBanco: TStringField
      FieldName = 'CuentaBanco'
      Size = 30
    end
    object rsRelacionCksidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsRelacionCksDescripcionCuenta: TStringField
      FieldName = 'DescripcionCuenta'
      Size = 100
    end
    object rsRelacionCksValorCheque: TBCDField
      FieldName = 'ValorCheque'
      currency = True
      Precision = 19
      Size = 2
    end
    object rsRelacionCksTextoConcepto: TStringField
      FieldName = 'TextoConcepto'
      Size = 500
    end
    object rsRelacionCksST: TStringField
      FieldName = 'ST'
      FixedChar = True
      Size = 1
    end
    object rsRelacionCksFechaStatus: TDateTimeField
      FieldName = 'FechaStatus'
    end
    object rsRelacionCksNumero: TIntegerField
      FieldName = 'Numero'
      ReadOnly = True
    end
  end
  object plRelacion: TppBDEPipeline
    DataSource = relsource
    UserName = 'plRelacion'
    Left = 206
    Top = 182
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
    PrinterSetup.mmMarginLeft = 16510
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
    Left = 318
    Top = 194
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
      mmHeight = 4763
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
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 265
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
        mmHeight = 3969
        mmLeft = 17727
        mmTop = 265
        mmWidth = 25929
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'ValorCheque'
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
        mmHeight = 3969
        mmLeft = 221192
        mmTop = 265
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
        mmHeight = 3969
        mmLeft = 44450
        mmTop = 265
        mmWidth = 147902
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
        Pen.Width = 0
        Weight = 0.125000000000000000
        mmHeight = 265
        mmLeft = 794
        mmTop = 4498
        mmWidth = 252678
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
      mmHeight = 5027
      mmPrintPosition = 0
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 794
        mmTop = 4233
        mmWidth = 252678
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
        mmLeft = 265
        mmTop = 265
        mmWidth = 23019
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        DataField = 'ValorCheque'
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
        mmLeft = 206905
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
        mmLeft = 40481
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
        mmHeight = 28310
        mmPrintPosition = 0
        object ppLine1: TppLine
          UserName = 'Line1'
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 529
          mmLeft = 1323
          mmTop = 27781
          mmWidth = 252678
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
          mmLeft = 1323
          mmTop = 23813
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
          mmLeft = 17727
          mmTop = 23813
          mmWidth = 25929
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
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
          mmLeft = 45244
          mmTop = 23813
          mmWidth = 142346
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
          mmLeft = 221192
          mmTop = 23813
          mmWidth = 29369
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
          mmLeft = 1058
          mmTop = 14817
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
          mmLeft = 1058
          mmTop = 18785
          mmWidth = 118004
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
          mmLeft = 200819
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
          mmLeft = 229394
          mmTop = 794
          mmWidth = 20638
          BandType = 3
          GroupNo = 0
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Relacion de cheques pagados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 18
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 7673
          mmLeft = 794
          mmTop = 794
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
          mmLeft = 1058
          mmTop = 8996
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Visible = False
        Background.Brush.Style = bsClear
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppLine3: TppLine
          UserName = 'Line3'
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 529
          mmLeft = 794
          mmTop = 4498
          mmWidth = 252678
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
          mmLeft = 265
          mmTop = 794
          mmWidth = 23019
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          DataField = 'ValorCheque'
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
          mmLeft = 206905
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
          mmLeft = 40481
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
  object relsource: TDataSource
    DataSet = rsRelacionCks
    Left = 316
    Top = 110
  end
  object dsBcos: TDataSource
    DataSet = dmBanco.rsBancos
    Left = 104
    Top = 176
  end
  object ReportXDia: TppReport
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
    PrinterSetup.mmMarginLeft = 16510
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
    Left = 420
    Top = 176
    Version = '15.02'
    mmColumnWidth = 266701
    DataPipelineName = 'plRelacion'
    object ppTitleBand2: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText7: TppDBText
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
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 265
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'FechaPagado'
        DataPipeline = plRelacion
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRelacion'
        mmHeight = 3969
        mmLeft = 17727
        mmTop = 265
        mmWidth = 25929
        BandType = 4
      end
      object ppDBText9: TppDBText
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
        mmHeight = 3969
        mmLeft = 45244
        mmTop = 265
        mmWidth = 84931
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'ValorCheque'
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
        mmHeight = 3969
        mmLeft = 130969
        mmTop = 265
        mmWidth = 29369
        BandType = 4
      end
      object ppDBRichText2: TppDBRichText
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
        mmHeight = 3969
        mmLeft = 161132
        mmTop = 265
        mmWidth = 90488
        BandType = 4
        mmBottomOffset = 2540
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeftMargin = 794
      end
      object ppLine2: TppLine
        UserName = 'Line5'
        Anchors = [atLeft, atBottom]
        Pen.Width = 0
        Weight = 0.125000000000000000
        mmHeight = 265
        mmLeft = 1323
        mmTop = 4498
        mmWidth = 255853
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 2646
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppLine6: TppLine
        UserName = 'Line4'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 1323
        mmTop = 4233
        mmWidth = 255853
        BandType = 7
      end
      object ppLabel9: TppLabel
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
        mmLeft = 265
        mmTop = 265
        mmWidth = 23019
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        DataField = 'ValorCheque'
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
        mmLeft = 116681
        mmTop = 265
        mmWidth = 43656
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
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
        mmLeft = 40481
        mmTop = 265
        mmWidth = 44450
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
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
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 28046
        mmPrintPosition = 0
        object ppLine7: TppLine
          UserName = 'Line1'
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 529
          mmLeft = 1323
          mmTop = 27517
          mmWidth = 255853
          BandType = 3
          GroupNo = 0
        end
        object ppLabel10: TppLabel
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
          mmLeft = 1323
          mmTop = 23813
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
        end
        object ppLabel11: TppLabel
          UserName = 'Label3'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'fecha pago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 17727
          mmTop = 23813
          mmWidth = 25929
          BandType = 3
          GroupNo = 0
        end
        object ppLabel12: TppLabel
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
          mmLeft = 45244
          mmTop = 23813
          mmWidth = 84931
          BandType = 3
          GroupNo = 0
        end
        object ppLabel13: TppLabel
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
          mmLeft = 130969
          mmTop = 23813
          mmWidth = 29369
          BandType = 3
          GroupNo = 0
        end
        object ppLabel14: TppLabel
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
          mmLeft = 160867
          mmTop = 23813
          mmWidth = 33602
          BandType = 3
          GroupNo = 0
        end
        object ppDBText11: TppDBText
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
          mmLeft = 1058
          mmTop = 14817
          mmWidth = 118004
          BandType = 3
          GroupNo = 0
        end
        object ppDBText12: TppDBText
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
          mmLeft = 1058
          mmTop = 18785
          mmWidth = 118004
          BandType = 3
          GroupNo = 0
        end
        object ppSystemVariable3: TppSystemVariable
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
          mmLeft = 200819
          mmTop = 4498
          mmWidth = 49213
          BandType = 3
          GroupNo = 0
        end
        object ppSystemVariable4: TppSystemVariable
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
          mmLeft = 229394
          mmTop = 794
          mmWidth = 20638
          BandType = 3
          GroupNo = 0
        end
        object ppLabel15: TppLabel
          UserName = 'Label1'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Relacion de cheques pagados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 18
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 7673
          mmLeft = 794
          mmTop = 794
          mmWidth = 165894
          BandType = 3
          GroupNo = 0
        end
        object ppVariable2: TppVariable
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
          mmLeft = 1058
          mmTop = 8996
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Visible = False
        Background.Brush.Style = bsClear
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppLine8: TppLine
          UserName = 'Line3'
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 529
          mmLeft = 1323
          mmTop = 4498
          mmWidth = 255853
          BandType = 5
          GroupNo = 0
        end
        object ppLabel16: TppLabel
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
          mmLeft = 265
          mmTop = 794
          mmWidth = 23019
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          DataField = 'ValorCheque'
          DataPipeline = plRelacion
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plRelacion'
          mmHeight = 3440
          mmLeft = 116681
          mmTop = 794
          mmWidth = 43656
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          DataPipeline = plRelacion
          DisplayFormat = '#### "cheques "'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'plRelacion'
          mmHeight = 3440
          mmLeft = 40481
          mmTop = 529
          mmWidth = 44450
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'FechaPagado'
      DataPipeline = plRelacion
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plRelacion'
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
        mmHeight = 5027
        mmPrintPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Brush.Color = 16053492
          ParentHeight = True
          ParentWidth = True
          Pen.Style = psClear
          mmHeight = 5027
          mmLeft = 1323
          mmTop = 0
          mmWidth = 255853
          BandType = 5
          GroupNo = 1
        end
        object ppLabel17: TppLabel
          UserName = 'Label17'
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
          mmLeft = 2381
          mmTop = 794
          mmWidth = 23019
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc9'
          HyperlinkEnabled = False
          DataField = 'ValorCheque'
          DataPipeline = plRelacion
          DisplayFormat = '$#,0.00;($#,0.00)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plRelacion'
          mmHeight = 3440
          mmLeft = 116681
          mmTop = 794
          mmWidth = 43656
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc10: TppDBCalc
          UserName = 'DBCalc10'
          HyperlinkEnabled = False
          DataPipeline = plRelacion
          DisplayFormat = '#### "cheques "'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'plRelacion'
          mmHeight = 3440
          mmLeft = 65088
          mmTop = 794
          mmWidth = 44450
          BandType = 5
          GroupNo = 1
        end
        object ppDBText13: TppDBText
          UserName = 'DBText13'
          HyperlinkEnabled = False
          DataField = 'FechaPagado'
          DataPipeline = plRelacion
          DisplayFormat = 'dd/mm/yyyy'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plRelacion'
          mmHeight = 3704
          mmLeft = 28840
          mmTop = 794
          mmWidth = 25929
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
end

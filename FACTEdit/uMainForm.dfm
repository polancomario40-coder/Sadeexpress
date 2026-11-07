object MainForm: TMainForm
  Left = 416
  Top = 244
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'MainForm'
  ClientHeight = 294
  ClientWidth = 320
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Gradient1: TGradient
    Left = 0
    Top = 0
    Width = 320
    Height = 294
    Align = alClient
    ColorBegin = 15987699
    ColorEnd = 16644340
    Style = gsLinearV
  end
  object Label1: TLabel
    Left = 62
    Top = 23
    Width = 136
    Height = 42
    Caption = 'Express'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 233218
    Font.Height = -37
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object cxButton1: TcxButton
    Left = 54
    Top = 99
    Width = 231
    Height = 35
    Caption = 'Abrir reporte'
    TabOrder = 0
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton
    Left = 54
    Top = 145
    Width = 231
    Height = 35
    Caption = 'Guardar reporte'
    TabOrder = 1
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton
    Left = 54
    Top = 191
    Width = 231
    Height = 35
    Caption = 'Guardar copia'
    TabOrder = 2
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton4: TcxButton
    Left = 54
    Top = 236
    Width = 231
    Height = 35
    Caption = 'Salir'
    TabOrder = 3
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  object Designer: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtParadox
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = Report
    ShowData = False
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 18
    Top = 10
  end
  object OpenDialog1: TOpenDialog
    Left = 200
    Top = 14
  end
  object SaveDialog1: TSaveDialog
    Left = 36
    Top = 70
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 'FILE NAME=conexion.udl'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 132
    Top = 76
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = plrptFactura
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Factura PV'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 2540
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 101600
    PrinterSetup.mmPaperWidth = 76200
    PrinterSetup.PaperSize = 188
    Template.FileName = 'E:\enterprise\pamaent\FACTEdit\FactPamaMadePv.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Printer'
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
    ShowPrintDialog = False
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 268
    Top = 148
    Version = '15.02'
    mmColumnWidth = 76200
    DataPipelineName = 'plrptFactura'
    object ppTitleBand2: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 62706
      mmPrintPosition = 0
      object ppDBText11: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'coCompania'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 6085
        mmLeft = 4499
        mmTop = 0
        mmWidth = 65617
        BandType = 1
        LayerName = Foreground1
      end
      object ppDBText12: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'coRNC'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3969
        mmLeft = 4499
        mmTop = 9525
        mmWidth = 65617
        BandType = 1
        LayerName = Foreground1
      end
      object ppDBText13: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'CoDireccion'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3440
        mmLeft = 4499
        mmTop = 6085
        mmWidth = 65617
        BandType = 1
        LayerName = Foreground1
      end
      object ppDBText46: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'CoTelefono'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3175
        mmLeft = 10325
        mmTop = 13494
        mmWidth = 32015
        BandType = 1
        LayerName = Foreground1
      end
      object ppDBText14: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'CoFax'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3175
        mmLeft = 10590
        mmTop = 16669
        mmWidth = 35719
        BandType = 1
        LayerName = Foreground1
      end
      object ppDBText15: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Factura'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3725
        mmLeft = 17205
        mmTop = 32549
        mmWidth = 20902
        BandType = 1
        LayerName = Foreground1
      end
      object ppDBText16: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3704
        mmLeft = 38629
        mmTop = 33079
        mmWidth = 17992
        BandType = 1
        LayerName = Foreground1
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkEnabled = False
        DataField = 'Condicion'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3704
        mmLeft = 24342
        mmTop = 42075
        mmWidth = 42863
        BandType = 1
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cant.                           Precio       SubTotal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 4498
        mmTop = 57702
        mmWidth = 62706
        BandType = 1
        LayerName = Foreground1
      end
      object ppDBText18: TppDBText
        UserName = 'DBText21'
        HyperlinkEnabled = False
        DataField = 'Cliente'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3704
        mmLeft = 4498
        mmTop = 45523
        mmWidth = 62706
        BandType = 1
        LayerName = Foreground1
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '________________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 4498
        mmTop = 54262
        mmWidth = 62706
        BandType = 1
        LayerName = Foreground1
      end
      object ppLabel27: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'FACT #:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3725
        mmLeft = 4505
        mmTop = 33079
        mmWidth = 11906
        BandType = 1
        LayerName = Foreground1
      end
      object ppLabel28: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        Caption = 'FAX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 4497
        mmTop = 16669
        mmWidth = 5556
        BandType = 1
        LayerName = Foreground1
      end
      object ppLabel29: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        Caption = '809-529-1016'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 36236
        mmTop = 13494
        mmWidth = 22225
        BandType = 1
        LayerName = Foreground1
      end
      object ppLabel30: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        Caption = 'acabadospama@codetel.net.do'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3704
        mmLeft = 4763
        mmTop = 19844
        mmWidth = 50006
        BandType = 1
        LayerName = Foreground1
      end
      object ppLabel31: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        Caption = 'TEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 4497
        mmTop = 13494
        mmWidth = 5556
        BandType = 1
        LayerName = Foreground1
      end
      object ppLabel32: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '________________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 4498
        mmTop = 59266
        mmWidth = 62706
        BandType = 1
        LayerName = Foreground1
      end
      object ppLabel33: TppLabel
        UserName = 'Label14'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'NCF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3725
        mmLeft = 4505
        mmTop = 24075
        mmWidth = 7938
        BandType = 1
        LayerName = Foreground1
      end
      object ppDBText32: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'CompFiscal'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3704
        mmLeft = 12707
        mmTop = 24075
        mmWidth = 42333
        BandType = 1
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        UserName = 'Label15'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Condicion:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3725
        mmLeft = 4505
        mmTop = 42083
        mmWidth = 18521
        BandType = 1
        LayerName = Foreground1
      end
      object ppDBText33: TppDBText
        UserName = 'DBText18'
        HyperlinkEnabled = False
        DataField = 'hora'
        DataPipeline = plrptFactura
        DisplayFormat = 'h:nn AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3440
        mmLeft = 57148
        mmTop = 33079
        mmWidth = 10054
        BandType = 1
        LayerName = Foreground1
      end
      object ppDBText1: TppDBText
        UserName = 'DBText9'
        DataField = 'TipoNCF'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3969
        mmLeft = 4498
        mmTop = 37577
        mmWidth = 62442
        BandType = 1
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Rnc:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 4498
        mmTop = 49218
        mmWidth = 7938
        BandType = 1
        LayerName = Foreground1
      end
      object ppDBText2: TppDBText
        UserName = 'DBText16'
        DataField = 'ClienteRNC'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4763
        mmLeft = 12700
        mmTop = 49218
        mmWidth = 54223
        BandType = 1
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
        UserName = 'DBText24'
        HyperlinkEnabled = False
        DataField = 'FechaVenceNCF'
        DataPipeline = plrptFactura
        DisplayFormat = '"Vence el" dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3704
        mmLeft = 12697
        mmTop = 28049
        mmWidth = 42333
        BandType = 1
        LayerName = Foreground1
      end
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
      mmHeight = 8731
      mmPrintPosition = 0
      object ppDBText19: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'DetCantidad'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3725
        mmLeft = 4505
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText20: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'DetProducto'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3704
        mmLeft = 11906
        mmTop = 4763
        mmWidth = 55298
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText21: TppDBText
        UserName = 'DBText19'
        HyperlinkEnabled = False
        DataField = 'DetPrecio'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3725
        mmLeft = 19851
        mmTop = 0
        mmWidth = 24606
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText22: TppDBText
        UserName = 'DBText20'
        HyperlinkEnabled = False
        DataField = 'NetLineTotal'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 5027
        mmLeft = 44715
        mmTop = 0
        mmWidth = 22490
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        UserName = 'DBText22'
        HyperlinkEnabled = False
        DataField = 'Identificador'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3704
        mmLeft = 4498
        mmTop = 4763
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 41540
      mmPrintPosition = 0
      object ppLabel20: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Descuento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3725
        mmLeft = 8474
        mmTop = 7938
        mmWidth = 25135
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText23: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Descuento'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4064
        mmLeft = 33874
        mmTop = 7938
        mmWidth = 32015
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'ITBIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3725
        mmLeft = 8474
        mmTop = 12171
        mmWidth = 25135
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText24: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Itbis'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4064
        mmLeft = 33874
        mmTop = 12171
        mmWidth = 32015
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Sub Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3725
        mmLeft = 8474
        mmTop = 3704
        mmWidth = 25135
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText25: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        DataField = 'SubTotal'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4064
        mmLeft = 33874
        mmTop = 3704
        mmWidth = 32015
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel23: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4064
        mmLeft = 8474
        mmTop = 16140
        mmWidth = 25135
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText26: TppDBText
        UserName = 'DBText15'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plrptFactura
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 6350
        mmLeft = 33867
        mmTop = 16404
        mmWidth = 32015
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel24: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '________________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 4499
        mmTop = 0
        mmWidth = 64294
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        UserName = 'Label16'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '-------------------------------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 21960
        mmWidth = 80169
        BandType = 7
        LayerName = Foreground1
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        mmHeight = 5027
        mmLeft = 0
        mmTop = 26194
        mmWidth = 73660
        BandType = 7
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          PrinterSetup.BinName = 'Alimentaci'#243'n continua: '
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Custom'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 1270
          PrinterSetup.mmMarginRight = 1270
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 101600
          PrinterSetup.mmPaperWidth = 76200
          PrinterSetup.PaperSize = 188
          Version = '15.02'
          mmColumnWidth = 73660
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 5556
            mmPrintPosition = 0
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              HyperlinkEnabled = False
              DataField = 'idFormaPago'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Device Font 10cpi'
              Font.Pitch = fpFixed
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 4240
              mmTop = 529
              mmWidth = 30956
              BandType = 4
              LayerName = PageLayer1
            end
            object ppDBText9: TppDBText
              UserName = 'DBText1'
              HyperlinkEnabled = False
              AutoSize = True
              DataField = 'Monto'
              DisplayFormat = '#,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Device Font 10cpi'
              Font.Pitch = fpFixed
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 61119
              mmTop = 529
              mmWidth = 1852
              BandType = 4
              LayerName = PageLayer1
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 14288
            mmPrintPosition = 0
            object calcTotalPago: TppDBCalc
              UserName = 'calcTotalPago'
              HyperlinkEnabled = False
              AutoSize = True
              DataField = 'Monto'
              DisplayFormat = '#,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Device Font 10cpi'
              Font.Pitch = fpFixed
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 41804
              mmTop = 794
              mmWidth = 21167
              BandType = 7
              LayerName = PageLayer1
            end
            object ppLine1: TppLine
              UserName = 'Line1'
              Weight = 0.750000000000000000
              mmHeight = 735
              mmLeft = 265
              mmTop = 0
              mmWidth = 62706
              BandType = 7
              LayerName = PageLayer1
            end
            object ppLine2: TppLine
              UserName = 'Line2'
              Weight = 0.750000000000000000
              mmHeight = 833
              mmLeft = 32015
              mmTop = 5556
              mmWidth = 30956
              BandType = 7
              LayerName = PageLayer1
            end
            object ppLabel3: TppLabel
              UserName = 'Label1'
              Caption = 'Cambio'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Device Font 10cpi'
              Font.Pitch = fpFixed
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4233
              mmLeft = 4240
              mmTop = 7944
              mmWidth = 12700
              BandType = 7
              LayerName = PageLayer1
            end
            object ppVariable1: TppVariable
              UserName = 'Variable1'
              BlankWhenZero = False
              CalcOrder = 0
              DataType = dtCurrency
              DisplayFormat = '#,0.00;(#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Device Font 10cpi'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 48683
              mmTop = 7938
              mmWidth = 14288
              BandType = 7
              LayerName = PageLayer1
            end
          end
          object raCodeModule1: TraCodeModule
            ProgramStream = {00}
          end
          object ppDesignLayers1: TppDesignLayers
            object ppDesignLayer1: TppDesignLayer
              UserName = 'PageLayer1'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo2'
        CharWrap = False
        DataField = 'Nota'
        DataPipeline = plrptFactura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        RemoveEmptyLines = False
        ShiftRelativeTo = ppSubReport1
        Stretch = True
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 4498
        mmLeft = 12700
        mmTop = 37043
        mmWidth = 48948
        BandType = 7
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText23'
        AutoSize = True
        DataField = 'usuario'
        DataPipeline = plrptFactura
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 10cpi'
        Font.Pitch = fpFixed
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plrptFactura'
        mmHeight = 3969
        mmLeft = 4763
        mmTop = 32279
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground1
      end
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {00}
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object plrptFactura: TppDBPipeline
    DataSource = dsRptFactura
    UserName = 'plRptFactura'
    Left = 186
    Top = 148
  end
  object dsRptFactura: TDataSource
    DataSet = rptFactura
    Left = 106
    Top = 148
  end
  object rptFactura: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'RPTFactura;1'
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
        Name = '@idFactura'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 23
    Top = 153
    object rptFacturaidFactura: TGuidField
      FieldName = 'idFactura'
      FixedChar = True
      Size = 38
    end
    object rptFacturaFactura: TStringField
      FieldName = 'Factura'
      Size = 16
    end
    object rptFacturaCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object rptFacturaContacto: TStringField
      FieldName = 'Contacto'
      Size = 50
    end
    object rptFacturaDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object rptFacturaSector: TStringField
      FieldName = 'Sector'
    end
    object rptFacturaTelefono: TStringField
      FieldName = 'Telefono'
    end
    object rptFacturaEmpleado: TStringField
      FieldName = 'Empleado'
      Size = 40
    end
    object rptFacturaCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object rptFacturaFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rptFacturaReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rptFacturaCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object rptFacturaCondicion: TStringField
      FieldName = 'Condicion'
      Size = 50
    end
    object rptFacturaCredito: TBooleanField
      FieldName = 'Credito'
    end
    object rptFacturaSubTotal: TBCDField
      FieldName = 'SubTotal'
      Precision = 18
      Size = 2
    end
    object rptFacturaItbis: TBCDField
      FieldName = 'Itbis'
      Precision = 18
      Size = 2
    end
    object rptFacturaDescuento: TBCDField
      FieldName = 'Descuento'
      Precision = 19
      Size = 2
    end
    object rptFacturaTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
      Size = 2
    end
    object rptFacturaNota: TStringField
      FieldName = 'Nota'
      Size = 600
    end
    object rptFacturaidClienteObra: TStringField
      FieldName = 'idClienteObra'
      Size = 25
    end
    object rptFacturaidFacturaDet: TGuidField
      FieldName = 'idFacturaDet'
      FixedChar = True
      Size = 38
    end
    object rptFacturaDetidProducto: TStringField
      FieldName = 'DetidProducto'
      Size = 25
    end
    object rptFacturaDetProducto: TStringField
      FieldName = 'DetProducto'
      Size = 120
    end
    object rptFacturaDetCantidad: TFloatField
      FieldName = 'DetCantidad'
    end
    object rptFacturaDetPrecio: TBCDField
      FieldName = 'DetPrecio'
      Precision = 18
      Size = 2
    end
    object rptFacturaDetDescuento: TBCDField
      FieldName = 'DetDescuento'
      Precision = 18
      Size = 2
    end
    object rptFacturaDetITBIS: TBCDField
      FieldName = 'DetITBIS'
      Precision = 18
      Size = 2
    end
    object rptFacturaDetLineTotal: TBCDField
      FieldName = 'DetLineTotal'
      Precision = 18
      Size = 2
    end
    object rptFacturacoCompania: TStringField
      FieldName = 'coCompania'
      Size = 50
    end
    object rptFacturacoDireccion: TStringField
      FieldName = 'coDireccion'
      Size = 120
    end
    object rptFacturacoTelefono: TStringField
      FieldName = 'coTelefono'
      Size = 15
    end
    object rptFacturacoFax: TStringField
      FieldName = 'coFax'
      Size = 15
    end
    object rptFacturacoRNC: TStringField
      FieldName = 'coRNC'
    end
    object rptFacturaOrdComp: TStringField
      FieldName = 'OrdComp'
      Size = 16
    end
    object rptFacturaidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object rptFacturaidUnidad: TStringField
      FieldName = 'idUnidad'
      Size = 16
    end
    object rptFacturaVencimiento: TDateTimeField
      FieldName = 'Vencimiento'
      ReadOnly = True
    end
    object rptFacturaNota2: TStringField
      FieldName = 'Nota2'
      Size = 600
    end
    object rptFacturaCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object rptFacturaClienteRNC: TStringField
      FieldName = 'ClienteRNC'
    end
    object rptFacturaTipoNCF: TStringField
      FieldName = 'TipoNCF'
      Size = 50
    end
    object rptFacturaEspecificacion: TStringField
      FieldName = 'Especificacion'
      Size = 5000
    end
    object rptFacturaidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rptFacturaMoneda: TStringField
      FieldName = 'Moneda'
    end
    object rptFacturaFax: TStringField
      FieldName = 'Fax'
    end
    object rptFacturaLinea: TIntegerField
      FieldName = 'Linea'
    end
    object rptFacturaNumeroSuplidor: TStringField
      FieldName = 'NumeroSuplidor'
      Size = 16
    end
    object rptFacturaDias: TBCDField
      FieldName = 'Dias'
      Precision = 19
      Size = 2
    end
    object rptFacturaPrecioDia: TBCDField
      FieldName = 'PrecioDia'
      Precision = 19
    end
    object rptFacturaCelular: TStringField
      FieldName = 'Celular'
    end
    object rptFacturahora: TDateTimeField
      FieldName = 'hora'
    end
    object rptFacturaemail: TStringField
      FieldName = 'email'
      Size = 80
    end
    object rptFacturaObservacion: TStringField
      FieldName = 'Observacion'
      Size = 200
    end
    object rptFacturaUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object rptFacturaidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object rptFacturaClienteObra: TStringField
      FieldName = 'ClienteObra'
      Size = 100
    end
    object rptFacturaNetLineTotal: TBCDField
      FieldName = 'NetLineTotal'
      ReadOnly = True
      Precision = 20
      Size = 2
    end
    object rptFacturaPagadoCon: TBCDField
      FieldName = 'PagadoCon'
      ReadOnly = True
      Precision = 21
      Size = 2
    end
    object rptFacturaDevuelta: TBCDField
      FieldName = 'Devuelta'
      ReadOnly = True
      Precision = 22
      Size = 2
    end
    object rptFacturaFechaVenceNCF: TDateTimeField
      FieldName = 'FechaVenceNCF'
    end
  end
end

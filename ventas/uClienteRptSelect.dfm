inherited ClienteRptSelect: TClienteRptSelect
  Left = 275
  Top = 166
  Caption = 'Clientes'
  ClientHeight = 459
  ClientWidth = 772
  Color = 14870499
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Gradient2: TGradient [0]
    Left = 0
    Top = 0
    Width = 772
    Height = 29
    Align = alTop
    ColorEnd = 14898176
    Style = gsLinearH
  end
  object Gradient1: TGradient [1]
    Left = 0
    Top = 29
    Width = 772
    Height = 4
    Align = alTop
    ColorBegin = 4227327
    ColorEnd = 16767681
    Style = gsReflectedV
  end
  object Gradient3: TGradient [2]
    Left = 8
    Top = 421
    Width = 757
    Height = 3
    Align = alCustom
    ColorBegin = 4227327
    ColorEnd = 16767681
    Style = gsReflectedV
  end
  object cxButton2: TcxButton [3]
    Left = 674
    Top = 427
    Width = 95
    Height = 28
    Caption = 'Salir'
    TabOrder = 0
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton1: TcxButton [4]
    Left = 572
    Top = 427
    Width = 95
    Height = 28
    Caption = 'Imprimir'
    TabOrder = 1
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cbActivo: TcxCheckBox [5]
    Left = 542
    Top = 39
    Width = 121
    Height = 21
    Caption = 'Activo'
    ParentFont = False
    State = cbsChecked
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    TabOrder = 2
  end
  object cxGrid1: TcxGrid [6]
    Left = 4
    Top = 67
    Width = 765
    Height = 351
    TabOrder = 3
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'IdCliente'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      object cxGrid1DBTableView1IdCliente: TcxGridDBColumn
        DataBinding.FieldName = 'IdCliente'
        Width = 69
      end
      object cxGrid1DBTableView1Cliente: TcxGridDBColumn
        DataBinding.FieldName = 'Cliente'
        Width = 251
      end
      object cxGrid1DBTableView1Contacto: TcxGridDBColumn
        DataBinding.FieldName = 'Contacto'
        Width = 218
      end
      object cxGrid1DBTableView1Direccion: TcxGridDBColumn
        DataBinding.FieldName = 'Direccion'
        Width = 240
      end
      object cxGrid1DBTableView1Ciudad: TcxGridDBColumn
        DataBinding.FieldName = 'Ciudad'
      end
      object cxGrid1DBTableView1Telefono: TcxGridDBColumn
        DataBinding.FieldName = 'Telefono'
      end
      object cxGrid1DBTableView1Fax: TcxGridDBColumn
        DataBinding.FieldName = 'Fax'
      end
      object cxGrid1DBTableView1Rnc_Cedula: TcxGridDBColumn
        DataBinding.FieldName = 'Rnc_Cedula'
        Width = 117
      end
      object cxGrid1DBTableView1eMail: TcxGridDBColumn
        DataBinding.FieldName = 'eMail'
        Width = 209
      end
      object cxGrid1DBTableView1Sector: TcxGridDBColumn
        DataBinding.FieldName = 'Sector'
      end
      object cxGrid1DBTableView1LimiteCredito: TcxGridDBColumn
        DataBinding.FieldName = 'LimiteCredito'
      end
      object cxGrid1DBTableView1Descuento: TcxGridDBColumn
        DataBinding.FieldName = 'Descuento'
        Width = 76
      end
      object cxGrid1DBTableView1Condicion: TcxGridDBColumn
        DataBinding.FieldName = 'Condicion'
        Width = 97
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton3: TcxButton [7]
    Left = 468
    Top = 427
    Width = 95
    Height = 28
    Anchors = [akTop, akRight]
    Caption = 'Exportar a Excel'
    TabOrder = 4
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton4: TcxButton [8]
    Left = 673
    Top = 35
    Width = 95
    Height = 28
    Anchors = [akTop, akRight]
    Caption = 'Mostrar'
    TabOrder = 5
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    DataSet = spClienteRpt
    Left = 271
    Top = 245
  end
  object spClienteRpt: TADOStoredProc
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    ProcedureName = 'ClienteRpt;1'
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
    Left = 216
    Top = 246
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
    object spClienteRpteMail: TStringField
      FieldName = 'eMail'
      Size = 80
    end
    object spClienteRptSector: TStringField
      FieldName = 'Sector'
    end
    object spClienteRptLimiteCredito: TBCDField
      FieldName = 'LimiteCredito'
      Precision = 19
      Size = 2
    end
    object spClienteRptDescuento: TFloatField
      FieldName = 'Descuento'
    end
    object spClienteRptCondicion: TIntegerField
      FieldName = 'Condicion'
    end
  end
  object plCliente: TppDBPipeline
    DataSource = DS
    UserName = 'plCliente'
    Left = 154
    Top = 242
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
    object plClienteppField9: TppField
      FieldAlias = 'eMail'
      FieldName = 'eMail'
      FieldLength = 80
      DisplayWidth = 80
      Position = 8
    end
    object plClienteppField10: TppField
      FieldAlias = 'Sector'
      FieldName = 'Sector'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object plClienteppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'LimiteCredito'
      FieldName = 'LimiteCredito'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 10
    end
    object plClienteppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Descuento'
      FieldName = 'Descuento'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object plClienteppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'Condicion'
      FieldName = 'Condicion'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
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
    Left = 40
    Top = 246
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plCliente'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 29104
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = clSilver
        mmHeight = 5821
        mmLeft = 0
        mmTop = 23283
        mmWidth = 266436
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 1058
        mmWidth = 78581
        BandType = 0
      end
      object ppLabel1: TppLabel
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
      object ppLabel2: TppLabel
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
      object ppLabel3: TppLabel
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
      object ppLabel4: TppLabel
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
      object ppLabel5: TppLabel
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
      object ppLabel6: TppLabel
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
      object ppLabel7: TppLabel
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
      object ppLabel8: TppLabel
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
      object ppLabel9: TppLabel
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
      object ppLabel10: TppLabel
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
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText2: TppDBText
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
      object ppDBMemo1: TppDBMemo
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
      object ppDBMemo2: TppDBMemo
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
      object ppDBMemo3: TppDBMemo
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
      object ppDBText3: TppDBText
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
      object ppDBText4: TppDBText
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
      object ppDBText5: TppDBText
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
      object ppDBText6: TppDBText
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
      object ppDBMemo4: TppDBMemo
        UserName = 'DBMemo4'
        CharWrap = False
        DataField = 'eMail'
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
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = clSilver
        mmHeight = 5821
        mmLeft = 0
        mmTop = 265
        mmWidth = 266436
        BandType = 7
      end
      object ppLabel11: TppLabel
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
      object ppDBCalc1: TppDBCalc
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
    object ppParameterList1: TppParameterList
    end
  end
  object OpenFile: TOpenDialog
    DefaultExt = 'xls'
    Filter = 'xls'
    Left = 316
    Top = 314
  end
end

inherited ConsultaClienteLimiteCrBalance: TConsultaClienteLimiteCrBalance
  Left = 268
  Top = 213
  Caption = 'Consulta de Clientes (Balance)'
  ClientHeight = 457
  ClientWidth = 792
  Color = 14870499
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Tahoma'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Gradient2: TGradient
    Left = 0
    Top = 0
    Width = 792
    Height = 33
    Align = alTop
    ColorEnd = 14898176
    Style = gsLinearH
  end
  object Gradient1: TGradient
    Left = 0
    Top = 33
    Width = 792
    Height = 4
    Align = alTop
    ColorBegin = 4227327
    ColorEnd = 16767681
    Style = gsReflectedV
  end
  object Label1: TLabel
    Left = 34
    Top = 48
    Width = 33
    Height = 13
    Caption = 'Fecha:'
  end
  object Gradient3: TGradient
    Left = 4
    Top = 420
    Width = 785
    Height = 4
    Align = alCustom
    Anchors = [akLeft, akTop, akRight]
    ColorBegin = 4227327
    ColorEnd = 16767681
    Style = gsReflectedV
  end
  object cxButton4: TcxButton
    Left = 694
    Top = 40
    Width = 95
    Height = 28
    Anchors = [akTop, akRight]
    Caption = 'Mostrar'
    TabOrder = 0
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton
    Left = 496
    Top = 427
    Width = 95
    Height = 28
    Anchors = [akTop, akRight]
    Caption = 'Exportar a Excel'
    TabOrder = 1
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton1: TcxButton
    Left = 596
    Top = 427
    Width = 95
    Height = 28
    Anchors = [akTop, akRight]
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton
    Left = 694
    Top = 427
    Width = 95
    Height = 28
    Anchors = [akTop, akRight]
    Caption = 'Salir'
    TabOrder = 3
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid
    Left = 5
    Top = 72
    Width = 782
    Height = 345
    TabOrder = 4
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsClienteBalance
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'IdCliente'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      object cxGrid1DBTableView1IdCliente: TcxGridDBColumn
        DataBinding.FieldName = 'IdCliente'
      end
      object cxGrid1DBTableView1Cliente: TcxGridDBColumn
        DataBinding.FieldName = 'Cliente'
      end
      object cxGrid1DBTableView1Condicion: TcxGridDBColumn
        DataBinding.FieldName = 'Condicion'
        Width = 138
      end
      object cxGrid1DBTableView1LimiteCredito: TcxGridDBColumn
        DataBinding.FieldName = 'LimiteCredito'
      end
      object cxGrid1DBTableView1Balance: TcxGridDBColumn
        DataBinding.FieldName = 'Balance'
        Width = 147
      end
      object cxGrid1DBTableView1Zona: TcxGridDBColumn
        DataBinding.FieldName = 'Zona'
        Width = 208
      end
      object cxGrid1DBTableView1Vendedor: TcxGridDBColumn
        DataBinding.FieldName = 'Vendedor'
        Width = 172
      end
      object cxGrid1DBTableView1FactUlt6Meses: TcxGridDBColumn
        DataBinding.FieldName = 'FactUlt6Meses'
        Width = 127
      end
      object cxGrid1DBTableView1Ciudad: TcxGridDBColumn
        DataBinding.FieldName = 'Ciudad'
      end
      object cxGrid1DBTableView1ClienteGrupo: TcxGridDBColumn
        DataBinding.FieldName = 'ClienteGrupo'
        Width = 160
      end
      object cxGrid1DBTableView1RNC_Cedula: TcxGridDBColumn
        DataBinding.FieldName = 'RNC_Cedula'
      end
      object cxGrid1DBTableView1Descuento: TcxGridDBColumn
        DataBinding.FieldName = 'Descuento'
      end
      object cxGrid1DBTableView1Direccion: TcxGridDBColumn
        DataBinding.FieldName = 'Direccion'
        Width = 284
      end
      object cxGrid1DBTableView1Sector: TcxGridDBColumn
        DataBinding.FieldName = 'Sector'
      end
      object cxGrid1DBTableView1Telefono: TcxGridDBColumn
        DataBinding.FieldName = 'Telefono'
      end
      object cxGrid1DBTableView1Fax: TcxGridDBColumn
        DataBinding.FieldName = 'Fax'
      end
      object cxGrid1DBTableView1EMail: TcxGridDBColumn
        DataBinding.FieldName = 'EMail'
        Width = 278
      end
      object cxGrid1DBTableView1Contacto: TcxGridDBColumn
        DataBinding.FieldName = 'Contacto'
      end
      object cxGrid1DBTableView1ComisionFactor: TcxGridDBColumn
        DataBinding.FieldName = 'ComisionFactor'
      end
      object cxGrid1DBTableView1ClienteStatus: TcxGridDBColumn
        DataBinding.FieldName = 'ClienteStatus'
        Width = 97
      end
      object cxGrid1DBTableView1ClienteTipo: TcxGridDBColumn
        DataBinding.FieldName = 'ClienteTipo'
        Width = 190
      end
      object cxGrid1DBTableView1Grupo: TcxGridDBColumn
        DataBinding.FieldName = 'Grupo'
        Width = 81
      end
      object cxGrid1DBTableView1ListaPrecio: TcxGridDBColumn
        DataBinding.FieldName = 'ListaPrecio'
        Width = 144
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object dtpFecha: TcxDateEdit
    Left = 78
    Top = 44
    Width = 121
    Height = 21
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  object cbBalGTLimCr: TcxCheckBox
    Left = 280
    Top = 45
    Width = 147
    Height = 21
    Caption = 'Balance > L'#237'mite Cr'#233'dito'
    ParentFont = False
    Properties.ValueChecked = 'True'
    State = cbsChecked
    TabOrder = 6
  end
  object rsClienteBalance: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'cxcClienteLimiteCrBalanceRpt;1'
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
      end
      item
        Name = '@BalGTLimCr'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 380
    Top = 142
    object rsClienteBalanceIdCliente: TIntegerField
      FieldName = 'IdCliente'
    end
    object rsClienteBalanceCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object rsClienteBalanceCondicion: TStringField
      FieldName = 'Condicion'
      Size = 50
    end
    object rsClienteBalanceLimiteCredito: TBCDField
      FieldName = 'LimiteCredito'
      DisplayFormat = '#,0.00'
      Precision = 19
      Size = 2
    end
    object rsClienteBalanceBalance: TBCDField
      FieldName = 'Balance'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 2
    end
    object rsClienteBalanceZona: TStringField
      FieldName = 'Zona'
      Size = 50
    end
    object rsClienteBalanceVendedor: TStringField
      FieldName = 'Vendedor'
      Size = 40
    end
    object rsClienteBalanceFactUlt6Meses: TBCDField
      FieldName = 'FactUlt6Meses'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 2
    end
    object rsClienteBalanceCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object rsClienteBalanceClienteGrupo: TStringField
      FieldName = 'ClienteGrupo'
      Size = 50
    end
    object rsClienteBalanceRNC_Cedula: TStringField
      FieldName = 'RNC_Cedula'
    end
    object rsClienteBalanceDescuento: TFloatField
      FieldName = 'Descuento'
      DisplayFormat = '#,0.00%'
    end
    object rsClienteBalanceDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object rsClienteBalanceSector: TStringField
      FieldName = 'Sector'
    end
    object rsClienteBalanceTelefono: TStringField
      FieldName = 'Telefono'
    end
    object rsClienteBalanceFax: TStringField
      FieldName = 'Fax'
    end
    object rsClienteBalanceEMail: TStringField
      FieldName = 'EMail'
      Size = 80
    end
    object rsClienteBalanceContacto: TStringField
      FieldName = 'Contacto'
      Size = 40
    end
    object rsClienteBalanceComisionFactor: TBCDField
      FieldName = 'ComisionFactor'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object rsClienteBalanceClienteStatus: TStringField
      FieldName = 'ClienteStatus'
      Size = 50
    end
    object rsClienteBalanceClienteTipo: TStringField
      FieldName = 'ClienteTipo'
      Size = 50
    end
    object rsClienteBalanceGrupo: TStringField
      FieldName = 'Grupo'
      Size = 10
    end
    object rsClienteBalanceListaPrecio: TStringField
      FieldName = 'ListaPrecio'
      Size = 50
    end
  end
  object dsClienteBalance: TDataSource
    DataSet = rsClienteBalance
    Left = 384
    Top = 190
  end
  object plClienteBalance: TppDBPipeline
    DataSource = dsClienteBalance
    UserName = 'plClienteBalance'
    Left = 150
    Top = 184
  end
  object rptClienteBalance: TppReport
    AutoStop = False
    DataPipeline = plClienteBalance
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
    Left = 150
    Top = 232
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plClienteBalance'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 17992
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Clientes (Balance)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4255
        mmLeft = 1323
        mmTop = 11906
        mmWidth = 114300
        BandType = 1
      end
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
        mmLeft = 189177
        mmTop = 7408
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
        Transparent = True
        mmHeight = 3704
        mmLeft = 166423
        mmTop = 1323
        mmWidth = 35190
        BandType = 1
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataPipeline = plClienteBalance
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClienteBalance'
        mmHeight = 5948
        mmLeft = 1588
        mmTop = 1058
        mmWidth = 17198
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object TppShape
        UserName = 'Shape1'
        Brush.Color = clSilver
        Pen.Color = clSilver
        mmHeight = 5556
        mmLeft = 0
        mmTop = 265
        mmWidth = 203200
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Id'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 11906
        mmTop = 1323
        mmWidth = 38365
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Condicion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 75142
        mmTop = 1323
        mmWidth = 28310
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'L'#237'mite Cr.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 165100
        mmTop = 1058
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Balance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 183357
        mmTop = 1058
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Zona'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 138907
        mmTop = 1058
        mmWidth = 24342
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Vendedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 105040
        mmTop = 1323
        mmWidth = 30692
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'IdCliente'
        DataPipeline = plClienteBalance
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClienteBalance'
        mmHeight = 3439
        mmLeft = 1323
        mmTop = 0
        mmWidth = 7938
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Condicion'
        DataPipeline = plClienteBalance
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClienteBalance'
        mmHeight = 3440
        mmLeft = 74877
        mmTop = 0
        mmWidth = 28575
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'LimiteCredito'
        DataPipeline = plClienteBalance
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClienteBalance'
        mmHeight = 3440
        mmLeft = 164307
        mmTop = 0
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Balance'
        DataPipeline = plClienteBalance
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plClienteBalance'
        mmHeight = 3440
        mmLeft = 182827
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Zona'
        DataPipeline = plClienteBalance
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClienteBalance'
        mmHeight = 3440
        mmLeft = 139171
        mmTop = 0
        mmWidth = 24342
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Vendedor'
        DataPipeline = plClienteBalance
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plClienteBalance'
        mmHeight = 3440
        mmLeft = 104775
        mmTop = 0
        mmWidth = 30692
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Cliente'
        DataPipeline = plClienteBalance
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plClienteBalance'
        mmHeight = 3440
        mmLeft = 11906
        mmTop = 0
        mmWidth = 60854
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 8202
      mmPrintPosition = 0
      object TppShape
        UserName = 'Shape2'
        Brush.Color = clSilver
        Pen.Color = clSilver
        mmHeight = 5292
        mmLeft = 265
        mmTop = 1588
        mmWidth = 203200
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 2381
        mmLeft = 265
        mmTop = 794
        mmWidth = 202936
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object OpenFile: TOpenDialog
    DefaultExt = 'xls'
    Filter = 'xls'
    Left = 344
    Top = 315
  end
end

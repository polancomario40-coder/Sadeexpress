inherited ConsultaRecibosDevueltos: TConsultaRecibosDevueltos
  Left = 282
  Top = 191
  Caption = 'Consulta de Recibos'
  ClientHeight = 417
  ClientWidth = 713
  Color = 14870499
  PixelsPerInch = 96
  TextHeight = 13
  object Gradient2: TGradient [0]
    Left = 0
    Top = 0
    Width = 713
    Height = 29
    Align = alTop
    ColorEnd = 14898176
    Style = gsLinearH
  end
  object Gradient1: TGradient [1]
    Left = 0
    Top = 29
    Width = 713
    Height = 4
    Align = alTop
    ColorBegin = 4227327
    ColorEnd = 16767681
    Style = gsReflectedV
  end
  object Gradient3: TGradient [2]
    Left = 10
    Top = 379
    Width = 691
    Height = 4
    Align = alCustom
    ColorBegin = 4227327
    ColorEnd = 16767681
    Style = gsReflectedV
  end
  object Label1: TLabel [3]
    Left = 542
    Top = 8
    Width = 168
    Height = 18
    Caption = 'Cheques Devueltos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel [4]
    Left = 14
    Top = 41
    Width = 37
    Height = 13
    Caption = 'Desde :'
  end
  object Label3: TLabel [5]
    Left = 228
    Top = 41
    Width = 34
    Height = 13
    Caption = 'Hasta :'
  end
  object cxButton2: TcxButton [6]
    Left = 519
    Top = 386
    Width = 95
    Height = 28
    Caption = 'Salir'
    TabOrder = 0
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton1: TcxButton [7]
    Left = 616
    Top = 386
    Width = 95
    Height = 28
    Caption = 'Imprimir'
    TabOrder = 1
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid [8]
    Left = 4
    Top = 64
    Width = 705
    Height = 310
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.KeyFieldNames = 'idRecibo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object cxGrid1DBTableView1Compania: TcxGridDBColumn
        DataBinding.FieldName = 'Compania'
        Visible = False
      end
      object cxGrid1DBTableView1idRecibo: TcxGridDBColumn
        DataBinding.FieldName = 'idRecibo'
        Visible = False
      end
      object cxGrid1DBTableView1Recibo: TcxGridDBColumn
        DataBinding.FieldName = 'Recibo'
      end
      object cxGrid1DBTableView1idCliente: TcxGridDBColumn
        DataBinding.FieldName = 'idCliente'
      end
      object cxGrid1DBTableView1Cliente: TcxGridDBColumn
        DataBinding.FieldName = 'Cliente'
        Width = 258
      end
      object cxGrid1DBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
      end
      object cxGrid1DBTableView1FechaDevuelto: TcxGridDBColumn
        Caption = 'Fecha Devuelto'
        DataBinding.FieldName = 'FechaDevuelto'
      end
      object cxGrid1DBTableView1Valor: TcxGridDBColumn
        DataBinding.FieldName = 'Valor'
      end
      object cxGrid1DBTableView1Cancelado: TcxGridDBColumn
        DataBinding.FieldName = 'Cancelado'
        Width = 46
      end
      object cxGrid1DBTableView1NumeroChk: TcxGridDBColumn
        DataBinding.FieldName = 'NumeroChk'
      end
      object cxGrid1DBTableView1Banco: TcxGridDBColumn
        DataBinding.FieldName = 'Banco'
        Width = 213
      end
      object cxGrid1DBTableView1Moneda: TcxGridDBColumn
        DataBinding.FieldName = 'Moneda'
      end
      object cxGrid1DBTableView1idEmpleado: TcxGridDBColumn
        DataBinding.FieldName = 'idEmpleado'
      end
      object cxGrid1DBTableView1empleado: TcxGridDBColumn
        DataBinding.FieldName = 'empleado'
      end
      object cxGrid1DBTableView1Referencia: TcxGridDBColumn
        DataBinding.FieldName = 'Referencia'
        Width = 78
      end
      object cxGrid1DBTableView1Concepto: TcxGridDBColumn
        DataBinding.FieldName = 'Concepto'
        Width = 376
      end
      object cxGrid1DBTableView1Usuario: TcxGridDBColumn
        DataBinding.FieldName = 'Usuario'
      end
      object cxGrid1DBTableView1idPagoForma: TcxGridDBColumn
        DataBinding.FieldName = 'idPagoForma'
      end
      object cxGrid1DBTableView1Cobros: TcxGridDBColumn
        DataBinding.FieldName = 'Cobros'
      end
      object cxGrid1DBTableView1esCxc: TcxGridDBColumn
        DataBinding.FieldName = 'esCxc'
        Width = 59
      end
      object cxGrid1DBTableView1OtrosIng: TcxGridDBColumn
        DataBinding.FieldName = 'OtrosIng'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object dtpDesde: TcxDateEdit [9]
    Left = 54
    Top = 37
    Width = 121
    Height = 21
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  object dtpHasta: TcxDateEdit [10]
    Left = 266
    Top = 38
    Width = 121
    Height = 21
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object cxButton3: TcxButton [11]
    Left = 614
    Top = 34
    Width = 95
    Height = 28
    Caption = 'Buscar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    DataSet = spRecibosDevueltos
    Left = 179
    Top = 193
  end
  object spRecibosDevueltos: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    ProcedureName = 'svReciboDevueltoRpt;1'
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
      end>
    Left = 180
    Top = 146
    object spRecibosDevueltosCompania: TStringField
      FieldName = 'Compania'
      Size = 50
    end
    object spRecibosDevueltosidRecibo: TGuidField
      FieldName = 'idRecibo'
      FixedChar = True
      Size = 38
    end
    object spRecibosDevueltosRecibo: TStringField
      FieldName = 'Recibo'
      Size = 16
    end
    object spRecibosDevueltosidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object spRecibosDevueltosCliente: TStringField
      FieldName = 'Cliente'
      ReadOnly = True
      Size = 60
    end
    object spRecibosDevueltosesCxc: TBooleanField
      FieldName = 'esCxc'
    end
    object spRecibosDevueltosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object spRecibosDevueltosFechaDevuelto: TDateTimeField
      FieldName = 'FechaDevuelto'
    end
    object spRecibosDevueltosidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object spRecibosDevueltosempleado: TStringField
      FieldName = 'empleado'
      Size = 40
    end
    object spRecibosDevueltosReferencia: TIntegerField
      FieldName = 'Referencia'
    end
    object spRecibosDevueltosCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object spRecibosDevueltosConcepto: TStringField
      FieldName = 'Concepto'
      Size = 150
    end
    object spRecibosDevueltosUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object spRecibosDevueltosidPagoForma: TStringField
      FieldName = 'idPagoForma'
      Size = 16
    end
    object spRecibosDevueltosNumeroChk: TStringField
      FieldName = 'NumeroChk'
      Size = 16
    end
    object spRecibosDevueltosBanco: TStringField
      FieldName = 'Banco'
      Size = 100
    end
    object spRecibosDevueltosMoneda: TStringField
      FieldName = 'Moneda'
    end
    object spRecibosDevueltosValor: TBCDField
      FieldName = 'Valor'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 19
      Size = 2
    end
    object spRecibosDevueltosCobros: TBCDField
      FieldName = 'Cobros'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 19
      Size = 2
    end
    object spRecibosDevueltosOtrosIng: TBCDField
      FieldName = 'OtrosIng'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 19
      Size = 2
    end
  end
  object plRecibosDev: TppDBPipeline
    DataSource = DS
    UserName = 'plRecibosDev'
    Left = 178
    Top = 244
    object plRecibosDevppField1: TppField
      FieldAlias = 'Compania'
      FieldName = 'Compania'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plRecibosDevppField2: TppField
      FieldAlias = 'idRecibo'
      FieldName = 'idRecibo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plRecibosDevppField3: TppField
      FieldAlias = 'Recibo'
      FieldName = 'Recibo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      SelectOrder = 0
      Searchable = False
      Sortable = False
    end
    object plRecibosDevppField4: TppField
      FieldAlias = 'idCliente'
      FieldName = 'idCliente'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      SelectOrder = 1
      Searchable = False
      Sortable = False
    end
    object plRecibosDevppField5: TppField
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      SelectOrder = 2
      Searchable = False
      Sortable = False
    end
    object plRecibosDevppField6: TppField
      FieldAlias = 'esCxc'
      FieldName = 'esCxc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object plRecibosDevppField7: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      SelectOrder = 3
      Searchable = False
      Sortable = False
    end
    object plRecibosDevppField8: TppField
      FieldAlias = 'FechaDevuelto'
      FieldName = 'FechaDevuelto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      SelectOrder = 4
      Searchable = False
      Sortable = False
    end
    object plRecibosDevppField9: TppField
      FieldAlias = 'idEmpleado'
      FieldName = 'idEmpleado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object plRecibosDevppField10: TppField
      FieldAlias = 'empleado'
      FieldName = 'empleado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object plRecibosDevppField11: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object plRecibosDevppField12: TppField
      FieldAlias = 'Cancelado'
      FieldName = 'Cancelado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object plRecibosDevppField13: TppField
      FieldAlias = 'Concepto'
      FieldName = 'Concepto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object plRecibosDevppField14: TppField
      FieldAlias = 'Usuario'
      FieldName = 'Usuario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object plRecibosDevppField15: TppField
      FieldAlias = 'idPagoForma'
      FieldName = 'idPagoForma'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object plRecibosDevppField16: TppField
      FieldAlias = 'NumeroChk'
      FieldName = 'NumeroChk'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      SelectOrder = 5
      Searchable = False
      Sortable = False
    end
    object plRecibosDevppField17: TppField
      FieldAlias = 'Banco'
      FieldName = 'Banco'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      SelectOrder = 6
      Searchable = False
      Sortable = False
    end
    object plRecibosDevppField18: TppField
      FieldAlias = 'Moneda'
      FieldName = 'Moneda'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object plRecibosDevppField19: TppField
      FieldAlias = 'Valor'
      FieldName = 'Valor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      SelectOrder = 7
      Searchable = False
      Sortable = False
    end
    object plRecibosDevppField20: TppField
      FieldAlias = 'Cobros'
      FieldName = 'Cobros'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object plRecibosDevppField21: TppField
      FieldAlias = 'OtrosIng'
      FieldName = 'OtrosIng'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
  end
  object RecibosDevRpt: TppReport
    AutoStop = False
    DataPipeline = plRecibosDev
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
    Left = 172
    Top = 298
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plRecibosDev'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 24871
      mmPrintPosition = 0
      object TppShape
        UserName = 'Shape1'
        Brush.Color = 14803425
        Pen.Color = clSilver
        mmHeight = 24077
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 1
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Listado de Recibos de Cheques Devueltos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        mmHeight = 5948
        mmLeft = 265
        mmTop = 15610
        mmWidth = 162984
        BandType = 1
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 6816
        mmLeft = 1852
        mmTop = 794
        mmWidth = 97367
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
        mmLeft = 165365
        mmTop = 1323
        mmWidth = 35190
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
        mmHeight = 3704
        mmLeft = 188648
        mmTop = 6085
        mmWidth = 12171
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape2'
        Pen.Width = 2
        mmHeight = 6085
        mmLeft = 265
        mmTop = 265
        mmWidth = 202671
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Recibo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 1588
        mmTop = 1588
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'idCliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 17463
        mmTop = 1588
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 32808
        mmTop = 1588
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 89959
        mmTop = 1588
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha Dev.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 109009
        mmTop = 1588
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '# Cheque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 127529
        mmTop = 1588
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 143934
        mmTop = 1588
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 192352
        mmTop = 1588
        mmWidth = 8996
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Recibo'
        DataPipeline = plRecibosDev
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRecibosDev'
        mmHeight = 3440
        mmLeft = 1323
        mmTop = 265
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'idCliente'
        DataPipeline = plRecibosDev
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRecibosDev'
        mmHeight = 3440
        mmLeft = 20108
        mmTop = 265
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Cliente'
        DataPipeline = plRecibosDev
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRecibosDev'
        mmHeight = 3440
        mmLeft = 35719
        mmTop = 265
        mmWidth = 52917
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plRecibosDev
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRecibosDev'
        mmHeight = 3440
        mmLeft = 89694
        mmTop = 265
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'FechaDevuelto'
        DataPipeline = plRecibosDev
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRecibosDev'
        mmHeight = 3440
        mmLeft = 109802
        mmTop = 265
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'NumeroChk'
        DataPipeline = plRecibosDev
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRecibosDev'
        mmHeight = 3440
        mmLeft = 127529
        mmTop = 265
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Banco'
        DataPipeline = plRecibosDev
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRecibosDev'
        mmHeight = 3440
        mmLeft = 143934
        mmTop = 265
        mmWidth = 34131
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'Valor'
        DataPipeline = plRecibosDev
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRecibosDev'
        mmHeight = 3440
        mmLeft = 180975
        mmTop = 265
        mmWidth = 20373
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        DataField = '*'
        DataPipeline = plRecibosDev
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plRecibosDev'
        mmHeight = 3440
        mmLeft = 27517
        mmTop = 1058
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        Caption = 'Cantidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 12965
        mmTop = 1058
        mmWidth = 12700
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1852
        mmLeft = 1058
        mmTop = 265
        mmWidth = 201084
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end

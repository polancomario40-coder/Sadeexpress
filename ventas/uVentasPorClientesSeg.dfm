inherited VentasPorClienteSeg: TVentasPorClienteSeg
  Left = 218
  Top = 188
  Caption = 'Ventas por Clientes (Segmentado por Grupo)'
  ClientHeight = 455
  ClientWidth = 878
  Color = 16114392
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Gradient1: TGradient
    Left = 0
    Top = 29
    Width = 878
    Height = 4
    Align = alTop
    ColorBegin = 4227327
    ColorEnd = 16767681
    Style = gsReflectedV
  end
  object Gradient2: TGradient
    Left = 0
    Top = 0
    Width = 878
    Height = 29
    Align = alTop
    ColorEnd = 14898176
    Style = gsLinearH
  end
  object Label2: TLabel
    Left = 406
    Top = 3
    Width = 470
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Ventas por Clientes (Segmentado por Grupo)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 10
    Top = 39
    Width = 19
    Height = 13
    Caption = 'Del:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 175
    Top = 39
    Width = 13
    Height = 13
    Caption = 'Al:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Gradient3: TGradient
    Left = 3
    Top = 423
    Width = 872
    Height = 6
    Align = alCustom
    Anchors = [akLeft, akRight, akBottom]
    ColorBegin = 14898176
    ColorEnd = 16511468
    Style = gsReflectedH
  end
  object Label3: TLabel
    Left = 337
    Top = 39
    Width = 37
    Height = 13
    Caption = 'Cliente:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 529
    Top = 41
    Width = 47
    Height = 13
    Caption = 'Producto:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cxButton1: TcxButton
    Left = 779
    Top = 32
    Width = 99
    Height = 26
    Anchors = [akTop, akRight]
    Caption = 'Filtrar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    WordWrap = True
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object dtpDesde: TcxDateEdit
    Left = 36
    Top = 35
    Width = 121
    Height = 21
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object dtpHasta: TcxDateEdit
    Left = 193
    Top = 35
    Width = 121
    Height = 21
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object Grid: TcxGrid
    Left = 6
    Top = 60
    Width = 871
    Height = 362
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    LookAndFeel.NativeStyle = True
    object GridDBTableView1: TcxGridDBTableView
      DataController.DataSource = dsVentasporCliente
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'Id'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Kind = skSum
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'Descuento'
        end
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'Itbis'
        end
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'LineTotal'
        end
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'Precio'
        end
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'TotalValor'
        end
        item
          FieldName = 'DevCantidad'
        end
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'DevDescuento'
        end
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'DevItbis'
        end
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'DevLineTotal'
        end
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'DevTotalBruto'
        end
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'DevTotalNeto'
        end>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Delete.Enabled = False
      OptionsBehavior.IncSearch = True
      OptionsData.Appending = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfAlwaysVisible
      object GridDBTableView1Desde: TcxGridDBColumn
        DataBinding.FieldName = 'Desde'
        Visible = False
      end
      object GridDBTableView1Hasta: TcxGridDBColumn
        DataBinding.FieldName = 'Hasta'
        Visible = False
      end
      object GridDBTableView1idCliente: TcxGridDBColumn
        DataBinding.FieldName = 'idCliente'
      end
      object GridDBTableView1Cliente: TcxGridDBColumn
        DataBinding.FieldName = 'Cliente'
        Width = 225
      end
      object GridDBTableView1idProducto: TcxGridDBColumn
        DataBinding.FieldName = 'idProducto'
        Width = 127
      end
      object GridDBTableView1Producto: TcxGridDBColumn
        DataBinding.FieldName = 'Producto'
        Width = 167
      end
      object GridDBTableView1TotalCant: TcxGridDBColumn
        Caption = 'Total Cant.'
        DataBinding.FieldName = 'TotalCant'
        Width = 110
      end
      object GridDBTableView1TotalValor: TcxGridDBColumn
        Caption = 'Total Valor'
        DataBinding.FieldName = 'TotalValor'
        Width = 129
      end
      object GridDBTableView1fecha: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'fecha'
        Width = 81
      end
      object GridDBTableView1factura: TcxGridDBColumn
        Caption = 'Factura'
        DataBinding.FieldName = 'factura'
      end
      object GridDBTableView1referencia: TcxGridDBColumn
        Caption = 'Referencia'
        DataBinding.FieldName = 'referencia'
      end
      object GridDBTableView1Precio: TcxGridDBColumn
        DataBinding.FieldName = 'Precio'
        Width = 95
      end
      object GridDBTableView1Grupo: TcxGridDBColumn
        DataBinding.FieldName = 'Grupo'
        Width = 140
      end
      object GridDBTableView1Categoria: TcxGridDBColumn
        DataBinding.FieldName = 'Categoria'
        Width = 179
      end
      object GridDBTableView1Vendedor: TcxGridDBColumn
        DataBinding.FieldName = 'Vendedor'
        Width = 162
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridDBTableView1
    end
  end
  object cxButton2: TcxButton
    Left = 768
    Top = 428
    Width = 108
    Height = 26
    Anchors = [akRight, akBottom]
    Caption = 'Cerrar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 4
    WordWrap = True
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton
    Left = 654
    Top = 428
    Width = 108
    Height = 26
    Anchors = [akRight, akBottom]
    Caption = 'Exportar Excel'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    WordWrap = True
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object edtIdCliente: TcxTextEdit
    Left = 384
    Top = 36
    Width = 121
    Height = 21
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 6
    Text = '-1'
  end
  object edtProducto: TcxTextEdit
    Left = 582
    Top = 36
    Width = 121
    Height = 21
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 7
  end
  object cxButton4: TcxButton
    Left = 540
    Top = 428
    Width = 108
    Height = 26
    Anchors = [akRight, akBottom]
    Caption = 'Imprimir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    WordWrap = True
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  object spVentasxClientesSeg: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'svVentasPorClienteSeg;1'
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
    Left = 120
    Top = 118
    object spVentasxClientesSegDesde: TDateTimeField
      FieldName = 'Desde'
      ReadOnly = True
    end
    object spVentasxClientesSegHasta: TDateTimeField
      FieldName = 'Hasta'
      ReadOnly = True
    end
    object spVentasxClientesSegidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object spVentasxClientesSegCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object spVentasxClientesSegidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object spVentasxClientesSegProducto: TStringField
      FieldName = 'Producto'
      Size = 100
    end
    object spVentasxClientesSegTotalCant: TFloatField
      FieldName = 'TotalCant'
      ReadOnly = True
    end
    object spVentasxClientesSegTotalValor: TBCDField
      FieldName = 'TotalValor'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object spVentasxClientesSegfecha: TDateTimeField
      FieldName = 'fecha'
    end
    object spVentasxClientesSegfactura: TStringField
      FieldName = 'factura'
      Size = 16
    end
    object spVentasxClientesSegreferencia: TStringField
      FieldName = 'referencia'
    end
    object spVentasxClientesSegPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 19
      Size = 5
    end
    object spVentasxClientesSegGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
    object spVentasxClientesSegCategoria: TStringField
      FieldName = 'Categoria'
      Size = 50
    end
    object spVentasxClientesSegId: TGuidField
      FieldName = 'Id'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object spVentasxClientesSegVendedor: TStringField
      FieldName = 'Vendedor'
      Size = 40
    end
  end
  object dsVentasporCliente: TDataSource
    DataSet = spVentasxClientesSeg
    Left = 118
    Top = 166
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
    Left = 118
    Top = 278
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
        DataField = 'Hasta'
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
      mmHeight = 9790
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
    object ppGroup1: TppGroup
      BreakName = 'Grupo'
      DataPipeline = plVentasporCliente
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plVentasporCliente'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 10583
        mmPrintPosition = 0
        object ppLabel1: TppLabel
          UserName = 'Label2'
          HyperlinkEnabled = False
          Caption = 'Grupo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5101
          mmLeft = 6615
          mmTop = 2646
          mmWidth = 14520
          BandType = 3
          GroupNo = 0
        end
        object ppDBText1: TppDBText
          UserName = 'DBText2'
          HyperlinkEnabled = False
          DataField = 'Grupo'
          DataPipeline = plVentasporCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plVentasporCliente'
          mmHeight = 5027
          mmLeft = 23813
          mmTop = 2646
          mmWidth = 146050
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 8202
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc102'
          HyperlinkEnabled = False
          DataField = 'TotalValor'
          DataPipeline = plVentasporCliente
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasporCliente'
          mmHeight = 3831
          mmLeft = 176213
          mmTop = 2910
          mmWidth = 27252
          BandType = 5
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 1323
          mmLeft = 9525
          mmTop = 2117
          mmWidth = 193940
          BandType = 5
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label3'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total del Grupo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3831
          mmLeft = 135467
          mmTop = 2910
          mmWidth = 37571
          BandType = 5
          GroupNo = 0
        end
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
    object ppParameterList1: TppParameterList
    end
  end
  object plVentasporCliente: TppDBPipeline
    DataSource = dsVentasporCliente
    UserName = 'plVentasporCliente'
    Left = 118
    Top = 222
  end
  object OpenFile: TOpenDialog
    DefaultExt = 'xls'
    FileName = 'Datos'
    Filter = 'xls|*.xls'
    Left = 594
    Top = 156
  end
end

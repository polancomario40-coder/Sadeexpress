inherited VentasPorProductos: TVentasPorProductos
  Left = 192
  Top = 144
  Caption = 'Ventas por Productos'
  ClientHeight = 565
  ClientWidth = 988
  Color = 16114392
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Gradient1: TGradient
    Left = 0
    Top = 29
    Width = 988
    Height = 4
    Align = alTop
    ColorBegin = 4227327
    ColorEnd = 16767681
    Style = gsReflectedV
  end
  object Gradient2: TGradient
    Left = 0
    Top = 0
    Width = 988
    Height = 29
    Align = alTop
    ColorEnd = 14898176
    Style = gsLinearH
  end
  object Label2: TLabel
    Left = 760
    Top = 4
    Width = 225
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Ventas por Productos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 20
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
  object Gradient3: TGradient
    Left = 3
    Top = 527
    Width = 983
    Height = 6
    Align = alCustom
    Anchors = [akLeft, akRight, akBottom]
    ColorBegin = 14898176
    ColorEnd = 16511468
    Style = gsReflectedH
  end
  object Label1: TLabel
    Left = 194
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
  object dtpDesde: TcxDateEdit
    Left = 46
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
    TabOrder = 0
  end
  object cxButton1: TcxButton
    Left = 886
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
    TabOrder = 1
    WordWrap = True
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton
    Left = 878
    Top = 535
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
    TabOrder = 2
    WordWrap = True
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object Grid: TcxGrid
    Left = 3
    Top = 60
    Width = 982
    Height = 459
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
      DataController.DataSource = dsVentasPorProducto
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'Id'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
          Column = GridDBTableView1DescuentoDet
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
          Column = GridDBTableView1Itbis
        end
        item
          Kind = skSum
          Column = GridDBTableView1Itbis
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
          Column = GridDBTableView1Precio
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
          Column = GridDBTableView1LineTotal
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
          Column = GridDBTableView1TotalValor
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'Descuento'
          Column = GridDBTableView1DescuentoDet
        end
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'Itbis'
          Column = GridDBTableView1Itbis
        end
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'LineTotal'
          Column = GridDBTableView1LineTotal
        end
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'Precio'
          Column = GridDBTableView1Precio
        end
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'TotalValor'
          Column = GridDBTableView1TotalValor
        end
        item
          FieldName = 'DevCantidad'
          Column = GridDBTableView1DBColumn2
        end
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'DevDescuento'
          Column = GridDBTableView1DBColumn3
        end
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'DevItbis'
          Column = GridDBTableView1DBColumn4
        end
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'DevLineTotal'
          Column = GridDBTableView1DBColumn5
        end
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'DevTotalBruto'
          Column = GridDBTableView1DBColumn6
        end
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'DevTotalNeto'
          Column = GridDBTableView1DBColumn7
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
        Width = 204
      end
      object GridDBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'Grupo'
        Width = 169
      end
      object GridDBTableView1idProducto: TcxGridDBColumn
        DataBinding.FieldName = 'idProducto'
        Width = 128
      end
      object GridDBTableView1Producto: TcxGridDBColumn
        DataBinding.FieldName = 'Producto'
        Width = 292
      end
      object GridDBTableView1fecha: TcxGridDBColumn
        DataBinding.FieldName = 'fecha'
        Width = 74
      end
      object GridDBTableView1factura: TcxGridDBColumn
        DataBinding.FieldName = 'factura'
        Width = 83
      end
      object GridDBTableView1TotalCant: TcxGridDBColumn
        Caption = 'Cantidad'
        DataBinding.FieldName = 'cantidad'
      end
      object GridDBTableView1DescuentoDet: TcxGridDBColumn
        DataBinding.FieldName = 'Descuento'
      end
      object GridDBTableView1Itbis: TcxGridDBColumn
        DataBinding.FieldName = 'Itbis'
      end
      object GridDBTableView1Precio: TcxGridDBColumn
        DataBinding.FieldName = 'Precio'
      end
      object GridDBTableView1LineTotal: TcxGridDBColumn
        DataBinding.FieldName = 'LineTotal'
      end
      object GridDBTableView1TotalValor: TcxGridDBColumn
        DataBinding.FieldName = 'TotalValor'
      end
      object GridDBTableView1DBColumn8: TcxGridDBColumn
        DataBinding.FieldName = 'Almacen'
      end
      object GridDBTableView1referencia: TcxGridDBColumn
        DataBinding.FieldName = 'referencia'
      end
      object GridDBTableView1Id: TcxGridDBColumn
        DataBinding.FieldName = 'Id'
        Visible = False
      end
      object GridDBTableView1Moneda: TcxGridDBColumn
        DataBinding.FieldName = 'Moneda'
      end
      object GridDBTableView1DBColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'DevCantidad'
        Width = 100
      end
      object GridDBTableView1DBColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'DevDescuento'
        Width = 109
      end
      object GridDBTableView1DBColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'DevItbis'
        Width = 115
      end
      object GridDBTableView1DBColumn5: TcxGridDBColumn
        DataBinding.FieldName = 'DevLineTotal'
        Width = 125
      end
      object GridDBTableView1DBColumn6: TcxGridDBColumn
        DataBinding.FieldName = 'DevTotalBruto'
        Width = 124
      end
      object GridDBTableView1DBColumn7: TcxGridDBColumn
        DataBinding.FieldName = 'DevTotalNeto'
        Width = 140
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridDBTableView1
    end
  end
  object dtpHasta: TcxDateEdit
    Left = 212
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
    TabOrder = 4
  end
  object cxButton3: TcxButton
    Left = 742
    Top = 535
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
  object bImprimir: TcxButton
    Left = 616
    Top = 535
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
    TabOrder = 6
    WordWrap = True
    OnClick = bImprimirClick
    LookAndFeel.NativeStyle = True
  end
  object spVentasPorProductos: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    ProcedureName = 'svVentasPorProducto;1'
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
    Left = 356
    Top = 162
    object spVentasPorProductosDesde: TDateTimeField
      FieldName = 'Desde'
      ReadOnly = True
    end
    object spVentasPorProductosHasta: TDateTimeField
      FieldName = 'Hasta'
      ReadOnly = True
    end
    object spVentasPorProductosidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object spVentasPorProductosCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object spVentasPorProductosidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object spVentasPorProductosProducto: TStringField
      FieldName = 'Producto'
      Size = 100
    end
    object spVentasPorProductosfecha: TDateTimeField
      FieldName = 'fecha'
    end
    object spVentasPorProductosfactura: TStringField
      FieldName = 'factura'
      Size = 16
    end
    object spVentasPorProductosreferencia: TStringField
      FieldName = 'referencia'
    end
    object spVentasPorProductosMoneda: TStringField
      FieldName = 'Moneda'
    end
    object spVentasPorProductosItbis: TBCDField
      FieldName = 'Itbis'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object spVentasPorProductosPrecio: TBCDField
      FieldName = 'Precio'
      DisplayFormat = '#,0.00'
      Precision = 19
      Size = 5
    end
    object spVentasPorProductosLineTotal: TBCDField
      FieldName = 'LineTotal'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object spVentasPorProductosTotalValor: TBCDField
      FieldName = 'TotalValor'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 20
      Size = 2
    end
    object spVentasPorProductosId: TGuidField
      FieldName = 'Id'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object spVentasPorProductosGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
    object spVentasPorProductosVendedor: TStringField
      FieldName = 'Vendedor'
      Size = 40
    end
    object spVentasPorProductosCategoria: TStringField
      FieldName = 'Categoria'
      Size = 50
    end
    object spVentasPorProductosClienteTipo: TStringField
      FieldName = 'ClienteTipo'
      Size = 50
    end
    object spVentasPorProductoscantidad: TFloatField
      FieldName = 'cantidad'
    end
    object spVentasPorProductosDescuento: TBCDField
      FieldName = 'Descuento'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object spVentasPorProductosDevCantidad: TFloatField
      FieldName = 'DevCantidad'
      ReadOnly = True
    end
    object spVentasPorProductosDevDescuento: TBCDField
      FieldName = 'DevDescuento'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object spVentasPorProductosDevItbis: TBCDField
      FieldName = 'DevItbis'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object spVentasPorProductosDevLineTotal: TBCDField
      FieldName = 'DevLineTotal'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object spVentasPorProductosDevTotalBruto: TBCDField
      FieldName = 'DevTotalBruto'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object spVentasPorProductosDevTotalNeto: TBCDField
      FieldName = 'DevTotalNeto'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object spVentasPorProductosAlmacen: TStringField
      FieldName = 'Almacen'
      Size = 50
    end
  end
  object dsVentasPorProducto: TDataSource
    DataSet = spVentasPorProductos
    Left = 338
    Top = 238
  end
  object OpenFile: TOpenDialog
    DefaultExt = 'xls'
    FileName = 'Datos'
    Filter = 'xls|*.xls'
    Left = 594
    Top = 156
  end
  object spVentasXProductos: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    ProcedureName = 'svVentasPorProductoRpt;1'
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
    Left = 378
    Top = 382
    object spVentasXProductosId: TGuidField
      FieldName = 'Id'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object spVentasXProductosDesde: TDateTimeField
      FieldName = 'Desde'
      ReadOnly = True
    end
    object spVentasXProductosHasta: TDateTimeField
      FieldName = 'Hasta'
      ReadOnly = True
    end
    object spVentasXProductosidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object spVentasXProductosCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object spVentasXProductosfecha: TDateTimeField
      FieldName = 'fecha'
    end
    object spVentasXProductosfactura: TStringField
      FieldName = 'factura'
      Size = 16
    end
    object spVentasXProductosreferencia: TStringField
      FieldName = 'referencia'
    end
    object spVentasXProductosCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object spVentasXProductosMoneda: TStringField
      FieldName = 'Moneda'
    end
    object spVentasXProductosidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object spVentasXProductosProducto: TStringField
      FieldName = 'Producto'
      Size = 120
    end
    object spVentasXProductoscantidad: TFloatField
      FieldName = 'cantidad'
    end
    object spVentasXProductosDescuento: TBCDField
      FieldName = 'Descuento'
      ReadOnly = True
      Precision = 32
    end
    object spVentasXProductosItbis: TBCDField
      FieldName = 'Itbis'
      ReadOnly = True
      Precision = 32
    end
    object spVentasXProductosPrecio: TBCDField
      FieldName = 'Precio'
      ReadOnly = True
      Precision = 32
      Size = 7
    end
    object spVentasXProductosLineTotal: TBCDField
      FieldName = 'LineTotal'
      ReadOnly = True
      Precision = 32
    end
    object spVentasXProductosTotalValor: TBCDField
      FieldName = 'TotalValor'
      ReadOnly = True
      Precision = 32
    end
    object spVentasXProductosAlmacen: TStringField
      FieldName = 'Almacen'
      Size = 50
    end
    object spVentasXProductosTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 32
    end
  end
  object dsVentasXProductos: TDataSource
    DataSet = spVentasXProductos
    Left = 514
    Top = 384
  end
  object plVentasXProductos: TppDBPipeline
    DataSource = dsVentasXProductos
    UserName = 'plVentasXProductos'
    Left = 620
    Top = 388
  end
  object rptVentasXProductos: TppReport
    AutoStop = False
    DataPipeline = plVentasXProductos
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
    Left = 720
    Top = 390
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plVentasXProductos'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 28575
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        Caption = 'Ventas con detalle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 79640
        mmTop = 14552
        mmWidth = 43921
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        Caption = 'Desde:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 1250
        mmTop = 20638
        mmWidth = 9737
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        Caption = 'Hasta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 35190
        mmTop = 20638
        mmWidth = 9059
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3429
        mmLeft = 170127
        mmTop = 1058
        mmWidth = 31708
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3429
        mmLeft = 184680
        mmTop = 5821
        mmWidth = 17145
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Desde'
        DataPipeline = plVentasXProductos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVentasXProductos'
        mmHeight = 3969
        mmLeft = 12435
        mmTop = 20638
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Hasta'
        DataPipeline = plVentasXProductos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVentasXProductos'
        mmHeight = 4233
        mmLeft = 44979
        mmTop = 20638
        mmWidth = 16933
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 20
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 8467
        mmLeft = 794
        mmTop = 529
        mmWidth = 133086
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'idProducto'
        DataPipeline = plVentasXProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVentasXProductos'
        mmHeight = 3440
        mmLeft = 1323
        mmTop = 0
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'Producto'
        DataPipeline = plVentasXProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVentasXProductos'
        mmHeight = 3440
        mmLeft = 26988
        mmTop = 0
        mmWidth = 73554
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'cantidad'
        DataPipeline = plVentasXProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasXProductos'
        mmHeight = 3440
        mmLeft = 105834
        mmTop = 0
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'Precio'
        DataPipeline = plVentasXProductos
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasXProductos'
        mmHeight = 3440
        mmLeft = 120915
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        DataField = 'LineTotal'
        DataPipeline = plVentasXProductos
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasXProductos'
        mmHeight = 3440
        mmLeft = 137319
        mmTop = 0
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkEnabled = False
        DataField = 'Almacen'
        DataPipeline = plVentasXProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVentasXProductos'
        mmHeight = 3440
        mmLeft = 158221
        mmTop = 0
        mmWidth = 44186
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'factura'
      DataPipeline = plVentasXProductos
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plVentasXProductos'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 16933
        mmPrintPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Brush.Color = 14872561
          Pen.Color = 11522776
          Pen.Width = 2
          mmHeight = 16669
          mmLeft = 0
          mmTop = 264
          mmWidth = 203200
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Factura:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 1323
          mmTop = 1058
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          HyperlinkEnabled = False
          DataField = 'factura'
          DataPipeline = plVentasXProductos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plVentasXProductos'
          mmHeight = 3440
          mmLeft = 16404
          mmTop = 1058
          mmWidth = 22490
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Referencia:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 40217
          mmTop = 1058
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
        end
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          HyperlinkEnabled = False
          DataField = 'referencia'
          DataPipeline = plVentasXProductos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plVentasXProductos'
          mmHeight = 3440
          mmLeft = 57679
          mmTop = 1058
          mmWidth = 28310
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Fecha:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 142082
          mmTop = 1058
          mmWidth = 9260
          BandType = 3
          GroupNo = 0
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          HyperlinkEnabled = False
          DataField = 'fecha'
          DataPipeline = plVentasXProductos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plVentasXProductos'
          mmHeight = 3440
          mmLeft = 163248
          mmTop = 1058
          mmWidth = 39158
          BandType = 3
          GroupNo = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Cliente:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 1323
          mmTop = 5292
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          HyperlinkEnabled = False
          DataField = 'Cliente'
          DataPipeline = plVentasXProductos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plVentasXProductos'
          mmHeight = 3440
          mmLeft = 40481
          mmTop = 5292
          mmWidth = 78581
          BandType = 3
          GroupNo = 0
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Comp. Fiscal:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 142082
          mmTop = 5292
          mmWidth = 20108
          BandType = 3
          GroupNo = 0
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          HyperlinkEnabled = False
          DataField = 'CompFiscal'
          DataPipeline = plVentasXProductos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plVentasXProductos'
          mmHeight = 3440
          mmLeft = 163248
          mmTop = 5292
          mmWidth = 39158
          BandType = 3
          GroupNo = 0
        end
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          HyperlinkEnabled = False
          DataField = 'idCliente'
          DataPipeline = plVentasXProductos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasXProductos'
          mmHeight = 3440
          mmLeft = 16404
          mmTop = 5292
          mmWidth = 22225
          BandType = 3
          GroupNo = 0
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          HyperlinkEnabled = False
          Caption = 'C'#243'digo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3429
          mmLeft = 1058
          mmTop = 12171
          mmWidth = 9779
          BandType = 3
          GroupNo = 0
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          HyperlinkEnabled = False
          Caption = 'Producto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 26723
          mmTop = 12171
          mmWidth = 27781
          BandType = 3
          GroupNo = 0
        end
        object ppLabel11: TppLabel
          UserName = 'Label101'
          HyperlinkEnabled = False
          Caption = 'Cantidad'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 104775
          mmTop = 12171
          mmWidth = 14023
          BandType = 3
          GroupNo = 0
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          HyperlinkEnabled = False
          Caption = 'Precio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 125148
          mmTop = 12171
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          HyperlinkEnabled = False
          Caption = 'Importe'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 142082
          mmTop = 12171
          mmWidth = 13494
          BandType = 3
          GroupNo = 0
        end
        object ppLabel14: TppLabel
          UserName = 'Label14'
          HyperlinkEnabled = False
          Caption = 'Almacen'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 158221
          mmTop = 12171
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Pen.Color = clWhite
          Pen.Width = 3
          Weight = 2.250000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 10054
          mmWidth = 203200
          BandType = 3
          GroupNo = 0
        end
        object ppLabel15: TppLabel
          UserName = 'Label15'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 97367
          mmTop = 1323
          mmWidth = 9790
          BandType = 3
          GroupNo = 0
        end
        object ppDBText16: TppDBText
          UserName = 'DBText16'
          HyperlinkEnabled = False
          DataField = 'Total'
          DataPipeline = plVentasXProductos
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plVentasXProductos'
          mmHeight = 3440
          mmLeft = 108215
          mmTop = 1323
          mmWidth = 29633
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 1852
        mmPrintPosition = 0
        object ppLine2: TppLine
          UserName = 'Line2'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 265
          mmTop = 0
          mmWidth = 202936
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end

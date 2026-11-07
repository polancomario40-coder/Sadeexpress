inherited DevolucionList: TDevolucionList
  Left = 204
  Top = 154
  Caption = 'Consulta de Devoluciones'
  ClientHeight = 489
  ClientWidth = 782
  Color = 15922418
  Font.Name = 'Tahoma'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 12
    Top = 13
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label2: TLabel
    Left = 10
    Top = 39
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object deDesde: TcxDateEdit
    Left = 50
    Top = 9
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object deHasta: TcxDateEdit
    Left = 50
    Top = 35
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object Cancelado: TcxCheckBox
    Left = 192
    Top = 35
    Width = 83
    Height = 21
    Caption = 'Cancelados'
    Properties.ImmediatePost = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object cxButton1: TcxButton
    Left = 546
    Top = 3
    Width = 115
    Height = 27
    Caption = 'Mostrar'
    TabOrder = 3
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton
    Left = 547
    Top = 31
    Width = 115
    Height = 28
    Caption = 'Imprimir'
    TabOrder = 4
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton
    Left = 664
    Top = 2
    Width = 115
    Height = 27
    Caption = 'Salir'
    TabOrder = 5
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton4: TcxButton
    Left = 665
    Top = 32
    Width = 115
    Height = 27
    Caption = 'Exportar a Excel'
    TabOrder = 6
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 64
    Width = 782
    Height = 425
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 7
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsDevolucionList
      DataController.Filter.MaxValueListCount = 1000
      DataController.Filter.Active = True
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'idDevolucionDet'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0.00'
          Kind = skSum
          FieldName = 'DevDescuento'
          Column = cxGrid1DBTableView1DevDescuento
        end
        item
          Format = '0.00'
          Kind = skSum
          FieldName = 'DevItbis'
          Column = cxGrid1DBTableView1DevItbis
        end
        item
          Format = '0.00'
          Kind = skSum
          FieldName = 'DevLineTotal'
          Column = cxGrid1DBTableView1DevLineTotal
        end>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OnCellDblClick = cxGrid1DBTableView1CellDblClick
      Filtering.MaxDropDownCount = 12
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.IncSearch = True
      OptionsData.Editing = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      Preview.AutoHeight = False
      Preview.MaxLineCount = 2
      object cxGrid1DBTableView1idDevolucion: TcxGridDBColumn
        DataBinding.FieldName = 'idDevolucion'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 0
        Properties.ReadOnly = True
        Visible = False
        Width = 81
      end
      object cxGrid1DBTableView1Fecha: TcxGridDBColumn
        Caption = 'Fecha Dev.'
        DataBinding.FieldName = 'Fecha'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.DateButtons = [btnClear, btnToday]
        Properties.DateOnError = deToday
        Properties.InputKind = ikRegExpr
        Width = 81
      end
      object cxGrid1DBTableView1Devolucion: TcxGridDBColumn
        DataBinding.FieldName = 'Devolucion'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 16
        Properties.ReadOnly = True
        Width = 80
      end
      object cxGrid1DBTableView1idCliente: TcxGridDBColumn
        DataBinding.FieldName = 'idCliente'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.MaxLength = 0
        Properties.ReadOnly = True
        Visible = False
        Width = 38
      end
      object cxGrid1DBTableView1FechaFact: TcxGridDBColumn
        Caption = 'Fecha Fact'
        DataBinding.FieldName = 'FechaFact'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.DateButtons = [btnClear, btnToday]
        Properties.DateOnError = deToday
        Properties.InputKind = ikRegExpr
        Width = 78
      end
      object cxGrid1DBTableView1Factura: TcxGridDBColumn
        DataBinding.FieldName = 'Factura'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 16
        Properties.ReadOnly = True
        Width = 87
      end
      object cxGrid1DBTableView1idProducto: TcxGridDBColumn
        Caption = 'CodProd'
        DataBinding.FieldName = 'idProducto'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 25
        Properties.ReadOnly = True
        Width = 88
      end
      object cxGrid1DBTableView1Producto: TcxGridDBColumn
        DataBinding.FieldName = 'Producto'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 100
        Properties.ReadOnly = True
        Width = 161
      end
      object cxGrid1DBTableView1Cliente: TcxGridDBColumn
        DataBinding.FieldName = 'Cliente'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 50
        Properties.ReadOnly = True
        Width = 126
      end
      object cxGrid1DBTableView1Usuario: TcxGridDBColumn
        DataBinding.FieldName = 'Usuario'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 30
        Properties.ReadOnly = True
        Width = 67
      end
      object cxGrid1DBTableView1Moneda: TcxGridDBColumn
        DataBinding.FieldName = 'Moneda'
      end
      object cxGrid1DBTableView1DevCantidad: TcxGridDBColumn
        DataBinding.FieldName = 'DevCantidad'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.MaxLength = 0
        Properties.ReadOnly = True
        Width = 89
      end
      object cxGrid1DBTableView1idDevolucionDet: TcxGridDBColumn
        DataBinding.FieldName = 'idDevolucionDet'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 0
        Properties.ReadOnly = True
        Visible = False
        Width = 197
      end
      object cxGrid1DBTableView1DevDescuento: TcxGridDBColumn
        DataBinding.FieldName = 'DevDescuento'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.AssignedValues.MaxValue = True
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = 'RD$,0.00;-RD$,0.00'
        Properties.Nullable = False
        Properties.ReadOnly = True
        Properties.ValidateOnEnter = True
        Width = 94
      end
      object cxGrid1DBTableView1DevItbis: TcxGridDBColumn
        DataBinding.FieldName = 'DevItbis'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.AssignedValues.MaxValue = True
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = 'RD$,0.00;-RD$,0.00'
        Properties.Nullable = False
        Properties.ReadOnly = True
        Properties.ValidateOnEnter = True
        Width = 82
      end
      object cxGrid1DBTableView1DevLineTotal: TcxGridDBColumn
        DataBinding.FieldName = 'DevLineTotal'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.AssignedValues.MaxValue = True
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = 'RD$,0.00;-RD$,0.00'
        Properties.Nullable = False
        Properties.ReadOnly = True
        Properties.ValidateOnEnter = True
        Width = 94
      end
      object cxGrid1DBTableView1CodVendedor: TcxGridDBColumn
        DataBinding.FieldName = 'CodVendedor'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 0
        Properties.ReadOnly = True
        Width = 86
      end
      object cxGrid1DBTableView1Empleado: TcxGridDBColumn
        Caption = 'Vendedor'
        DataBinding.FieldName = 'Empleado'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 40
        Properties.ReadOnly = True
        Width = 100
      end
      object cxGrid1DBTableView1Cancelado: TcxGridDBColumn
        DataBinding.FieldName = 'Cancelado'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taLeftJustify
        Properties.NullStyle = nssUnchecked
        Properties.ReadOnly = True
        Properties.ValueChecked = 'True'
        Properties.ValueGrayed = ''
        Properties.ValueUnchecked = 'False'
        MinWidth = 16
        Width = 76
      end
      object cxGrid1DBTableView1FechaCancelado: TcxGridDBColumn
        DataBinding.FieldName = 'FechaCancelado'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.DateButtons = [btnClear, btnToday]
        Properties.DateOnError = deToday
        Properties.InputKind = ikRegExpr
        Width = 103
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Devoluciones: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'svDevoluciones;1'
    CommandTimeout = 120
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
        Name = '@Cancelado'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 84
    Top = 138
    object DevolucionesidDevolucion: TGuidField
      FieldName = 'idDevolucion'
      FixedChar = True
      Size = 38
    end
    object DevolucionesDevolucion: TStringField
      FieldName = 'Devolucion'
      Size = 16
    end
    object DevolucionesidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object DevolucionesCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object DevolucionesFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object DevolucionesConcepto: TStringField
      FieldName = 'Concepto'
      Size = 200
    end
    object DevolucionesidProMov: TGuidField
      FieldName = 'idProMov'
      FixedChar = True
      Size = 38
    end
    object DevolucionesDevUsuario: TStringField
      FieldName = 'DevUsuario'
      Size = 30
    end
    object DevolucionesSubTotal: TBCDField
      FieldName = 'SubTotal'
      Precision = 18
      Size = 2
    end
    object DevolucionesItbis: TBCDField
      FieldName = 'Itbis'
      Precision = 18
      Size = 2
    end
    object DevolucionesDescuento: TBCDField
      FieldName = 'Descuento'
      Precision = 18
      Size = 2
    end
    object DevolucionesTotal: TBCDField
      FieldName = 'Total'
      Precision = 18
      Size = 2
    end
    object DevolucionesCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object DevolucionesFechaCancelado: TDateTimeField
      FieldName = 'FechaCancelado'
    end
    object DevolucionesTasa: TBCDField
      FieldName = 'Tasa'
      Precision = 18
      Size = 2
    end
    object DevolucionesidDevolucionDet: TGuidField
      FieldName = 'idDevolucionDet'
      FixedChar = True
      Size = 38
    end
    object DevolucionesidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object DevolucionesProducto: TStringField
      FieldName = 'Producto'
      Size = 100
    end
    object DevolucionesDevCantidad: TFloatField
      FieldName = 'DevCantidad'
    end
    object DevolucionesDevDescuento: TBCDField
      FieldName = 'DevDescuento'
      Precision = 18
      Size = 2
    end
    object DevolucionesDevItbis: TBCDField
      FieldName = 'DevItbis'
      Precision = 18
      Size = 2
    end
    object DevolucionesDevLineTotal: TBCDField
      FieldName = 'DevLineTotal'
      Precision = 18
      Size = 2
    end
    object DevolucionesFactura: TStringField
      FieldName = 'Factura'
      Size = 16
    end
    object Devolucionesusuario: TStringField
      FieldName = 'usuario'
      Size = 30
    end
    object DevolucionesidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object DevolucionesEmpleado: TStringField
      FieldName = 'Empleado'
      Size = 40
    end
    object DevolucionesidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object DevolucionesMoneda: TStringField
      FieldName = 'Moneda'
    end
    object DevolucionesFechaFact: TDateTimeField
      FieldName = 'FechaFact'
    end
    object DevolucionesDevTotal: TBCDField
      FieldName = 'DevTotal'
      ReadOnly = True
      Precision = 20
      Size = 2
    end
  end
  object dsDevolucionList: TDataSource
    DataSet = Devoluciones
    Left = 82
    Top = 190
  end
  object RPTDevolucionList: TppReport
    AutoStop = False
    DataPipeline = plDevolucionList
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 12700
    PrinterSetup.mmMarginLeft = 12700
    PrinterSetup.mmMarginRight = 12700
    PrinterSetup.mmMarginTop = 12700
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
    Left = 82
    Top = 300
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plDevolucionList'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Width = 0
        ParentWidth = True
        Weight = 0.250000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 24871
        mmWidth = 254001
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Devolucion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4333
        mmLeft = 1323
        mmTop = 20373
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
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4333
        mmLeft = 21960
        mmTop = 20373
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
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4333
        mmLeft = 60590
        mmTop = 20373
        mmWidth = 43656
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fact. Por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4333
        mmLeft = 123296
        mmTop = 20373
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Concepto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4333
        mmLeft = 164307
        mmTop = 20373
        mmWidth = 57415
        BandType = 0
      end
      object ppLabel155: TppLabel
        UserName = 'Label155'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cant.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4333
        mmLeft = 110067
        mmTop = 20373
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Factura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4333
        mmLeft = 39952
        mmTop = 20373
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Dev. Por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4333
        mmLeft = 143404
        mmTop = 20373
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label101'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Canc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4333
        mmLeft = 244211
        mmTop = 20373
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Dev. Por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4333
        mmLeft = 221986
        mmTop = 20373
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Listado de Devoluciones y sus detalles'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 1058
        mmTop = 8996
        mmWidth = 120386
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 191559
        mmTop = 265
        mmWidth = 61648
        BandType = 0
      end
      object ppDBText175: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 20
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 8467
        mmLeft = 1058
        mmTop = 265
        mmWidth = 186002
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 201348
        mmTop = 3969
        mmWidth = 51858
        BandType = 0
      end
      object ppDBText15: TppDBText
        UserName = 'DBText16'
        HyperlinkEnabled = False
        DataField = 'Moneda'
        DataPipeline = plDevolucionList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDevolucionList'
        mmHeight = 6085
        mmLeft = 202671
        mmTop = 12435
        mmWidth = 40746
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'DevItbis'
        DataPipeline = plDevolucionList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDevolucionList'
        mmHeight = 3436
        mmLeft = 160338
        mmTop = 0
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'DevDescuento'
        DataPipeline = plDevolucionList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDevolucionList'
        mmHeight = 3436
        mmLeft = 179917
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'DevLineTotal'
        DataPipeline = plDevolucionList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDevolucionList'
        mmHeight = 3436
        mmLeft = 199496
        mmTop = 0
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'idProducto'
        DataPipeline = plDevolucionList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plDevolucionList'
        mmHeight = 3436
        mmLeft = 55033
        mmTop = 0
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'Producto'
        DataPipeline = plDevolucionList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDevolucionList'
        mmHeight = 3436
        mmLeft = 75671
        mmTop = 0
        mmWidth = 62706
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'DevCantidad'
        DataPipeline = plDevolucionList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDevolucionList'
        mmHeight = 3436
        mmLeft = 140229
        mmTop = 0
        mmWidth = 18785
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 1852
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        ParentWidth = True
        Weight = 1.000000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 0
        mmWidth = 254001
        BandType = 7
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Color = clSilver
        ParentWidth = True
        Pen.Style = psClear
        mmHeight = 5027
        mmLeft = 0
        mmTop = 265
        mmWidth = 254001
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        HyperlinkEnabled = False
        DataField = 'DevTotal'
        DataPipeline = plDevolucionList
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDevolucionList'
        mmHeight = 4333
        mmLeft = 222515
        mmTop = 529
        mmWidth = 21431
        BandType = 7
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Totales General'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4333
        mmLeft = 179388
        mmTop = 529
        mmWidth = 41010
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'Moneda'
      DataPipeline = plDevolucionList
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plDevolucionList'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'idDevolucion'
      DataPipeline = plDevolucionList
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plDevolucionList'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 9525
        mmPrintPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape2'
          Brush.Color = 14671839
          ParentWidth = True
          Pen.Style = psClear
          mmHeight = 5027
          mmLeft = 0
          mmTop = 0
          mmWidth = 254001
          BandType = 3
          GroupNo = 0
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Cod. Prod'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3436
          mmLeft = 55033
          mmTop = 6085
          mmWidth = 19844
          BandType = 3
          GroupNo = 0
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Producto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3436
          mmLeft = 75671
          mmTop = 6085
          mmWidth = 62706
          BandType = 3
          GroupNo = 0
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Cantidad Dev'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3436
          mmLeft = 140229
          mmTop = 6085
          mmWidth = 18785
          BandType = 3
          GroupNo = 0
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Descuento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3436
          mmLeft = 179917
          mmTop = 6085
          mmWidth = 18521
          BandType = 3
          GroupNo = 0
        end
        object ppLabel14: TppLabel
          UserName = 'Label14'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'itbis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3436
          mmLeft = 160338
          mmTop = 6085
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
        end
        object ppLabel17: TppLabel
          UserName = 'Label17'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total Dev'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3436
          mmLeft = 199496
          mmTop = 6085
          mmWidth = 20373
          BandType = 3
          GroupNo = 0
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 54504
          mmTop = 9260
          mmWidth = 167217
          BandType = 3
          GroupNo = 0
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          HyperlinkEnabled = False
          DataField = 'Devolucion'
          DataPipeline = plDevolucionList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plDevolucionList'
          mmHeight = 3735
          mmLeft = 1323
          mmTop = 529
          mmWidth = 19844
          BandType = 3
          GroupNo = 0
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          HyperlinkEnabled = False
          DataField = 'Fecha'
          DataPipeline = plDevolucionList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plDevolucionList'
          mmHeight = 3735
          mmLeft = 21960
          mmTop = 529
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          HyperlinkEnabled = False
          DataField = 'Cliente'
          DataPipeline = plDevolucionList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plDevolucionList'
          mmHeight = 3735
          mmLeft = 60590
          mmTop = 529
          mmWidth = 48948
          BandType = 3
          GroupNo = 0
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          HyperlinkEnabled = False
          DataField = 'usuario'
          DataPipeline = plDevolucionList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plDevolucionList'
          mmHeight = 3735
          mmLeft = 123561
          mmTop = 529
          mmWidth = 18521
          BandType = 3
          GroupNo = 0
        end
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Concepto'
          DataPipeline = plDevolucionList
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plDevolucionList'
          mmHeight = 3735
          mmLeft = 163777
          mmTop = 529
          mmWidth = 58208
          BandType = 3
          GroupNo = 0
        end
        object ppDBText154: TppDBText
          UserName = 'DBText154'
          HyperlinkEnabled = False
          DataField = 'DevCantidad'
          DataPipeline = plDevolucionList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plDevolucionList'
          mmHeight = 3735
          mmLeft = 110331
          mmTop = 529
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
        end
        object ppDBText4: TppDBText
          UserName = 'DBText5'
          HyperlinkEnabled = False
          DataField = 'Factura'
          DataPipeline = plDevolucionList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'plDevolucionList'
          mmHeight = 3735
          mmLeft = 39952
          mmTop = 529
          mmWidth = 19844
          BandType = 3
          GroupNo = 0
        end
        object ppDBText5: TppDBText
          UserName = 'DBText10'
          HyperlinkEnabled = False
          DataField = 'DevUsuario'
          DataPipeline = plDevolucionList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plDevolucionList'
          mmHeight = 3735
          mmLeft = 143669
          mmTop = 529
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
        end
        object myDBCheckBox1: TmyDBCheckBox
          UserName = 'DBCheckBox1'
          CheckBoxColor = clBlack
          BooleanFalse = 'False'
          BooleanTrue = 'True'
          DataPipeline = plDevolucionList
          DataField = 'Cancelado'
          Transparent = True
          DataPipelineName = 'plDevolucionList'
          mmHeight = 4233
          mmLeft = 247915
          mmTop = 0
          mmWidth = 3969
          BandType = 3
          GroupNo = 0
        end
        object ppDBText14: TppDBText
          UserName = 'DBText15'
          HyperlinkEnabled = False
          BlankWhenZero = True
          DataField = 'Total'
          DataPipeline = plDevolucionList
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plDevolucionList'
          mmHeight = 3436
          mmLeft = 222515
          mmTop = 529
          mmWidth = 21431
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppShape14: TppShape
          UserName = 'Shape14'
          Brush.Color = 15395562
          Pen.Style = psClear
          mmHeight = 5027
          mmLeft = 99484
          mmTop = 0
          mmWidth = 123296
          BandType = 5
          GroupNo = 0
        end
        object ppLabel15: TppLabel
          UserName = 'Label15'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Totales por Devolucion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 94721
          mmTop = 0
          mmWidth = 61648
          BandType = 5
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Pen.Color = clGray
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 4498
          mmWidth = 254001
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          DataField = 'DevItbis'
          DataPipeline = plDevolucionList
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          Transparent = True
          DataPipelineName = 'plDevolucionList'
          mmHeight = 3436
          mmLeft = 160338
          mmTop = 265
          mmWidth = 18256
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          DataField = 'DevDescuento'
          DataPipeline = plDevolucionList
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          Transparent = True
          DataPipelineName = 'plDevolucionList'
          mmHeight = 3436
          mmLeft = 179917
          mmTop = 265
          mmWidth = 18256
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          DataField = 'DevLineTotal'
          DataPipeline = plDevolucionList
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          Transparent = True
          DataPipelineName = 'plDevolucionList'
          mmHeight = 3436
          mmLeft = 199496
          mmTop = 265
          mmWidth = 21431
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object plDevolucionList: TppDBPipeline
    DataSource = dsDevolucionList
    UserName = 'plDevolucionList'
    Left = 82
    Top = 244
    object plDevolucionListppField1: TppField
      FieldAlias = 'idDevolucion'
      FieldName = 'idDevolucion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField2: TppField
      FieldAlias = 'Devolucion'
      FieldName = 'Devolucion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField3: TppField
      FieldAlias = 'idCliente'
      FieldName = 'idCliente'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField4: TppField
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField5: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField6: TppField
      FieldAlias = 'Concepto'
      FieldName = 'Concepto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField7: TppField
      FieldAlias = 'idProMov'
      FieldName = 'idProMov'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField8: TppField
      FieldAlias = 'DevUsuario'
      FieldName = 'DevUsuario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField9: TppField
      FieldAlias = 'SubTotal'
      FieldName = 'SubTotal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField10: TppField
      FieldAlias = 'Itbis'
      FieldName = 'Itbis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField11: TppField
      FieldAlias = 'Descuento'
      FieldName = 'Descuento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField12: TppField
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField13: TppField
      FieldAlias = 'Cancelado'
      FieldName = 'Cancelado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField14: TppField
      FieldAlias = 'FechaCancelado'
      FieldName = 'FechaCancelado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField15: TppField
      FieldAlias = 'Tasa'
      FieldName = 'Tasa'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField16: TppField
      FieldAlias = 'idDevolucionDet'
      FieldName = 'idDevolucionDet'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField17: TppField
      FieldAlias = 'idProducto'
      FieldName = 'idProducto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField18: TppField
      FieldAlias = 'Producto'
      FieldName = 'Producto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField19: TppField
      FieldAlias = 'DevCantidad'
      FieldName = 'DevCantidad'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField20: TppField
      FieldAlias = 'DevDescuento'
      FieldName = 'DevDescuento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField21: TppField
      FieldAlias = 'DevItbis'
      FieldName = 'DevItbis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField22: TppField
      FieldAlias = 'DevLineTotal'
      FieldName = 'DevLineTotal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField23: TppField
      FieldAlias = 'Factura'
      FieldName = 'Factura'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField24: TppField
      FieldAlias = 'usuario'
      FieldName = 'usuario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField25: TppField
      FieldAlias = 'idEmpleado'
      FieldName = 'idEmpleado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField26: TppField
      FieldAlias = 'Empleado'
      FieldName = 'Empleado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField27: TppField
      FieldAlias = 'idMoneda'
      FieldName = 'idMoneda'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField28: TppField
      FieldAlias = 'Moneda'
      FieldName = 'Moneda'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField29: TppField
      FieldAlias = 'FechaFact'
      FieldName = 'FechaFact'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object plDevolucionListppField30: TppField
      FieldAlias = 'DevTotal'
      FieldName = 'DevTotal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
  end
  object OpenFile: TOpenDialog
    DefaultExt = 'xls'
    FileName = 'Datos'
    Filter = 'xls|*.xls'
    Left = 374
    Top = 176
  end
end

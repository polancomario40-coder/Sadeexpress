inherited ClienteRpt: TClienteRpt
  Left = 255
  Top = 157
  Caption = 'Clientes'
  ClientHeight = 489
  ClientWidth = 716
  Color = 14870499
  PixelsPerInch = 96
  TextHeight = 13
  object Gradient2: TGradient [0]
    Left = 0
    Top = 0
    Width = 716
    Height = 14
    Align = alTop
    ColorEnd = 14898176
    Style = gsLinearH
  end
  object Gradient1: TGradient [1]
    Left = 0
    Top = 14
    Width = 716
    Height = 4
    Align = alTop
    ColorBegin = 4227327
    ColorEnd = 16767681
    Style = gsReflectedV
  end
  object Gradient3: TGradient [2]
    Left = 4
    Top = 64
    Width = 707
    Height = 4
    Align = alCustom
    Anchors = [akLeft, akTop, akRight]
    ColorBegin = 4227327
    ColorEnd = 16767681
    Style = gsReflectedV
  end
  object cxButton2: TcxButton [3]
    Left = 610
    Top = 25
    Width = 95
    Height = 28
    Anchors = [akTop, akRight]
    Caption = 'Salir'
    TabOrder = 0
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton1: TcxButton [4]
    Left = 512
    Top = 25
    Width = 95
    Height = 28
    Anchors = [akTop, akRight]
    Caption = 'Imprimir'
    TabOrder = 1
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cbActivo: TcxCheckBox [5]
    Left = 52
    Top = 27
    Width = 121
    Height = 21
    Caption = 'Clientes Activos'
    ParentFont = False
    State = cbsChecked
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    TabOrder = 2
  end
  object cxButton3: TcxButton [6]
    Left = 412
    Top = 25
    Width = 95
    Height = 28
    Anchors = [akTop, akRight]
    Caption = 'Exportar a Excel'
    TabOrder = 3
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton4: TcxButton [7]
    Left = 311
    Top = 25
    Width = 95
    Height = 28
    Anchors = [akTop, akRight]
    Caption = 'Mostrar'
    TabOrder = 4
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  object Grid: TcxGrid [8]
    Left = 4
    Top = 74
    Width = 709
    Height = 409
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 5
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = True
    object GridDBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.Filter.MaxValueListCount = 1000
      DataController.Filter.Active = True
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'IdCliente'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      Filtering.MaxDropDownCount = 12
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      Preview.AutoHeight = False
      Preview.MaxLineCount = 2
      object GridDBTableView1ClienteGrupo: TcxGridDBColumn
        Caption = 'Categoria'
        DataBinding.FieldName = 'ClienteGrupo'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 50
        Properties.ReadOnly = False
        Width = 88
      end
      object GridDBTableView1Grupo: TcxGridDBColumn
        DataBinding.FieldName = 'Grupo'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 10
        Properties.ReadOnly = False
        Width = 97
      end
      object GridDBTableView1IdCliente: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'IdCliente'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.MaxLength = 0
        Properties.ReadOnly = False
        Width = 78
      end
      object GridDBTableView1Cliente: TcxGridDBColumn
        DataBinding.FieldName = 'Cliente'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 50
        Properties.ReadOnly = False
        Width = 154
      end
      object GridDBTableView1Rnc_Cedula: TcxGridDBColumn
        DataBinding.FieldName = 'Rnc_Cedula'
        Width = 97
      end
      object GridDBTableView1ClienteTipo: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'ClienteTipo'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 50
        Properties.ReadOnly = False
        Width = 120
      end
      object GridDBTableView1Empleado: TcxGridDBColumn
        DataBinding.FieldName = 'Empleado'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 40
        Properties.ReadOnly = False
        Width = 78
      end
      object GridDBTableView1Zona: TcxGridDBColumn
        DataBinding.FieldName = 'Zona'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 50
        Properties.ReadOnly = False
        Width = 74
      end
      object GridDBTableView1Descuento: TcxGridDBColumn
        DataBinding.FieldName = 'Descuento'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.MaxLength = 0
        Properties.ReadOnly = False
        Width = 56
      end
      object GridDBTableView1IdListaPrecio: TcxGridDBColumn
        Caption = 'ListaPrecio'
        DataBinding.FieldName = 'IdListaPrecio'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 16
        Properties.ReadOnly = False
      end
      object GridDBTableView1ClienteStatus: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'ClienteStatus'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.MaxLength = 50
        Properties.ReadOnly = False
        Width = 94
      end
      object GridDBTableView1LimiteCredito: TcxGridDBColumn
        Caption = 'L'#237'mite de Cr'#233'dito'
        DataBinding.FieldName = 'LimiteCredito'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.MaxLength = 0
        Properties.ReadOnly = False
      end
      object GridDBTableView1Condicion: TcxGridDBColumn
        DataBinding.FieldName = 'Condicion'
      end
      object GridDBTableView1Contacto: TcxGridDBColumn
        DataBinding.FieldName = 'Contacto'
        Width = 75
      end
      object GridDBTableView1Direccion: TcxGridDBColumn
        DataBinding.FieldName = 'Direccion'
        Width = 254
      end
      object GridDBTableView1Sector: TcxGridDBColumn
        DataBinding.FieldName = 'Sector'
        Width = 102
      end
      object GridDBTableView1Ciudad: TcxGridDBColumn
        DataBinding.FieldName = 'Ciudad'
        Width = 83
      end
      object GridDBTableView1Telefono: TcxGridDBColumn
        DataBinding.FieldName = 'Telefono'
        Width = 101
      end
      object GridDBTableView1Fax: TcxGridDBColumn
        DataBinding.FieldName = 'Fax'
        Width = 91
      end
      object GridDBTableView1eMail: TcxGridDBColumn
        DataBinding.FieldName = 'eMail'
        Width = 190
      end
      object GridDBTableView1DBColumn1: TcxGridDBColumn
        Caption = 'Fecha Inicio'
        DataBinding.FieldName = 'FechaInicio'
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridDBTableView1
    end
  end
  inherited DS: TwwDataSource
    DataSet = spClienteRpt
    Left = 273
    Top = 14
  end
  object spClienteRpt: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    ProcedureName = 'ClienteRpt02;1'
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
    Left = 206
    Top = 15
    object spClienteRptIdCliente: TIntegerField
      FieldName = 'IdCliente'
    end
    object spClienteRptCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object spClienteRptEmpleado: TStringField
      FieldName = 'Empleado'
      Size = 40
    end
    object spClienteRptZona: TStringField
      FieldName = 'Zona'
      Size = 50
    end
    object spClienteRptGrupo: TStringField
      FieldName = 'Grupo'
      Size = 10
    end
    object spClienteRptClienteTipo: TStringField
      FieldName = 'ClienteTipo'
      Size = 50
    end
    object spClienteRptClienteStatus: TStringField
      FieldName = 'ClienteStatus'
      Size = 50
    end
    object spClienteRptDescuento: TFloatField
      FieldName = 'Descuento'
    end
    object spClienteRptClienteGrupo: TStringField
      FieldName = 'ClienteGrupo'
      Size = 50
    end
    object spClienteRptIdListaPrecio: TStringField
      FieldName = 'IdListaPrecio'
      Size = 16
    end
    object spClienteRptLimiteCredito: TBCDField
      FieldName = 'LimiteCredito'
      DisplayFormat = '#,0.00'
      Precision = 19
      Size = 2
    end
    object spClienteRptCondicion: TIntegerField
      FieldName = 'Condicion'
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
    object spClienteRpteMail: TStringField
      FieldName = 'eMail'
      Size = 80
    end
    object spClienteRptRnc_Cedula: TStringField
      FieldName = 'Rnc_Cedula'
    end
    object spClienteRptSector: TStringField
      FieldName = 'Sector'
    end
    object spClienteRptFechaInicio: TDateTimeField
      FieldName = 'FechaInicio'
    end
  end
  object rptCliente: TppReport
    AutoStop = False
    DataPipeline = plCliente
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 8890
    PrinterSetup.mmMarginRight = 8890
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\basura\Listado de Clientes.rtm'
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
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 98
    Top = 135
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
        mmLeft = 529
        mmTop = 23283
        mmWidth = 258234
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
        Font.Size = 20
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 8202
        mmLeft = 1323
        mmTop = 794
        mmWidth = 148696
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        Caption = 'Listado de Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 105834
        mmTop = 12435
        mmWidth = 50800
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3287
        mmLeft = 1718
        mmTop = 24606
        mmWidth = 9878
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        Caption = 'Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 15346
        mmTop = 24606
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        Caption = 'Categoria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 96838
        mmTop = 24606
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        Caption = 'Tipo Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 114300
        mmTop = 24606
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 134673
        mmTop = 24606
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        Caption = 'Grupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 156104
        mmTop = 24606
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        Caption = 'Lista Precio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 214842
        mmTop = 24606
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        Caption = 'Vendedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 187590
        mmTop = 24606
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        Caption = 'Zona'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 237596
        mmTop = 24606
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        Caption = 'Descuento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 166952
        mmTop = 24606
        mmWidth = 17198
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 207698
        mmTop = 1588
        mmWidth = 49477
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 182034
        mmTop = 6615
        mmWidth = 75142
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        Caption = 'L'#237'mite Cr.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 76729
        mmTop = 24606
        mmWidth = 18256
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'IdCliente'
        DataPipeline = plCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 4487
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 4498
        mmLeft = 13758
        mmTop = 0
        mmWidth = 61913
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
        DataField = 'ClienteStatus'
        DataPipeline = plCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 4487
        mmLeft = 134673
        mmTop = 0
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Grupo'
        DataPipeline = plCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 4509
        mmLeft = 155575
        mmTop = 0
        mmWidth = 10319
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'IdListaPrecio'
        DataPipeline = plCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 4487
        mmLeft = 214842
        mmTop = 0
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Empleado'
        DataPipeline = plCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 4509
        mmLeft = 187325
        mmTop = 0
        mmWidth = 25929
        BandType = 4
      end
      object ppDBMemo4: TppDBMemo
        UserName = 'DBMemo4'
        CharWrap = False
        DataField = 'Zona'
        DataPipeline = plCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 4498
        mmLeft = 237332
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Descuento'
        DataPipeline = plCliente
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 4509
        mmLeft = 166952
        mmTop = 0
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'ClienteTipo'
        DataPipeline = plCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 4509
        mmLeft = 114036
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'ClienteGrupo'
        DataPipeline = plCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 4509
        mmLeft = 96838
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'LimiteCredito'
        DataPipeline = plCliente
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCliente'
        mmHeight = 4498
        mmLeft = 76729
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = clSilver
        mmHeight = 5821
        mmLeft = 0
        mmTop = 265
        mmWidth = 258763
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
        mmWidth = 31750
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
        mmLeft = 34131
        mmTop = 1852
        mmWidth = 17198
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object plCliente: TppDBPipeline
    DataSource = DS
    UserName = 'plCliente'
    Left = 128
    Top = 13
  end
  object OpenFile: TOpenDialog
    DefaultExt = 'xls'
    Filter = 'xls'
    Left = 14
    Top = 11
  end
  object cxStyleRepository1: TcxStyleRepository
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWindowText
    end
  end
end

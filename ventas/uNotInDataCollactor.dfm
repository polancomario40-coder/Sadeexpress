inherited NotInDataCollactor: TNotInDataCollactor
  Left = 292
  Top = 216
  Caption = 'Consulta Existencia (Data Collactor)'
  ClientHeight = 396
  ClientWidth = 781
  Color = 16114392
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Gradient1: TGradient
    Left = 0
    Top = 29
    Width = 781
    Height = 4
    Align = alTop
    ColorBegin = 4227327
    ColorEnd = 16767681
    Style = gsReflectedV
  end
  object Gradient2: TGradient
    Left = 0
    Top = 0
    Width = 781
    Height = 29
    Align = alTop
    ColorEnd = 14898176
    Style = gsLinearH
  end
  object Label2: TLabel
    Left = 391
    Top = 4
    Width = 387
    Height = 25
    Caption = 'Consulta de Existencia (No en F'#237'sico)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Gradient4: TGradient
    Left = 3
    Top = 58
    Width = 775
    Height = 6
    Align = alCustom
    ColorBegin = 14898176
    ColorEnd = 16511468
    Style = gsReflectedH
  end
  object Gradient3: TGradient
    Left = 3
    Top = 358
    Width = 776
    Height = 6
    Align = alCustom
    ColorBegin = 14898176
    ColorEnd = 16511468
    Style = gsReflectedH
  end
  object Label4: TLabel
    Left = 8
    Top = 39
    Width = 34
    Height = 13
    Caption = 'Desde:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 198
    Top = 39
    Width = 32
    Height = 13
    Caption = 'Hasta:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object bSalir: TcxButton
    Left = 669
    Top = 366
    Width = 108
    Height = 26
    Caption = 'Reporte'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    WordWrap = True
    OnClick = bSalirClick
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid
    Left = 3
    Top = 65
    Width = 775
    Height = 291
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsNotEnFisico
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'IdProducto'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Delete.Enabled = False
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object cxGrid1DBTableView1IdProducto: TcxGridDBColumn
        DataBinding.FieldName = 'IdProducto'
        Width = 90
      end
      object cxGrid1DBTableView1Referencia: TcxGridDBColumn
        DataBinding.FieldName = 'Referencia'
        Width = 101
      end
      object cxGrid1DBTableView1Producto: TcxGridDBColumn
        DataBinding.FieldName = 'Producto'
        Width = 256
      end
      object cxGrid1DBTableView1Existencia: TcxGridDBColumn
        DataBinding.FieldName = 'Existencia'
        Width = 71
      end
      object cxGrid1DBTableView1Linea: TcxGridDBColumn
        DataBinding.FieldName = 'Linea'
        Width = 213
      end
      object cxGrid1DBTableView1Grupo: TcxGridDBColumn
        DataBinding.FieldName = 'Grupo'
        Width = 205
      end
      object cxGrid1DBTableView1Inventario: TcxGridDBColumn
        DataBinding.FieldName = 'Inventario'
        Width = 221
      end
      object cxGrid1DBTableView1EnFisico: TcxGridDBColumn
        Caption = 'En F'#237'sico'
        DataBinding.FieldName = 'EnFisico'
        Visible = False
        GroupIndex = 0
      end
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        Caption = 'Ubicaci'#243'n'
        DataBinding.FieldName = 'Ubicacion'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object dtpDesde: TcxDateEdit
    Left = 46
    Top = 35
    Width = 121
    Height = 21
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object dtpHasta: TcxDateEdit
    Left = 236
    Top = 35
    Width = 121
    Height = 21
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  object cxButton1: TcxButton
    Left = 679
    Top = 32
    Width = 99
    Height = 26
    Caption = 'Filtrar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    WordWrap = True
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton
    Left = 557
    Top = 366
    Width = 108
    Height = 26
    Caption = 'Cerrar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 5
    WordWrap = True
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object spDataCollactor: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    ProcedureName = 'InvNotInDataCollactor;1'
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
    Left = 486
    Top = 156
    object spDataCollactorIdProducto: TStringField
      FieldName = 'IdProducto'
      Size = 25
    end
    object spDataCollactorReferencia: TStringField
      FieldName = 'Referencia'
      Size = 25
    end
    object spDataCollactorProducto: TStringField
      FieldName = 'Producto'
      Size = 100
    end
    object spDataCollactorExistencia: TFloatField
      FieldName = 'Existencia'
      ReadOnly = True
    end
    object spDataCollactorLinea: TStringField
      FieldName = 'Linea'
      Size = 50
    end
    object spDataCollactorGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
    object spDataCollactorInventario: TStringField
      FieldName = 'Inventario'
      Size = 50
    end
    object spDataCollactorEnFisico: TIntegerField
      FieldName = 'EnFisico'
      ReadOnly = True
    end
    object spDataCollactorUbicacion: TStringField
      FieldName = 'Ubicacion'
      Size = 50
    end
  end
  object dsNotEnFisico: TDataSource
    DataSet = spDataCollactor
    Left = 244
    Top = 182
  end
  object plNotInFisico: TppDBPipeline
    DataSource = dsNotEnFisico
    UserName = 'plNotInFisico'
    Left = 350
    Top = 144
  end
  object rptNotInFisico: TppReport
    AutoStop = False
    DataPipeline = plNotInFisico
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
    Left = 354
    Top = 216
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plNotInFisico'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 26194
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Productos que no estan en Fisico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        mmHeight = 6816
        mmLeft = 1323
        mmTop = 9790
        mmWidth = 145257
        BandType = 1
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
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
        mmLeft = 529
        mmTop = 529
        mmWidth = 133879
        BandType = 1
      end
      object lDesdeHasta: TppLabel
        OnPrint = lDesdeHastaPrint
        UserName = 'lDesdeHasta'
        HyperlinkEnabled = False
        Caption = 'lDesdeHasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4255
        mmLeft = 90376
        mmTop = 20638
        mmWidth = 22183
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object TppShape
        UserName = 'Shape3'
        Brush.Color = clSilver
        Pen.Color = clSilver
        mmHeight = 6615
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'IdProducto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3831
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 28840
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Producto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 61648
        mmTop = 1323
        mmWidth = 100542
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Existencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 164307
        mmTop = 1323
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'En Fisico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3831
        mmLeft = 187855
        mmTop = 1323
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Referencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3831
        mmLeft = 31485
        mmTop = 1323
        mmWidth = 28840
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'IdProducto'
        DataPipeline = plNotInFisico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plNotInFisico'
        mmHeight = 3831
        mmLeft = 1323
        mmTop = 265
        mmWidth = 28840
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Producto'
        DataPipeline = plNotInFisico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plNotInFisico'
        mmHeight = 3704
        mmLeft = 61648
        mmTop = 265
        mmWidth = 100013
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Existencia'
        DataPipeline = plNotInFisico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plNotInFisico'
        mmHeight = 3704
        mmLeft = 164836
        mmTop = 265
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = plNotInFisico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plNotInFisico'
        mmHeight = 3831
        mmLeft = 31485
        mmTop = 265
        mmWidth = 28840
        BandType = 4
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clBlack
        BooleanFalse = '0'
        BooleanTrue = '1'
        DataPipeline = plNotInFisico
        DataField = 'EnFisico'
        Transparent = True
        DataPipelineName = 'plNotInFisico'
        mmHeight = 4498
        mmLeft = 193146
        mmTop = 0
        mmWidth = 3969
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object TppShape
        UserName = 'Shape2'
        Brush.Color = clSilver
        Pen.Color = clSilver
        mmHeight = 7144
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 8
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3831
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 41212
        BandType = 8
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4509
        mmLeft = 184680
        mmTop = 1323
        mmWidth = 17209
        BandType = 8
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end

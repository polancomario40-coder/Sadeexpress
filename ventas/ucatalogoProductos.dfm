inherited CatalogoProductos: TCatalogoProductos
  Left = 381
  Top = 193
  Caption = 'Catalogo de productos'
  ClientHeight = 572
  ClientWidth = 945
  Color = 15922418
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Verdana'
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid [0]
    Left = 4
    Top = 49
    Width = 936
    Height = 518
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'idProducto'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsView.CellAutoHeight = True
      object cxGrid1DBTableView1Inventario: TcxGridDBColumn
        DataBinding.FieldName = 'Inventario'
        Visible = False
        GroupIndex = 0
        Width = 139
      end
      object cxGrid1DBTableView1Linea: TcxGridDBColumn
        DataBinding.FieldName = 'Linea'
        Width = 136
      end
      object cxGrid1DBTableView1Grupo: TcxGridDBColumn
        DataBinding.FieldName = 'Grupo'
        Width = 180
      end
      object cxGrid1DBTableView1idProducto: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'idProducto'
        Width = 97
      end
      object cxGrid1DBTableView1Producto: TcxGridDBColumn
        DataBinding.FieldName = 'Producto'
        Width = 180
      end
      object cxGrid1DBTableView1Foto: TcxGridDBColumn
        DataBinding.FieldName = 'Foto'
        Width = 194
      end
      object cxGrid1DBTableView1Referencia: TcxGridDBColumn
        DataBinding.FieldName = 'Referencia'
        Visible = False
      end
      object cxGrid1DBTableView1PrecioCredito: TcxGridDBColumn
        Caption = 'Precio Credito'
        DataBinding.FieldName = 'PrecioCredito'
        Width = 106
      end
      object cxGrid1DBTableView1PrecioContado: TcxGridDBColumn
        Caption = 'Precio Contado'
        DataBinding.FieldName = 'PrecioContado'
        Width = 111
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton1: TcxButton [1]
    Left = 6
    Top = 6
    Width = 97
    Height = 35
    Caption = 'Actualizar'
    TabOrder = 1
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton [2]
    Left = 222
    Top = 6
    Width = 99
    Height = 35
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [3]
    Left = 843
    Top = 6
    Width = 97
    Height = 35
    Anchors = [akTop, akRight]
    Caption = 'Salir'
    TabOrder = 3
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton4: TcxButton [4]
    Left = 114
    Top = 6
    Width = 97
    Height = 35
    Caption = 'Excel'
    TabOrder = 4
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    DataSet = rs
    Left = 307
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select p.idProducto,'#13#10#9'p.Producto,'#13#10#9'g.Grupo,'#13#10#9'l.Linea,'#13#10#9'i.Inv' +
      'entario,'#13#10#9'p.Foto,'#13#10#9'p.Referencia,'#13#10#9'p.PrecioCredito,'#13#10#9'p.Precio' +
      'Contado'#13#10'from producto p join Grupo g on p.idGrupo = g.idGrupo'#13#10 +
      'join Linea l on g.idLinea = l.idLinea'#13#10'join Inventario i on l.id' +
      'Inventario = i.idInventario'#13#10'where p.Inactivo = 0'#13#10'order by i.In' +
      'ventario, l.Linea, g.grupo, p.Producto'#13#10
    Parameters = <>
    Left = 202
    Top = 136
    object rsidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object rsProducto: TStringField
      FieldName = 'Producto'
      Size = 100
    end
    object rsGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
    object rsLinea: TStringField
      FieldName = 'Linea'
      Size = 50
    end
    object rsInventario: TStringField
      FieldName = 'Inventario'
      Size = 50
    end
    object rsFoto: TBlobField
      FieldName = 'Foto'
    end
    object rsReferencia: TStringField
      FieldName = 'Referencia'
      Size = 25
    end
    object rsPrecioCredito: TBCDField
      FieldName = 'PrecioCredito'
      Precision = 19
      Size = 2
    end
    object rsPrecioContado: TBCDField
      FieldName = 'PrecioContado'
      Precision = 19
      Size = 2
    end
  end
  object fd: TSaveDialog
    DefaultExt = 'xls'
    FileName = 'CatProductos.xls'
    Left = 106
    Top = 184
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DS
    UserName = 'DBPipeline1'
    Left = 90
    Top = 146
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
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
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 240
    Top = 214
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 12435
      mmPrintPosition = 0
      object TppShape
        UserName = 'Shape1'
        Brush.Color = 14671839
        ParentWidth = True
        Pen.Color = clSilver
        mmHeight = 12435
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Catalogo de Productos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'ARIAL'
        Font.Size = 24
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 9790
        mmLeft = 1058
        mmTop = 1323
        mmWidth = 98690
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 169598
        mmTop = 1323
        mmWidth = 31485
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 164836
        mmTop = 5556
        mmWidth = 35983
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 36777
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape4'
        Brush.Color = 14671839
        Pen.Color = clGray
        mmHeight = 4763
        mmLeft = 1323
        mmTop = 17198
        mmWidth = 147902
        BandType = 4
      end
      object ppShape1: TppShape
        UserName = 'Shape3'
        Brush.Color = 14671839
        Pen.Color = clGray
        mmHeight = 4763
        mmLeft = 1323
        mmTop = 794
        mmWidth = 147902
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'idProducto'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4784
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 29898
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Producto'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 1323
        mmTop = 10848
        mmWidth = 147638
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'PrecioCredito'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4784
        mmLeft = 1323
        mmTop = 22225
        mmWidth = 39158
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'PrecioContado'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4784
        mmLeft = 47096
        mmTop = 22225
        mmWidth = 37835
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Producto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3852
        mmLeft = 2381
        mmTop = 1323
        mmWidth = 85725
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Precio Credito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3852
        mmLeft = 1323
        mmTop = 17727
        mmWidth = 39158
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Precio Contado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3852
        mmLeft = 47096
        mmTop = 17727
        mmWidth = 37835
        BandType = 4
      end
      object ppDBImage1: TppDBImage
        UserName = 'DBImage1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = True
        Stretch = True
        DataField = 'Foto'
        DataPipeline = ppDBPipeline1
        GraphicType = 'JPEG'
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 33602
        mmLeft = 162454
        mmTop = 265
        mmWidth = 37571
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Color = clGray
        Pen.Style = psDash
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 34925
        mmWidth = 203200
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
      object ppLine6: TppLine
        UserName = 'Line6'
        Pen.Color = clGray
        Pen.Width = 3
        Weight = 2.250000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 200555
        BandType = 8
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Inventario'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppLine3: TppLine
          UserName = 'Line3'
          Pen.Color = clGray
          Pen.Width = 3
          ParentWidth = True
          Weight = 2.250000000000000000
          mmHeight = 3969
          mmLeft = 0
          mmTop = 5027
          mmWidth = 203200
          BandType = 3
          GroupNo = 0
        end
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          HyperlinkEnabled = False
          DataField = 'Inventario'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3598
          mmLeft = 1323
          mmTop = 529
          mmWidth = 93663
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'Linea'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          HyperlinkEnabled = False
          DataField = 'Linea'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3598
          mmLeft = 1323
          mmTop = 529
          mmWidth = 93663
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'Grupo'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          HyperlinkEnabled = False
          DataField = 'Grupo'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3598
          mmLeft = 1323
          mmTop = 529
          mmWidth = 93663
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end

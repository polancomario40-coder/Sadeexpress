object ReporteActivos: TReporteActivos
  Left = 427
  Top = 343
  Width = 417
  Height = 178
  Caption = '...'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 20
    Top = 24
    Width = 70
    Height = 13
    Caption = 'Departamento:'
  end
  object ludpto: TcxLookupComboBox
    Left = 92
    Top = 20
    Width = 305
    Height = 21
    Properties.ClearKey = 46
    Properties.KeyFieldNames = 'idUbicacion'
    Properties.ListColumns = <
      item
        FieldName = 'Descripcion'
      end>
    Properties.ListOptions.CaseInsensitive = True
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = ds
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object cxButton1: TcxButton
    Left = 12
    Top = 58
    Width = 107
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 1
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton
    Left = 288
    Top = 62
    Width = 107
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 2
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object rListaActivos: TppReport
    AutoStop = False
    DataPipeline = plReporte
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 11430
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 8890
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
    Left = 112
    Top = 152
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plReporte'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand4: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 19050
      mmPrintPosition = 0
      object ppLine11: TppLine
        UserName = 'Line11'
        Pen.Color = clNavy
        ParentWidth = True
        Weight = 0.500000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 15610
        mmWidth = 266701
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Listado simple de activos fijos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6858
        mmLeft = 1323
        mmTop = 8202
        mmWidth = 171450
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable8'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 231775
        mmTop = 4498
        mmWidth = 34131
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable7'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        DisplayFormat = 'dd/mm/yyyy @ hh:nn AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 227807
        mmTop = 529
        mmWidth = 38100
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 6879
        mmLeft = 1323
        mmTop = 794
        mmWidth = 174625
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 1323
        mmTop = 265
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText46'
        HyperlinkEnabled = False
        DataField = 'FechaAdq'
        DataPipeline = plReporte
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 178065
        mmTop = 265
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText47: TppDBText
        UserName = 'DBText47'
        HyperlinkEnabled = False
        DataField = 'NumeroSerie'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 201084
        mmTop = 265
        mmWidth = 29369
        BandType = 4
      end
      object ppDBRichText1: TppDBRichText
        UserName = 'DBRichText1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        DataField = 'Descripcion'
        DataPipeline = plReporte
        RemoveEmptyLines = False
        Stretch = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 23019
        mmTop = 265
        mmWidth = 150284
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeftMargin = 794
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Anchors = [atLeft, atBottom]
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 3967
        mmWidth = 266701
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'ValorAdq'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 231511
        mmTop = 265
        mmWidth = 33338
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup7: TppGroup
      BreakName = 'idUbicacion'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand7: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 18256
        mmPrintPosition = 0
        object ppDBText38: TppDBText
          UserName = 'DBText38'
          HyperlinkEnabled = False
          DataField = 'Ubicacion'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Tahoma'
          Font.Size = 16
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 6858
          mmLeft = 1323
          mmTop = 4763
          mmWidth = 180182
          BandType = 3
          GroupNo = 1
        end
        object ppLine14: TppLine
          UserName = 'Line14'
          Pen.Color = clNavy
          ParentWidth = True
          Weight = 0.500000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 17991
          mmWidth = 266701
          BandType = 3
          GroupNo = 1
        end
        object ppLabel53: TppLabel
          UserName = 'Label53'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Referencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 1323
          mmTop = 14023
          mmWidth = 20373
          BandType = 3
          GroupNo = 1
        end
        object ppLabel56: TppLabel
          UserName = 'Label56'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Descripcion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 23019
          mmTop = 14023
          mmWidth = 151077
          BandType = 3
          GroupNo = 1
        end
        object ppLabel57: TppLabel
          UserName = 'Label57'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Fecha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 178065
          mmTop = 14023
          mmWidth = 21960
          BandType = 3
          GroupNo = 1
        end
        object ppLabel58: TppLabel
          UserName = 'Label58'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Serie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 201084
          mmTop = 13758
          mmWidth = 29369
          BandType = 3
          GroupNo = 1
        end
        object ppLabel60: TppLabel
          UserName = 'Label60'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Ubicacion:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 1323
          mmTop = 1058
          mmWidth = 37042
          BandType = 3
          GroupNo = 1
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Valor Adq.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 231511
          mmTop = 13758
          mmWidth = 33338
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 1588
        mmPrintPosition = 0
        object ppLine10: TppLine
          UserName = 'Line10'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 265
          mmWidth = 266701
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup8: TppGroup
      BreakName = 'Categoria'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group8'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ppGroupHeaderBand8: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppDBText45: TppDBText
          UserName = 'DBText45'
          HyperlinkEnabled = False
          DataField = 'Categoria'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3440
          mmLeft = 7938
          mmTop = 529
          mmWidth = 100277
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand8: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup8
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'plReporte'
          mmHeight = 3969
          mmLeft = 1852
          mmTop = 265
          mmWidth = 101071
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object plReporte: TppDBPipeline
    DataSource = dsRepActivos
    UserName = 'plReporte'
    Left = 40
    Top = 148
  end
  object dsRepActivos: TDataSource
    DataSet = rsReporteActivos
    Left = 32
    Top = 86
  end
  object rsReporteActivos: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'afReporteActivosDpto;1'
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
        Name = '@dpto'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 152
    Top = 86
    object rsReporteActivosidActivo: TIntegerField
      FieldName = 'idActivo'
      ReadOnly = True
    end
    object rsReporteActivosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object rsReporteActivosFechaAdq: TDateTimeField
      FieldName = 'FechaAdq'
    end
    object rsReporteActivosDocumentoAdq: TStringField
      FieldName = 'DocumentoAdq'
    end
    object rsReporteActivosFechaActivacion: TDateTimeField
      FieldName = 'FechaActivacion'
    end
    object rsReporteActivosVidaUtil: TBCDField
      FieldName = 'VidaUtil'
      Precision = 10
      Size = 2
    end
    object rsReporteActivosidCategoria: TIntegerField
      FieldName = 'idCategoria'
    end
    object rsReporteActivosidCuentaActivo: TStringField
      FieldName = 'idCuentaActivo'
      Size = 16
    end
    object rsReporteActivosStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object rsReporteActivosFechaStatus: TDateTimeField
      FieldName = 'FechaStatus'
    end
    object rsReporteActivosReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsReporteActivosNumeroSerie: TStringField
      FieldName = 'NumeroSerie'
    end
    object rsReporteActivosCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 18
      Size = 0
    end
    object rsReporteActivosidUbicacion: TIntegerField
      FieldName = 'idUbicacion'
    end
    object rsReporteActivosObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 500
    end
    object rsReporteActivosAsignadoA: TStringField
      FieldName = 'AsignadoA'
      Size = 100
    end
    object rsReporteActivosCategoria: TStringField
      FieldName = 'Categoria'
      Size = 50
    end
    object rsReporteActivosUbicacion: TStringField
      FieldName = 'Ubicacion'
      Size = 100
    end
    object rsReporteActivosValorAdq: TBCDField
      FieldName = 'ValorAdq'
      Precision = 19
      Size = 2
    end
  end
  object rsDpto: TADODataSet
    Connection = dm.Coneccion
    CommandText = 'afListaUbicaciones;1'
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
        Name = '@Orden'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end>
    Left = 74
    Top = 94
    object rsDptoidUbicacion: TAutoIncField
      FieldName = 'idUbicacion'
      ReadOnly = True
    end
    object rsDptoidUbicMadre: TIntegerField
      FieldName = 'idUbicMadre'
    end
    object rsDptoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
  end
  object ds: TDataSource
    DataSet = rsDpto
    Left = 170
    Top = 46
  end
end

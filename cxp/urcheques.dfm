object rCheques: TrCheques
  Left = 426
  Top = 279
  Width = 384
  Height = 206
  Caption = 'Impresion de cheques'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Report: TppReport
    AutoStop = False
    DataPipeline = Pipeline
    PageLimit = 1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'CHEQUE'
    PrinterSetup.PaperName = 'A0'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 5080
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 131
    Template.FileName = 'E:\cbsexpress\banco\CkOpticaPopular.rtm'
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
    ShowPrintDialog = False
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 46
    Top = 32
    Version = '15.02'
    mmColumnWidth = 203200
    DataPipelineName = 'Pipeline'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 59531
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Nombre'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 5027
        mmLeft = 40746
        mmTop = 31485
        mmWidth = 102394
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'd1'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4763
        mmLeft = 165629
        mmTop = 17727
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'ValorCheque'
        DataPipeline = plHeader
        DisplayFormat = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        DataPipelineName = 'plHeader'
        mmHeight = 5027
        mmLeft = 159284
        mmTop = 31221
        mmWidth = 33867
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'NumeroLetras'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 5027
        mmLeft = 7144
        mmTop = 40746
        mmWidth = 190500
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'd2'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4763
        mmLeft = 170657
        mmTop = 17727
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'm1'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4763
        mmLeft = 175684
        mmTop = 17727
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        DataField = 'm2'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4763
        mmLeft = 180446
        mmTop = 17727
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkEnabled = False
        DataField = 'y1'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4763
        mmLeft = 184687
        mmTop = 17727
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkEnabled = False
        DataField = 'y2'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4763
        mmLeft = 188384
        mmTop = 17727
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkEnabled = False
        DataField = 'y3'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4763
        mmLeft = 192617
        mmTop = 17727
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkEnabled = False
        DataField = 'y4'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4763
        mmLeft = 196850
        mmTop = 17727
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object Pipeline: TppBDEPipeline
    DataSource = DataSource
    UserName = 'Pipeline'
    Left = 124
    Top = 28
    object PipelineppField1: TppField
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object PipelineppField2: TppField
      FieldAlias = 'IdDocumento'
      FieldName = 'IdDocumento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object PipelineppField3: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object PipelineppField4: TppField
      FieldAlias = 'IdEntidad'
      FieldName = 'IdEntidad'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object PipelineppField5: TppField
      FieldAlias = 'CuentaBanco'
      FieldName = 'CuentaBanco'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object PipelineppField6: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object PipelineppField7: TppField
      FieldAlias = 'IdCuenta'
      FieldName = 'IdCuenta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object PipelineppField8: TppField
      FieldAlias = 'DescripcionCuenta'
      FieldName = 'DescripcionCuenta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object PipelineppField9: TppField
      FieldAlias = 'ValorCheque'
      FieldName = 'ValorCheque'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object PipelineppField10: TppField
      FieldAlias = 'TextoConcepto'
      FieldName = 'TextoConcepto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object PipelineppField11: TppField
      FieldAlias = 'ST'
      FieldName = 'ST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object PipelineppField12: TppField
      FieldAlias = 'idCuentaBanco'
      FieldName = 'idCuentaBanco'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object PipelineppField13: TppField
      FieldAlias = 'FechaProcesado'
      FieldName = 'FechaProcesado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object PipelineppField14: TppField
      FieldAlias = 'FormatoCheque'
      FieldName = 'FormatoCheque'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object PipelineppField15: TppField
      FieldAlias = 'NumeroLetras'
      FieldName = 'NumeroLetras'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object PipelineppField16: TppField
      FieldAlias = 'CtaDoc'
      FieldName = 'CtaDoc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object PipelineppField17: TppField
      FieldAlias = 'Descripcion'
      FieldName = 'Descripcion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object PipelineppField18: TppField
      FieldAlias = 'Debito'
      FieldName = 'Debito'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object PipelineppField19: TppField
      FieldAlias = 'Credito'
      FieldName = 'Credito'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object PipelineppField20: TppField
      FieldAlias = 'Valor'
      FieldName = 'Valor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object PipelineppField21: TppField
      FieldAlias = 'NotaAdicional'
      FieldName = 'NotaAdicional'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object PipelineppField22: TppField
      FieldAlias = 'CuentasConcatenadas'
      FieldName = 'CuentasConcatenadas'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object PipelineppField23: TppField
      FieldAlias = 'y1'
      FieldName = 'y1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object PipelineppField24: TppField
      FieldAlias = 'y2'
      FieldName = 'y2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object PipelineppField25: TppField
      FieldAlias = 'y3'
      FieldName = 'y3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object PipelineppField26: TppField
      FieldAlias = 'y4'
      FieldName = 'y4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object PipelineppField27: TppField
      FieldAlias = 'm1'
      FieldName = 'm1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object PipelineppField28: TppField
      FieldAlias = 'm2'
      FieldName = 'm2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object PipelineppField29: TppField
      FieldAlias = 'd1'
      FieldName = 'd1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object PipelineppField30: TppField
      FieldAlias = 'd2'
      FieldName = 'd2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
  end
  object DataSource: TDataSource
    DataSet = rsChequeRpt
    Left = 208
    Top = 28
  end
  object plHeader: TppBDEPipeline
    DataSource = ckSource
    UserName = 'plHeader'
    Left = 294
    Top = 30
    object plHeaderppField1: TppField
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plHeaderppField2: TppField
      FieldAlias = 'IdDocumento'
      FieldName = 'IdDocumento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plHeaderppField3: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object plHeaderppField4: TppField
      FieldAlias = 'IdEntidad'
      FieldName = 'IdEntidad'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object plHeaderppField5: TppField
      FieldAlias = 'CuentaBanco'
      FieldName = 'CuentaBanco'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object plHeaderppField6: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object plHeaderppField7: TppField
      FieldAlias = 'IdCuenta'
      FieldName = 'IdCuenta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object plHeaderppField8: TppField
      FieldAlias = 'DescripcionCuenta'
      FieldName = 'DescripcionCuenta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object plHeaderppField9: TppField
      FieldAlias = 'ValorCheque'
      FieldName = 'ValorCheque'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object plHeaderppField10: TppField
      FieldAlias = 'TextoConcepto'
      FieldName = 'TextoConcepto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object plHeaderppField11: TppField
      FieldAlias = 'ST'
      FieldName = 'ST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object plHeaderppField12: TppField
      FieldAlias = 'idCuentaBanco'
      FieldName = 'idCuentaBanco'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object plHeaderppField13: TppField
      FieldAlias = 'FechaProcesado'
      FieldName = 'FechaProcesado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object plHeaderppField14: TppField
      FieldAlias = 'FormatoCheque'
      FieldName = 'FormatoCheque'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object plHeaderppField15: TppField
      FieldAlias = 'NumeroLetras'
      FieldName = 'NumeroLetras'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object plHeaderppField16: TppField
      FieldAlias = 'CtaDoc'
      FieldName = 'CtaDoc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object plHeaderppField17: TppField
      FieldAlias = 'Descripcion'
      FieldName = 'Descripcion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object plHeaderppField18: TppField
      FieldAlias = 'Debito'
      FieldName = 'Debito'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object plHeaderppField19: TppField
      FieldAlias = 'Credito'
      FieldName = 'Credito'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object plHeaderppField20: TppField
      FieldAlias = 'Valor'
      FieldName = 'Valor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object plHeaderppField21: TppField
      FieldAlias = 'NotaAdicional'
      FieldName = 'NotaAdicional'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object plHeaderppField22: TppField
      FieldAlias = 'CuentasConcatenadas'
      FieldName = 'CuentasConcatenadas'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object plHeaderppField23: TppField
      FieldAlias = 'y1'
      FieldName = 'y1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object plHeaderppField24: TppField
      FieldAlias = 'y2'
      FieldName = 'y2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object plHeaderppField25: TppField
      FieldAlias = 'y3'
      FieldName = 'y3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object plHeaderppField26: TppField
      FieldAlias = 'y4'
      FieldName = 'y4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object plHeaderppField27: TppField
      FieldAlias = 'm1'
      FieldName = 'm1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object plHeaderppField28: TppField
      FieldAlias = 'm2'
      FieldName = 'm2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object plHeaderppField29: TppField
      FieldAlias = 'd1'
      FieldName = 'd1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object plHeaderppField30: TppField
      FieldAlias = 'd2'
      FieldName = 'd2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
  end
  object rsCkDtl: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 
      'select d.idCuenta, cat.descripcion,'#13#10'  debito = case debcre when' +
      ' 1 then valor else $0 end,'#13#10'  credito = case debcre when 2 then ' +
      'valor else $0 end'#13#10'from cxpDocCuentas d left join cgCatalogoCuen' +
      'tas cat'#13#10'  on d.idcuenta = cat.idCuenta '#13#10'where iddocumento = :i' +
      'dDocumento'#13#10'order by 4,1'
    DataSource = ckSource
    MasterFields = 'IdDocumento'
    Parameters = <
      item
        Name = 'IdDocumento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 128
    Top = 100
    object rsCkDtlidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsCkDtldescripcion: TStringField
      FieldName = 'descripcion'
      Size = 60
    end
    object rsCkDtldebito: TBCDField
      FieldName = 'debito'
      ReadOnly = True
      Precision = 19
    end
    object rsCkDtlcredito: TBCDField
      FieldName = 'credito'
      ReadOnly = True
      Precision = 19
    end
  end
  object rsChequeRpt: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = rsChequeRptCalcFields
    CommandText = 'bcoListaCheques;1'
    CommandTimeout = 60
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@idCk'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 298
    Top = 102
    object rsChequeRptNumero: TIntegerField
      FieldName = 'Numero'
      ReadOnly = True
    end
    object rsChequeRptIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
      ReadOnly = True
    end
    object rsChequeRptFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsChequeRptIdEntidad: TIntegerField
      FieldName = 'IdEntidad'
    end
    object rsChequeRptCuentaBanco: TStringField
      FieldName = 'CuentaBanco'
      Size = 30
    end
    object rsChequeRptNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsChequeRptIdCuenta: TStringField
      FieldName = 'IdCuenta'
      Size = 16
    end
    object rsChequeRptDescripcionCuenta: TStringField
      FieldName = 'DescripcionCuenta'
      Size = 100
    end
    object rsChequeRptValorCheque: TBCDField
      FieldName = 'ValorCheque'
      Precision = 19
      Size = 2
    end
    object rsChequeRptTextoConcepto: TStringField
      FieldName = 'TextoConcepto'
      Size = 600
    end
    object rsChequeRptST: TStringField
      FieldName = 'ST'
      FixedChar = True
      Size = 1
    end
    object rsChequeRptidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
    end
    object rsChequeRptFechaProcesado: TDateTimeField
      FieldName = 'FechaProcesado'
    end
    object rsChequeRptFormatoCheque: TStringField
      FieldName = 'FormatoCheque'
      Size = 200
    end
    object rsChequeRptNumeroLetras: TStringField
      FieldKind = fkCalculated
      FieldName = 'NumeroLetras'
      Size = 500
      Calculated = True
    end
    object rsChequeRptCtaDoc: TStringField
      FieldName = 'CtaDoc'
      Size = 16
    end
    object rsChequeRptDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 60
    end
    object rsChequeRptDebito: TBCDField
      FieldName = 'Debito'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsChequeRptCredito: TBCDField
      FieldName = 'Credito'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsChequeRptValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object rsChequeRptNotaAdicional: TStringField
      FieldName = 'NotaAdicional'
      Size = 100
    end
    object rsChequeRptCuentasConcatenadas: TStringField
      FieldName = 'CuentasConcatenadas'
      ReadOnly = True
      Size = 1000
    end
    object rsChequeRpty1: TStringField
      FieldName = 'y1'
      ReadOnly = True
      Size = 1
    end
    object rsChequeRpty2: TStringField
      FieldName = 'y2'
      ReadOnly = True
      Size = 1
    end
    object rsChequeRpty3: TStringField
      FieldName = 'y3'
      ReadOnly = True
      Size = 1
    end
    object rsChequeRpty4: TStringField
      FieldName = 'y4'
      ReadOnly = True
      Size = 1
    end
    object rsChequeRptm1: TStringField
      FieldName = 'm1'
      ReadOnly = True
      Size = 1
    end
    object rsChequeRptm2: TStringField
      FieldName = 'm2'
      ReadOnly = True
      Size = 1
    end
    object rsChequeRptd1: TStringField
      FieldName = 'd1'
      ReadOnly = True
      Size = 1
    end
    object rsChequeRptd2: TStringField
      FieldName = 'd2'
      ReadOnly = True
      Size = 1
    end
  end
  object ckSource: TDataSource
    DataSet = rsChequeRpt
    Left = 212
    Top = 104
  end
  object cMarcarCk: TADOCommand
    CommandText = 'cxpMarcarCkImpreso;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@idDoc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Fec'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 52
    Top = 102
  end
end

object CuadreEntradas: TCuadreEntradas
  Left = 326
  Top = 179
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cuadre de entradas'
  ClientHeight = 331
  ClientWidth = 614
  Color = 15922418
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    614
    331)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 12
    Top = 12
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label1: TLabel
    Left = 180
    Top = 12
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object dtDesde: TwwDBDateTimePicker
    Left = 50
    Top = 9
    Width = 121
    Height = 19
    BorderStyle = bsNone
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    Frame.Enabled = True
    Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
    ShowButton = True
    TabOrder = 0
  end
  object dtHasta: TwwDBDateTimePicker
    Left = 217
    Top = 9
    Width = 121
    Height = 19
    BorderStyle = bsNone
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    Frame.Enabled = True
    Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
    ShowButton = True
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 370
    Top = 6
    Width = 93
    Height = 25
    Caption = 'Mostrar'
    Default = True
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 518
    Top = 6
    Width = 93
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object wwDBGrid1: TwwDBGrid
    Left = 1
    Top = 35
    Width = 610
    Height = 293
    DisableThemes = False
    Selected.Strings = (
      'NumeroEntrada'#9'6'#9'Numero'#9#9
      'Fecha'#9'12'#9'Fecha'#9#9
      'TotalDebito'#9'16'#9'Debito'#9#9
      'TotalCredito'#9'15'#9'Credito'#9#9
      'Diferencia'#9'14'#9'Diferencia'#9#9
      'Concepto'#9'51'#9'Concepto'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = Edds
    TabOrder = 4
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnCalcCellColors = wwDBGrid1CalcCellColors
    OnDblClick = wwDBGrid1DblClick
  end
  object Edds: TDataSource
    DataSet = rsEntradas
    Left = 184
    Top = 160
  end
  object rsEntradas: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = rsEntradasCalcFields
    CommandText = 
      'select '#9'h.idEntrada, '#13#10#9'h.NumeroEntrada, '#13#10#9'h.Fecha, '#13#10#9'Concepto' +
      ' = convert(varchar, substring(h.Concepto,1,4000)), '#13#10#9'TotalDebit' +
      'o = sum(isnull(Debito,$0)),'#13#10#9'TotalCredito = sum(isnull(Credito,' +
      '$0))'#13#10'from cgEntradasDiario h left join cgEntradasDetalle d'#13#10'  o' +
      'n h.idEntrada = d.idEntrada'#13#10'where h.Fecha between :inicio and :' +
      'final'#13#10'group by h.idEntrada, '#13#10#9'h.NumeroEntrada, '#13#10#9'h.Fecha, '#13#10#9 +
      'convert(varchar, substring(h.Concepto,1,4000))'#13#10'order by h.Fecha' +
      ', h.NumeroEntrada'#13#10#9' '#13#10
    Parameters = <
      item
        Name = 'inicio'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'final'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    Left = 134
    Top = 148
    object rsEntradasNumeroEntrada: TStringField
      DisplayLabel = 'Numero'
      DisplayWidth = 6
      FieldName = 'NumeroEntrada'
      Size = 16
    end
    object rsEntradasFecha: TDateTimeField
      DisplayWidth = 12
      FieldName = 'Fecha'
    end
    object rsEntradasTotalDebito: TBCDField
      DisplayLabel = 'Debito'
      DisplayWidth = 16
      FieldName = 'TotalDebito'
      DisplayFormat = '#,0.00;(#,0.00)'
      currency = True
      Precision = 32
      Size = 2
    end
    object rsEntradasTotalCredito: TBCDField
      DisplayLabel = 'Credito'
      DisplayWidth = 15
      FieldName = 'TotalCredito'
      DisplayFormat = '#,0.00;(#,0.00)'
      currency = True
      Precision = 32
      Size = 2
    end
    object rsEntradasDiferencia: TCurrencyField
      DisplayWidth = 14
      FieldKind = fkCalculated
      FieldName = 'Diferencia'
      DisplayFormat = '#,0.00;(#,0.00)'
      Calculated = True
    end
    object rsEntradasConcepto: TStringField
      DisplayWidth = 51
      FieldName = 'Concepto'
      Size = 30
    end
    object rsEntradasidEntrada: TGuidField
      FieldName = 'idEntrada'
      Visible = False
      FixedChar = True
      Size = 38
    end
  end
  object plEntradas: TppDBPipeline
    DataSource = Edds
    UserName = 'plEntradas'
    Left = 330
    Top = 172
    object plEntradasppField1: TppField
      FieldAlias = 'NumeroEntrada'
      FieldName = 'NumeroEntrada'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plEntradasppField2: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plEntradasppField3: TppField
      FieldAlias = 'TotalDebito'
      FieldName = 'TotalDebito'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object plEntradasppField4: TppField
      FieldAlias = 'TotalCredito'
      FieldName = 'TotalCredito'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object plEntradasppField5: TppField
      FieldAlias = 'Diferencia'
      FieldName = 'Diferencia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object plEntradasppField6: TppField
      FieldAlias = 'Concepto'
      FieldName = 'Concepto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object plEntradasppField7: TppField
      FieldAlias = 'idEntrada'
      FieldName = 'idEntrada'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = plEntradas
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
    Template.FileName = 'C:\desarrollo\CxP\MayorNuevo\cuadreeds.rtm'
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
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 78
    Top = 128
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plEntradas'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 25929
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Color = clNavy
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1058
        mmLeft = 1058
        mmTop = 21167
        mmWidth = 200555
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 1058
        mmTop = 17463
        mmWidth = 26458
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
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 28840
        mmTop = 17463
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total DB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 48948
        mmTop = 17463
        mmWidth = 24871
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total CR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 79375
        mmTop = 17463
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Diferencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 103717
        mmTop = 17463
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Concepto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 126736
        mmTop = 17463
        mmWidth = 74083
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Comprobacion de cuadre de Entradas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6816
        mmLeft = 1058
        mmTop = 9525
        mmWidth = 126471
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        DisplayFormat = 'dd/mm/yyyy @hh:nn AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 165629
        mmTop = 265
        mmWidth = 34925
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
        mmLeft = 180975
        mmTop = 3969
        mmWidth = 19579
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = gldm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 6879
        mmLeft = 1058
        mmTop = 265
        mmWidth = 117211
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppShape1: TppShape
        OnPrint = ppShape1Print
        UserName = 'Shape1'
        Brush.Color = 14869218
        ParentWidth = True
        Pen.Style = psClear
        mmHeight = 3440
        mmLeft = 0
        mmTop = 264
        mmWidth = 203200
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'NumeroEntrada'
        DataPipeline = plEntradas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEntradas'
        mmHeight = 3387
        mmLeft = 1323
        mmTop = 265
        mmWidth = 26458
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plEntradas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEntradas'
        mmHeight = 3387
        mmLeft = 29104
        mmTop = 265
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'TotalDebito'
        DataPipeline = plEntradas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEntradas'
        mmHeight = 3387
        mmLeft = 49213
        mmTop = 265
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'TotalCredito'
        DataPipeline = plEntradas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEntradas'
        mmHeight = 3387
        mmLeft = 79640
        mmTop = 265
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Diferencia'
        DataPipeline = plEntradas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEntradas'
        mmHeight = 3387
        mmLeft = 103981
        mmTop = 265
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Concepto'
        DataPipeline = plEntradas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEntradas'
        mmHeight = 3440
        mmLeft = 126736
        mmTop = 265
        mmWidth = 73290
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
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        DataField = 'Diferencia'
        DataPipeline = plEntradas
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEntradas'
        mmHeight = 3387
        mmLeft = 105304
        mmTop = 1058
        mmWidth = 20373
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 265
        mmWidth = 200555
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        DataField = 'TotalCredito'
        DataPipeline = plEntradas
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEntradas'
        mmHeight = 3387
        mmLeft = 78846
        mmTop = 1058
        mmWidth = 24077
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        DataField = 'TotalDebito'
        DataPipeline = plEntradas
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEntradas'
        mmHeight = 3387
        mmLeft = 48154
        mmTop = 1058
        mmWidth = 25929
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end

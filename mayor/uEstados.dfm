object fEstados: TfEstados
  Left = 211
  Top = 88
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Estados financieros'
  ClientHeight = 433
  ClientWidth = 627
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 10
    Width = 36
    Height = 13
    Caption = 'Estado:'
  end
  object Label2: TLabel
    Left = 420
    Top = 10
    Width = 31
    Height = 13
    Caption = 'Hasta:'
  end
  object wwDBLookupCombo1: TwwDBLookupCombo
    Left = 48
    Top = 7
    Width = 361
    Height = 19
    BorderStyle = bsNone
    DisableThemes = False
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'Descripcion'#9'50'#9'Descripcion'#9'F')
    LookupTable = gldm.rsEstados
    LookupField = 'idEstado'
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    Navigator = False
    Frame.Enabled = True
    Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
    TabOrder = 0
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
    ShowMatchText = True
  end
  object dtHasta: TwwDBDateTimePicker
    Left = 456
    Top = 6
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
    Left = 6
    Top = 34
    Width = 75
    Height = 25
    Caption = 'Mostrar'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object dxDBGrid1: TdxDBGrid
    Left = 4
    Top = 64
    Width = 619
    Height = 337
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'idItem'
    ShowGroupPanel = True
    ShowSummaryFooter = True
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 3
    DataSource = dsEstados
    Filter.Criteria = {00000000}
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    ShowRowFooter = True
    object dxDBGrid1Grupo: TdxDBGridMaskColumn
      Sorted = csUp
      Visible = False
      Width = 169
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Grupo'
      GroupIndex = 0
      SummaryType = cstSum
      SummaryField = 'Balance'
      SummaryFormat = '( Total = ###,###,##0.00)'
    end
    object dxDBGrid1idGrupo: TdxDBGridMaskColumn
      Visible = False
      Width = 53
      BandIndex = 0
      RowIndex = 0
      FieldName = 'idGrupo'
    end
    object dxDBGrid1idItem: TdxDBGridMaskColumn
      Visible = False
      Width = 53
      BandIndex = 0
      RowIndex = 0
      FieldName = 'idItem'
    end
    object dxDBGrid1Column9: TdxDBGridColumn
      Caption = 'Sub Grupo'
      Sorted = csUp
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Descripcion'
      GroupIndex = 1
      SummaryType = cstSum
      SummaryField = 'Balance'
      SummaryFormat = '(  Balance Total = ###,###,##0.00)'
    end
    object dxDBGrid1Descripcion: TdxDBGridMaskColumn
      Width = 304
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Cuenta'
    end
    object dxDBGrid1Orden: TdxDBGridMaskColumn
      Visible = False
      Width = 53
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Orden'
    end
    object dxDBGrid1Negrita: TdxDBGridCheckColumn
      Visible = False
      Width = 81
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Negrita'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object dxDBGrid1Literal: TdxDBGridCheckColumn
      Visible = False
      Width = 81
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Literal'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object dxDBGrid1Balance: TdxDBGridMaskColumn
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Balance'
      EditMask = '#,0.00;(#,0.00)'
      SummaryGroupName = 'dxDBGrid1SummaryGroup2'
    end
  end
  object BitBtn2: TBitBtn
    Left = 546
    Top = 405
    Width = 75
    Height = 25
    Caption = 'Salir'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 94
    Top = 34
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 5
    OnClick = BitBtn3Click
  end
  object dsEstados: TDataSource
    DataSet = gldm.spEstadosFinancieros
    Left = 236
    Top = 172
  end
  object plEstadoSituacion: TppBDEPipeline
    DataSource = dsEstados
    UserName = 'plEstadoSituacion'
    Left = 308
    Top = 146
    object plEstadoSituacionppField1: TppField
      FieldAlias = 'Grupo'
      FieldName = 'Grupo'
      FieldLength = 50
      DisplayWidth = 50
      Position = 0
    end
    object plEstadoSituacionppField2: TppField
      FieldAlias = 'Seccion'
      FieldName = 'Seccion'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object plEstadoSituacionppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'idGrupo'
      FieldName = 'idGrupo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object plEstadoSituacionppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'idItem'
      FieldName = 'idItem'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object plEstadoSituacionppField5: TppField
      FieldAlias = 'Descripcion'
      FieldName = 'Descripcion'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object plEstadoSituacionppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Orden'
      FieldName = 'Orden'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 5
    end
    object plEstadoSituacionppField7: TppField
      FieldAlias = 'Negrita'
      FieldName = 'Negrita'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 6
    end
    object plEstadoSituacionppField8: TppField
      FieldAlias = 'Literal'
      FieldName = 'Literal'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 7
    end
    object plEstadoSituacionppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Balance'
      FieldName = 'Balance'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 8
    end
    object plEstadoSituacionppField10: TppField
      FieldAlias = 'CtaEstado'
      FieldName = 'CtaEstado'
      FieldLength = 16
      DisplayWidth = 16
      Position = 9
    end
    object plEstadoSituacionppField11: TppField
      FieldAlias = 'Cuenta'
      FieldName = 'Cuenta'
      FieldLength = 60
      DisplayWidth = 60
      Position = 10
    end
    object plEstadoSituacionppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'DebCre'
      FieldName = 'DebCre'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 11
    end
  end
  object rptEstadoSituacion: TppReport
    AutoStop = False
    DataPipeline = plEstadoSituacion
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
    AllowPrintToArchive = True
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
    Left = 402
    Top = 158
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plEstadoSituacion'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 19315
      mmPrintPosition = 0
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold, fsItalic]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 5122
        mmLeft = 1588
        mmTop = 6879
        mmWidth = 20151
        BandType = 0
      end
      object ppVariable2: TppVariable
        UserName = 'Variable2'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        OnCalc = ppVariable2Calc
        Transparent = True
        mmHeight = 3440
        mmLeft = 1588
        mmTop = 12965
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        Caption = 'JetPack S.A.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 1588
        mmTop = 1323
        mmWidth = 25929
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yyyy @ hh:nn AM/PM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 144198
        mmTop = 1323
        mmWidth = 42069
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 156104
        mmTop = 5027
        mmWidth = 30163
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        Caption = 'Valores en RD$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 155840
        mmTop = 13494
        mmWidth = 30163
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppShape1: TppShape
        OnPrint = ppShape1Print
        UserName = 'Shape1'
        Brush.Color = 15724527
        Pen.Style = psClear
        mmHeight = 3704
        mmLeft = 265
        mmTop = 794
        mmWidth = 186002
        BandType = 4
      end
      object ppDBText2: TppDBText
        OnPrint = ppDBText2Print
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Cuenta'
        DataPipeline = plEstadoSituacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plEstadoSituacion'
        mmHeight = 3852
        mmLeft = 5292
        mmTop = 794
        mmWidth = 105834
        BandType = 4
      end
      object ppDBText3: TppDBText
        OnPrint = ppDBText3Print
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Balance'
        DataPipeline = plEstadoSituacion
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plEstadoSituacion'
        mmHeight = 3852
        mmLeft = 111654
        mmTop = 794
        mmWidth = 31750
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup3: TppGroup
      BreakName = 'Seccion'
      DataPipeline = plEstadoSituacion
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plEstadoSituacion'
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
        mmHeight = 1323
        mmPrintPosition = 0
        object ppLine4: TppLine
          UserName = 'Line4'
          Style = lsDouble
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 146579
          mmTop = 0
          mmWidth = 39423
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'idGrupo'
      DataPipeline = plEstadoSituacion
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plEstadoSituacion'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 9525
        mmPrintPosition = 0
        object ppDBText5: TppDBText
          OnPrint = ppDBText5Print
          UserName = 'DBText5'
          HyperlinkEnabled = False
          DataField = 'Grupo'
          DataPipeline = plEstadoSituacion
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plEstadoSituacion'
          mmHeight = 5122
          mmLeft = 1588
          mmTop = 3704
          mmWidth = 99484
          BandType = 3
          GroupNo = 0
        end
        object ppLine1: TppLine
          OnPrint = ppLine1Print
          UserName = 'Line1'
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 1588
          mmTop = 8996
          mmWidth = 184415
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7144
        mmPrintPosition = 0
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          DataField = 'Balance'
          DataPipeline = plEstadoSituacion
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plEstadoSituacion'
          mmHeight = 3852
          mmLeft = 146844
          mmTop = 3068
          mmWidth = 39158
          BandType = 5
          GroupNo = 0
        end
        object ppDBText4: TppDBText
          UserName = 'DBText4'
          HyperlinkEnabled = False
          DataField = 'Grupo'
          DataPipeline = plEstadoSituacion
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plEstadoSituacion'
          mmHeight = 3969
          mmLeft = 20373
          mmTop = 3175
          mmWidth = 104511
          BandType = 5
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 146579
          mmTop = 2646
          mmWidth = 39423
          BandType = 5
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          HyperlinkEnabled = False
          Caption = 'TOTAL DE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3852
          mmLeft = 1588
          mmTop = 3068
          mmWidth = 17399
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'idItem'
      DataPipeline = plEstadoSituacion
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plEstadoSituacion'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Visible = False
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 6879
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          OnPrint = ppDBText1Print
          UserName = 'DBText1'
          HyperlinkEnabled = False
          DataField = 'Descripcion'
          DataPipeline = plEstadoSituacion
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plEstadoSituacion'
          mmHeight = 3852
          mmLeft = 1588
          mmTop = 1588
          mmWidth = 89959
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand2BeforePrint
        Visible = False
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppShape2: TppShape
          OnPrint = ppShape1Print
          UserName = 'Shape2'
          Brush.Color = 14803425
          Pen.Style = psClear
          mmHeight = 4233
          mmLeft = 0
          mmTop = 0
          mmWidth = 186002
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          DataField = 'Balance'
          DataPipeline = plEstadoSituacion
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plEstadoSituacion'
          mmHeight = 3852
          mmLeft = 146844
          mmTop = 0
          mmWidth = 39158
          BandType = 5
          GroupNo = 1
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          HyperlinkEnabled = False
          DataField = 'Descripcion'
          DataPipeline = plEstadoSituacion
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plEstadoSituacion'
          mmHeight = 3969
          mmLeft = 19579
          mmTop = 0
          mmWidth = 74083
          BandType = 5
          GroupNo = 1
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          HyperlinkEnabled = False
          Caption = 'TOTAL DE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 1588
          mmTop = 0
          mmWidth = 15621
          BandType = 5
          GroupNo = 1
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 111919
          mmTop = 0
          mmWidth = 34660
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end

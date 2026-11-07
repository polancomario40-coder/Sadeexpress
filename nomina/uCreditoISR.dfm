inherited CreditoISR: TCreditoISR
  Left = 300
  Top = 183
  BorderStyle = bsDialog
  Caption = 'Cr'#233'dito (ISR)'
  ClientHeight = 414
  ClientWidth = 670
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Width = 670
  end
  inherited Gradient2: TGradient
    Width = 670
  end
  object Label2: TLabel [2]
    Left = 518
    Top = 4
    Width = 151
    Height = 25
    Caption = 'Cr'#233'ditos (ISR)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel [3]
    Left = 10
    Top = 42
    Width = 23
    Height = 13
    Caption = 'A'#241'o:'
  end
  object Gradient4: TGradient [4]
    Left = 4
    Top = 65
    Width = 663
    Height = 6
    Align = alCustom
    ColorBegin = 14898176
    ColorEnd = 16511468
    Style = gsReflectedH
  end
  object Gradient3: TGradient [5]
    Left = 4
    Top = 377
    Width = 663
    Height = 6
    Align = alCustom
    ColorBegin = 14898176
    ColorEnd = 16511468
    Style = gsReflectedH
  end
  object edtAno: TcxTextEdit [6]
    Left = 40
    Top = 39
    Width = 77
    Height = 21
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object cxButton1: TcxButton [7]
    Left = 567
    Top = 36
    Width = 99
    Height = 26
    Caption = 'Filtrar'
    Default = True
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
  object cxGrid1: TcxGrid [8]
    Left = 4
    Top = 73
    Width = 662
    Height = 176
    TabOrder = 2
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = ds
      DataController.KeyFieldNames = 'IdCreditoISR'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoInsertOnNewItemRowFocusing]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.IncSearch = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1IdCreditoISR: TcxGridDBColumn
        DataBinding.FieldName = 'IdCreditoISR'
        Visible = False
      end
      object cxGrid1DBTableView1Ano: TcxGridDBColumn
        DataBinding.FieldName = 'Ano'
        Visible = False
      end
      object cxGrid1DBTableView1EmpleadoId: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'EmpleadoId'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGrid1DBTableView1EmpleadoIdPropertiesButtonClick
        Options.Filtering = False
        Width = 57
      end
      object cxGrid1DBTableView1Empleado: TcxGridDBColumn
        DataBinding.FieldName = 'Empleado'
        Options.Filtering = False
        Options.Focusing = False
        Width = 226
      end
      object cxGrid1DBTableView1Monto: TcxGridDBColumn
        DataBinding.FieldName = 'Monto'
        Options.Filtering = False
        Width = 94
      end
      object cxGrid1DBTableView1Descontado: TcxGridDBColumn
        DataBinding.FieldName = 'Descontado'
        Options.Filtering = False
        Options.Focusing = False
        Width = 78
      end
      object cxGrid1DBTableView1Pendiente: TcxGridDBColumn
        DataBinding.FieldName = 'Pendiente'
        Options.Filtering = False
        Options.Focusing = False
        Width = 77
      end
      object cxGrid1DBTableView1Cerrado: TcxGridDBColumn
        DataBinding.FieldName = 'Cerrado'
        Options.Filtering = False
        Options.Focusing = False
        Width = 45
      end
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        Caption = '%'
        DataBinding.FieldName = 'Porciento'
        PropertiesClassName = 'TcxProgressBarProperties'
        Options.Filtering = False
        Options.Focusing = False
        Width = 66
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGrid2: TcxGrid [9]
    Left = 4
    Top = 252
    Width = 662
    Height = 121
    TabOrder = 3
    LookAndFeel.NativeStyle = True
    object cxGridDBTableView1: TcxGridDBTableView
      DataController.DataSource = dsCreditoDet
      DataController.KeyFieldNames = 'IdCreditoIsrDet'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoInsertOnNewItemRowFocusing]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.GroupByBox = False
      object cxGridDBTableView1IdCreditoIsrDet: TcxGridDBColumn
        DataBinding.FieldName = 'IdCreditoIsrDet'
        Visible = False
      end
      object cxGridDBTableView1IdCreditoIsr: TcxGridDBColumn
        DataBinding.FieldName = 'IdCreditoIsr'
        Visible = False
      end
      object cxGridDBTableView1NominaId: TcxGridDBColumn
        Caption = 'N'#243'mina'
        DataBinding.FieldName = 'NominaId'
        Options.Filtering = False
      end
      object cxGridDBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Options.Filtering = False
      end
      object cxGridDBTableView1Monto: TcxGridDBColumn
        DataBinding.FieldName = 'Monto'
        Options.Filtering = False
      end
      object cxGridDBTableView1Porciento: TcxGridDBColumn
        DataBinding.FieldName = 'Porciento'
        Options.Filtering = False
        Width = 92
      end
      object cxGridDBTableView1DBColumn1: TcxGridDBColumn
        Caption = '%'
        DataBinding.FieldName = 'Porciento'
        PropertiesClassName = 'TcxProgressBarProperties'
        Options.Filtering = False
        Width = 254
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object cxButton2: TcxButton [10]
    Left = 567
    Top = 385
    Width = 99
    Height = 26
    Caption = 'Cerrar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    WordWrap = True
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [11]
    Left = 461
    Top = 385
    Width = 99
    Height = 26
    Caption = 'Imprimir'
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
  inherited ds: TDataSource
    DataSet = spCreditoISR
    Left = 258
    Top = 188
  end
  object spCreditoISR: TADOStoredProc
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    AfterPost = spCreditoISRAfterPost
    AfterScroll = spCreditoISRAfterScroll
    OnNewRecord = spCreditoISRNewRecord
    ProcedureName = 'nomRsCreditoISR;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Ano'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 192
    Top = 152
    object spCreditoISRIdCreditoISR: TAutoIncField
      FieldName = 'IdCreditoISR'
      ReadOnly = True
    end
    object spCreditoISRAno: TIntegerField
      FieldName = 'Ano'
    end
    object spCreditoISREmpleadoId: TIntegerField
      FieldName = 'EmpleadoId'
      OnValidate = spCreditoISREmpleadoIdValidate
    end
    object spCreditoISREmpleado: TStringField
      FieldName = 'Empleado'
      ReadOnly = True
      Size = 62
    end
    object spCreditoISRCerrado: TBooleanField
      FieldName = 'Cerrado'
    end
    object spCreditoISRMonto: TBCDField
      FieldName = 'Monto'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object spCreditoISRDescontado: TBCDField
      FieldName = 'Descontado'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 2
    end
    object spCreditoISRPendiente: TBCDField
      FieldName = 'Pendiente'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
      Size = 2
    end
    object spCreditoISRPorciento: TBCDField
      FieldName = 'Porciento'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
  end
  object EmpleadoList: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'NomEmpleadoList;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 126
    Top = 262
    object EmpleadoListEmpleadoId: TIntegerField
      FieldName = 'EmpleadoId'
    end
    object EmpleadoListEmpleado: TStringField
      FieldName = 'Empleado'
      ReadOnly = True
      Size = 62
    end
  end
  object spCreditoIsrDet: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'nomRsCreditoIsrDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@IdCreditoIsr'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 300
    Top = 276
    object spCreditoIsrDetIdCreditoIsrDet: TAutoIncField
      FieldName = 'IdCreditoIsrDet'
      ReadOnly = True
    end
    object spCreditoIsrDetIdCreditoIsr: TIntegerField
      FieldName = 'IdCreditoIsr'
    end
    object spCreditoIsrDetNominaId: TIntegerField
      FieldName = 'NominaId'
    end
    object spCreditoIsrDetMonto: TBCDField
      FieldName = 'Monto'
      DisplayFormat = '#,0.00'
      Precision = 18
      Size = 2
    end
    object spCreditoIsrDetFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object spCreditoIsrDetPorciento: TBCDField
      FieldName = 'Porciento'
      ReadOnly = True
      DisplayFormat = '#0.00%'
      Precision = 32
      Size = 16
    end
  end
  object dsCreditoDet: TDataSource
    DataSet = spCreditoIsrDet
    Left = 424
    Top = 330
  end
  object rptCreditoIsr: TppReport
    AutoStop = False
    DataPipeline = plCreditoIsrRpt
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
    Left = 36
    Top = 148
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plCreditoIsrRpt'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 6773
        mmLeft = 2117
        mmTop = 1588
        mmWidth = 109273
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 26458
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = 15395562
        Pen.Width = 2
        mmHeight = 8202
        mmLeft = 0
        mmTop = 18256
        mmWidth = 203730
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 20108
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Empleado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 19844
        mmTop = 20108
        mmWidth = 56356
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Monto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'HAETTENSCHWEILER'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 85461
        mmTop = 20108
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Pendiente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'HAETTENSCHWEILER'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 144463
        mmTop = 20108
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Porciento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'HAETTENSCHWEILER'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 170127
        mmTop = 20108
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Descontado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'HAETTENSCHWEILER'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 115888
        mmTop = 20108
        mmWidth = 26194
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cerrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'HAETTENSCHWEILER'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 190236
        mmTop = 20373
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        Caption = 'Cr'#233'ditos de Impuestos (ISR)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6085
        mmLeft = 61383
        mmTop = 1323
        mmWidth = 80169
        BandType = 0
      end
      object lAno: TppLabel
        OnPrint = lAnoPrint
        UserName = 'lAno'
        HyperlinkEnabled = False
        Caption = 'A'#241'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6085
        mmLeft = 529
        mmTop = 11642
        mmWidth = 61913
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 169598
        mmTop = 794
        mmWidth = 31750
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3429
        mmLeft = 184150
        mmTop = 5027
        mmWidth = 17145
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'EmpleadoId'
        DataPipeline = plCreditoIsrRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCreditoIsrRpt'
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 0
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Empleado'
        DataPipeline = plCreditoIsrRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plCreditoIsrRpt'
        mmHeight = 3969
        mmLeft = 19579
        mmTop = 0
        mmWidth = 65881
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Monto'
        DataPipeline = plCreditoIsrRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCreditoIsrRpt'
        mmHeight = 3969
        mmLeft = 87313
        mmTop = 0
        mmWidth = 26458
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Pendiente'
        DataPipeline = plCreditoIsrRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCreditoIsrRpt'
        mmHeight = 3969
        mmLeft = 144727
        mmTop = 0
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Porciento'
        DataPipeline = plCreditoIsrRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCreditoIsrRpt'
        mmHeight = 3969
        mmLeft = 171715
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Descontado'
        DataPipeline = plCreditoIsrRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCreditoIsrRpt'
        mmHeight = 3969
        mmLeft = 115359
        mmTop = 0
        mmWidth = 27517
        BandType = 4
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = plCreditoIsrRpt
        DataField = 'Cerrado'
        Transparent = True
        DataPipelineName = 'plCreditoIsrRpt'
        mmHeight = 4233
        mmLeft = 193675
        mmTop = 0
        mmWidth = 6350
        BandType = 4
      end
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
      mmHeight = 8202
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 529
        mmWidth = 202407
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        DataField = 'Monto'
        DataPipeline = plCreditoIsrRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCreditoIsrRpt'
        mmHeight = 4233
        mmLeft = 86784
        mmTop = 1323
        mmWidth = 26723
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        DataField = 'Descontado'
        DataPipeline = plCreditoIsrRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCreditoIsrRpt'
        mmHeight = 4233
        mmLeft = 115888
        mmTop = 1323
        mmWidth = 26723
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        DataField = 'Pendiente'
        DataPipeline = plCreditoIsrRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plCreditoIsrRpt'
        mmHeight = 4233
        mmLeft = 144463
        mmTop = 1323
        mmWidth = 26723
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        HyperlinkEnabled = False
        DataField = 'Porciento'
        DataPipeline = plCreditoIsrRpt
        DisplayFormat = '#,0.00%;-#,0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'plCreditoIsrRpt'
        mmHeight = 4233
        mmLeft = 172244
        mmTop = 1588
        mmWidth = 18256
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object plCreditoIsrRpt: TppDBPipeline
    DataSource = ds
    UserName = 'plCreditoIsrRpt'
    Left = 34
    Top = 100
    object plCreditoIsrRptppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'IdCreditoISR'
      FieldName = 'IdCreditoISR'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 0
      Position = 0
    end
    object plCreditoIsrRptppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ano'
      FieldName = 'Ano'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object plCreditoIsrRptppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'EmpleadoId'
      FieldName = 'EmpleadoId'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
      SelectOrder = 0
    end
    object plCreditoIsrRptppField4: TppField
      FieldAlias = 'Empleado'
      FieldName = 'Empleado'
      FieldLength = 62
      DisplayWidth = 62
      Position = 3
      SelectOrder = 1
    end
    object plCreditoIsrRptppField5: TppField
      FieldAlias = 'Cerrado'
      FieldName = 'Cerrado'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 4
      SelectOrder = 6
    end
    object plCreditoIsrRptppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Monto'
      FieldName = 'Monto'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 5
      SelectOrder = 2
    end
    object plCreditoIsrRptppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Descontado'
      FieldName = 'Descontado'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 33
      Position = 6
      SelectOrder = 3
    end
    object plCreditoIsrRptppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pendiente'
      FieldName = 'Pendiente'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 33
      Position = 7
      SelectOrder = 3
    end
    object plCreditoIsrRptppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Porciento'
      FieldName = 'Porciento'
      FieldLength = 6
      DataType = dtDouble
      DisplayWidth = 33
      Position = 8
      SelectOrder = 5
    end
  end
end

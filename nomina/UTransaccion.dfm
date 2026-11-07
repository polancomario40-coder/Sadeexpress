inherited Transaccion: TTransaccion
  Left = 512
  Top = 250
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Transacciones de Ingresos y Descuentos'
  ClientHeight = 524
  ClientWidth = 788
  Color = clWindow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Left = 708
  end
  inherited ToolBar1: TToolBar
    Width = 788
    BorderWidth = 1
    ButtonHeight = 26
    Color = clWindow
    ParentColor = False
    TabOrder = 1
    inherited SpeedButton1: TSpeedButton
      Width = 81
      Height = 26
    end
    inherited SpeedButton3: TSpeedButton
      Left = 81
      Width = 75
      Height = 26
    end
    inherited SpeedButton5: TSpeedButton
      Left = 156
      Width = 72
      Height = 26
    end
    inherited SpeedButton2: TSpeedButton
      Left = 228
      Width = 70
      Height = 26
    end
    inherited busqueda: TEdit
      Left = 298
      Width = 57
      Height = 26
    end
    inherited SpeedButton6: TSpeedButton
      Left = 355
      Width = 46
      Height = 26
    end
    object BitBtn1: TBitBtn
      Left = 401
      Top = 0
      Width = 64
      Height = 26
      Action = AImprimir
      Caption = 'Imprimir'
      TabOrder = 1
    end
    object Label2: TLabel
      Left = 465
      Top = 0
      Width = 294
      Height = 26
      AutoSize = False
      Caption = 
        'Las transaccion Calculada marcadas como modificadas no seran rec' +
        'alculadas por el sistema, sino que usara el valor mostrado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
  end
  object xGrid: TdxDBGrid [2]
    Left = 0
    Top = 32
    Width = 788
    Height = 459
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'TransaccionID'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    Color = clInfoBk
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnKeyDown = xGridKeyDown
    BandColor = 12961212
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = []
    DataSource = DS
    Filter.Active = True
    Filter.AutoDataSetFilter = True
    Filter.Criteria = {00000000}
    GridLineColor = clPurple
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = []
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSelect, edgoMultiSort, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving]
    OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    RowFooterColor = clWhite
    ScrollBars = ssVertical
    object xGridEmpleadoID: TdxDBGridButtonColumn
      Width = 52
      BandIndex = 0
      RowIndex = 0
      FieldName = 'EmpleadoID'
      Buttons = <
        item
          Default = True
        end>
      ClickKey = 113
      OnButtonClick = xGridEmpleadoIDButtonClick
    end
    object xGridTipoTransaccionID: TdxDBGridButtonColumn
      Width = 49
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TipoTransaccionID'
      Buttons = <
        item
          Default = True
        end>
      ClickKey = 113
      OnButtonClick = xGridTipoTransaccionIDButtonClick
    end
    object xGridXCantidad: TdxDBGridSpinColumn
      Width = 73
      BandIndex = 0
      RowIndex = 0
      FieldName = 'XCantidad'
    end
    object xGridTransaccion: TdxDBGridMaskColumn
      Width = 73
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Transaccion'
    end
    object xGridLTransaccion: TdxDBGridColumn
      Color = 13884634
      Width = 89
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LTransaccion'
      DisableFilter = True
    end
    object xGridLEmpleado: TdxDBGridColumn
      Color = 13884634
      Width = 200
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LEmpleado'
      DisableFilter = True
    end
    object xGridNotas: TdxDBGridMaskColumn
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Notas'
    end
    object xGridCalculada: TdxDBGridCheckColumn
      Color = 13884634
      ReadOnly = True
      Width = 45
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Calculada'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object xGridModificada: TdxDBGridCheckColumn
      Color = 13884634
      Width = 48
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Modificada'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object xGridCxCEmpID: TdxDBGridMaskColumn
      Visible = False
      Width = 57
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CxCEmpID'
      DisableFilter = True
    end
    object xGridNominaID: TdxDBGridMaskColumn
      Visible = False
      Width = 57
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NominaID'
      DisableFilter = True
    end
    object xGridTransaccionID: TdxDBGridMaskColumn
      Visible = False
      Width = 68
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TransaccionID'
      DisableFilter = True
    end
    object xGridTransaccionDefID: TdxDBGridMaskColumn
      Visible = False
      Width = 83
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TransaccionDefID'
      DisableFilter = True
    end
    object xGridCentroCosto: TdxDBGridButtonColumn
      Caption = 'Centro Cost'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CentroCosto'
      Buttons = <
        item
          Default = True
        end>
      OnButtonClick = xGridCentroCostoButtonClick
    end
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 491
    Width = 788
    Height = 33
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      788
      33)
    object SpeedButton4: TSpeedButton
      Left = 659
      Top = 6
      Width = 118
      Height = 22
      Anchors = [akRight, akBottom]
      Caption = 'Borrar Seleccionados'
      OnClick = SpeedButton4Click
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 440
      Height = 31
      DataSource = DS
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbCancel]
      Align = alLeft
      Flat = True
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  inherited DS: TwwDataSource
    Left = 376
    Top = 341
  end
  inherited Acciones: TActionList
    object AImprimir: TAction
      Caption = 'Imprimir'
      OnExecute = AImprimirExecute
    end
  end
  object Transaccion: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    OnCalcFields = TransaccionCalcFields
    OnNewRecord = TransaccionNewRecord
    CommandText = 'rsTransaccion;1'
    CommandTimeout = 120
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
        Name = '@NominaID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 220
    Top = 264
    object TransaccionEmpleadoID: TIntegerField
      DisplayLabel = 'Emp'
      FieldName = 'EmpleadoID'
      OnValidate = TransaccionEmpleadoIDValidate
    end
    object TransaccionTipoTransaccionID: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'TipoTransaccionID'
      OnChange = TransaccionTipoTransaccionIDChange
      OnValidate = TransaccionTipoTransaccionIDValidate
    end
    object TransaccionXCantidad: TBCDField
      DisplayLabel = 'Cantidad / %'
      FieldName = 'XCantidad'
      OnChange = TransaccionXCantidadChange
      Precision = 18
    end
    object TransaccionTransaccion: TBCDField
      DisplayLabel = 'Monto RD$'
      FieldName = 'Transaccion'
      OnChange = TransaccionTransaccionChange
      Precision = 18
    end
    object TransaccionLTransaccion: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 19
      FieldKind = fkCalculated
      FieldName = 'LTransaccion'
      Calculated = True
    end
    object TransaccionLEmpleado: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 39
      FieldKind = fkCalculated
      FieldName = 'LEmpleado'
      Calculated = True
    end
    object TransaccionNotas: TStringField
      DisplayWidth = 20
      FieldName = 'Notas'
      Size = 50
    end
    object TransaccionCalculada: TBooleanField
      DisplayLabel = 'Calc'
      FieldName = 'Calculada'
    end
    object TransaccionModificada: TBooleanField
      DisplayLabel = 'Modif'
      FieldName = 'Modificada'
    end
    object TransaccionCxCEmpID: TIntegerField
      FieldName = 'CxCEmpID'
      Visible = False
    end
    object TransaccionNominaID: TIntegerField
      FieldName = 'NominaID'
      Visible = False
    end
    object TransaccionTransaccionID: TAutoIncField
      FieldName = 'TransaccionID'
      ReadOnly = True
      Visible = False
    end
    object TransaccionTransaccionDefID: TIntegerField
      FieldName = 'TransaccionDefID'
      Visible = False
    end
    object TransaccionidCentroCosto: TGuidField
      FieldName = 'idCentroCosto'
      OnValidate = TransaccionidCentroCostoValidate
      FixedChar = True
      Size = 38
    end
    object TransaccionCentroCosto: TStringField
      FieldName = 'CentroCosto'
      OnValidate = TransaccionCentroCostoValidate
      Size = 16
    end
  end
  object TipoTransaccion: TADOTable
    Connection = dm.Coneccion
    CursorType = ctStatic
    BeforePost = TipoTransaccionBeforePost
    TableName = 'TipoTransaccion'
    Left = 96
    Top = 64
    object TipoTransaccionTipoTransaccionID: TIntegerField
      DisplayLabel = 'Tipo'
      DisplayWidth = 4
      FieldName = 'TipoTransaccionID'
    end
    object TipoTransaccionTipoTransaccion: TStringField
      DisplayWidth = 17
      FieldName = 'TipoTransaccion'
    end
    object TipoTransaccionDebito: TBooleanField
      DisplayLabel = 'Ingreso'
      DisplayWidth = 6
      FieldName = 'Debito'
      OnChange = TipoTransaccionDebitoChange
    end
    object TipoTransaccionCotizable: TBooleanField
      DisplayLabel = 'Cotiza ARS/AFP'
      DisplayWidth = 13
      FieldName = 'Cotizable'
    end
    object TipoTransaccionTipo: TStringField
      DisplayWidth = 7
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object TipoTransaccionValor: TBCDField
      DisplayWidth = 7
      FieldName = 'Valor'
      Precision = 18
    end
    object TipoTransaccionMultiplo: TBCDField
      DisplayWidth = 6
      FieldName = 'Multiplo'
      Precision = 16
      Size = 2
    end
    object TipoTransaccionAdelanto: TBooleanField
      DisplayLabel = 'Solo ISR'
      DisplayWidth = 7
      FieldName = 'Adelanto'
    end
    object TipoTransaccionProgramada: TBooleanField
      DisplayLabel = 'Prog'
      DisplayWidth = 5
      FieldName = 'Programada'
      ReadOnly = True
    end
    object TipoTransaccionNota: TStringField
      DisplayWidth = 13
      FieldName = 'Nota'
      Size = 60
    end
    object TipoTransaccionOrden: TIntegerField
      DisplayWidth = 5
      FieldName = 'Orden'
    end
    object TipoTransaccionClasificacion: TIntegerField
      DisplayLabel = 'Clasif'
      DisplayWidth = 4
      FieldName = 'Clasificacion'
    end
    object TipoTransaccionRegalia: TBooleanField
      DisplayWidth = 6
      FieldName = 'Regalia'
    end
    object TipoTransaccionISRno: TBooleanField
      DisplayLabel = 'No ISR'
      DisplayWidth = 7
      FieldName = 'ISRno'
    end
  end
  object SalarioDia: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'SPSalarioDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@EmpleadoID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Prepared = True
    Left = 320
    Top = 240
    object SalarioDiaCOLUMN1: TBCDField
      FieldName = 'COLUMN1'
      ReadOnly = True
      Precision = 32
      Size = 21
    end
  end
  object CalcDiaHora: TADOCommand
    CommandText = 'spCalcTransaccion;1'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Prepared = True
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@EmpleadoID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@TipoTransaccionID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Cantidad'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@Total'
        Attributes = [paNullable]
        DataType = ftBCD
        Direction = pdInputOutput
        NumericScale = 2
        Precision = 18
        Value = Null
      end>
    Left = 560
    Top = 160
  end
  object spCentroCostoAct: TADOStoredProc
    Connection = dm.Coneccion
    ProcedureName = 'CostCentroCostoAct;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idCentroCosto'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@CentroCosto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 530
    Top = 302
    object spCentroCostoActidCentroCosto: TGuidField
      FieldName = 'idCentroCosto'
      FixedChar = True
      Size = 38
    end
    object spCentroCostoActCentroCosto: TStringField
      FieldName = 'CentroCosto'
      Size = 16
    end
  end
  object RptTrans: TppReport
    AutoStop = False
    DataPipeline = pltrans
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
    Left = 68
    Top = 154
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'pltrans'
    object ppHeaderBand11: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 38365
      mmPrintPosition = 0
      object ppShape32: TppShape
        UserName = 'Shape32'
        Brush.Color = clSilver
        mmHeight = 5556
        mmLeft = 265
        mmTop = 32808
        mmWidth = 202936
        BandType = 0
      end
      object ppLabel105: TppLabel
        UserName = 'Label105'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3528
        mmLeft = 265
        mmTop = 33867
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel109: TppLabel
        UserName = 'Label109'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Empleado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3528
        mmLeft = 16404
        mmTop = 33867
        mmWidth = 54240
        BandType = 0
      end
      object ppLabel110: TppLabel
        UserName = 'Label110'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Tipo Transaccion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3528
        mmLeft = 71173
        mmTop = 33867
        mmWidth = 24871
        BandType = 0
      end
      object ppLabel111: TppLabel
        UserName = 'Label111'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Monto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3528
        mmLeft = 96573
        mmTop = 33867
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel112: TppLabel
        UserName = 'Label112'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Numero de Nomina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4939
        mmLeft = 794
        mmTop = 14288
        mmWidth = 48419
        BandType = 0
      end
      object ppDBText120: TppDBText
        UserName = 'DBText120'
        HyperlinkEnabled = False
        DataField = 'NominaID'
        DataPipeline = pltrans
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pltrans'
        mmHeight = 4939
        mmLeft = 29633
        mmTop = 20373
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel113: TppLabel
        UserName = 'Label113'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cantidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3528
        mmLeft = 119063
        mmTop = 33867
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel114: TppLabel
        UserName = 'Label114'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Notas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3528
        mmLeft = 141023
        mmTop = 33867
        mmWidth = 61913
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        HyperlinkEnabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3881
        mmLeft = 185790
        mmTop = 19844
        mmWidth = 16087
        BandType = 0
      end
      object ppLabel115: TppLabel
        UserName = 'Label115'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3881
        mmLeft = 162984
        mmTop = 15081
        mmWidth = 38629
        BandType = 0
      end
      object ppDBText241: TppDBText
        UserName = 'DBText241'
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
        mmHeight = 6615
        mmLeft = 1058
        mmTop = 1058
        mmWidth = 148432
        BandType = 0
      end
    end
    object ppDetailBand13: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText116: TppDBText
        UserName = 'DBText116'
        HyperlinkEnabled = False
        DataField = 'EmpleadoID'
        DataPipeline = pltrans
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pltrans'
        mmHeight = 3528
        mmLeft = 265
        mmTop = 264
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText117: TppDBText
        UserName = 'DBText117'
        HyperlinkEnabled = False
        DataField = 'LEmpleado'
        DataPipeline = pltrans
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pltrans'
        mmHeight = 3528
        mmLeft = 16404
        mmTop = 264
        mmWidth = 54240
        BandType = 4
      end
      object ppDBText118: TppDBText
        UserName = 'DBText118'
        HyperlinkEnabled = False
        DataField = 'LTransaccion'
        DataPipeline = pltrans
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pltrans'
        mmHeight = 3528
        mmLeft = 71173
        mmTop = 264
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText119: TppDBText
        UserName = 'DBText119'
        HyperlinkEnabled = False
        DataField = 'Transaccion'
        DataPipeline = pltrans
        DisplayFormat = '#,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pltrans'
        mmHeight = 3528
        mmLeft = 96573
        mmTop = 264
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText121: TppDBText
        UserName = 'DBText121'
        HyperlinkEnabled = False
        DataField = 'XCantidad'
        DataPipeline = pltrans
        DisplayFormat = '#,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pltrans'
        mmHeight = 3528
        mmLeft = 119063
        mmTop = 264
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText122: TppDBText
        UserName = 'DBText122'
        HyperlinkEnabled = False
        DataField = 'Notas'
        DataPipeline = pltrans
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pltrans'
        mmHeight = 3528
        mmLeft = 140759
        mmTop = 265
        mmWidth = 62177
        BandType = 4
      end
    end
    object ppFooterBand11: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        HyperlinkEnabled = False
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 192617
        mmTop = 794
        mmWidth = 4498
        BandType = 8
      end
      object ppLabel116: TppLabel
        UserName = 'Label116'
        HyperlinkEnabled = False
        Caption = 'Pagina :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3528
        mmLeft = 181346
        mmTop = 794
        mmWidth = 9948
        BandType = 8
      end
    end
    object ppSummaryBand18: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppDBCalc125: TppDBCalc
        UserName = 'DBCalc125'
        HyperlinkEnabled = False
        DataField = 'Transaccion'
        DataPipeline = pltrans
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pltrans'
        mmHeight = 4233
        mmLeft = 88371
        mmTop = 1588
        mmWidth = 29369
        BandType = 7
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 95250
        mmTop = 529
        mmWidth = 23548
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object pltrans: TppDBPipeline
    DataSource = dstrans
    UserName = 'pltrans'
    Left = 148
    Top = 154
    object pltransppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'EmpleadoID'
      FieldName = 'EmpleadoID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object pltransppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'TipoTransaccionID'
      FieldName = 'TipoTransaccionID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object pltransppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'XCantidad'
      FieldName = 'XCantidad'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 2
    end
    object pltransppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'Transaccion'
      FieldName = 'Transaccion'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 3
    end
    object pltransppField5: TppField
      FieldAlias = 'LTransaccion'
      FieldName = 'LTransaccion'
      FieldLength = 20
      DisplayWidth = 19
      Position = 4
    end
    object pltransppField6: TppField
      FieldAlias = 'LEmpleado'
      FieldName = 'LEmpleado'
      FieldLength = 20
      DisplayWidth = 39
      Position = 5
    end
    object pltransppField7: TppField
      FieldAlias = 'Notas'
      FieldName = 'Notas'
      FieldLength = 50
      DisplayWidth = 20
      Position = 6
    end
    object pltransppField8: TppField
      FieldAlias = 'Calculada'
      FieldName = 'Calculada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 7
    end
    object pltransppField9: TppField
      FieldAlias = 'Modificada'
      FieldName = 'Modificada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 8
    end
    object pltransppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'CxCEmpID'
      FieldName = 'CxCEmpID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object pltransppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'NominaID'
      FieldName = 'NominaID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object pltransppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'TransaccionID'
      FieldName = 'TransaccionID'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 11
    end
    object pltransppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'TransaccionDefID'
      FieldName = 'TransaccionDefID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object pltransppField14: TppField
      FieldAlias = 'idCentroCosto'
      FieldName = 'idCentroCosto'
      FieldLength = 38
      DisplayWidth = 38
      Position = 13
    end
    object pltransppField15: TppField
      FieldAlias = 'CentroCosto'
      FieldName = 'CentroCosto'
      FieldLength = 16
      DisplayWidth = 16
      Position = 14
    end
  end
  object dstrans: TDataSource
    DataSet = Transaccion
    Left = 228
    Top = 154
  end
  object rsBuscarTx: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 
      'select * from transaccion'#13#10'where nominaid=:NominaID and Empleado' +
      'ID = :EmpleadoID'#13#10'and TipoTransaccionID = :TipoTransaccionID'
    Parameters = <
      item
        Name = 'NominaID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'EmpleadoID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'TipoTransaccionID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 438
    Top = 202
  end
  object Emp: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'nomEmpleado;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 66
    Top = 254
    object EmpEmpleadoID: TIntegerField
      FieldName = 'EmpleadoID'
    end
    object EmpTipoEmpleadoID: TIntegerField
      FieldName = 'TipoEmpleadoID'
    end
    object EmpDepartamentoID: TIntegerField
      FieldName = 'DepartamentoID'
    end
    object EmpSecionID: TIntegerField
      FieldName = 'SecionID'
    end
    object EmpEmpleado: TStringField
      FieldName = 'Empleado'
      ReadOnly = True
      Size = 62
    end
    object EmpCedula: TStringField
      FieldName = 'Cedula'
    end
    object EmpPosicion: TStringField
      FieldName = 'Posicion'
      Size = 60
    end
    object EmpSueldo: TBCDField
      FieldName = 'Sueldo'
      Precision = 18
      Size = 2
    end
    object EmpInicio: TDateTimeField
      FieldName = 'Inicio'
    end
    object EmpFin: TDateTimeField
      FieldName = 'Fin'
    end
    object EmpNacimiento: TDateTimeField
      FieldName = 'Nacimiento'
    end
    object EmpSexo: TStringField
      FieldName = 'Sexo'
      FixedChar = True
      Size = 1
    end
    object EmpEstadoCivil: TStringField
      FieldName = 'EstadoCivil'
      FixedChar = True
      Size = 1
    end
    object EmpDireccion: TStringField
      FieldName = 'Direccion'
      Size = 70
    end
    object EmpCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object EmpTelefono1: TStringField
      FieldName = 'Telefono1'
      Size = 15
    end
    object EmpTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 15
    end
    object EmpTipoCuenta: TStringField
      FieldName = 'TipoCuenta'
      FixedChar = True
      Size = 1
    end
    object EmpNumeroCuenta: TStringField
      FieldName = 'NumeroCuenta'
    end
    object EmpAFP: TBooleanField
      FieldName = 'AFP'
    end
    object EmpSueldoFijo: TBooleanField
      FieldName = 'SueldoFijo'
    end
    object EmpActivo: TBooleanField
      FieldName = 'Activo'
    end
    object EmpSS: TBooleanField
      FieldName = 'SS'
    end
    object EmpISR: TBooleanField
      FieldName = 'ISR'
    end
    object EmpPuntoA: TBCDField
      FieldName = 'PuntoA'
      Precision = 18
      Size = 2
    end
    object EmpPuntoB: TBCDField
      FieldName = 'PuntoB'
      Precision = 18
      Size = 2
    end
    object EmpPuntoC: TBCDField
      FieldName = 'PuntoC'
      Precision = 18
      Size = 2
    end
    object EmpNombre: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
    object EmpApellido: TStringField
      FieldName = 'Apellido'
      Size = 30
    end
    object EmpHorasDia: TBCDField
      FieldName = 'HorasDia'
      Precision = 18
      Size = 2
    end
    object EmpNumeroSS: TStringField
      FieldName = 'NumeroSS'
    end
  end
end

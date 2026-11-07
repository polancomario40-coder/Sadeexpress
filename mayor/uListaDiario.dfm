object fListaDiario: TfListaDiario
  Left = 312
  Top = 166
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de diario general'
  ClientHeight = 381
  ClientWidth = 576
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 3
    Top = 10
    Width = 37
    Height = 13
    Caption = 'Cuenta:'
  end
  object Label2: TLabel
    Left = 332
    Top = 10
    Width = 31
    Height = 13
    Caption = 'Hasta:'
  end
  object SpeedButton1: TSpeedButton
    Left = 140
    Top = 5
    Width = 20
    Height = 22
    Caption = '...'
    Flat = True
    OnClick = SpeedButton1Click
  end
  object Label3: TLabel
    Left = 169
    Top = 10
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label4: TLabel
    Left = 366
    Top = 35
    Width = 81
    Height = 13
    Caption = 'Balance Anterior:'
  end
  object Label5: TLabel
    Left = 383
    Top = 338
    Width = 67
    Height = 13
    Caption = 'Balance Final:'
  end
  object SpeedButton2: TSpeedButton
    Left = 4
    Top = 335
    Width = 97
    Height = 41
    Caption = 'Imprimir'
    Flat = True
    Glyph.Data = {
      FA0E0000424DFA0E000000000000360000002800000024000000230000000100
      180000000000C40E000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF000000000000C0C0C0808080808080000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF000000000000C0C0C0C0C0C0C0C0C0808080808080
      808080808080000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000C0C0C0C0C0C0C0C0C0
      C0C0C0808080000000000000808080808080808080808080000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000C0C0C0
      C0C0C0C0C0C0C0C0C0808080808080C0C0C08080808080800000000000008080
      80808080808080808080000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
      000000C0C0C0C0C0C0C0C0C0C0C0C0808080808080C0C0C0808080C0C0C08080
      8080808080808080808000000000000080808080808080808080808000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0808080808080C0C0C0C0C0
      C0C0C0C0808080C0C0C080808080808080808080808080808080808000000000
      0000808080808080808080808080000000000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080C0C0C0C0C0C08080808080
      80C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080C0C0C080808080808080808080
      8080808080808080808080808080000000000000808080808080808080808080
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080
      80808080808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080C0
      C0C0808080808080808080808080808080808080808080808080808080808080
      000000000000808080808080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF808080808080C0C0C0808080C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0808080C0C0C0808080808080808080808080808080808080
      808080808080808080808080808080808080000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080F9F9EFC0C0C0808080C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080F9F9EF808080808080
      8080808080808080808080808080808080808080808080808080808080808080
      80808080000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
      8080F9F9EFC0C0C0808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0F9F9EF
      808080808080C0C0C0C0C0C08080808080808080808080808080808080808080
      80808080808080808080808080808080808080000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF808080F9F9EFC0C0C0808080C0C0C0C0C0C0C0C0C0
      C0C0C0F9F9EFF9F9EFC0C0C0C0C0C0C0C0C0808080808080C0C0C0C0C0C08080
      8080808080808080808080808080808080808080808080808080808080808000
      0000808080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080F9F9EFC0C0C0
      808080C0C0C0C0C0C0F9F9EFF9F9EFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0808080808080C0C0C0C0C0C080808080808080808080808080808080
      8080808080808080808080000000C0C0C0808080000000FFFFFFFFFFFFFFFFFF
      FFFFFF808080F9F9EFC0C0C0808080F9F9EFF9F9EFC0C0C0C0C0C0C0C0C00000
      FF0000FFC0C0C0C0C0C0808080808080C0C0C0C0C0C0808080808080C0C0C0C0
      C0C0808080808080808080808080808080808080808080000000C0C0C0808080
      808080FFFFFFFFFFFFFFFFFFFFFFFF808080F9F9EFF9F9EF808080808080C0C0
      C0C0C0C000FF0000FF00C0C0C0C0C0C0808080808080C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0000000808080808080C0C0C0C0C0C0808080808080808080808080
      808080000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080808080
      80F9F9EFC0C0C0C0C0C0808080808080C0C0C0C0C0C0808080808080C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0000000000000F9F9EFC0C0C0000000808080808080
      C0C0C0C0C0C0808080808080808080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF808080808080F9F9EFC0C0C0C0C0C080808080
      8080808080808080C0C0C0C0C0C0C0C0C0000000000000F9F9EFF9F9EFF9F9EF
      F9F9EF000000C0C0C0C0C0C0808080808080C0C0C0C0C0C0808080000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
      8080808080F9F9EFC0C0C0C0C0C0808080808080808080000000000000F9F9EF
      F9F9EFF9F9EFFF0000FF0000F9F9EFC0C0C0000000808080C0C0C0C0C0C08080
      80808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080808080F9F9EFC0C0C0C0C0C0
      808080808080F9F9EFF9F9EFFF0000FF0000F9F9EFF9F9EFF9F9EFF9F9EF0000
      00808080808080808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF808080808080F9F9EFC0C0C0C0C0C0808080F9F9EFF9F9EFF9F9EFF9F9
      EFFF0000FF0000F9F9EFC0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080808080F9F9EF8080
      80F9F9EFF9F9EFFF0000FF0000F9F9EFF9F9EFF9F9EFF9F9EFC0C0C0000000FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF808080808080808080F9F9EFF9F9EFF9F9EFF9F9EFFF0000FF
      0000F9F9EFF9F9EFC0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080F9F9EFF9
      F9EFFF0000FF0000F9F9EFF9F9EFF9F9EFF9F9EFF9F9EFC0C0C0000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF808080F9F9EFF9F9EFF9F9EFF9F9EFF9F9EFFF0000FF0000
      F9F9EFF9F9EFC0C0C0000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080F9F9EFF9F9EF
      FF0000FF0000F9F9EFF9F9EFF9F9EFF9F9EFF9F9EF808080808080FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF808080F9F9EFF9F9EFF9F9EFF9F9EFF9F9EFF9F9EF8080808080
      80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080F9F9EFF9F9EFF9F9
      EF808080808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF808080808080808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 110
    Top = 335
    Width = 97
    Height = 41
    Caption = 'Guardar XLS'
    Flat = True
    Glyph.Data = {
      CA020000424DCA02000000000000420000002800000012000000120000000100
      1000030000008802000000000000000000000000000000000000007C0000E003
      00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C000000000000000000000000
      00000000000000000000000000001F7C1F7C1F7C1F7C00000F000F000000F75E
      0F000F00F75EF75EF75E00000F000F0000001F7C1F7C1F7C1F7C00000F000F00
      0000F75E0F000F00F75EF75EF75E00000F000F0000001F7C1F7C1F7C1F7C0000
      0F000F000000F75E0F000F00F75EF75EF75E00000F000F0000001F7C1F7C1F7C
      1F7C00000F000F000F00F75EF75EF75EF75EF75EF75E0F000F000F0000001F7C
      1F7C1F7C1F7C00000F000F000F000F000F000F000F000F000F000F000F000F00
      00001F7C1F7C1F7C1F7C00000F000F0000000000000000000000000000000000
      0F000F0000001F7C1F7C1F7C1F7C00000F000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F00000F0000001F7C1F7C1F7C1F7C00000F000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F00000F0000001F7C1F7C1F7C1F7C00000F000000FF7FEF3D
      EF3DEF3DEF3DEF3DEF3DFF7F00000F0000001F7C1F7C1F7C1F7C00000F000000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000F0000001F7C1F7C1F7C1F7C0000
      F75E0000FF7FEF3DEF3DEF3DEF3DEF3DEF3DFF7F0000000000001F7C1F7C1F7C
      1F7C00000F000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000F0000001F7C
      1F7C1F7C1F7C0000000000000000000000000000000000000000000000000000
      00001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
      1F7C1F7C1F7C1F7C1F7C1F7C1F7C}
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 496
    Top = 5
    Width = 73
    Height = 25
    Caption = 'Mostrar'
    Flat = True
    OnClick = SpeedButton4Click
  end
  object dtHasta: TwwDBDateTimePicker
    Left = 367
    Top = 7
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
    TabOrder = 2
    OnKeyDown = dtHastaKeyDown
  end
  object edCta: TwwDBEdit
    Left = 42
    Top = 7
    Width = 95
    Height = 19
    BorderStyle = bsNone
    Frame.Enabled = True
    Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
    TabOrder = 0
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dtDesde: TwwDBDateTimePicker
    Left = 204
    Top = 7
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
  object wwDBEdit1: TwwDBEdit
    Left = 3
    Top = 32
    Width = 349
    Height = 19
    TabStop = False
    BorderStyle = bsNone
    DataField = 'Descripcion'
    DataSource = dsTotales
    Frame.Enabled = True
    Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
    ReadOnly = True
    TabOrder = 3
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object wwDBEdit2: TwwDBEdit
    Left = 452
    Top = 32
    Width = 116
    Height = 19
    TabStop = False
    BorderStyle = bsNone
    DataField = 'BalanceAnterior'
    DataSource = dsTotales
    Frame.Enabled = True
    Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
    ReadOnly = True
    TabOrder = 4
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object wwDBEdit3: TwwDBEdit
    Left = 454
    Top = 334
    Width = 116
    Height = 19
    TabStop = False
    BorderStyle = bsNone
    DataField = 'BalanceActual'
    DataSource = dsTotales
    Frame.Enabled = True
    Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
    ReadOnly = True
    TabOrder = 5
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object Grid: TdxDBGrid
    Left = 4
    Top = 58
    Width = 573
    Height = 271
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'KeyCol'
    ShowSummaryFooter = True
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 6
    DataSource = dsDiario
    Filter.Criteria = {00000000}
    LookAndFeel = lfUltraFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    ShowRowFooter = True
    object GridFecha: TdxDBGridDateColumn
      Width = 78
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Fecha'
    end
    object GridReferencia: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Referencia'
    end
    object GridDebito: TdxDBGridMaskColumn
      Width = 96
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Debito'
      SummaryFooterType = cstSum
      SummaryFooterField = 'Debito'
      SummaryFooterFormat = '###,###,##0.00'
    end
    object GridCredito: TdxDBGridMaskColumn
      Width = 108
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Credito'
      SummaryFooterType = cstSum
      SummaryFooterField = 'Credito'
      SummaryFooterFormat = '###,###,##0.00'
    end
    object GridSistema: TdxDBGridMaskColumn
      Width = 44
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Sistema'
    end
    object GridDescripcion: TdxDBGridMaskColumn
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Descripcion'
    end
    object GrididTrans: TdxDBGridMaskColumn
      Visible = False
      Width = 36
      BandIndex = 0
      RowIndex = 0
      FieldName = 'idTrans'
    end
    object GrididDocumento: TdxDBGridMaskColumn
      Visible = False
      Width = 39
      BandIndex = 0
      RowIndex = 0
      FieldName = 'idDocumento'
    end
    object GridKeyCol: TdxDBGridMaskColumn
      Visible = False
      Width = 58
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KeyCol'
    end
    object GrididCuenta: TdxDBGridMaskColumn
      Visible = False
      Width = 58
      BandIndex = 0
      RowIndex = 0
      FieldName = 'idCuenta'
    end
  end
  object dsDiario: TDataSource
    DataSet = gldm.rsListaDiario
    Left = 134
    Top = 132
  end
  object dsTotales: TDataSource
    DataSet = gldm.mTotales
    Left = 206
    Top = 138
  end
  object sd1: TSaveDialog
    DefaultExt = 'SLK'
    Left = 374
    Top = 166
  end
  object plDiario: TppDBPipeline
    DataSource = dsDiario
    UserName = 'Diario'
    Left = 296
    Top = 194
    object plDiarioppField1: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 0
    end
    object plDiarioppField2: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 15
      DisplayWidth = 15
      Position = 1
    end
    object plDiarioppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'Debito'
      FieldName = 'Debito'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 2
    end
    object plDiarioppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'Credito'
      FieldName = 'Credito'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 21
      Position = 3
    end
    object plDiarioppField5: TppField
      FieldAlias = 'Sistema'
      FieldName = 'Sistema'
      FieldLength = 10
      DisplayWidth = 12
      Position = 4
    end
    object plDiarioppField6: TppField
      FieldAlias = 'Descripcion'
      FieldName = 'Descripcion'
      FieldLength = 60
      DisplayWidth = 60
      Position = 5
    end
    object plDiarioppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'idTrans'
      FieldName = 'idTrans'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object plDiarioppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'idDocumento'
      FieldName = 'idDocumento'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object plDiarioppField9: TppField
      FieldAlias = 'KeyCol'
      FieldName = 'KeyCol'
      FieldLength = 16
      DisplayWidth = 16
      Position = 8
    end
    object plDiarioppField10: TppField
      FieldAlias = 'idCuenta'
      FieldName = 'idCuenta'
      FieldLength = 16
      DisplayWidth = 16
      Position = 9
    end
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = plDiario
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 8890
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
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 180
    Top = 204
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plDiario'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 27252
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = 15790320
        ParentWidth = True
        Pen.Style = psClear
        mmHeight = 4233
        mmLeft = 0
        mmTop = 23019
        mmWidth = 203200
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cuenta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 1852
        mmWidth = 16140
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'idCuenta'
        DataPipeline = plTotales
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plTotales'
        mmHeight = 3704
        mmLeft = 18256
        mmTop = 1852
        mmWidth = 51858
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Descripcion'
        DataPipeline = plTotales
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plTotales'
        mmHeight = 3704
        mmLeft = 18256
        mmTop = 6085
        mmWidth = 126207
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Balance anterior:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 13758
        mmWidth = 30692
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'BalanceAnterior'
        DataPipeline = plTotales
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTotales'
        mmHeight = 3704
        mmLeft = 31750
        mmTop = 13758
        mmWidth = 32808
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Balance final:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 71438
        mmTop = 13758
        mmWidth = 25400
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'BalanceActual'
        DataPipeline = plTotales
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTotales'
        mmHeight = 3704
        mmLeft = 97896
        mmTop = 13758
        mmWidth = 32808
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 265
        mmTop = 23548
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        Caption = 'Referencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 20373
        mmTop = 23548
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        Caption = 'Debito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 51065
        mmTop = 23548
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        Caption = 'Credito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 87577
        mmTop = 23548
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        Caption = 'Sistema'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 112448
        mmTop = 23548
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        HyperlinkEnabled = False
        Caption = 'Descripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 132292
        mmTop = 23548
        mmWidth = 20108
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        DisplayFormat = 'dd/mm/yyyy @ hh:nn AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 165365
        mmTop = 794
        mmWidth = 36248
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 172509
        mmTop = 4763
        mmWidth = 29104
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plDiario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDiario'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 264
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = plDiario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDiario'
        mmHeight = 3440
        mmLeft = 20108
        mmTop = 264
        mmWidth = 26194
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'Debito'
        DataPipeline = plDiario
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDiario'
        mmHeight = 3440
        mmLeft = 47361
        mmTop = 265
        mmWidth = 29633
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'Credito'
        DataPipeline = plDiario
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDiario'
        mmHeight = 3440
        mmLeft = 84931
        mmTop = 265
        mmWidth = 25929
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'Sistema'
        DataPipeline = plDiario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDiario'
        mmHeight = 3440
        mmLeft = 112977
        mmTop = 265
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'Descripcion'
        DataPipeline = plDiario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDiario'
        mmHeight = 3440
        mmLeft = 132292
        mmTop = 265
        mmWidth = 68792
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
      mmHeight = 9790
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Totales:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 3704
        mmTop = 3175
        mmWidth = 30692
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 2381
        mmWidth = 203200
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Width = 0
        ParentWidth = True
        Style = lsDouble
        Weight = 0.250000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 7144
        mmWidth = 203200
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        DataField = 'Debito'
        DataPipeline = plDiario
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDiario'
        mmHeight = 3440
        mmLeft = 45508
        mmTop = 3175
        mmWidth = 31485
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        DataField = 'Credito'
        DataPipeline = plDiario
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDiario'
        mmHeight = 3440
        mmLeft = 79375
        mmTop = 3175
        mmWidth = 31485
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object plTotales: TppDBPipeline
    DataSource = dsTotales
    UserName = 'plTotales'
    Left = 264
    Top = 246
    object plTotalesppField1: TppField
      FieldAlias = 'idCuenta'
      FieldName = 'idCuenta'
      FieldLength = 16
      DisplayWidth = 16
      Position = 0
    end
    object plTotalesppField2: TppField
      FieldAlias = 'Descripcion'
      FieldName = 'Descripcion'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object plTotalesppField3: TppField
      FieldAlias = 'Origen'
      FieldName = 'Origen'
      FieldLength = 2
      DisplayWidth = 2
      Position = 2
    end
    object plTotalesppField4: TppField
      FieldAlias = 'Tipo'
      FieldName = 'Tipo'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
    object plTotalesppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nivel'
      FieldName = 'Nivel'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object plTotalesppField6: TppField
      FieldAlias = 'BalanceAnterior'
      FieldName = 'BalanceAnterior'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 5
    end
    object plTotalesppField7: TppField
      FieldAlias = 'TotalDB'
      FieldName = 'TotalDB'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 6
    end
    object plTotalesppField8: TppField
      FieldAlias = 'TotalCR'
      FieldName = 'TotalCR'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 7
    end
    object plTotalesppField9: TppField
      FieldAlias = 'BalanceActual'
      FieldName = 'BalanceActual'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 8
    end
    object plTotalesppField10: TppField
      FieldAlias = 'Grupo'
      FieldName = 'Grupo'
      FieldLength = 1
      DisplayWidth = 1
      Position = 9
    end
    object plTotalesppField11: TppField
      FieldAlias = 'Nivel0'
      FieldName = 'Nivel0'
      FieldLength = 15
      DisplayWidth = 15
      Position = 10
    end
    object plTotalesppField12: TppField
      FieldAlias = 'DetBalAnt'
      FieldName = 'DetBalAnt'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 11
    end
    object plTotalesppField13: TppField
      FieldAlias = 'DetTDB'
      FieldName = 'DetTDB'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 12
    end
    object plTotalesppField14: TppField
      FieldAlias = 'DetTCR'
      FieldName = 'DetTCR'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 13
    end
    object plTotalesppField15: TppField
      FieldAlias = 'DetBalAct'
      FieldName = 'DetBalAct'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 14
    end
    object plTotalesppField16: TppField
      FieldAlias = 'Nivel01'
      FieldName = 'Nivel01'
      FieldLength = 15
      DisplayWidth = 15
      Position = 15
    end
  end
end

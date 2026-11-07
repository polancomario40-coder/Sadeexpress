inherited Autorizaciones: TAutorizaciones
  Left = 211
  Top = 0
  Caption = 'Autorizaciones'
  ClientHeight = 525
  ClientWidth = 841
  Color = 15922418
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn [0]
    Left = 694
    Top = 8
    Width = 85
    Height = 25
    Cancel = True
    Caption = 'Salir'
    Default = True
    ModalResult = 1
    TabOrder = 0
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn [1]
    Left = 590
    Top = 8
    Width = 91
    Height = 25
    Caption = 'Nuevo'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn [2]
    Left = 488
    Top = 8
    Width = 89
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object Nivel_Seguridad: TEdit [3]
    Left = 8
    Top = 8
    Width = 65
    Height = 30
    TabStop = False
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    Text = 'Nivel_Seguridad'
  end
  object cxGrid1: TcxGrid [4]
    Left = 6
    Top = 46
    Width = 827
    Height = 446
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 4
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.KeyFieldNames = 'idAutorizacion'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsData.Appending = True
      OptionsData.Deleting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      object cxGrid1DBTableView1idAutorizacion: TcxGridDBColumn
        Caption = 'Autorizacion'
        DataBinding.FieldName = 'idAutorizacion'
        Width = 229
      end
      object cxGrid1DBTableView1Clase: TcxGridDBColumn
        DataBinding.FieldName = 'Clase'
        Options.Editing = False
        Width = 53
      end
      object cxGrid1DBTableView1Referencia: TcxGridDBColumn
        DataBinding.FieldName = 'Referencia'
        Options.Editing = False
        Width = 84
      end
      object cxGrid1DBTableView1Descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'Descripcion'
        Options.Editing = False
        Width = 272
      end
      object cxGrid1DBTableView1UsadoPor: TcxGridDBColumn
        Caption = 'Usada por'
        DataBinding.FieldName = 'UsadoPor'
        Options.Editing = False
        Width = 79
      end
      object cxGrid1DBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Options.Editing = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxCheckBox1: TcxCheckBox [5]
    Left = 6
    Top = 497
    Width = 121
    Height = 21
    Anchors = [akLeft, akBottom]
    Caption = 'Ver todas'
    Properties.ImmediatePost = True
    Properties.OnEditValueChanged = cxCheckBox1PropertiesEditValueChanged
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  inherited DS: TwwDataSource
    AutoEdit = True
    DataSet = rs
  end
  object pl: TppDBPipeline
    DataSource = DS
    UserName = 'pl'
    Left = 296
    Top = 136
    object plppField1: TppField
      FieldAlias = 'idAutorizacion'
      FieldName = 'idAutorizacion'
      FieldLength = 10
      DisplayWidth = 10
      Position = 0
    end
    object plppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Clase'
      FieldName = 'Clase'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object plppField3: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 16
      DisplayWidth = 16
      Position = 2
    end
    object plppField4: TppField
      FieldAlias = 'Descripcion'
      FieldName = 'Descripcion'
      FieldLength = 100
      DisplayWidth = 100
      Position = 3
    end
    object plppField5: TppField
      FieldAlias = 'UsadoPor'
      FieldName = 'UsadoPor'
      FieldLength = 30
      DisplayWidth = 30
      Position = 4
    end
    object plppField6: TppField
      FieldAlias = 'CreadoPor'
      FieldName = 'CreadoPor'
      FieldLength = 30
      DisplayWidth = 30
      Position = 5
    end
    object plppField7: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 6
    end
  end
  object rpt: TppReport
    AutoStop = False
    DataPipeline = pl
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
    Left = 376
    Top = 178
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'pl'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 17463
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'idAutorizacion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 6350
        mmTop = 13758
        mmWidth = 26988
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Referencia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 33867
        mmTop = 13758
        mmWidth = 26988
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Descripcion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 61383
        mmTop = 13758
        mmWidth = 26988
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'UsadoPor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 161132
        mmTop = 13758
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'CreadoPor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 265
        mmWidth = 19844
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'CreadoPor'
        DataPipeline = pl
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pl'
        mmHeight = 3704
        mmLeft = 178065
        mmTop = 265
        mmWidth = 24342
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 181769
        mmTop = 13758
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Clase'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 157692
        mmTop = 4763
        mmWidth = 19844
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Clase'
        DataPipeline = pl
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pl'
        mmHeight = 3704
        mmLeft = 178065
        mmTop = 4763
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        Caption = 'Autorizaciones'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 0
        mmTop = 529
        mmWidth = 35454
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'idAutorizacion'
        DataPipeline = pl
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pl'
        mmHeight = 3704
        mmLeft = 6615
        mmTop = 529
        mmWidth = 26458
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = pl
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pl'
        mmHeight = 3704
        mmLeft = 34131
        mmTop = 529
        mmWidth = 27252
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Descripcion'
        DataPipeline = pl
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pl'
        mmHeight = 3704
        mmLeft = 61913
        mmTop = 529
        mmWidth = 98161
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'UsadoPor'
        DataPipeline = pl
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pl'
        mmHeight = 3704
        mmLeft = 161396
        mmTop = 529
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = pl
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pl'
        mmHeight = 3704
        mmLeft = 181769
        mmTop = 529
        mmWidth = 20902
        BandType = 4
      end
      object myCheckBox1: TmyCheckBox
        UserName = 'CheckBox1'
        Checked = False
        CheckBoxColor = clBlack
        Transparent = True
        mmHeight = 4763
        mmLeft = 265
        mmTop = 265
        mmWidth = 5027
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    OnNewRecord = spNewRecord
    CommandText = 'segRSAutorizaciones'
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
        Name = '@usuario'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@todas'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 270
    Top = 240
    object rsidAutorizacion: TStringField
      FieldName = 'idAutorizacion'
      Size = 32
    end
    object rsClase: TSmallintField
      FieldName = 'Clase'
    end
    object rsReferencia: TStringField
      FieldName = 'Referencia'
      Size = 16
    end
    object rsDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object rsUsadoPor: TStringField
      FieldName = 'UsadoPor'
      Size = 30
    end
    object rsCreadoPor: TStringField
      FieldName = 'CreadoPor'
      Size = 30
    end
    object rsFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsrowguid: TGuidField
      FieldName = 'rowguid'
      FixedChar = True
      Size = 38
    end
  end
end

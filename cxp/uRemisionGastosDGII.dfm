inherited RemisionGastosDGII: TRemisionGastosDGII
  Left = 617
  Top = 255
  Caption = 'Remision de gastos/costos a la DGII'
  ClientHeight = 466
  ClientWidth = 833
  Color = clWhite
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 12
    Top = 12
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label2: TLabel [1]
    Left = 210
    Top = 12
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object deDesde: TcxDateEdit [2]
    Left = 48
    Top = 8
    Width = 121
    Height = 21
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Properties.OnEditValueChanged = deDesdePropertiesEditValueChanged
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object deHasta: TcxDateEdit [3]
    Left = 256
    Top = 8
    Width = 121
    Height = 21
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object cxGrid1: TcxGrid [4]
    Left = 10
    Top = 38
    Width = 815
    Height = 350
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      DataController.DataSource = DS
      DataController.KeyFieldNames = 'keyfield'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'MontoImpuestos'
        end
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'Total'
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1isr_retenido
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1monto_facturado
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1itbis_retenido
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1itbis_facturado
        end>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.IncSearch = True
      OptionsData.Editing = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'tipoDoc'
        Visible = False
      end
      object cxGrid1DBTableView1DBColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'idDocumento'
        Visible = False
      end
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        Caption = '#'
        DataBinding.FieldName = 'lno'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Styles.Content = cxStyle1
        Width = 44
      end
      object cxGrid1DBTableView1tipo_identificacion: TcxGridDBColumn
        Caption = 'Tipo Id'
        DataBinding.FieldName = 'tipo_identificacion'
        Options.Filtering = False
        Width = 42
      end
      object cxGrid1DBTableView1rnc_cedula: TcxGridDBColumn
        Caption = 'RNC/Cedula'
        DataBinding.FieldName = 'rnc_cedula'
        Options.Filtering = False
        Width = 74
      end
      object cxGrid1DBTableView1tipo_compra: TcxGridDBColumn
        Caption = 'Clase'
        DataBinding.FieldName = 'tipo_compra'
        Options.Filtering = False
        Width = 34
      end
      object cxGrid1DBTableView1compfiscal: TcxGridDBColumn
        Caption = 'NCF'
        DataBinding.FieldName = 'compfiscal'
        Options.Filtering = False
        Width = 132
      end
      object cxGrid1DBTableView1compfiscal_modif: TcxGridDBColumn
        Caption = 'NCF Modificado'
        DataBinding.FieldName = 'compfiscal_modif'
        Options.Filtering = False
        Width = 113
      end
      object cxGrid1DBTableView1fecha_compfiscal: TcxGridDBColumn
        Caption = 'Fecha NCF'
        DataBinding.FieldName = 'fecha_compfiscal'
        Options.Filtering = False
        Width = 61
      end
      object cxGrid1DBTableView1fecha_pago: TcxGridDBColumn
        Caption = 'Fecha pago'
        DataBinding.FieldName = 'fecha_pago'
        Options.Filtering = False
        Width = 68
      end
      object cxGrid1DBTableView1itbis_facturado: TcxGridDBColumn
        Caption = 'ITBIS Fact.'
        DataBinding.FieldName = 'itbis_facturado'
        Options.Filtering = False
        Width = 63
      end
      object cxGrid1DBTableView1itbis_retenido: TcxGridDBColumn
        Caption = 'ITBIS Ret.'
        DataBinding.FieldName = 'itbis_retenido'
        Options.Filtering = False
        Width = 55
      end
      object cxGrid1DBTableView1monto_facturado: TcxGridDBColumn
        Caption = 'Monto Fact.'
        DataBinding.FieldName = 'monto_facturado'
        Options.Filtering = False
        Width = 65
      end
      object cxGrid1DBTableView1isr_retenido: TcxGridDBColumn
        Caption = 'ISR Retenido'
        DataBinding.FieldName = 'isr_retenido'
        Options.Filtering = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGroupBox1: TcxGroupBox [5]
    Left = 12
    Top = 396
    Width = 691
    Height = 63
    Anchors = [akLeft, akRight, akBottom]
    Caption = ' Resumen '
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
    object lRegistros: TcxLabel
      Left = 6
      Top = 16
      Width = 188
      Height = 17
      AutoSize = False
      ParentFont = False
      Properties.Transparent = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 14124890
      Style.Font.Height = -9
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
    end
    object lFact: TcxLabel
      Left = 202
      Top = 16
      Width = 158
      Height = 17
      AutoSize = False
      ParentFont = False
      Properties.Transparent = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 14124890
      Style.Font.Height = -9
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
    end
    object lITBIS: TcxLabel
      Left = 6
      Top = 39
      Width = 188
      Height = 17
      AutoSize = False
      ParentFont = False
      Properties.Transparent = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 14124890
      Style.Font.Height = -9
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
    end
    object lRet: TcxLabel
      Left = 202
      Top = 39
      Width = 158
      Height = 17
      AutoSize = False
      ParentFont = False
      Properties.Transparent = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 14124890
      Style.Font.Height = -9
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
    end
    object lFactAnt: TcxLabel
      Left = 377
      Top = 16
      Width = 152
      Height = 17
      AutoSize = False
      Caption = '0.00'
      ParentFont = False
      Properties.Transparent = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 14124890
      Style.Font.Height = -9
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
    end
    object litbisAnt: TcxLabel
      Left = 377
      Top = 39
      Width = 152
      Height = 17
      AutoSize = False
      Caption = '0.00'
      ParentFont = False
      Properties.Transparent = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 14124890
      Style.Font.Height = -9
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
    end
    object lIsr: TcxLabel
      Left = 560
      Top = 39
      Width = 123
      Height = 17
      AutoSize = False
      Caption = '0.00'
      ParentFont = False
      Properties.Transparent = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 14124890
      Style.Font.Height = -9
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
    end
  end
  object cxButton1: TcxButton [6]
    Left = 388
    Top = 4
    Width = 131
    Height = 29
    Caption = 'Mostrar'
    TabOrder = 4
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton [7]
    Left = 706
    Top = 395
    Width = 120
    Height = 29
    Anchors = [akRight, akBottom]
    Caption = 'Guardar archivo'
    TabOrder = 5
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [8]
    Left = 706
    Top = 431
    Width = 120
    Height = 29
    Anchors = [akRight, akBottom]
    Caption = 'Salir'
    TabOrder = 6
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object ButtonExecel: TcxButton [9]
    Left = 698
    Top = 4
    Width = 67
    Height = 29
    Anchors = [akTop, akRight]
    Caption = 'Excel'
    TabOrder = 7
    OnClick = ButtonExecelClick
    LookAndFeel.NativeStyle = True
  end
  object ButtonPrint: TcxButton [10]
    Left = 526
    Top = 4
    Width = 79
    Height = 29
    Anchors = [akTop, akRight]
    Caption = 'Imp. Resumen'
    TabOrder = 8
    OnClick = ButtonPrintClick
    LookAndFeel.NativeStyle = True
  end
  object cxButton4: TcxButton [11]
    Left = 612
    Top = 4
    Width = 81
    Height = 29
    Anchors = [akTop, akRight]
    Caption = 'Imp. Detalle'
    TabOrder = 9
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    DataSet = mData
  end
  object rs: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpRemisionGastosDGII2011;1'
    CommandTimeout = 240
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
        Name = '@desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 116
    Top = 134
    object rsrnc_cedula: TStringField
      FieldName = 'rnc_cedula'
    end
    object rstipo_identificacion: TIntegerField
      FieldName = 'tipo_identificacion'
      ReadOnly = True
    end
    object rstipo_compra: TStringField
      FieldName = 'tipo_compra'
      Size = 2
    end
    object rscompfiscal: TStringField
      FieldName = 'compfiscal'
      Size = 19
    end
    object rscompfiscal_modif: TStringField
      FieldName = 'compfiscal_modif'
      ReadOnly = True
      Size = 19
    end
    object rsfecha_compfiscal: TDateTimeField
      FieldName = 'fecha_compfiscal'
    end
    object rsfecha_pago: TDateTimeField
      FieldName = 'fecha_pago'
      ReadOnly = True
    end
    object rsitbis_facturado: TBCDField
      FieldName = 'itbis_facturado'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsitbis_retenido: TBCDField
      FieldName = 'itbis_retenido'
      ReadOnly = True
      Precision = 2
      Size = 2
    end
    object rsmonto_facturado: TBCDField
      FieldName = 'monto_facturado'
      Precision = 19
      Size = 2
    end
    object rskeyfield: TGuidField
      FieldName = 'keyfield'
      FixedChar = True
      Size = 38
    end
    object rsisr_retenido: TBCDField
      FieldName = 'isr_retenido'
      Precision = 19
      Size = 2
    end
    object rsidDocumento: TIntegerField
      FieldName = 'idDocumento'
    end
    object rstipoDoc: TIntegerField
      FieldName = 'tipoDoc'
    end
  end
  object sd: TSaveDialog
    Left = 262
    Top = 226
  end
  object mData: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'keyfield'
        DataType = ftGuid
        Size = 38
      end
      item
        Name = 'rnc_cedula'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'tipo_compra'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'compfiscal'
        DataType = ftString
        Size = 19
      end
      item
        Name = 'compfiscal_modif'
        DataType = ftString
        Size = 19
      end
      item
        Name = 'fecha_compfiscal'
        DataType = ftDateTime
      end
      item
        Name = 'fecha_pago'
        DataType = ftDateTime
      end
      item
        Name = 'itbis_facturado'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'itbis_retenido'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'monto_facturado'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'tipo_identificacion'
        DataType = ftInteger
      end
      item
        Name = 'Linea'
        DataType = ftAutoInc
      end>
    IndexFieldNames = 'Linea'
    IndexName = 'mDataLineaIdx'
    IndexDefs = <
      item
        Name = 'mDataTipoCompraIdx'
        Fields = 'ClaseGasto;fecha_compfiscal'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'mDataLineaIdx'
        Fields = 'Linea'
      end>
    RecalcOnIndex = True
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '4.08b'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AfterPost = mDataAfterDelete
    AfterDelete = mDataAfterDelete
    OnCalcFields = mDataCalcFields
    Left = 162
    Top = 136
    object mDatakeyfield: TGuidField
      FieldName = 'keyfield'
      FixedChar = True
      Size = 38
    end
    object mDataidDocumento: TIntegerField
      FieldName = 'idDocumento'
    end
    object mDatatipoDoc: TIntegerField
      FieldName = 'tipoDoc'
    end
    object mDatarnc_cedula: TStringField
      FieldName = 'rnc_cedula'
      Size = 11
    end
    object mDatatipo_compra: TStringField
      FieldName = 'tipo_compra'
      Size = 2
    end
    object mDatacompfiscal: TStringField
      FieldName = 'compfiscal'
      Size = 19
    end
    object mDatacompfiscal_modif: TStringField
      FieldName = 'compfiscal_modif'
      Size = 19
    end
    object mDatafecha_compfiscal: TDateTimeField
      FieldName = 'fecha_compfiscal'
    end
    object mDatafecha_pago: TDateTimeField
      FieldName = 'fecha_pago'
    end
    object mDataitbis_facturado: TBCDField
      FieldName = 'itbis_facturado'
      currency = True
      Precision = 19
      Size = 2
    end
    object mDataitbis_retenido: TBCDField
      FieldName = 'itbis_retenido'
      currency = True
      Precision = 19
      Size = 2
    end
    object mDatamonto_facturado: TBCDField
      FieldName = 'monto_facturado'
      currency = True
      Precision = 19
      Size = 2
    end
    object mDatatipo_identificacion: TIntegerField
      FieldName = 'tipo_identificacion'
    end
    object mDataLinea: TAutoIncField
      FieldName = 'Linea'
      MinValue = 1
    end
    object mDatalno: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'lno'
      Calculated = True
    end
    object mDataClaseGasto: TStringField
      FieldKind = fkCalculated
      FieldName = 'ClaseGasto'
      Size = 100
      Calculated = True
    end
    object mDataisr_retenido: TCurrencyField
      FieldName = 'isr_retenido'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 406
    Top = 112
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsRPT
    UserName = 'DBPipeline1'
    Left = 492
    Top = 148
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 256
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
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
    Left = 342
    Top = 232
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 29104
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 0
        mmTop = 17992
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Tipo Id'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 12965
        mmTop = 17992
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Clase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 47361
        mmTop = 17992
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'NCF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 61913
        mmTop = 17992
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'NCF Modificado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 92075
        mmTop = 17992
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 125413
        mmTop = 17992
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 149490
        mmTop = 17727
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'ITBIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 173302
        mmTop = 17727
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Monto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 227542
        mmTop = 17463
        mmWidth = 32015
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'RNC/Cedula'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 26723
        mmTop = 17992
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'NCF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 125413
        mmTop = 23019
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 149490
        mmTop = 22754
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Facturado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 172773
        mmTop = 23019
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'ITBIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 204523
        mmTop = 17198
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Retenido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 203994
        mmTop = 22754
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label101'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Facturado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 227542
        mmTop = 23019
        mmWidth = 32015
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Remision de Gastos/Costo para la DGII'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7535
        mmLeft = 0
        mmTop = 1058
        mmWidth = 125413
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        AutoSize = False
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
        mmLeft = 217753
        mmTop = 0
        mmWidth = 47361
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 224367
        mmTop = 3704
        mmWidth = 40746
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Color = clNavy
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 27517
        mmWidth = 266701
        BandType = 0
      end
      object ppVariable5: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 9790
        mmWidth = 16933
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'lno'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 0
        mmTop = 265
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'rnc_cedula'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 26723
        mmTop = 265
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'tipo_compra'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 51329
        mmTop = 265
        mmWidth = 7408
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'compfiscal'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 61913
        mmTop = 265
        mmWidth = 28575
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'compfiscal_modif'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 92075
        mmTop = 265
        mmWidth = 30956
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'fecha_compfiscal'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 125413
        mmTop = 265
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'fecha_pago'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 149490
        mmTop = 529
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'itbis_facturado'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 173567
        mmTop = 529
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'itbis_retenido'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 196057
        mmTop = 529
        mmWidth = 26194
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'monto_facturado'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 226484
        mmTop = 529
        mmWidth = 33073
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'tipo_identificacion'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 12965
        mmTop = 265
        mmWidth = 12965
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
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total General'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 132557
        mmTop = 3175
        mmWidth = 23283
        BandType = 7
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Pen.Color = clNavy
        mmHeight = 529
        mmLeft = 124354
        mmTop = 794
        mmWidth = 137319
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        HyperlinkEnabled = False
        DataField = 'itbis_facturado'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 174625
        mmTop = 3175
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        HyperlinkEnabled = False
        DataField = 'itbis_retenido'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 194205
        mmTop = 3175
        mmWidth = 28046
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        HyperlinkEnabled = False
        DataField = 'monto_facturado'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 226219
        mmTop = 3175
        mmWidth = 33338
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'tipo_compra'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
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
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 12700
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          DataField = 'itbis_facturado'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 5027
          mmLeft = 174625
          mmTop = 3440
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          DataField = 'itbis_retenido'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 5027
          mmLeft = 195263
          mmTop = 3440
          mmWidth = 26988
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          DataField = 'monto_facturado'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 5027
          mmLeft = 226484
          mmTop = 3440
          mmWidth = 33073
          BandType = 5
          GroupNo = 0
        end
        object ppLabel17: TppLabel
          UserName = 'Label17'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Sub Totales'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5027
          mmLeft = 132557
          mmTop = 3175
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppReport2: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 256
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
    Left = 62
    Top = 214
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 29104
      mmPrintPosition = 0
      object ppLabel36: TppLabel
        UserName = 'Label19'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Remision de Gastos/Costo para la DGII'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7535
        mmLeft = 0
        mmTop = 1058
        mmWidth = 125413
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        AutoSize = False
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
        mmLeft = 217753
        mmTop = 0
        mmWidth = 47361
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 224367
        mmTop = 3704
        mmWidth = 40746
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line1'
        Pen.Color = clNavy
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 27517
        mmWidth = 266701
        BandType = 0
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 9790
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkEnabled = False
        Caption = 'Tipo Gasto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 20902
        mmWidth = 20913
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label201'
        HyperlinkEnabled = False
        Caption = 'Monto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 209973
        mmTop = 21696
        mmWidth = 12277
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkEnabled = False
        Caption = 'Cantidad NCF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 233183
        mmTop = 21960
        mmWidth = 26374
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 8202
      mmPrintPosition = 0
      object ppLabel37: TppLabel
        UserName = 'Label18'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total General'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 126471
        mmTop = 3175
        mmWidth = 29369
        BandType = 7
      end
      object ppShape2: TppShape
        UserName = 'Shape1'
        Pen.Color = clNavy
        mmHeight = 529
        mmLeft = 124354
        mmTop = 794
        mmWidth = 137319
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc5'
        HyperlinkEnabled = False
        DataField = 'monto_facturado'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 169598
        mmTop = 3175
        mmWidth = 52652
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        HyperlinkEnabled = False
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 227278
        mmTop = 3175
        mmWidth = 33073
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'tipo_compra'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          DataField = 'monto_facturado'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4233
          mmLeft = 169069
          mmTop = 529
          mmWidth = 53181
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4233
          mmLeft = 226484
          mmTop = 529
          mmWidth = 33073
          BandType = 5
          GroupNo = 0
        end
        object ppDBText23: TppDBText
          UserName = 'DBText23'
          HyperlinkEnabled = False
          DataField = 'clasegasto'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4763
          mmLeft = 794
          mmTop = 529
          mmWidth = 135202
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object rsClases: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'select * from cxpclaseGasto'
    CommandTimeout = 240
    Parameters = <>
    Left = 144
    Top = 274
    object rsClasesidClasegasto: TStringField
      FieldName = 'idClasegasto'
      Size = 2
    end
    object rsClasesClaseGasto: TStringField
      FieldName = 'ClaseGasto'
      Size = 100
    end
  end
  object ReporteDetallado: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 256
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
    Left = 138
    Top = 216
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 22490
      mmPrintPosition = 0
      object ppLabel23: TppLabel
        UserName = 'Label19'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Remision de Gastos/Costo para la DGII'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7535
        mmLeft = 0
        mmTop = 1058
        mmWidth = 125413
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        AutoSize = False
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
        mmLeft = 217753
        mmTop = 0
        mmWidth = 47361
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        AutoSize = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 224367
        mmTop = 3704
        mmWidth = 40746
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line1'
        Pen.Color = clNavy
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 21960
        mmWidth = 266701
        BandType = 0
      end
      object ppVariable2: TppVariable
        UserName = 'Variable1'
        HyperlinkEnabled = False
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 9790
        mmWidth = 16933
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText23'
        HyperlinkEnabled = False
        DataField = 'clasegasto'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 794
        mmTop = 16933
        mmWidth = 135202
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'rnc_cedula'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 1852
        mmTop = 265
        mmWidth = 29633
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        DataField = 'compfiscal'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 133615
        mmTop = 265
        mmWidth = 39423
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkEnabled = False
        DataField = 'fecha_compfiscal'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 174625
        mmTop = 265
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkEnabled = False
        DataField = 'monto_facturado'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 200025
        mmTop = 265
        mmWidth = 34660
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkEnabled = False
        DataField = 'Nombre'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 33602
        mmTop = 265
        mmWidth = 97896
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand3: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 8202
      mmPrintPosition = 0
      object ppLabel27: TppLabel
        UserName = 'Label18'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total General'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 126471
        mmTop = 3175
        mmWidth = 29369
        BandType = 7
      end
      object ppShape3: TppShape
        UserName = 'Shape1'
        Pen.Color = clNavy
        mmHeight = 529
        mmLeft = 124354
        mmTop = 794
        mmWidth = 142611
        BandType = 7
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc5'
        HyperlinkEnabled = False
        DataField = 'monto_facturado'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 182034
        mmTop = 3175
        mmWidth = 52652
        BandType = 7
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc7'
        HyperlinkEnabled = False
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 237596
        mmTop = 3175
        mmWidth = 21696
        BandType = 7
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'tipo_compra'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppShape4: TppShape
          UserName = 'Shape2'
          Brush.Color = 15461355
          ParentHeight = True
          ParentWidth = True
          Pen.Color = clSilver
          mmHeight = 4498
          mmLeft = 0
          mmTop = 0
          mmWidth = 266701
          BandType = 3
          GroupNo = 0
        end
        object ppLabel28: TppLabel
          UserName = 'Label202'
          HyperlinkEnabled = False
          Caption = 'RNC/Cedula'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 1852
          mmTop = 529
          mmWidth = 19315
          BandType = 3
          GroupNo = 0
        end
        object ppLabel29: TppLabel
          UserName = 'Label29'
          HyperlinkEnabled = False
          Caption = 'Monto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3387
          mmLeft = 224896
          mmTop = 529
          mmWidth = 9906
          BandType = 3
          GroupNo = 0
        end
        object ppLabel31: TppLabel
          UserName = 'Label31'
          HyperlinkEnabled = False
          Caption = 'NCF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 133615
          mmTop = 529
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
        object ppLabel32: TppLabel
          UserName = 'Label32'
          HyperlinkEnabled = False
          Caption = 'Fecha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 174625
          mmTop = 529
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
        end
        object ppLabel24: TppLabel
          UserName = 'Label24'
          HyperlinkEnabled = False
          Caption = 'Suplidor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 33602
          mmTop = 529
          mmWidth = 13335
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          DataField = 'monto_facturado'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4233
          mmLeft = 181505
          mmTop = 265
          mmWidth = 53181
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc14: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 4233
          mmLeft = 237067
          mmTop = 265
          mmWidth = 22225
          BandType = 5
          GroupNo = 0
        end
        object ppLine4: TppLine
          UserName = 'Line2'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4763
          mmWidth = 266701
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object rsRPT: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpRPTGastosPorClase;1'
    CommandTimeout = 240
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
        Name = '@desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 274
    Top = 108
    object rsRPTkeyfield: TGuidField
      FieldName = 'keyfield'
      FixedChar = True
      Size = 38
    end
    object rsRPTNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsRPTrnc_cedula: TStringField
      FieldName = 'rnc_cedula'
      Size = 11
    end
    object rsRPTtipo_identificacion: TIntegerField
      FieldName = 'tipo_identificacion'
    end
    object rsRPTtipo_compra: TStringField
      FieldName = 'tipo_compra'
      Size = 2
    end
    object rsRPTcompfiscal: TStringField
      FieldName = 'compfiscal'
      Size = 19
    end
    object rsRPTcompfiscal_modif: TStringField
      FieldName = 'compfiscal_modif'
      Size = 19
    end
    object rsRPTfecha_compfiscal: TDateTimeField
      FieldName = 'fecha_compfiscal'
    end
    object rsRPTfecha_pago: TDateTimeField
      FieldName = 'fecha_pago'
    end
    object rsRPTitbis_facturado: TBCDField
      FieldName = 'itbis_facturado'
      Precision = 19
      Size = 2
    end
    object rsRPTitbis_retenido: TBCDField
      FieldName = 'itbis_retenido'
      Precision = 19
      Size = 2
    end
    object rsRPTmonto_facturado: TBCDField
      FieldName = 'monto_facturado'
      Precision = 19
      Size = 2
    end
    object rsRPTClaseGasto: TStringField
      FieldName = 'ClaseGasto'
      Size = 100
    end
  end
  object dsRPT: TDataSource
    DataSet = rsRPT
    Left = 326
    Top = 108
  end
end

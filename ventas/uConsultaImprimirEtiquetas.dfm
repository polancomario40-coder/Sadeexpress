inherited ImprimirEtiquetas: TImprimirEtiquetas
  Left = 387
  Top = 75
  Caption = 'Imprimir Etiquetas'
  ClientHeight = 410
  ClientWidth = 808
  Color = 15922418
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Gradient1: TGradient
    Left = 0
    Top = 29
    Width = 808
    Height = 4
    Align = alTop
    ColorBegin = 4227327
    ColorEnd = 16767681
    Style = gsReflectedV
  end
  object Gradient2: TGradient
    Left = 0
    Top = 0
    Width = 808
    Height = 29
    Align = alTop
    ColorEnd = 14898176
    Style = gsLinearH
  end
  object Label2: TLabel
    Left = 427
    Top = 0
    Width = 345
    Height = 25
    Caption = 'Consulta para imprimir etiquetas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 8
    Top = 41
    Width = 13
    Height = 13
    Caption = 'Al:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 152
    Top = 41
    Width = 44
    Height = 13
    Caption = 'Almacen:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dtpAl: TcxDateEdit
    Left = 24
    Top = 39
    Width = 121
    Height = 21
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object cxButton1: TcxButton
    Left = 590
    Top = 34
    Width = 99
    Height = 30
    Caption = 'Filtrar'
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
  object cxButton2: TcxButton
    Left = 695
    Top = 34
    Width = 108
    Height = 30
    Caption = 'Cerrar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 2
    WordWrap = True
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object lkAlmacen: TcxLookupComboBox
    Left = 200
    Top = 37
    Width = 231
    Height = 21
    ParentFont = False
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'idAlmacen'
    Properties.ListColumns = <
      item
        FieldName = 'Almacen'
      end>
    Properties.ListSource = dsAlmacen
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 3
  end
  object cxPageControl1: TcxPageControl
    Left = 6
    Top = 92
    Width = 797
    Height = 307
    ActivePage = cxTabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    LookAndFeel.NativeStyle = True
    TabOrder = 4
    ClientRectBottom = 303
    ClientRectLeft = 2
    ClientRectRight = 793
    ClientRectTop = 22
    object cxTabSheet1: TcxTabSheet
      Caption = 'Imprimir etiquetas'
      ImageIndex = 0
      DesignSize = (
        791
        281)
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 791
        Height = 221
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGrid1DBTableView1: TcxGridDBTableView
          DataController.DataSource = dsData
          DataController.Filter.AutoDataSetFilter = True
          DataController.KeyFieldNames = 'IdProducto'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.Delete.Enabled = False
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1CantImprimir: TcxGridDBColumn
            DataBinding.FieldName = 'CantImprimir'
          end
          object cxGrid1DBTableView1IdProducto: TcxGridDBColumn
            DataBinding.FieldName = 'IdProducto'
          end
          object cxGrid1DBTableView1Producto: TcxGridDBColumn
            DataBinding.FieldName = 'Producto'
            Width = 133
          end
          object cxGrid1DBTableView1Referencia: TcxGridDBColumn
            DataBinding.FieldName = 'Referencia'
          end
          object cxGrid1DBTableView1Ubicacion: TcxGridDBColumn
            DataBinding.FieldName = 'Ubicacion'
            Width = 141
          end
          object cxGrid1DBTableView1Existencia: TcxGridDBColumn
            DataBinding.FieldName = 'Existencia'
            Width = 70
          end
          object cxGrid1DBTableView1Linea: TcxGridDBColumn
            DataBinding.FieldName = 'Linea'
            Width = 154
          end
          object cxGrid1DBTableView1Grupo: TcxGridDBColumn
            DataBinding.FieldName = 'Grupo'
            Width = 154
          end
          object cxGrid1DBTableView1Inventario: TcxGridDBColumn
            DataBinding.FieldName = 'Inventario'
            Width = 154
          end
          object cxGrid1DBTableView1campo1: TcxGridDBColumn
            DataBinding.FieldName = 'campo1'
            Width = 154
          end
          object cxGrid1DBTableView1campo2: TcxGridDBColumn
            DataBinding.FieldName = 'campo2'
            Width = 154
          end
          object cxGrid1DBTableView1campo3: TcxGridDBColumn
            DataBinding.FieldName = 'campo3'
            Width = 154
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object bSalir: TcxButton
        Left = 417
        Top = 233
        Width = 108
        Height = 43
        Anchors = [akRight, akBottom]
        Caption = 'Imprimir Etiquetas viejo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
        WordWrap = True
        LookAndFeel.NativeStyle = True
      end
      object cxButton3: TcxButton
        Left = 557
        Top = 233
        Width = 108
        Height = 43
        Anchors = [akRight, akBottom]
        Caption = 'Imprimir Etiquetas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        WordWrap = True
        OnClick = cxButton3Click
        LookAndFeel.NativeStyle = True
      end
      object cxButton11: TcxButton
        Left = 688
        Top = 234
        Width = 99
        Height = 42
        Anchors = [akRight, akBottom]
        Caption = 'Formato'
        TabOrder = 3
        OnClick = cxButton11Click
        LookAndFeel.NativeStyle = True
      end
    end
  end
  object cbAutoExists: TcxCheckBox
    Left = 436
    Top = 38
    Width = 134
    Height = 21
    Caption = 'Auto incluir existencia'
    Properties.ImmediatePost = True
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  object cbSoloExist: TcxCheckBox
    Left = 8
    Top = 64
    Width = 189
    Height = 21
    Caption = 'Solo items con existencia'
    Properties.ImmediatePost = True
    State = cbsChecked
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 6
  end
  object spImprimirEtiquetas: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    ProcedureName = 'InvParaEtiqueta;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@FechaAl'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@IdAlmacen'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 486
    Top = 156
    object spImprimirEtiquetasIdProducto: TStringField
      FieldName = 'IdProducto'
      Size = 25
    end
    object spImprimirEtiquetasReferencia: TStringField
      FieldName = 'Referencia'
      Size = 25
    end
    object spImprimirEtiquetasProducto: TStringField
      FieldName = 'Producto'
      Size = 100
    end
    object spImprimirEtiquetasUbicacion: TStringField
      FieldName = 'Ubicacion'
      Size = 50
    end
    object spImprimirEtiquetasExistencia: TFloatField
      FieldName = 'Existencia'
      ReadOnly = True
    end
    object spImprimirEtiquetasLinea: TStringField
      FieldName = 'Linea'
      Size = 50
    end
    object spImprimirEtiquetasGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
    object spImprimirEtiquetasInventario: TStringField
      FieldName = 'Inventario'
      Size = 50
    end
    object spImprimirEtiquetasPrecioContado: TBCDField
      FieldName = 'PrecioContado'
      Precision = 19
      Size = 2
    end
    object spImprimirEtiquetasMarca: TStringField
      FieldName = 'Marca'
      Size = 50
    end
  end
  object dsAlmacen: TDataSource
    DataSet = rsAlmacen
    Left = 624
    Top = 140
  end
  object rsAlmacen: TADODataSet
    Connection = dm.Coneccion
    CommandText = 'select * from almacen where activo = 1'
    Parameters = <>
    Left = 624
    Top = 194
    object rsAlmacenidAlmacen: TStringField
      FieldName = 'idAlmacen'
      Size = 16
    end
    object rsAlmacenAlmacen: TStringField
      FieldName = 'Almacen'
      Size = 50
    end
  end
  object dsData: TDataSource
    DataSet = Data
    Left = 186
    Top = 232
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsData
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'DBPipeline1'
    Left = 312
    Top = 196
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CantImprimir'
      FieldName = 'CantImprimir'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'IdProducto'
      FieldName = 'IdProducto'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'Producto'
      FieldName = 'Producto'
      FieldLength = 100
      DisplayWidth = 100
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 25
      DisplayWidth = 25
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'Ubicacion'
      FieldName = 'Ubicacion'
      FieldLength = 200
      DisplayWidth = 200
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Existencia'
      FieldName = 'Existencia'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'Linea'
      FieldName = 'Linea'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'Grupo'
      FieldName = 'Grupo'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'Inventario'
      FieldName = 'Inventario'
      FieldLength = 50
      DisplayWidth = 50
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'campo1'
      FieldName = 'campo1'
      FieldLength = 100
      DisplayWidth = 100
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'campo2'
      FieldName = 'campo2'
      FieldLength = 100
      DisplayWidth = 100
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'campo3'
      FieldName = 'campo3'
      FieldLength = 100
      DisplayWidth = 100
      Position = 11
    end
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Paper Input Bin'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 4064
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 12700
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 101600
    PrinterSetup.PaperSize = 125
    Template.FileName = 'C:\CBSDG2007\Ventas\Label.rtm'
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
    Left = 316
    Top = 266
    Version = '15.02'
    mmColumnWidth = 97536
    DataPipelineName = 'ppDBPipeline1'
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 84582
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'IdProducto'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 10319
        mmLeft = 529
        mmTop = 1058
        mmWidth = 96309
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Existencia'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 5027
        mmTop = 22225
        mmWidth = 89959
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Existencia'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 5027
        mmTop = 29898
        mmWidth = 89959
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Existencia'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 5027
        mmTop = 41804
        mmWidth = 89959
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 1323
        mmTop = 38100
        mmWidth = 96309
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 1058
        mmTop = 62706
        mmWidth = 96309
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Producto'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5038
        mmLeft = 529
        mmTop = 12965
        mmWidth = 96309
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'PrecioContado'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 35983
        mmTop = 53975
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDesigner1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtParadox
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = Report
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 418
    Top = 254
  end
  object OpenRtm: TOpenDialog
    Left = 294
    Top = 144
  end
  object Data: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'CantImprimir'
        DataType = ftInteger
      end
      item
        Name = 'IdProducto'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Producto'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'Ubicacion'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'Existencia'
        DataType = ftBCD
      end
      item
        Name = 'Linea'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Grupo'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Inventario'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'campo1'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo2'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'campo3'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '4.08b'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 184
    Top = 156
    object DataCantImprimir: TIntegerField
      FieldName = 'CantImprimir'
    end
    object DataIdProducto: TStringField
      FieldName = 'IdProducto'
    end
    object DataProducto: TStringField
      FieldName = 'Producto'
      Size = 100
    end
    object DataReferencia: TStringField
      FieldName = 'Referencia'
      Size = 25
    end
    object DataUbicacion: TStringField
      FieldName = 'Ubicacion'
      Size = 200
    end
    object DataExistencia: TBCDField
      FieldName = 'Existencia'
      Size = 0
    end
    object DataLinea: TStringField
      FieldName = 'Linea'
      Size = 50
    end
    object DataGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
    object DataInventario: TStringField
      FieldName = 'Inventario'
      Size = 50
    end
    object Datacampo1: TStringField
      FieldName = 'campo1'
      Size = 100
    end
    object Datacampo2: TStringField
      FieldName = 'campo2'
      Size = 100
    end
    object Datacampo3: TStringField
      FieldName = 'campo3'
      Size = 100
    end
  end
end

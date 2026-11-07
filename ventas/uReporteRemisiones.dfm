inherited ReporteRemisiones: TReporteRemisiones
  Left = 291
  Top = 207
  Caption = 'ReporteRemisiones'
  ClientHeight = 358
  ClientWidth = 636
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 19
    Top = 14
    Width = 29
    Height = 13
    Caption = 'Grupo'
  end
  object Label2: TLabel [1]
    Left = 19
    Top = 38
    Width = 31
    Height = 13
    Caption = 'Desde'
  end
  object Label3: TLabel [2]
    Left = 181
    Top = 38
    Width = 28
    Height = 13
    Caption = 'Hasta'
  end
  object Label4: TLabel [3]
    Left = 347
    Top = 14
    Width = 32
    Height = 13
    Caption = 'Cliente'
  end
  object dxLookupEdit1: TdxLookupEdit [4]
    Left = 55
    Top = 10
    Width = 284
    TabOrder = 0
    StyleController = dm.dxEstilo
    ListFieldName = 'ClienteGrupo'
    KeyFieldName = 'idClienteGrupo'
    ListSource = dsGrupos
    LookupKeyValue = Null
  end
  object BitBtn1: TBitBtn [5]
    Left = 537
    Top = 4
    Width = 95
    Height = 25
    Caption = 'Mostrar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object dtDesde: TdxDateEdit [6]
    Left = 55
    Top = 34
    Width = 121
    TabOrder = 2
    StyleController = dm.dxEstilo
    OnChange = dtDesdeChange
    Date = -700000.000000000000000000
  end
  object dtHasta: TdxDateEdit [7]
    Left = 218
    Top = 34
    Width = 121
    TabOrder = 3
    StyleController = dm.dxEstilo
    OnChange = dtHastaChange
    Date = -700000.000000000000000000
  end
  object dxDBGrid1: TdxDBGrid [8]
    Left = 4
    Top = 60
    Width = 628
    Height = 294
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'idCXC'
    SummaryGroups = <>
    SummarySeparator = ', '
    TabOrder = 4
    DataSource = DS
    Filter.Active = True
    Filter.AutoDataSetFilter = True
    Filter.Criteria = {00000000}
    LookAndFeel = lfUltraFlat
    object dxDBGrid1Factura: TdxDBGridMaskColumn
      Width = 73
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Factura'
    end
    object dxDBGrid1Fecha: TdxDBGridDateColumn
      Width = 78
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Fecha'
    end
    object dxDBGrid1Column7: TdxDBGridColumn
      Caption = 'Cliente'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'IdCliente'
    end
    object dxDBGrid1Nombre: TdxDBGridMaskColumn
      Width = 246
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Nombre'
    end
    object dxDBGrid1Total: TdxDBGridCurrencyColumn
      Width = 79
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Total'
      Nullable = False
    end
    object dxDBGrid1Referencia: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Referencia'
    end
    object dxDBGrid1Cotizacion: TdxDBGridMaskColumn
      Width = 70
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Cotizacion'
    end
  end
  object edtCliente: TdxEdit [9]
    Left = 388
    Top = 10
    Width = 77
    TabOrder = 5
    Text = '0'
    StyleController = dm.dxEstilo
  end
  object BitBtn2: TBitBtn [10]
    Left = 537
    Top = 32
    Width = 95
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  inherited DS: TwwDataSource
    DataSet = rsRemisiones
    Left = 229
    Top = 221
  end
  object rsRemisiones: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxcReporteRemisiones;1'
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
        Name = '@idGrp'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
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
      end
      item
        Name = '@idCli'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 319
    Top = 152
    object rsRemisionesidCXC: TGuidField
      FieldName = 'idCXC'
      FixedChar = True
      Size = 38
    end
    object rsRemisionesFactura: TStringField
      FieldName = 'Factura'
      Size = 16
    end
    object rsRemisionesNombre: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
    object rsRemisionesFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsRemisionesTotal: TBCDField
      FieldName = 'Total'
      currency = True
      Precision = 19
      Size = 2
    end
    object rsRemisionesDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object rsRemisionesTelefono: TStringField
      FieldName = 'Telefono'
    end
    object rsRemisionesCiudad: TStringField
      FieldName = 'Ciudad'
    end
    object rsRemisionesSector: TStringField
      FieldName = 'Sector'
    end
    object rsRemisionesReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsRemisionesCotizacion: TStringField
      FieldName = 'Cotizacion'
      Size = 16
    end
    object rsRemisionesIdCliente: TIntegerField
      FieldName = 'IdCliente'
    end
  end
  object rsGrupos: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 
      'select'#13#10'  0 As IdClienteGrupo,'#13#10'  '#39'TODOS'#39' As ClienteGrupo'#13#10'union' +
      #13#10'select '#13#10'  IdClienteGrupo,'#13#10'  ClienteGrupo '#13#10'from '#13#10'  ClienteG' +
      'rupo'#13#10'where '#13#10'  Activo = 1'
    Parameters = <>
    Left = 82
    Top = 164
    object rsGruposidClienteGrupo: TIntegerField
      FieldName = 'idClienteGrupo'
      ReadOnly = True
    end
    object rsGruposClienteGrupo: TStringField
      FieldName = 'ClienteGrupo'
      Size = 50
    end
  end
  object dsGrupos: TDataSource
    DataSet = rsGrupos
    Left = 196
    Top = 138
  end
  object rptRemision: TppReport
    AutoStop = False
    DataPipeline = plRemision
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
    Left = 504
    Top = 122
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plRemision'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 27252
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        Caption = 'Remisi'#243'n de Facturas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 75936
        mmTop = 16140
        mmWidth = 51065
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
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
        mmHeight = 6816
        mmLeft = 1323
        mmTop = 1852
        mmWidth = 93927
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 166423
        mmTop = 2646
        mmWidth = 35190
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 189177
        mmTop = 7144
        mmWidth = 12171
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Factura'
        DataPipeline = plRemision
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRemision'
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 265
        mmWidth = 26194
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plRemision
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRemision'
        mmHeight = 3704
        mmLeft = 31485
        mmTop = 265
        mmWidth = 33602
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plRemision
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plRemision'
        mmHeight = 3704
        mmLeft = 67204
        mmTop = 265
        mmWidth = 36248
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = plRemision
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRemision'
        mmHeight = 3704
        mmLeft = 156104
        mmTop = 265
        mmWidth = 46038
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Cotizacion'
        DataPipeline = plRemision
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plRemision'
        mmHeight = 3704
        mmLeft = 110861
        mmTop = 265
        mmWidth = 39158
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 29104
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 64029
        mmTop = 15081
        mmWidth = 75142
        BandType = 8
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        Caption = 'Por parte del cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 85990
        mmTop = 16404
        mmWidth = 31221
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'IdCliente'
      DataPipeline = plRemision
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plRemision'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 21960
        mmPrintPosition = 0
        object ppShape3: TppShape
          UserName = 'Shape3'
          Brush.Color = clBtnFace
          Pen.Color = clGray
          mmHeight = 13494
          mmLeft = 265
          mmTop = 264
          mmWidth = 202936
          BandType = 3
          GroupNo = 0
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          HyperlinkEnabled = False
          DataField = 'IdCliente'
          DataPipeline = plRemision
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plRemision'
          mmHeight = 3704
          mmLeft = 23548
          mmTop = 2381
          mmWidth = 13758
          BandType = 3
          GroupNo = 0
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          HyperlinkEnabled = False
          DataField = 'Nombre'
          DataPipeline = plRemision
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plRemision'
          mmHeight = 3704
          mmLeft = 41010
          mmTop = 2381
          mmWidth = 107686
          BandType = 3
          GroupNo = 0
        end
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          HyperlinkEnabled = False
          DataField = 'Telefono'
          DataPipeline = plRemision
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plRemision'
          mmHeight = 3704
          mmLeft = 170392
          mmTop = 2381
          mmWidth = 31485
          BandType = 3
          GroupNo = 0
        end
        object ppDBText10: TppDBText
          UserName = 'DBText10'
          HyperlinkEnabled = False
          DataField = 'Direccion'
          DataPipeline = plRemision
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plRemision'
          mmHeight = 3704
          mmLeft = 23813
          mmTop = 7673
          mmWidth = 177271
          BandType = 3
          GroupNo = 0
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Cliente:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 1852
          mmTop = 2381
          mmWidth = 12435
          BandType = 3
          GroupNo = 0
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Tel'#233'fono:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 152665
          mmTop = 2381
          mmWidth = 16140
          BandType = 3
          GroupNo = 0
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Direcci'#243'n:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 1852
          mmTop = 7938
          mmWidth = 16669
          BandType = 3
          GroupNo = 0
        end
        object ppShape1: TppShape
          UserName = 'Shape1'
          Pen.Width = 2
          mmHeight = 6879
          mmLeft = 265
          mmTop = 14552
          mmWidth = 203200
          BandType = 3
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Factura'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 2117
          mmTop = 16140
          mmWidth = 12965
          BandType = 3
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Fecha'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 33073
          mmTop = 16140
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 93663
          mmTop = 16140
          mmWidth = 9260
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Referencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 155311
          mmTop = 16140
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Cotizaci'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 110861
          mmTop = 16140
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 8731
        mmPrintPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape2'
          mmHeight = 6879
          mmLeft = 0
          mmTop = 1323
          mmWidth = 202407
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          DataPipeline = plRemision
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'plRemision'
          mmHeight = 3704
          mmLeft = 1323
          mmTop = 2910
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Factura(s)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 19844
          mmTop = 2910
          mmWidth = 21696
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object plRemision: TppDBPipeline
    DataSource = DS
    UserName = 'plRemision'
    Left = 502
    Top = 194
    object plRemisionppField1: TppField
      FieldAlias = 'idCXC'
      FieldName = 'idCXC'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plRemisionppField2: TppField
      FieldAlias = 'Factura'
      FieldName = 'Factura'
      FieldLength = 16
      DisplayWidth = 16
      Position = 1
    end
    object plRemisionppField3: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object plRemisionppField4: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object plRemisionppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 4
    end
    object plRemisionppField6: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 120
      DisplayWidth = 120
      Position = 5
    end
    object plRemisionppField7: TppField
      FieldAlias = 'Telefono'
      FieldName = 'Telefono'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object plRemisionppField8: TppField
      FieldAlias = 'Ciudad'
      FieldName = 'Ciudad'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object plRemisionppField9: TppField
      FieldAlias = 'Sector'
      FieldName = 'Sector'
      FieldLength = 20
      DisplayWidth = 20
      Position = 8
    end
    object plRemisionppField10: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object plRemisionppField11: TppField
      FieldAlias = 'Cotizacion'
      FieldName = 'Cotizacion'
      FieldLength = 16
      DisplayWidth = 16
      Position = 10
    end
    object plRemisionppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'IdCliente'
      FieldName = 'IdCliente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
  end
end

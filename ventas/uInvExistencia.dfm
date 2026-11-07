inherited InvExistencia: TInvExistencia
  Left = 320
  Top = 75
  Caption = 'Reporte de existencias'
  ClientHeight = 523
  ClientWidth = 788
  Color = 14870499
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 331
    Top = 37
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
  object Label2: TLabel [1]
    Left = 8
    Top = 13
    Width = 54
    Height = 13
    Caption = 'Inventario:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 37
    Width = 29
    Height = 13
    Caption = 'Linea:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 61
    Width = 33
    Height = 13
    Caption = 'Grupo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 344
    Top = 13
    Width = 32
    Height = 13
    Caption = 'Hasta:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object luGrupo: TdxLookupEdit [5]
    Left = 64
    Top = 56
    Width = 254
    TabOrder = 0
    StyleController = dm.dxEstilo
    ListFieldName = 'Grupo'
    KeyFieldName = 'idGrupo'
    ListSource = dsGrupo
    LookupKeyValue = Null
  end
  object luInv: TdxLookupEdit [6]
    Left = 64
    Top = 8
    Width = 254
    TabOrder = 1
    StyleController = dm.dxEstilo
    OnChange = luInvChange
    ListFieldName = 'Inventario'
    KeyFieldName = 'idInventario'
    ListSource = dsInv
    LookupKeyValue = Null
  end
  object luLinea: TdxLookupEdit [7]
    Left = 64
    Top = 32
    Width = 254
    TabOrder = 2
    StyleController = dm.dxEstilo
    OnChange = luLineaChange
    ListFieldName = 'Linea'
    KeyFieldName = 'idLinea'
    ListSource = dsLinea
    LookupKeyValue = Null
  end
  object luAlm: TdxLookupEdit [8]
    Left = 384
    Top = 32
    Width = 145
    TabOrder = 3
    StyleController = dm.dxEstilo
    ListFieldName = 'Almacen'
    KeyFieldName = 'idAlmacen'
    ListSource = DS
    LookupKeyValue = Null
  end
  object BitBtn1: TBitBtn [9]
    Left = 544
    Top = 4
    Width = 105
    Height = 35
    Caption = 'Mostrar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object dtFecha: TdxDateEdit [10]
    Left = 384
    Top = 8
    Width = 145
    TabOrder = 5
    StyleController = dm.dxEstilo
    OnChange = dtFechaChange
    Date = -700000.000000000000000000
    SaveTime = False
  end
  object BitBtn2: TBitBtn [11]
    Left = 544
    Top = 43
    Width = 105
    Height = 32
    Caption = 'Imprimir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn [12]
    Left = 658
    Top = 4
    Width = 59
    Height = 34
    Caption = 'Expandir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn [13]
    Left = 722
    Top = 4
    Width = 59
    Height = 34
    Caption = 'Colapsar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = BitBtn4Click
  end
  object cbReorden: TcxCheckBox [14]
    Left = 340
    Top = 56
    Width = 194
    Height = 21
    Caption = 'Solo productos en reorden (Minimo)'
    TabOrder = 9
  end
  object BitBtn5: TBitBtn [15]
    Left = 658
    Top = 43
    Width = 122
    Height = 32
    Caption = 'Exportar a Excel'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = BitBtn5Click
  end
  object PageControl1: TPageControl [16]
    Left = 2
    Top = 87
    Width = 781
    Height = 434
    ActivePage = TabSheet2
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 11
    object TabSheet1: TTabSheet
      Caption = 'Existencia por Linea, Grupo, Almacen'
      DesignSize = (
        773
        406)
      object Grid: TdxDBGrid
        Left = 1
        Top = 1
        Width = 772
        Height = 405
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ROWID'
        ShowGroupPanel = True
        SummaryGroups = <>
        SummarySeparator = ', '
        TabOrder = 0
        DataSource = dsExistencias
        Filter.Active = True
        Filter.AutoDataSetFilter = True
        Filter.Criteria = {00000000}
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoMultiSort, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoRowAutoHeight, edgoUseBitmap]
        Anchors = [akLeft, akTop, akRight, akBottom]
        object GridROWID: TdxDBGridColumn
          Visible = False
          Width = 115
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROWID'
        end
        object GridInventario: TdxDBGridMaskColumn
          Width = 142
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Inventario'
        end
        object GridLinea: TdxDBGridMaskColumn
          Width = 103
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Linea'
        end
        object GridGrupo: TdxDBGridMaskColumn
          Width = 116
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Grupo'
        end
        object GrididProducto: TdxDBGridMaskColumn
          Caption = 'Codigo'
          Width = 87
          BandIndex = 0
          RowIndex = 0
          FieldName = 'idProducto'
        end
        object GridProducto: TdxDBGridMaskColumn
          Width = 330
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Producto'
        end
        object GridExistencia: TdxDBGridMaskColumn
          Width = 92
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Existencia'
        end
        object GridCostoPromedio: TdxDBGridMaskColumn
          Caption = 'Costo'
          Width = 86
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CostoPromedio'
        end
        object GridColumn18: TdxDBGridMaskColumn
          Caption = 'Unidad'
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'idUnidad'
        end
        object GridStatus: TdxDBGridMaskColumn
          Width = 77
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Status'
        end
        object GridOrdenar: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Ordenar'
        end
        object GridReorden: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Reorden'
        end
        object GridMinimo: TdxDBGridMaskColumn
          Width = 56
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Minimo'
        end
        object GridMaximo: TdxDBGridMaskColumn
          Width = 58
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Maximo'
        end
        object GrididAlmacen: TdxDBGridMaskColumn
          Visible = False
          Width = 47
          BandIndex = 0
          RowIndex = 0
          FieldName = 'idAlmacen'
        end
        object GridAlmacen: TdxDBGridMaskColumn
          Sorted = csUp
          Visible = False
          Width = 276
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Almacen'
          GroupIndex = 0
        end
        object GridFecha: TdxDBGridDateColumn
          Visible = False
          Width = 55
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Fecha'
        end
        object Gridreferencia: TdxDBGridMaskColumn
          Caption = 'Referencia'
          Width = 92
          BandIndex = 0
          RowIndex = 0
          FieldName = 'referencia'
        end
        object GridColumn19: TdxDBGridColumn
          Caption = 'Ubicaci'#243'n'
          Width = 130
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Ubicacion'
        end
        object GridColumn20: TdxDBGridColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Marca'
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Existencia Simple'
      ImageIndex = 1
      DesignSize = (
        773
        406)
      object Grid2: TdxDBGrid
        Left = 0
        Top = 1
        Width = 772
        Height = 405
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ROWID'
        ShowGroupPanel = True
        ShowSummaryFooter = True
        SummaryGroups = <>
        SummarySeparator = ', '
        TabOrder = 0
        DataSource = dsExistencias
        Filter.Active = True
        Filter.AutoDataSetFilter = True
        Filter.Criteria = {00000000}
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoRowAutoHeight, edgoUseBitmap]
        Anchors = [akLeft, akTop, akRight, akBottom]
        object Grid2ROWID: TdxDBGridColumn
          Visible = False
          Width = 130
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ROWID'
        end
        object Grid2idProducto: TdxDBGridMaskColumn
          Caption = 'Codigo'
          Width = 110
          BandIndex = 0
          RowIndex = 0
          FieldName = 'idProducto'
        end
        object Grid2Producto: TdxDBGridMaskColumn
          Width = 288
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Producto'
        end
        object Grid2Existencia: TdxDBGridMaskColumn
          Sorted = csUp
          Width = 76
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Existencia'
          SummaryFooterType = cstSum
          SummaryFooterField = 'Existencia'
          SummaryFooterFormat = '0.00'
        end
        object Grid2idAlmacen: TdxDBGridMaskColumn
          Visible = False
          Width = 59
          BandIndex = 0
          RowIndex = 0
          FieldName = 'idAlmacen'
        end
        object Grid2Almacen: TdxDBGridMaskColumn
          Visible = False
          Width = 175
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Almacen'
        end
        object Grid2Fecha: TdxDBGridDateColumn
          Visible = False
          Width = 67
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Fecha'
        end
        object Grid2CostoPromedio: TdxDBGridMaskColumn
          Caption = 'Costo Promedio'
          Width = 104
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CostoPromedio'
        end
        object Grid2Ordenar: TdxDBGridMaskColumn
          Visible = False
          Width = 37
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Ordenar'
        end
        object Grid2Status: TdxDBGridMaskColumn
          Visible = False
          Width = 25
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Status'
        end
        object Grid2idUnidad: TdxDBGridMaskColumn
          Visible = False
          Width = 59
          BandIndex = 0
          RowIndex = 0
          FieldName = 'idUnidad'
        end
        object Grid2Column19: TdxDBGridCurrencyColumn
          Caption = 'Costo Total'
          Width = 97
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CostoTotal'
          SummaryFooterType = cstSum
          SummaryFooterField = 'CostoTotal'
          SummaryFooterFormat = '0.00'
          Nullable = False
        end
        object Grid2Maximo: TdxDBGridMaskColumn
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Maximo'
        end
        object Grid2Minimo: TdxDBGridMaskColumn
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Minimo'
        end
        object Grid2Reorden: TdxDBGridMaskColumn
          Width = 67
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Reorden'
        end
        object Grid2referencia: TdxDBGridMaskColumn
          Caption = 'Referencia'
          Width = 83
          BandIndex = 0
          RowIndex = 0
          FieldName = 'referencia'
        end
        object Grid2Ubicacion: TdxDBGridColumn
          Width = 145
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Ubicacion'
        end
        object Grid2Inventario: TdxDBGridMaskColumn
          Width = 140
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Inventario'
        end
        object Grid2Linea: TdxDBGridMaskColumn
          Width = 140
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Linea'
        end
        object Grid2Grupo: TdxDBGridMaskColumn
          Width = 163
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Grupo'
        end
        object Grid2Column21: TdxDBGridColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Marca'
        end
      end
    end
  end
  inherited DS: TwwDataSource
    DataSet = Almacen
    Left = 229
    Top = 349
  end
  object Almacen: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select idAlmacen, Almacen '#13#10'from almacen '#13#10'union'#13#10'select Null, '#39 +
      '(Todos)'#39#13#10'order by 2'
    Parameters = <>
    Left = 40
    Top = 272
    object AlmacenidAlmacen: TStringField
      FieldName = 'idAlmacen'
      Size = 16
    end
    object AlmacenAlmacen: TStringField
      FieldName = 'Almacen'
      Size = 50
    end
  end
  object Inventario: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select idInventario, Inventario'#13#10'from Inventario'#13#10'union'#13#10'select ' +
      'Null, '#39'(Todos)'#39#13#10'order by 2'
    Parameters = <>
    Left = 144
    Top = 272
    object InventarioidInventario: TStringField
      FieldName = 'idInventario'
      Size = 16
    end
    object InventarioInventario: TStringField
      FieldName = 'Inventario'
      Size = 50
    end
  end
  object Grupo: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select idGrupo, Grupo'#13#10'from Grupo'#13#10'where idLinea = :idLinea'#13#10'uni' +
      'on'#13#10'select Null, '#39'(Todos)'#39#13#10'order by 2'
    DataSource = dsLinea
    MasterFields = 'idLinea'
    Parameters = <
      item
        Name = 'idLinea'
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 232
    Top = 272
    object GrupoidGrupo: TStringField
      FieldName = 'idGrupo'
      Size = 16
    end
    object GrupoGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
  end
  object Linea: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select idLinea, Linea'#13#10'from Linea '#13#10'where idInventario = :idInve' +
      'ntario'#13#10'union'#13#10'select Null, '#39'(Todos)'#39#13#10'order by 2'
    DataSource = dsInv
    MasterFields = 'idInventario'
    Parameters = <
      item
        Name = 'idInventario'
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 344
    Top = 264
    object LineaidLinea: TStringField
      FieldName = 'idLinea'
      Size = 16
    end
    object LineaLinea: TStringField
      FieldName = 'Linea'
      Size = 50
    end
  end
  object dsLinea: TwwDataSource
    AutoEdit = False
    DataSet = Linea
    OnUpdateData = DSUpdateData
    Left = 349
    Top = 349
  end
  object dsGrupo: TwwDataSource
    AutoEdit = False
    DataSet = Grupo
    OnUpdateData = DSUpdateData
    Left = 141
    Top = 341
  end
  object dsInv: TwwDataSource
    AutoEdit = False
    DataSet = Inventario
    OnUpdateData = DSUpdateData
    Left = 45
    Top = 341
  end
  object rsExistencias: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = rsExistenciasCalcFields
    CommandText = 'InvExistencia;1'
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
        Name = '@idGrupo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@idLinea'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@idInventario'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@idAlmacen'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Reorden'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 432
    Top = 272
    object rsExistenciasROWID: TGuidField
      FieldName = 'ROWID'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object rsExistenciasidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object rsExistenciasProducto: TStringField
      FieldName = 'Producto'
      Size = 100
    end
    object rsExistenciasMaximo: TFloatField
      FieldName = 'Maximo'
    end
    object rsExistenciasMinimo: TFloatField
      FieldName = 'Minimo'
    end
    object rsExistenciasReorden: TFloatField
      FieldName = 'Reorden'
    end
    object rsExistenciasExistencia: TFloatField
      FieldName = 'Existencia'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00##'
    end
    object rsExistenciasGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
    object rsExistenciasLinea: TStringField
      FieldName = 'Linea'
      Size = 50
    end
    object rsExistenciasInventario: TStringField
      FieldName = 'Inventario'
      Size = 50
    end
    object rsExistenciasidAlmacen: TStringField
      FieldName = 'idAlmacen'
      Size = 16
    end
    object rsExistenciasAlmacen: TStringField
      FieldName = 'Almacen'
      Size = 50
    end
    object rsExistenciasFecha: TDateTimeField
      FieldName = 'Fecha'
      ReadOnly = True
    end
    object rsExistenciasreferencia: TStringField
      FieldName = 'referencia'
      Size = 25
    end
    object rsExistenciasCostoPromedio: TFloatField
      FieldName = 'CostoPromedio'
      ReadOnly = True
    end
    object rsExistenciasOrdenar: TFloatField
      FieldName = 'Ordenar'
      ReadOnly = True
    end
    object rsExistenciasStatus: TStringField
      FieldName = 'Status'
      ReadOnly = True
      Size = 7
    end
    object rsExistenciasidUnidad: TStringField
      FieldName = 'idUnidad'
      Size = 16
    end
    object rsExistenciasCostoTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CostoTotal'
      Calculated = True
    end
    object rsExistenciasUbicacion: TStringField
      FieldName = 'Ubicacion'
      Size = 50
    end
    object rsExistenciasMarca: TStringField
      FieldName = 'Marca'
      Size = 50
    end
  end
  object dsExistencias: TDataSource
    DataSet = rsExistencias
    Left = 480
    Top = 336
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = plExistencias
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
    Template.FileName = 'C:\CBSDG2007\ventas\Reportes\InvExistencias.rtm'
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
    Left = 312
    Top = 224
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plExistencias'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 28310
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = 14737632
        Pen.Style = psClear
        mmHeight = 7144
        mmLeft = 0
        mmTop = 21166
        mmWidth = 203200
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Codigo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 265
        mmTop = 23283
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Producto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 21696
        mmTop = 23283
        mmWidth = 49742
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Minimo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 168275
        mmTop = 23283
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Critico'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 179917
        mmTop = 23283
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'a Pedir  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 155311
        mmTop = 23283
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Exist.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 89959
        mmTop = 23283
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Reporte de Existencias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6085
        mmLeft = 1058
        mmTop = 8731
        mmWidth = 91281
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
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        OnCalc = ppVariable1Calc
        Transparent = True
        mmHeight = 3440
        mmLeft = 1323
        mmTop = 15346
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Costo Prm.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 102394
        mmTop = 23283
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Status'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 140229
        mmTop = 23283
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Referencia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 73554
        mmTop = 23283
        mmWidth = 15610
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 6615
        mmLeft = 794
        mmTop = 1588
        mmWidth = 112184
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Costo Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 119327
        mmTop = 23283
        mmWidth = 20373
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 164307
        mmTop = 1323
        mmWidth = 37571
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 181240
        mmTop = 5292
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Maximo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 190765
        mmTop = 23283
        mmWidth = 9525
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 2910
      mmPrintPosition = 0
      object ppShape1: TppShape
        OnPrint = ppShape1Print
        UserName = 'Shape1'
        Brush.Color = 15395562
        ParentHeight = True
        ParentWidth = True
        Pen.Style = psClear
        StretchWithParent = True
        mmHeight = 2910
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'idProducto'
        DataPipeline = plExistencias
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plExistencias'
        mmHeight = 2910
        mmLeft = 265
        mmTop = 0
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Reorden'
        DataPipeline = plExistencias
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plExistencias'
        mmHeight = 2858
        mmLeft = 168540
        mmTop = 0
        mmWidth = 10319
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Minimo'
        DataPipeline = plExistencias
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plExistencias'
        mmHeight = 2858
        mmLeft = 179917
        mmTop = 0
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Ordenar'
        DataPipeline = plExistencias
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plExistencias'
        mmHeight = 2858
        mmLeft = 155311
        mmTop = 0
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Existencia'
        DataPipeline = plExistencias
        DisplayFormat = '#,0.####;(#0.####,)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plExistencias'
        mmHeight = 2910
        mmLeft = 91017
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'CostoPromedio'
        DataPipeline = plExistencias
        DisplayFormat = '#,0.00##'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plExistencias'
        mmHeight = 2910
        mmLeft = 103717
        mmTop = 0
        mmWidth = 14552
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = True
        DataField = 'Producto'
        DataPipeline = plExistencias
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plExistencias'
        mmHeight = 2910
        mmLeft = 21696
        mmTop = 0
        mmWidth = 51329
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Status'
        DataPipeline = plExistencias
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plExistencias'
        mmHeight = 2858
        mmLeft = 140494
        mmTop = 0
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'referencia'
        DataPipeline = plExistencias
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plExistencias'
        mmHeight = 2910
        mmLeft = 73554
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'CostoTotal'
        DataPipeline = plExistencias
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plExistencias'
        mmHeight = 2910
        mmLeft = 119327
        mmTop = 0
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkEnabled = False
        DataField = 'Maximo'
        DataPipeline = plExistencias
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plExistencias'
        mmHeight = 2858
        mmLeft = 191294
        mmTop = 0
        mmWidth = 9790
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 1323
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppShape8: TppShape
        UserName = 'Shape8'
        Brush.Color = 14408667
        Pen.Style = psClear
        mmHeight = 5556
        mmLeft = 0
        mmTop = 0
        mmWidth = 203465
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        HyperlinkEnabled = False
        DataField = 'CostoTotal'
        DataPipeline = plExistencias
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plExistencias'
        mmHeight = 2822
        mmLeft = 118534
        mmTop = 794
        mmWidth = 21696
        BandType = 7
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkEnabled = False
        Caption = 'Total General'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 7938
        mmTop = 794
        mmWidth = 109273
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'idAlmacen'
      DataPipeline = plExistencias
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plExistencias'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object ppShape9: TppShape
          UserName = 'Shape9'
          Brush.Color = 13553358
          Pen.Style = psClear
          mmHeight = 5821
          mmLeft = 0
          mmTop = 0
          mmWidth = 203465
          BandType = 3
          GroupNo = 0
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          HyperlinkEnabled = False
          DataField = 'Almacen'
          DataPipeline = plExistencias
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plExistencias'
          mmHeight = 3528
          mmLeft = 21167
          mmTop = 1323
          mmWidth = 48948
          BandType = 3
          GroupNo = 0
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Almacen:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 2117
          mmTop = 1323
          mmWidth = 18521
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppShape7: TppShape
          UserName = 'Shape7'
          Brush.Color = 14408667
          Pen.Style = psClear
          mmHeight = 3969
          mmLeft = 42333
          mmTop = 794
          mmWidth = 146050
          BandType = 5
          GroupNo = 0
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 529
          mmWidth = 203200
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          HyperlinkEnabled = False
          DataField = 'CostoTotal'
          DataPipeline = plExistencias
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plExistencias'
          mmHeight = 2822
          mmLeft = 118534
          mmTop = 1058
          mmWidth = 21696
          BandType = 5
          GroupNo = 0
        end
        object ppLabel19: TppLabel
          UserName = 'Label19'
          HyperlinkEnabled = False
          Caption = 'Total por Almacen'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2910
          mmLeft = 47361
          mmTop = 1058
          mmWidth = 69586
          BandType = 5
          GroupNo = 0
        end
        object ppDBText15: TppDBText
          UserName = 'DBText15'
          HyperlinkEnabled = False
          DataField = 'Almacen'
          DataPipeline = plExistencias
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plExistencias'
          mmHeight = 2822
          mmLeft = 146315
          mmTop = 1058
          mmWidth = 41275
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'Inventario'
      DataPipeline = plExistencias
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plExistencias'
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
        mmHeight = 5027
        mmPrintPosition = 0
        object ppShape6: TppShape
          UserName = 'Shape6'
          Brush.Color = 14408667
          Pen.Style = psClear
          mmHeight = 3969
          mmLeft = 56621
          mmTop = 1058
          mmWidth = 131763
          BandType = 5
          GroupNo = 1
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 529
          mmWidth = 203200
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          DataField = 'CostoTotal'
          DataPipeline = plExistencias
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plExistencias'
          mmHeight = 2822
          mmLeft = 118534
          mmTop = 1058
          mmWidth = 21696
          BandType = 5
          GroupNo = 1
        end
        object ppLabel18: TppLabel
          UserName = 'Label18'
          HyperlinkEnabled = False
          Caption = 'Total por Tipo de Inventario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2910
          mmLeft = 61119
          mmTop = 1058
          mmWidth = 56092
          BandType = 5
          GroupNo = 1
        end
        object ppDBText16: TppDBText
          UserName = 'DBText16'
          HyperlinkEnabled = False
          DataField = 'Inventario'
          DataPipeline = plExistencias
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plExistencias'
          mmHeight = 2822
          mmLeft = 146315
          mmTop = 1058
          mmWidth = 41275
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'Linea'
      DataPipeline = plExistencias
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plExistencias'
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
        mmHeight = 5027
        mmPrintPosition = 0
        object ppShape5: TppShape
          UserName = 'Shape5'
          Brush.Color = 14408667
          Pen.Style = psClear
          mmHeight = 3969
          mmLeft = 70908
          mmTop = 1058
          mmWidth = 117475
          BandType = 5
          GroupNo = 2
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 529
          mmWidth = 203200
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          DataField = 'CostoTotal'
          DataPipeline = plExistencias
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plExistencias'
          mmHeight = 2822
          mmLeft = 118534
          mmTop = 1058
          mmWidth = 21696
          BandType = 5
          GroupNo = 2
        end
        object ppLabel17: TppLabel
          UserName = 'Label17'
          HyperlinkEnabled = False
          Caption = 'Total por Linea'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2910
          mmLeft = 75936
          mmTop = 1058
          mmWidth = 41275
          BandType = 5
          GroupNo = 2
        end
        object ppDBText17: TppDBText
          UserName = 'DBText17'
          HyperlinkEnabled = False
          DataField = 'Linea'
          DataPipeline = plExistencias
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plExistencias'
          mmHeight = 2822
          mmLeft = 146315
          mmTop = 1058
          mmWidth = 41275
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'Grupo'
      DataPipeline = plExistencias
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plExistencias'
      NewFile = False
      object ppGroupHeaderBand4: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppShape3: TppShape
          UserName = 'Shape3'
          Brush.Color = 14408667
          Pen.Style = psClear
          mmHeight = 5821
          mmLeft = 0
          mmTop = 0
          mmWidth = 203465
          BandType = 3
          GroupNo = 3
        end
        object ppDBText10: TppDBText
          UserName = 'DBText10'
          HyperlinkEnabled = False
          DataField = 'Grupo'
          DataPipeline = plExistencias
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plExistencias'
          mmHeight = 2822
          mmLeft = 158486
          mmTop = 1058
          mmWidth = 43921
          BandType = 3
          GroupNo = 3
        end
        object ppLabel11: TppLabel
          UserName = 'Label101'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Grupo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2822
          mmLeft = 144198
          mmTop = 1058
          mmWidth = 13758
          BandType = 3
          GroupNo = 3
        end
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          HyperlinkEnabled = False
          DataField = 'Linea'
          DataPipeline = plExistencias
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plExistencias'
          mmHeight = 2822
          mmLeft = 84402
          mmTop = 1058
          mmWidth = 55298
          BandType = 3
          GroupNo = 3
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Linea:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2822
          mmLeft = 70644
          mmTop = 1058
          mmWidth = 12700
          BandType = 3
          GroupNo = 3
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          HyperlinkEnabled = False
          AutoSize = False
          Caption = 'Inventario:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2822
          mmLeft = 265
          mmTop = 1058
          mmWidth = 19844
          BandType = 3
          GroupNo = 3
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          HyperlinkEnabled = False
          DataField = 'Inventario'
          DataPipeline = plExistencias
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Verdana'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plExistencias'
          mmHeight = 2822
          mmLeft = 20902
          mmTop = 1058
          mmWidth = 47096
          BandType = 3
          GroupNo = 3
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppShape4: TppShape
          UserName = 'Shape4'
          Brush.Color = 14408667
          Pen.Style = psClear
          mmHeight = 3969
          mmLeft = 86254
          mmTop = 529
          mmWidth = 102129
          BandType = 5
          GroupNo = 3
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 529
          mmWidth = 203200
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          DataField = 'CostoTotal'
          DataPipeline = plExistencias
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plExistencias'
          mmHeight = 2822
          mmLeft = 118534
          mmTop = 970
          mmWidth = 21696
          BandType = 5
          GroupNo = 3
        end
        object ppLabel16: TppLabel
          UserName = 'Label11'
          HyperlinkEnabled = False
          Caption = 'Total por Grupo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2910
          mmLeft = 87048
          mmTop = 1058
          mmWidth = 30163
          BandType = 5
          GroupNo = 3
        end
        object ppDBText18: TppDBText
          UserName = 'DBText101'
          HyperlinkEnabled = False
          DataField = 'Grupo'
          DataPipeline = plExistencias
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plExistencias'
          mmHeight = 2822
          mmLeft = 146315
          mmTop = 1058
          mmWidth = 41275
          BandType = 5
          GroupNo = 3
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object plExistencias: TppDBPipeline
    DataSource = dsExistencias
    UserName = 'plExistencias'
    Left = 168
    Top = 216
    object plExistenciasppField1: TppField
      FieldAlias = 'ROWID'
      FieldName = 'ROWID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plExistenciasppField2: TppField
      FieldAlias = 'idProducto'
      FieldName = 'idProducto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plExistenciasppField3: TppField
      FieldAlias = 'Producto'
      FieldName = 'Producto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object plExistenciasppField4: TppField
      FieldAlias = 'Maximo'
      FieldName = 'Maximo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object plExistenciasppField5: TppField
      FieldAlias = 'Minimo'
      FieldName = 'Minimo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object plExistenciasppField6: TppField
      FieldAlias = 'Reorden'
      FieldName = 'Reorden'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object plExistenciasppField7: TppField
      FieldAlias = 'Existencia'
      FieldName = 'Existencia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object plExistenciasppField8: TppField
      FieldAlias = 'Grupo'
      FieldName = 'Grupo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object plExistenciasppField9: TppField
      FieldAlias = 'Linea'
      FieldName = 'Linea'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object plExistenciasppField10: TppField
      FieldAlias = 'Inventario'
      FieldName = 'Inventario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object plExistenciasppField11: TppField
      FieldAlias = 'idAlmacen'
      FieldName = 'idAlmacen'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object plExistenciasppField12: TppField
      FieldAlias = 'Almacen'
      FieldName = 'Almacen'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object plExistenciasppField13: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object plExistenciasppField14: TppField
      FieldAlias = 'referencia'
      FieldName = 'referencia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object plExistenciasppField15: TppField
      FieldAlias = 'CostoPromedio'
      FieldName = 'CostoPromedio'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object plExistenciasppField16: TppField
      FieldAlias = 'Ordenar'
      FieldName = 'Ordenar'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object plExistenciasppField17: TppField
      FieldAlias = 'Status'
      FieldName = 'Status'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object plExistenciasppField18: TppField
      FieldAlias = 'idUnidad'
      FieldName = 'idUnidad'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object plExistenciasppField19: TppField
      FieldAlias = 'CostoTotal'
      FieldName = 'CostoTotal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
  end
  object OpenFile: TOpenDialog
    DefaultExt = 'xls'
    FileName = 'Existencia'
    Filter = 'xls|*.xls'
    Left = 512
    Top = 238
  end
end

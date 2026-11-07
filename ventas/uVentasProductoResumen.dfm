inherited VentasdeProductosResumen: TVentasdeProductosResumen
  Left = 294
  Top = 203
  Caption = 'Resumen de Ventas de Productos '
  ClientHeight = 515
  ClientWidth = 893
  Color = 15922418
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 24
    Top = 11
    Width = 34
    Height = 13
    Caption = 'Desde:'
  end
  object Label2: TLabel [1]
    Left = 24
    Top = 35
    Width = 31
    Height = 13
    Caption = 'Hasta:'
  end
  object deDesde: TcxDateEdit [2]
    Left = 66
    Top = 7
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object deHasta: TcxDateEdit [3]
    Left = 66
    Top = 33
    Width = 121
    Height = 21
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object cxButton1: TcxButton [4]
    Left = 529
    Top = 3
    Width = 115
    Height = 28
    Anchors = [akTop, akRight]
    Caption = 'Mostrar'
    TabOrder = 2
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton [5]
    Left = 765
    Top = 3
    Width = 115
    Height = 27
    Anchors = [akTop, akRight]
    Caption = 'Salir'
    TabOrder = 3
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton4: TcxButton [6]
    Left = 530
    Top = 32
    Width = 115
    Height = 27
    Anchors = [akTop, akRight]
    Caption = 'Exportar a Excel'
    TabOrder = 4
    OnClick = cxButton4Click
    LookAndFeel.NativeStyle = True
  end
  object Grid: TcxGrid [7]
    Left = 4
    Top = 62
    Width = 888
    Height = 451
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 5
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    object GridDBTableView1: TcxGridDBTableView
      DataController.DataSource = DS
      DataController.Filter.Active = True
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'idProducto'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,0.00'
          Kind = skSum
          FieldName = 'Enero'
        end
        item
          Format = '#,0.00'
          Kind = skSum
        end
        item
          Format = '#,0.00'
          Kind = skSum
        end
        item
          Format = '#,0.00'
          Kind = skSum
        end
        item
          Format = '#,0.00'
          Kind = skSum
        end
        item
          Format = '#,0.00'
          Kind = skSum
        end
        item
          Format = '#,0.00'
          Kind = skSum
        end
        item
          Format = '#,0.00'
          Kind = skSum
        end
        item
          Format = '#,0.00'
          Kind = skSum
        end
        item
          Format = '#,0.00'
          Kind = skSum
        end
        item
          Format = '#,0.00'
          Kind = skSum
        end
        item
          Format = '#,0.00'
          Kind = skSum
        end
        item
          Format = '#,0.00'
          Kind = skSum
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = GridDBTableView1Cantidad
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = GridDBTableView1Descuento
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = GridDBTableView1Itbis
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = GridDBTableView1Total
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = GridDBTableView1TotalBruto
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = GridDBTableView1TotalNeto
        end>
      DataController.Summary.SummaryGroups = <
        item
          Links = <
            item
            end>
          SummaryItems = <
            item
              Format = '0.00'
              Kind = skSum
              FieldName = 'Enero'
            end>
        end>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.IncSearch = True
      OptionsCustomize.GroupBySorting = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      Styles.Footer = cxStyle1
      Styles.Group = cxStyle2
      object GridDBTableView1Grupo: TcxGridDBColumn
        DataBinding.FieldName = 'Grupo'
        Visible = False
        GroupIndex = 0
      end
      object GridDBTableView1idProducto: TcxGridDBColumn
        DataBinding.FieldName = 'idProducto'
        Width = 120
      end
      object GridDBTableView1Producto: TcxGridDBColumn
        DataBinding.FieldName = 'Producto'
        Width = 274
      end
      object GridDBTableView1Cantidad: TcxGridDBColumn
        DataBinding.FieldName = 'Cantidad'
        Width = 73
      end
      object GridDBTableView1Precio: TcxGridDBColumn
        DataBinding.FieldName = 'Precio'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 86
      end
      object GridDBTableView1Descuento: TcxGridDBColumn
        Caption = 'Desc'
        DataBinding.FieldName = 'Descuento'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 58
      end
      object GridDBTableView1Itbis: TcxGridDBColumn
        DataBinding.FieldName = 'Itbis'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 61
      end
      object GridDBTableView1Total: TcxGridDBColumn
        DataBinding.FieldName = 'Total'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 105
      end
      object GridDBTableView1TotalBruto: TcxGridDBColumn
        DataBinding.FieldName = 'TotalBruto'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 102
      end
      object GridDBTableView1TotalNeto: TcxGridDBColumn
        DataBinding.FieldName = 'TotalNeto'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 87
      end
      object GridDBTableView1Promedio: TcxGridDBColumn
        DataBinding.FieldName = 'Promedio'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 73
      end
      object GridDBTableView1PromedioCat: TcxGridDBColumn
        DataBinding.FieldName = 'PromedioCat'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 89
      end
      object GridDBTableView1PromedioGral: TcxGridDBColumn
        DataBinding.FieldName = 'PromedioGral'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridDBTableView1
    end
  end
  object cxButton2: TcxButton [8]
    Left = 765
    Top = 32
    Width = 57
    Height = 27
    Anchors = [akTop, akRight]
    Caption = 'Expandir'
    TabOrder = 6
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton5: TcxButton [9]
    Left = 823
    Top = 32
    Width = 57
    Height = 27
    Anchors = [akTop, akRight]
    Caption = 'Colapsar'
    TabOrder = 7
    OnClick = cxButton5Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton6: TcxButton [10]
    Left = 647
    Top = 3
    Width = 115
    Height = 55
    Anchors = [akTop, akRight]
    Caption = 'Imprimir'
    TabOrder = 8
    OnClick = cxButton6Click
    LookAndFeel.NativeStyle = True
  end
  inherited DS: TwwDataSource
    DataSet = RS
    Left = 41
    Top = 187
  end
  object OpenFile: TOpenDialog
    DefaultExt = 'xls'
    FileName = 'Datos'
    Filter = 'xls|*.xls'
    Left = 374
    Top = 176
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 542
    Top = 171
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 13041663
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 15720410
    end
  end
  object RS: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'RPTVentasdeProductosResumen;1'
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
        Name = '@Desde'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 234
    Top = 180
    object RSDesde: TDateTimeField
      FieldName = 'Desde'
      ReadOnly = True
    end
    object RSHasta: TDateTimeField
      FieldName = 'Hasta'
      ReadOnly = True
    end
    object RSidGrupo: TStringField
      FieldName = 'idGrupo'
      Size = 16
    end
    object RSGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
    object RSidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object RSProducto: TStringField
      FieldName = 'Producto'
      Size = 120
    end
    object RSCantidad: TFloatField
      FieldName = 'Cantidad'
      ReadOnly = True
      DisplayFormat = '#,#.##'
    end
    object RSPrecio: TBCDField
      FieldName = 'Precio'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 6
    end
    object RSDescuento: TBCDField
      FieldName = 'Descuento'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object RSItbis: TBCDField
      FieldName = 'Itbis'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object RSTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object RSTotalBruto: TBCDField
      FieldName = 'TotalBruto'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object RSTotalNeto: TBCDField
      FieldName = 'TotalNeto'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object RSCompania: TStringField
      FieldName = 'Compania'
      Size = 50
    end
    object RSPromedio: TFloatField
      FieldName = 'Promedio'
      ReadOnly = True
    end
    object RSPromedioCat: TFloatField
      FieldName = 'PromedioCat'
      ReadOnly = True
    end
    object RSPromedioGral: TFloatField
      FieldName = 'PromedioGral'
      ReadOnly = True
    end
  end
  object plVentasdeProductosResumen: TppDBPipeline
    DataSource = DS
    UserName = 'plVentasdeProductosResumen'
    Left = 234
    Top = 276
  end
  object RPTVentasdeProductosResumen: TppReport
    AutoStop = False
    DataPipeline = plVentasdeProductosResumen
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = False
    Left = 234
    Top = 332
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'plVentasdeProductosResumen'
    object ppTitleBand3: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 16933
      mmPrintPosition = 0
      object ppLabel25: TppLabel
        UserName = 'Label25'
        AutoSize = False
        Caption = 'Resumen Ventas de Productos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7408
        mmLeft = 1588
        mmTop = 9260
        mmWidth = 124619
        BandType = 1
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = 'Desde'
        DataPipeline = plVentasdeProductosResumen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 226484
        mmTop = 2117
        mmWidth = 31750
        BandType = 1
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'Hasta'
        DataPipeline = plVentasdeProductosResumen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 226484
        mmTop = 6350
        mmWidth = 31750
        BandType = 1
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        AutoSize = False
        Caption = 'Desde :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 201084
        mmTop = 2117
        mmWidth = 23813
        BandType = 1
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        AutoSize = False
        Caption = 'Hasta :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 201084
        mmTop = 6350
        mmWidth = 23813
        BandType = 1
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 180711
        mmTop = 11113
        mmWidth = 78317
        BandType = 1
      end
      object ppDBText180: TppDBText
        UserName = 'DBText180'
        DataField = 'Compania'
        DataPipeline = plVentasdeProductosResumen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 7408
        mmLeft = 1058
        mmTop = 1058
        mmWidth = 183886
        BandType = 1
      end
    end
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppLine7: TppLine
        UserName = 'Line7'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1323
        mmLeft = 1323
        mmTop = 5291
        mmWidth = 264055
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        AutoSize = False
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 794
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        AutoSize = False
        Caption = 'Producto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 25400
        mmTop = 794
        mmWidth = 74348
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        AutoSize = False
        Caption = 'Cantidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 101071
        mmTop = 1323
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        AutoSize = False
        Caption = 'Precio Prom.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 119856
        mmTop = 1323
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        AutoSize = False
        Caption = 'Descuento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 168011
        mmTop = 1323
        mmWidth = 23548
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        AutoSize = False
        Caption = 'Itbis'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 217488
        mmTop = 1323
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        AutoSize = False
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 240507
        mmTop = 1323
        mmWidth = 26194
        BandType = 0
      end
      object ppLabel87: TppLabel
        UserName = 'Label87'
        AutoSize = False
        Caption = 'Cant x Precio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 142611
        mmTop = 1323
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label88'
        AutoSize = False
        Caption = 'Total Bruto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 192617
        mmTop = 1323
        mmWidth = 24077
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'idProducto'
        DataPipeline = plVentasdeProductosResumen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3344
        mmLeft = 1323
        mmTop = 529
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'Producto'
        DataPipeline = plVentasdeProductosResumen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3344
        mmLeft = 25665
        mmTop = 529
        mmWidth = 74348
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'Cantidad'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 101071
        mmTop = 529
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'Promedio'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3344
        mmLeft = 119856
        mmTop = 529
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        DataField = 'Descuento'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 168011
        mmTop = 529
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        DataField = 'Itbis'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 217488
        mmTop = 529
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        DataField = 'TotalNeto'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 240507
        mmTop = 529
        mmWidth = 26194
        BandType = 4
      end
      object ppDBText71: TppDBText
        UserName = 'DBText71'
        DataField = 'Total'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 142611
        mmTop = 529
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText73: TppDBText
        UserName = 'DBText73'
        DataField = 'TotalBruto'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 192617
        mmTop = 529
        mmWidth = 24077
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 230982
        mmTop = 1323
        mmWidth = 34396
        BandType = 8
      end
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 11642
      mmPrintPosition = 0
      object ppShape5: TppShape
        UserName = 'Shape5'
        Brush.Color = 13882323
        Pen.Style = psClear
        mmHeight = 7408
        mmLeft = 0
        mmTop = 3175
        mmWidth = 266965
        BandType = 7
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 529
        mmTop = 0
        mmWidth = 264055
        BandType = 7
      end
      object ppDBCalc25: TppDBCalc
        UserName = 'DBCalc25'
        DataField = 'Cantidad'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 98425
        mmTop = 5292
        mmWidth = 21431
        BandType = 7
      end
      object ppDBCalc26: TppDBCalc
        UserName = 'DBCalc26'
        DataField = 'Total'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 142875
        mmTop = 5292
        mmWidth = 25665
        BandType = 7
      end
      object ppDBCalc27: TppDBCalc
        UserName = 'DBCalc27'
        DataField = 'Descuento'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 169598
        mmTop = 5292
        mmWidth = 23283
        BandType = 7
      end
      object ppLabel102: TppLabel
        UserName = 'Label601'
        AutoSize = False
        Caption = 'TOTALES DEL GENRAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 52917
        mmTop = 5292
        mmWidth = 44715
        BandType = 7
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1588
        mmLeft = 529
        mmTop = 3440
        mmWidth = 264055
        BandType = 7
      end
      object ppDBCalc28: TppDBCalc
        UserName = 'DBCalc28'
        DataField = 'TotalBruto'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 194734
        mmTop = 5292
        mmWidth = 23283
        BandType = 7
      end
      object ppDBCalc29: TppDBCalc
        UserName = 'DBCalc29'
        DataField = 'Itbis'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 218282
        mmTop = 5292
        mmWidth = 22490
        BandType = 7
      end
      object ppDBCalc30: TppDBCalc
        UserName = 'DBCalc30'
        DataField = 'TotalNeto'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 238125
        mmTop = 5292
        mmWidth = 26458
        BandType = 7
      end
      object ppDBText183: TppDBText
        UserName = 'DBText183'
        DataField = 'PromedioGral'
        DataPipeline = plVentasdeProductosResumen
        DisplayFormat = '$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVentasdeProductosResumen'
        mmHeight = 3440
        mmLeft = 121179
        mmTop = 5292
        mmWidth = 20373
        BandType = 7
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'idGrupo'
      DataPipeline = plVentasdeProductosResumen
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plVentasdeProductosResumen'
      object ppGroupHeaderBand7: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppShape4: TppShape
          UserName = 'Shape4'
          Brush.Color = 13882323
          Pen.Style = psClear
          mmHeight = 7408
          mmLeft = 0
          mmTop = 0
          mmWidth = 266965
          BandType = 3
          GroupNo = 0
        end
        object ppDBText87: TppDBText
          UserName = 'DBText87'
          DataField = 'Grupo'
          DataPipeline = plVentasdeProductosResumen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumen'
          mmHeight = 5027
          mmLeft = 21696
          mmTop = 794
          mmWidth = 140494
          BandType = 3
          GroupNo = 0
        end
        object ppLabel101: TppLabel
          UserName = 'Label101'
          Caption = 'Categoria:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4880
          mmLeft = 1323
          mmTop = 794
          mmWidth = 19269
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 11906
        mmPrintPosition = 0
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc7'
          DataField = 'Cantidad'
          DataPipeline = plVentasdeProductosResumen
          DisplayFormat = '#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumen'
          mmHeight = 3440
          mmLeft = 97631
          mmTop = 3175
          mmWidth = 21431
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc8'
          DataField = 'Total'
          DataPipeline = plVentasdeProductosResumen
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumen'
          mmHeight = 3440
          mmLeft = 143140
          mmTop = 3175
          mmWidth = 25665
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc9'
          DataField = 'Descuento'
          DataPipeline = plVentasdeProductosResumen
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumen'
          mmHeight = 3440
          mmLeft = 169863
          mmTop = 3175
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppLabel60: TppLabel
          UserName = 'Label60'
          AutoSize = False
          Caption = 'TOTALES CATEGORIA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 52123
          mmTop = 3175
          mmWidth = 44715
          BandType = 5
          GroupNo = 0
        end
        object ppLine9: TppLine
          UserName = 'Line9'
          Pen.Color = clGray
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 1588
          mmLeft = 1588
          mmTop = 1323
          mmWidth = 264055
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc14: TppDBCalc
          UserName = 'DBCalc14'
          DataField = 'TotalBruto'
          DataPipeline = plVentasdeProductosResumen
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumen'
          mmHeight = 3440
          mmLeft = 194998
          mmTop = 3175
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc15: TppDBCalc
          UserName = 'DBCalc15'
          DataField = 'Itbis'
          DataPipeline = plVentasdeProductosResumen
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumen'
          mmHeight = 3440
          mmLeft = 218546
          mmTop = 3175
          mmWidth = 22490
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc16: TppDBCalc
          UserName = 'DBCalc16'
          DataField = 'TotalNeto'
          DataPipeline = plVentasdeProductosResumen
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumen'
          mmHeight = 3440
          mmLeft = 241830
          mmTop = 3175
          mmWidth = 26458
          BandType = 5
          GroupNo = 0
        end
        object ppDBText182: TppDBText
          UserName = 'DBText182'
          DataField = 'PromedioCat'
          DataPipeline = plVentasdeProductosResumen
          DisplayFormat = '$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'TIMES NEW ROMAN'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plVentasdeProductosResumen'
          mmHeight = 3387
          mmLeft = 119856
          mmTop = 3175
          mmWidth = 21696
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
end

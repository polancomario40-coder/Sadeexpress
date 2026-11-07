inherited ReportesConfigurados: TReportesConfigurados
  Left = 300
  Top = 158
  Caption = 'Reportes Configurados'
  ClientHeight = 465
  ClientWidth = 815
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Width = 815
  end
  inherited Gradient2: TGradient
    Width = 815
  end
  object Reportes: TLabel [2]
    Left = 12
    Top = 43
    Width = 44
    Height = 13
    Caption = 'Reportes'
  end
  object Label1: TLabel [3]
    Left = 8
    Top = 65
    Width = 84
    Height = 13
    Caption = 'Tipo de Empleado'
  end
  object Label2: TLabel [4]
    Left = 463
    Top = 43
    Width = 30
    Height = 13
    Caption = 'Desde'
  end
  object Label3: TLabel [5]
    Left = 463
    Top = 65
    Width = 28
    Height = 13
    Caption = 'Hasta'
  end
  object lkReporte: TcxLookupComboBox [6]
    Left = 96
    Top = 40
    Width = 305
    Height = 21
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'IdReporte'
    Properties.ListColumns = <
      item
        FieldName = 'Reporte'
      end>
    Properties.ListSource = dsReporte
    Properties.OnEditValueChanged = lkReportePropertiesEditValueChanged
    TabOrder = 0
  end
  object lkTipoEmpleado: TcxLookupComboBox [7]
    Left = 96
    Top = 62
    Width = 305
    Height = 21
    Properties.KeyFieldNames = 'TipoEmpleadoID'
    Properties.ListColumns = <
      item
        FieldName = 'TipoEmpleado'
      end>
    Properties.ListSource = dsTipoEmpleado
    TabOrder = 1
  end
  object dtpDesde: TcxDateEdit [8]
    Left = 500
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object dtpHasta: TcxDateEdit [9]
    Left = 500
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object bBuscar: TcxButton [10]
    Left = 682
    Top = 42
    Width = 107
    Height = 35
    Caption = '&Buscar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = bBuscarClick
    LookAndFeel.NativeStyle = True
  end
  object bReporte: TcxButton [11]
    Left = 700
    Top = 426
    Width = 107
    Height = 35
    Caption = '&Reporte'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 5
    OnClick = bReporteClick
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid [12]
    Left = 8
    Top = 96
    Width = 795
    Height = 321
    TabOrder = 6
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = ds
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Columna1
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Columna2
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Columna3
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Columna4
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Columna5
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Columna6
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Columna7
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Columna8
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Columna9
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Columna10
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Columna11
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Columna12
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Columna13
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Columna14
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Columna15
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Columna16
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Columna17
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Columna18
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Columna1
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Columna2
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Columna3
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Columna4
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Columna5
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Columna6
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Columna7
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Columna8
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Columna9
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Columna10
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Columna11
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Columna12
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Columna13
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Columna14
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Columna15
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Columna16
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Columna17
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Columna18
        end>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      object cxGrid1DBTableView1departamento: TcxGridDBColumn
        DataBinding.FieldName = 'departamento'
        Visible = False
        GroupIndex = 0
      end
      object cxGrid1DBTableView1Orden: TcxGridDBColumn
        DataBinding.FieldName = 'Orden'
        Visible = False
      end
      object cxGrid1DBTableView1Seccion: TcxGridDBColumn
        DataBinding.FieldName = 'Seccion'
        Visible = False
        GroupIndex = 1
      end
      object cxGrid1DBTableView1Orden_1: TcxGridDBColumn
        DataBinding.FieldName = 'Orden_1'
        Visible = False
      end
      object cxGrid1DBTableView1EmpleadoID: TcxGridDBColumn
        DataBinding.FieldName = 'EmpleadoID'
        Width = 49
      end
      object cxGrid1DBTableView1Cedula: TcxGridDBColumn
        DataBinding.FieldName = 'Cedula'
        Width = 84
      end
      object cxGrid1DBTableView1Empleado: TcxGridDBColumn
        DataBinding.FieldName = 'Empleado'
        Width = 237
      end
      object cxGrid1DBTableView1Columna1: TcxGridDBColumn
        DataBinding.FieldName = 'Columna1'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cxGrid1DBTableView1Columna2: TcxGridDBColumn
        DataBinding.FieldName = 'Columna2'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cxGrid1DBTableView1Columna3: TcxGridDBColumn
        DataBinding.FieldName = 'Columna3'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cxGrid1DBTableView1Columna4: TcxGridDBColumn
        DataBinding.FieldName = 'Columna4'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cxGrid1DBTableView1Columna5: TcxGridDBColumn
        DataBinding.FieldName = 'Columna5'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cxGrid1DBTableView1Columna6: TcxGridDBColumn
        DataBinding.FieldName = 'Columna6'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cxGrid1DBTableView1Columna7: TcxGridDBColumn
        DataBinding.FieldName = 'Columna7'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cxGrid1DBTableView1Columna8: TcxGridDBColumn
        DataBinding.FieldName = 'Columna8'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cxGrid1DBTableView1Columna9: TcxGridDBColumn
        DataBinding.FieldName = 'Columna9'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cxGrid1DBTableView1Columna10: TcxGridDBColumn
        DataBinding.FieldName = 'Columna10'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cxGrid1DBTableView1Columna11: TcxGridDBColumn
        DataBinding.FieldName = 'Columna11'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cxGrid1DBTableView1Columna12: TcxGridDBColumn
        DataBinding.FieldName = 'Columna12'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cxGrid1DBTableView1Columna13: TcxGridDBColumn
        DataBinding.FieldName = 'Columna13'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cxGrid1DBTableView1Columna14: TcxGridDBColumn
        DataBinding.FieldName = 'Columna14'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cxGrid1DBTableView1Columna15: TcxGridDBColumn
        DataBinding.FieldName = 'Columna15'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cxGrid1DBTableView1Columna16: TcxGridDBColumn
        DataBinding.FieldName = 'Columna16'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cxGrid1DBTableView1Columna17: TcxGridDBColumn
        DataBinding.FieldName = 'Columna17'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
      object cxGrid1DBTableView1Columna18: TcxGridDBColumn
        DataBinding.FieldName = 'Columna18'
        PropertiesClassName = 'TcxCalcEditProperties'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton1: TcxButton [13]
    Left = 576
    Top = 426
    Width = 107
    Height = 35
    Caption = 'Exportar a Excel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object bCerrar: TcxButton [14]
    Left = 7
    Top = 424
    Width = 107
    Height = 35
    Caption = '&Cerrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = bCerrarClick
    LookAndFeel.NativeStyle = True
  end
  inherited ds: TDataSource
    DataSet = rsTransSumRpt
    Left = 570
    Top = 272
  end
  object rsReporte: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'SELECT * FROM nomReporte'
    Parameters = <>
    Left = 416
    Top = 346
    object rsReporteIdReporte: TGuidField
      FieldName = 'IdReporte'
      FixedChar = True
      Size = 38
    end
    object rsReporteReporte: TStringField
      FieldName = 'Reporte'
      Size = 100
    end
    object rsReporteNomColum01: TStringField
      FieldName = 'NomColum01'
      Size = 50
    end
    object rsReporteNomColum02: TStringField
      FieldName = 'NomColum02'
      Size = 50
    end
    object rsReporteNomColum03: TStringField
      FieldName = 'NomColum03'
      Size = 50
    end
    object rsReporteNomColum04: TStringField
      FieldName = 'NomColum04'
      Size = 50
    end
    object rsReporteNomColum05: TStringField
      FieldName = 'NomColum05'
      Size = 50
    end
    object rsReporteNomColum06: TStringField
      FieldName = 'NomColum06'
      Size = 50
    end
    object rsReporteNomColum07: TStringField
      FieldName = 'NomColum07'
      Size = 50
    end
    object rsReporteNomColum08: TStringField
      FieldName = 'NomColum08'
      Size = 50
    end
    object rsReporteNomColum09: TStringField
      FieldName = 'NomColum09'
      Size = 50
    end
    object rsReporteNomColum10: TStringField
      FieldName = 'NomColum10'
      Size = 50
    end
    object rsReporteNomColum11: TStringField
      FieldName = 'NomColum11'
      Size = 50
    end
    object rsReporteNomColum12: TStringField
      FieldName = 'NomColum12'
      Size = 50
    end
    object rsReporteNomColum13: TStringField
      FieldName = 'NomColum13'
      Size = 50
    end
    object rsReporteNomColum14: TStringField
      FieldName = 'NomColum14'
      Size = 50
    end
    object rsReporteNomColum15: TStringField
      FieldName = 'NomColum15'
      Size = 50
    end
    object rsReporteNomColum16: TStringField
      FieldName = 'NomColum16'
      Size = 50
    end
    object rsReporteNomColum17: TStringField
      FieldName = 'NomColum17'
      Size = 50
    end
    object rsReporteNomColum18: TStringField
      FieldName = 'NomColum18'
      Size = 50
    end
    object rsReporteTransColum01: TStringField
      FieldName = 'TransColum01'
      Size = 50
    end
    object rsReporteTransColum02: TStringField
      FieldName = 'TransColum02'
      Size = 50
    end
    object rsReporteTransColum03: TStringField
      FieldName = 'TransColum03'
      Size = 50
    end
    object rsReporteTransColum04: TStringField
      FieldName = 'TransColum04'
      Size = 50
    end
    object rsReporteTransColum05: TStringField
      FieldName = 'TransColum05'
      Size = 50
    end
    object rsReporteTransColum06: TStringField
      FieldName = 'TransColum06'
      Size = 50
    end
    object rsReporteTransColum07: TStringField
      FieldName = 'TransColum07'
      Size = 50
    end
    object rsReporteTransColum08: TStringField
      FieldName = 'TransColum08'
      Size = 50
    end
    object rsReporteTransColum09: TStringField
      FieldName = 'TransColum09'
      Size = 50
    end
    object rsReporteTransColum10: TStringField
      FieldName = 'TransColum10'
      Size = 50
    end
    object rsReporteTransColum11: TStringField
      FieldName = 'TransColum11'
      Size = 50
    end
    object rsReporteTransColum12: TStringField
      FieldName = 'TransColum12'
      Size = 50
    end
    object rsReporteTransColum13: TStringField
      FieldName = 'TransColum13'
      Size = 50
    end
    object rsReporteTransColum14: TStringField
      FieldName = 'TransColum14'
      Size = 50
    end
    object rsReporteTransColum15: TStringField
      FieldName = 'TransColum15'
      Size = 50
    end
    object rsReporteTransColum16: TStringField
      FieldName = 'TransColum16'
      Size = 50
    end
    object rsReporteTransColum17: TStringField
      FieldName = 'TransColum17'
      Size = 50
    end
    object rsReporteTransColum18: TStringField
      FieldName = 'TransColum18'
      Size = 50
    end
    object rsReporteFormatoReporte: TMemoField
      FieldName = 'FormatoReporte'
      BlobType = ftMemo
    end
  end
  object rsTipoEmpleado: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'Select * From TipoEmpleado'
    Parameters = <>
    Left = 414
    Top = 394
    object rsTipoEmpleadoTipoEmpleadoID: TAutoIncField
      FieldName = 'TipoEmpleadoID'
      ReadOnly = True
    end
    object rsTipoEmpleadoTipoEmpleado: TStringField
      FieldName = 'TipoEmpleado'
      Size = 10
    end
  end
  object dsTipoEmpleado: TDataSource
    DataSet = rsTipoEmpleado
    Left = 512
    Top = 394
  end
  object dsReporte: TDataSource
    DataSet = rsReporte
    Left = 510
    Top = 344
  end
  object rsTransSumRpt: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'NomTransSumRpt;1'
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
        Name = '@IdReporte'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@TipoEmpleadoID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
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
    Left = 224
    Top = 238
    object rsTransSumRptdepartamento: TStringField
      FieldName = 'departamento'
      Size = 30
    end
    object rsTransSumRptOrden: TIntegerField
      FieldName = 'Orden'
    end
    object rsTransSumRptSeccion: TStringField
      FieldName = 'Seccion'
    end
    object rsTransSumRptOrden_1: TIntegerField
      FieldName = 'Orden_1'
    end
    object rsTransSumRptEmpleadoID: TIntegerField
      FieldName = 'EmpleadoID'
    end
    object rsTransSumRptCedula: TStringField
      FieldName = 'Cedula'
    end
    object rsTransSumRptEmpleado: TStringField
      FieldName = 'Empleado'
      Size = 62
    end
    object rsTransSumRptColumna1: TBCDField
      FieldName = 'Columna1'
      ReadOnly = True
      Precision = 16
      Size = 2
    end
    object rsTransSumRptColumna2: TBCDField
      FieldName = 'Columna2'
      ReadOnly = True
      Precision = 16
      Size = 2
    end
    object rsTransSumRptColumna3: TBCDField
      FieldName = 'Columna3'
      ReadOnly = True
      Precision = 16
      Size = 2
    end
    object rsTransSumRptColumna4: TBCDField
      FieldName = 'Columna4'
      ReadOnly = True
      Precision = 16
      Size = 2
    end
    object rsTransSumRptColumna5: TBCDField
      FieldName = 'Columna5'
      ReadOnly = True
      Precision = 16
      Size = 2
    end
    object rsTransSumRptColumna6: TBCDField
      FieldName = 'Columna6'
      ReadOnly = True
      Precision = 16
      Size = 2
    end
    object rsTransSumRptColumna7: TBCDField
      FieldName = 'Columna7'
      ReadOnly = True
      Precision = 16
      Size = 2
    end
    object rsTransSumRptColumna8: TBCDField
      FieldName = 'Columna8'
      ReadOnly = True
      Precision = 16
      Size = 2
    end
    object rsTransSumRptColumna9: TBCDField
      FieldName = 'Columna9'
      ReadOnly = True
      Precision = 16
      Size = 2
    end
    object rsTransSumRptColumna10: TBCDField
      FieldName = 'Columna10'
      ReadOnly = True
      Precision = 16
      Size = 2
    end
    object rsTransSumRptColumna11: TBCDField
      FieldName = 'Columna11'
      ReadOnly = True
      Precision = 16
      Size = 2
    end
    object rsTransSumRptColumna12: TBCDField
      FieldName = 'Columna12'
      ReadOnly = True
      Precision = 16
      Size = 2
    end
    object rsTransSumRptColumna13: TBCDField
      FieldName = 'Columna13'
      ReadOnly = True
      Precision = 16
      Size = 2
    end
    object rsTransSumRptColumna14: TBCDField
      FieldName = 'Columna14'
      ReadOnly = True
      Precision = 16
      Size = 2
    end
    object rsTransSumRptColumna15: TBCDField
      FieldName = 'Columna15'
      ReadOnly = True
      Precision = 16
      Size = 2
    end
    object rsTransSumRptColumna16: TBCDField
      FieldName = 'Columna16'
      ReadOnly = True
      Precision = 16
      Size = 2
    end
    object rsTransSumRptColumna17: TBCDField
      FieldName = 'Columna17'
      ReadOnly = True
      Precision = 16
      Size = 2
    end
    object rsTransSumRptColumna18: TBCDField
      FieldName = 'Columna18'
      ReadOnly = True
      Precision = 16
      Size = 2
    end
  end
  object rptTransSum: TppReport
    AutoStop = False
    DataPipeline = plTransSumRpt
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    Template.DatabaseSettings.DataPipeline = plReporte
    Template.DatabaseSettings.Name = 'Reportes Configurables'
    Template.DatabaseSettings.NameField = 'Reporte'
    Template.DatabaseSettings.TemplateField = 'FormatoReporte'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
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
    PreviewFormSettings.ZoomSetting = zsPageWidth
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
    Left = 42
    Top = 330
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plTransSumRpt'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 52388
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = clSilver
        mmHeight = 17992
        mmLeft = 0
        mmTop = 34131
        mmWidth = 266701
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
        mmHeight = 6879
        mmLeft = 1323
        mmTop = 1058
        mmWidth = 125148
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 244740
        mmTop = 3440
        mmWidth = 20373
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 247121
        mmTop = 9260
        mmWidth = 17992
        BandType = 0
      end
      object lReporteNombre: TppLabel
        OnPrint = lReporteNombrePrint
        UserName = 'lReporteNombre'
        HyperlinkEnabled = False
        Caption = 'lReporteNombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5080
        mmLeft = 115756
        mmTop = 19579
        mmWidth = 34925
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 1058
        mmTop = 41275
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        Caption = 'Nombre'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 13494
        mmTop = 41275
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        Caption = 'C'#233'dula'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 52388
        mmTop = 41275
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel4: TppLabel
        OnPrint = ppLabel4Print
        UserName = 'Label4'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Esto es un caption de prueba'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 15346
        mmLeft = 70379
        mmTop = 35454
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel5: TppLabel
        OnPrint = ppLabel5Print
        UserName = 'Label5'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Columna1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 15346
        mmLeft = 83079
        mmTop = 35454
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel6: TppLabel
        OnPrint = ppLabel6Print
        UserName = 'Label6'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Columna1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 15346
        mmLeft = 96044
        mmTop = 35454
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel7: TppLabel
        OnPrint = ppLabel7Print
        UserName = 'Label7'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Columna1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 15346
        mmLeft = 108744
        mmTop = 35454
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel8: TppLabel
        OnPrint = ppLabel8Print
        UserName = 'Label8'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Columna1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 15346
        mmLeft = 121179
        mmTop = 35454
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel9: TppLabel
        OnPrint = ppLabel9Print
        UserName = 'Label9'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Columna1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 15346
        mmLeft = 133879
        mmTop = 35454
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel10: TppLabel
        OnPrint = ppLabel10Print
        UserName = 'Label10'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Columna1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 15346
        mmLeft = 146315
        mmTop = 35454
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel11: TppLabel
        OnPrint = ppLabel11Print
        UserName = 'Label101'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Columna1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 15346
        mmLeft = 159015
        mmTop = 35454
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel12: TppLabel
        OnPrint = ppLabel12Print
        UserName = 'Label12'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Columna1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 15346
        mmLeft = 171715
        mmTop = 35454
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel13: TppLabel
        OnPrint = ppLabel13Print
        UserName = 'Label13'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Columna1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 15346
        mmLeft = 184150
        mmTop = 35454
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel14: TppLabel
        OnPrint = ppLabel14Print
        UserName = 'Label14'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Columna1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 15346
        mmLeft = 196586
        mmTop = 35454
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel15: TppLabel
        OnPrint = ppLabel15Print
        UserName = 'Label15'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Columna1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 15346
        mmLeft = 209021
        mmTop = 35454
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel16: TppLabel
        OnPrint = ppLabel16Print
        UserName = 'Label16'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Columna1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 15346
        mmLeft = 221457
        mmTop = 35454
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel17: TppLabel
        OnPrint = ppLabel17Print
        UserName = 'Label17'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Columna1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 15346
        mmLeft = 233892
        mmTop = 35454
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel18: TppLabel
        OnPrint = ppLabel18Print
        UserName = 'Label18'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Columna1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 15346
        mmLeft = 246328
        mmTop = 35454
        mmWidth = 19315
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 12700
        mmTop = 34131
        mmWidth = 529
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 50800
        mmTop = 34131
        mmWidth = 529
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 69586
        mmTop = 34131
        mmWidth = 529
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 82550
        mmTop = 34131
        mmWidth = 529
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 95515
        mmTop = 34131
        mmWidth = 529
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 108215
        mmTop = 34131
        mmWidth = 529
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 120650
        mmTop = 34131
        mmWidth = 529
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 133350
        mmTop = 34131
        mmWidth = 529
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 145786
        mmTop = 34131
        mmWidth = 529
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 158486
        mmTop = 34131
        mmWidth = 529
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line101'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 171186
        mmTop = 34131
        mmWidth = 529
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 183621
        mmTop = 34131
        mmWidth = 529
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 196057
        mmTop = 34131
        mmWidth = 529
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 208492
        mmTop = 34131
        mmWidth = 529
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 220928
        mmTop = 34131
        mmWidth = 529
        BandType = 0
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 233363
        mmTop = 34131
        mmWidth = 529
        BandType = 0
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 17727
        mmLeft = 245798
        mmTop = 34131
        mmWidth = 529
        BandType = 0
      end
      object lDesdeHasta: TppLabel
        OnPrint = lDesdeHastaPrint
        UserName = 'Label19'
        HyperlinkEnabled = False
        Caption = 'Label19'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 124619
        mmTop = 26458
        mmWidth = 17198
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 2910
      mmPrintPosition = 0
      object ppShape2: TppShape
        OnPrint = ppShape2Print
        UserName = 'Shape2'
        Anchors = [atLeft, atBottom]
        Brush.Color = clInfoBk
        Pen.Style = psClear
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'EmpleadoID'
        DataPipeline = plTransSumRpt
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2963
        mmLeft = 1323
        mmTop = 0
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Empleado'
        DataPipeline = plTransSumRpt
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2963
        mmLeft = 13494
        mmTop = 0
        mmWidth = 36513
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Cedula'
        DataPipeline = plTransSumRpt
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2963
        mmLeft = 51594
        mmTop = 0
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna1'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2963
        mmLeft = 70115
        mmTop = 0
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna2'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2963
        mmLeft = 83344
        mmTop = 0
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna3'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2963
        mmLeft = 96309
        mmTop = 0
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna4'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2963
        mmLeft = 109009
        mmTop = 0
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna5'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2963
        mmLeft = 121709
        mmTop = 0
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna6'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2963
        mmLeft = 134144
        mmTop = 0
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText101'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna7'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2963
        mmLeft = 146844
        mmTop = 0
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna8'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2963
        mmLeft = 159544
        mmTop = 0
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna9'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2963
        mmLeft = 171980
        mmTop = 0
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna10'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2963
        mmLeft = 184415
        mmTop = 0
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna11'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2963
        mmLeft = 196586
        mmTop = 0
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna12'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2963
        mmLeft = 209286
        mmTop = 0
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna13'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2963
        mmLeft = 221721
        mmTop = 0
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna14'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2963
        mmLeft = 234157
        mmTop = 0
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna15'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2963
        mmLeft = 248180
        mmTop = 0
        mmWidth = 11642
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
      mmHeight = 13229
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Color = clSilver
        Pen.Style = psClear
        mmHeight = 4763
        mmLeft = 265
        mmTop = 0
        mmWidth = 266436
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna1'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2381
        mmLeft = 69850
        mmTop = 1058
        mmWidth = 12435
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna2'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2381
        mmLeft = 82815
        mmTop = 1058
        mmWidth = 12435
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna3'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2381
        mmLeft = 95515
        mmTop = 1058
        mmWidth = 12435
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna4'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2381
        mmLeft = 108215
        mmTop = 1058
        mmWidth = 12435
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna5'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2381
        mmLeft = 120915
        mmTop = 1058
        mmWidth = 12435
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna6'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2381
        mmLeft = 133615
        mmTop = 1058
        mmWidth = 12435
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna7'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2381
        mmLeft = 146315
        mmTop = 1058
        mmWidth = 11906
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna8'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2381
        mmLeft = 158750
        mmTop = 1058
        mmWidth = 12435
        BandType = 7
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna9'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2381
        mmLeft = 171450
        mmTop = 1058
        mmWidth = 12435
        BandType = 7
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc10'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna10'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2381
        mmLeft = 184150
        mmTop = 1058
        mmWidth = 12171
        BandType = 7
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc101'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna11'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2381
        mmLeft = 196586
        mmTop = 1058
        mmWidth = 12171
        BandType = 7
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc12'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna12'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2381
        mmLeft = 209021
        mmTop = 1058
        mmWidth = 11906
        BandType = 7
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc13'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna13'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2381
        mmLeft = 221457
        mmTop = 1058
        mmWidth = 12171
        BandType = 7
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc14'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna14'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2381
        mmLeft = 233892
        mmTop = 1058
        mmWidth = 12171
        BandType = 7
      end
      object ppDBCalc15: TppDBCalc
        UserName = 'DBCalc15'
        HyperlinkEnabled = False
        BlankWhenZero = True
        DataField = 'Columna15'
        DataPipeline = plTransSumRpt
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plTransSumRpt'
        mmHeight = 2381
        mmLeft = 247386
        mmTop = 1058
        mmWidth = 12171
        BandType = 7
      end
      object ppLabel19: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        Caption = 'Totales'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2381
        mmLeft = 56356
        mmTop = 1058
        mmWidth = 7408
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object plTransSumRpt: TppDBPipeline
    DataSource = ds
    UserName = 'plTransSumRpt'
    Left = 124
    Top = 334
    object plTransSumRptppField1: TppField
      FieldAlias = 'departamento'
      FieldName = 'departamento'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plTransSumRptppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Orden'
      FieldName = 'Orden'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object plTransSumRptppField3: TppField
      FieldAlias = 'Seccion'
      FieldName = 'Seccion'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object plTransSumRptppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'Orden_1'
      FieldName = 'Orden_1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object plTransSumRptppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'EmpleadoID'
      FieldName = 'EmpleadoID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object plTransSumRptppField6: TppField
      FieldAlias = 'Cedula'
      FieldName = 'Cedula'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object plTransSumRptppField7: TppField
      FieldAlias = 'Empleado'
      FieldName = 'Empleado'
      FieldLength = 62
      DisplayWidth = 62
      Position = 6
    end
    object plTransSumRptppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'Columna1'
      FieldName = 'Columna1'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 17
      Position = 7
    end
    object plTransSumRptppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Columna2'
      FieldName = 'Columna2'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 17
      Position = 8
    end
    object plTransSumRptppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Columna3'
      FieldName = 'Columna3'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 17
      Position = 9
    end
    object plTransSumRptppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Columna4'
      FieldName = 'Columna4'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 17
      Position = 10
    end
    object plTransSumRptppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Columna5'
      FieldName = 'Columna5'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 17
      Position = 11
    end
    object plTransSumRptppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'Columna6'
      FieldName = 'Columna6'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 17
      Position = 12
    end
    object plTransSumRptppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'Columna7'
      FieldName = 'Columna7'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 17
      Position = 13
    end
    object plTransSumRptppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'Columna8'
      FieldName = 'Columna8'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 17
      Position = 14
    end
    object plTransSumRptppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'Columna9'
      FieldName = 'Columna9'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 17
      Position = 15
    end
    object plTransSumRptppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'Columna10'
      FieldName = 'Columna10'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 17
      Position = 16
    end
    object plTransSumRptppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'Columna11'
      FieldName = 'Columna11'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 17
      Position = 17
    end
    object plTransSumRptppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'Columna12'
      FieldName = 'Columna12'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 17
      Position = 18
    end
    object plTransSumRptppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'Columna13'
      FieldName = 'Columna13'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 17
      Position = 19
    end
    object plTransSumRptppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Columna14'
      FieldName = 'Columna14'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 17
      Position = 20
    end
    object plTransSumRptppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Columna15'
      FieldName = 'Columna15'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 17
      Position = 21
    end
    object plTransSumRptppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Columna16'
      FieldName = 'Columna16'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 17
      Position = 22
    end
    object plTransSumRptppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Columna17'
      FieldName = 'Columna17'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 17
      Position = 23
    end
    object plTransSumRptppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'Columna18'
      FieldName = 'Columna18'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 17
      Position = 24
    end
  end
  object plReporte: TppDBPipeline
    DataSource = dsReporte
    UserName = 'plReporte'
    Left = 588
    Top = 318
    object plReporteppField1: TppField
      FieldAlias = 'IdReporte'
      FieldName = 'IdReporte'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plReporteppField2: TppField
      FieldAlias = 'Reporte'
      FieldName = 'Reporte'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object plReporteppField3: TppField
      FieldAlias = 'NomColum01'
      FieldName = 'NomColum01'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object plReporteppField4: TppField
      FieldAlias = 'NomColum02'
      FieldName = 'NomColum02'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object plReporteppField5: TppField
      FieldAlias = 'NomColum03'
      FieldName = 'NomColum03'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object plReporteppField6: TppField
      FieldAlias = 'NomColum04'
      FieldName = 'NomColum04'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object plReporteppField7: TppField
      FieldAlias = 'NomColum05'
      FieldName = 'NomColum05'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
    object plReporteppField8: TppField
      FieldAlias = 'NomColum06'
      FieldName = 'NomColum06'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object plReporteppField9: TppField
      FieldAlias = 'NomColum07'
      FieldName = 'NomColum07'
      FieldLength = 50
      DisplayWidth = 50
      Position = 8
    end
    object plReporteppField10: TppField
      FieldAlias = 'NomColum08'
      FieldName = 'NomColum08'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object plReporteppField11: TppField
      FieldAlias = 'NomColum09'
      FieldName = 'NomColum09'
      FieldLength = 50
      DisplayWidth = 50
      Position = 10
    end
    object plReporteppField12: TppField
      FieldAlias = 'NomColum10'
      FieldName = 'NomColum10'
      FieldLength = 50
      DisplayWidth = 50
      Position = 11
    end
    object plReporteppField13: TppField
      FieldAlias = 'NomColum11'
      FieldName = 'NomColum11'
      FieldLength = 50
      DisplayWidth = 50
      Position = 12
    end
    object plReporteppField14: TppField
      FieldAlias = 'NomColum12'
      FieldName = 'NomColum12'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
    end
    object plReporteppField15: TppField
      FieldAlias = 'NomColum13'
      FieldName = 'NomColum13'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object plReporteppField16: TppField
      FieldAlias = 'NomColum14'
      FieldName = 'NomColum14'
      FieldLength = 50
      DisplayWidth = 50
      Position = 15
    end
    object plReporteppField17: TppField
      FieldAlias = 'NomColum15'
      FieldName = 'NomColum15'
      FieldLength = 50
      DisplayWidth = 50
      Position = 16
    end
    object plReporteppField18: TppField
      FieldAlias = 'NomColum16'
      FieldName = 'NomColum16'
      FieldLength = 50
      DisplayWidth = 50
      Position = 17
    end
    object plReporteppField19: TppField
      FieldAlias = 'NomColum17'
      FieldName = 'NomColum17'
      FieldLength = 50
      DisplayWidth = 50
      Position = 18
    end
    object plReporteppField20: TppField
      FieldAlias = 'NomColum18'
      FieldName = 'NomColum18'
      FieldLength = 50
      DisplayWidth = 50
      Position = 19
    end
    object plReporteppField21: TppField
      FieldAlias = 'TransColum01'
      FieldName = 'TransColum01'
      FieldLength = 50
      DisplayWidth = 50
      Position = 20
    end
    object plReporteppField22: TppField
      FieldAlias = 'TransColum02'
      FieldName = 'TransColum02'
      FieldLength = 50
      DisplayWidth = 50
      Position = 21
    end
    object plReporteppField23: TppField
      FieldAlias = 'TransColum03'
      FieldName = 'TransColum03'
      FieldLength = 50
      DisplayWidth = 50
      Position = 22
    end
    object plReporteppField24: TppField
      FieldAlias = 'TransColum04'
      FieldName = 'TransColum04'
      FieldLength = 50
      DisplayWidth = 50
      Position = 23
    end
    object plReporteppField25: TppField
      FieldAlias = 'TransColum05'
      FieldName = 'TransColum05'
      FieldLength = 50
      DisplayWidth = 50
      Position = 24
    end
    object plReporteppField26: TppField
      FieldAlias = 'TransColum06'
      FieldName = 'TransColum06'
      FieldLength = 50
      DisplayWidth = 50
      Position = 25
    end
    object plReporteppField27: TppField
      FieldAlias = 'TransColum07'
      FieldName = 'TransColum07'
      FieldLength = 50
      DisplayWidth = 50
      Position = 26
    end
    object plReporteppField28: TppField
      FieldAlias = 'TransColum08'
      FieldName = 'TransColum08'
      FieldLength = 50
      DisplayWidth = 50
      Position = 27
    end
    object plReporteppField29: TppField
      FieldAlias = 'TransColum09'
      FieldName = 'TransColum09'
      FieldLength = 50
      DisplayWidth = 50
      Position = 28
    end
    object plReporteppField30: TppField
      FieldAlias = 'TransColum10'
      FieldName = 'TransColum10'
      FieldLength = 50
      DisplayWidth = 50
      Position = 29
    end
    object plReporteppField31: TppField
      FieldAlias = 'TransColum11'
      FieldName = 'TransColum11'
      FieldLength = 50
      DisplayWidth = 50
      Position = 30
    end
    object plReporteppField32: TppField
      FieldAlias = 'TransColum12'
      FieldName = 'TransColum12'
      FieldLength = 50
      DisplayWidth = 50
      Position = 31
    end
    object plReporteppField33: TppField
      FieldAlias = 'TransColum13'
      FieldName = 'TransColum13'
      FieldLength = 50
      DisplayWidth = 50
      Position = 32
    end
    object plReporteppField34: TppField
      FieldAlias = 'TransColum14'
      FieldName = 'TransColum14'
      FieldLength = 50
      DisplayWidth = 50
      Position = 33
    end
    object plReporteppField35: TppField
      FieldAlias = 'TransColum15'
      FieldName = 'TransColum15'
      FieldLength = 50
      DisplayWidth = 50
      Position = 34
    end
    object plReporteppField36: TppField
      FieldAlias = 'TransColum16'
      FieldName = 'TransColum16'
      FieldLength = 50
      DisplayWidth = 50
      Position = 35
    end
    object plReporteppField37: TppField
      FieldAlias = 'TransColum17'
      FieldName = 'TransColum17'
      FieldLength = 50
      DisplayWidth = 50
      Position = 36
    end
    object plReporteppField38: TppField
      FieldAlias = 'TransColum18'
      FieldName = 'TransColum18'
      FieldLength = 50
      DisplayWidth = 50
      Position = 37
    end
    object plReporteppField39: TppField
      FieldAlias = 'FormatoReporte'
      FieldName = 'FormatoReporte'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 38
      Searchable = False
      Sortable = False
    end
  end
  object dReporteConfigurable: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctANSI
    DataSettings.DatabaseType = dtMSSQLServer
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = rptTransSum
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 660
    Top = 350
  end
  object PopupMenu1: TPopupMenu
    Left = 426
    Top = 186
    object DisearReporte1: TMenuItem
      Caption = 'Dise'#241'ar Reporte'
      OnClick = DisearReporte1Click
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 684
    Top = 204
  end
end

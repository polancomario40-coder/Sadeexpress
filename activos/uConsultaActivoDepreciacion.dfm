inherited ConsultaActivoDepreciacion: TConsultaActivoDepreciacion
  Left = 327
  Top = 148
  Caption = 'Consulta de Activos (Depreciaci'#243'n)'
  ClientHeight = 566
  ClientWidth = 792
  Color = 14870499
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Tahoma'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Gradient1: TGradient
    Left = 0
    Top = 29
    Width = 792
    Height = 4
    Align = alTop
    ColorBegin = 4227327
    ColorEnd = 16767681
    Style = gsReflectedV
  end
  object Gradient2: TGradient
    Left = 0
    Top = 0
    Width = 792
    Height = 29
    Align = alTop
    ColorEnd = 14898176
    Style = gsLinearH
  end
  object Gradient4: TGradient
    Left = 6
    Top = 71
    Width = 781
    Height = 6
    Align = alCustom
    ColorBegin = 16750939
    ColorEnd = 14870499
    Style = gsReflectedH
  end
  object Label1: TLabel
    Left = 272
    Top = 48
    Width = 45
    Height = 13
    Caption = 'Fecha Al:'
  end
  object Gradient3: TGradient
    Left = 4
    Top = 522
    Width = 788
    Height = 6
    Align = alCustom
    ColorBegin = 16750939
    ColorEnd = 14870499
    Style = gsReflectedH
  end
  object Label2: TLabel
    Left = 16
    Top = 46
    Width = 66
    Height = 13
    Caption = 'Fecha Desde:'
  end
  object bSalir: TcxButton
    Left = 664
    Top = 530
    Width = 125
    Height = 30
    Caption = '&Salir'
    TabOrder = 0
    OnClick = bSalirClick
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF0098A2
      91009298A900737A9700777E9900777D9800777D9A00777E9B00777E9B00767D
      9A00767D9B00757C9A00747C9B0072799900A9ABB300817F7C00ADB7A20099A3
      D0001B37C5000428B7000F32BB001132BA000E31BC00082DBC00032BBE00012B
      C100012CC3000028C2000024C4000018B9004051C000A9ABB200BAB6A3003B55
      C0000831DC00274CDD003053DE002B4FDE00244ADE00365BE1003960E4002351
      E300093FE3000D43E500063DE5000034DE000018B900727A9900BAB5A200425D
      C8001942E6003558E2003557E3004D6CE700BAC7F600D4DCFA00D6DEFB00CCD8
      FA008CA7F4001049E9000642EA00043CE5000023C400757D9C00B9B4A2004761
      C800244BE700385AE200617CE800EBEFFC00B2C1F5005274E9002654E4005D83
      EE00CEDAF900BCCDF9000B46E900063EE5000028C500757D9C00B8B3A1004B65
      C9002D53E9004866E500D6DDF900A7B7F2003358E3005273E9008FA7F1001F51
      E6002155E800CCD8F90086A3F400013AE300012CC600767E9B00B7B3A100516A
      CA003356E9007B90EC00DDE2FA004E6CE5004061E4006783EB00CBD5F8002E5A
      E6001449E600527AED00CFDAFA001D4DE400042DC500777E9B00B6B2A100566E
      CB003A5BEA0097A8F000C0C9F6003E5DE3004664E500627EE900C1CCF7002A55
      E4002351E5001D4CE500D1DCFA00345DE500082FC300787F9C00B5B1A1005B72
      CC004565EC0090A2EE00CFD6F8004966E4004362E300627DE900C3CEF6002A52
      E2001F49E200365DE500D2DBFA003359E2000E33C20079809C00B4B1A1005F74
      CD005573EE007087EA00EAEDFC007D90EC003554E100607AE700BCC7F500274D
      E000113CDE009FB0F200B7C4F6001F48DE00173BC20079809C00B4B0A1006277
      CD00637FF0006580E9009AABF100F2F4FD00798DEB003B5AE2002246DF003153
      E2008EA1EE00E1E6FB003F61E500274DDF001B3DC20079809C00B3AFA100667A
      CD00728CF2007F96ED006680E9009AAAF000EAEDFC00C9D2F700B6C2F400CFD7
      F800D5DCF8005572E700294EE0003254DF00183AC100787F9B00B1AEA0006A7E
      CE008BA0F6009AABF1007E95EC006681E900748AEA0097A9EF00A2B1F200899C
      EE005470E6004363E4004464E5003557E0000E31BE00747B9900ADB49F008A98
      D8007A93FA00879EF5006E88F100637FF0005875EE004F6EED004A6AEC004968
      EC004768EC004264EB003659EA001D44E1001F40C9009297A900A669A500ADBC
      AF008A98D800667ACD006277CD006074CC005D73CC005E73CC005C71CC00586F
      CC00546CCB00546CCB004F67CA00435DC30099A2D00098A29100E860E800A669
      A500ACB49E00B3AFA100B3B0A100B4B0A100B5B1A100B5B1A100B5B1A100B6B1
      A100B6B2A100B6B2A100B7B3A100B9B4A200ACB6A200B13DB100}
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid
    Left = 6
    Top = 80
    Width = 781
    Height = 439
    Align = alCustom
    TabOrder = 1
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsConsultaActivo
      DataController.KeyFieldNames = 'idActivo'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1ValorLibros
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Monto
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Acumulada
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1DepMes
        end
        item
          Format = 'Valor en Libro #,0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1ValorLibros
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1ValorLibros
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Monto
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Acumulada
        end
        item
          Format = '#,0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1DepMes
        end>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1idActivo: TcxGridDBColumn
        DataBinding.FieldName = 'idActivo'
        Options.Filtering = False
      end
      object cxGrid1DBTableView1Descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'Descripcion'
        Width = 234
      end
      object cxGrid1DBTableView1Categoria: TcxGridDBColumn
        DataBinding.FieldName = 'Categoria'
        Width = 141
      end
      object cxGrid1DBTableView1Acumulada: TcxGridDBColumn
        DataBinding.FieldName = 'Acumulada'
        Options.Filtering = False
        Width = 104
      end
      object cxGrid1DBTableView1ValorLibros: TcxGridDBColumn
        DataBinding.FieldName = 'ValorLibros'
        Width = 95
      end
      object cxGrid1DBTableView1DepMes: TcxGridDBColumn
        DataBinding.FieldName = 'DepMes'
        Width = 108
      end
      object cxGrid1DBTableView1Ubicacion: TcxGridDBColumn
        DataBinding.FieldName = 'Ubicacion'
        Width = 193
      end
      object cxGrid1DBTableView1Porcentaje: TcxGridDBColumn
        DataBinding.FieldName = 'Porcentaje'
        Width = 75
      end
      object cxGrid1DBTableView1Monto: TcxGridDBColumn
        DataBinding.FieldName = 'Monto'
        Width = 91
      end
      object cxGrid1DBTableView1FechaAdq: TcxGridDBColumn
        DataBinding.FieldName = 'FechaAdq'
      end
      object cxGrid1DBTableView1DocumentoAdq: TcxGridDBColumn
        DataBinding.FieldName = 'DocumentoAdq'
      end
      object cxGrid1DBTableView1FechaActivacion: TcxGridDBColumn
        DataBinding.FieldName = 'FechaActivacion'
      end
      object cxGrid1DBTableView1VidaUtil: TcxGridDBColumn
        DataBinding.FieldName = 'VidaUtil'
        Width = 71
      end
      object cxGrid1DBTableView1Status: TcxGridDBColumn
        DataBinding.FieldName = 'Status'
        Width = 54
      end
      object cxGrid1DBTableView1FechaStatus: TcxGridDBColumn
        DataBinding.FieldName = 'FechaStatus'
        Width = 96
      end
      object cxGrid1DBTableView1Referencia: TcxGridDBColumn
        DataBinding.FieldName = 'Referencia'
      end
      object cxGrid1DBTableView1NumeroSerie: TcxGridDBColumn
        DataBinding.FieldName = 'NumeroSerie'
      end
      object cxGrid1DBTableView1AsignadoA: TcxGridDBColumn
        DataBinding.FieldName = 'AsignadoA'
        Width = 204
      end
      object cxGrid1DBTableView1ValorResidual: TcxGridDBColumn
        DataBinding.FieldName = 'ValorResidual'
        Width = 99
      end
      object cxGrid1DBTableView1Clase: TcxGridDBColumn
        DataBinding.FieldName = 'Clase'
        Width = 239
      end
      object cxGrid1DBTableView1TiempoGarantia: TcxGridDBColumn
        DataBinding.FieldName = 'TiempoGarantia'
      end
      object cxGrid1DBTableView1Proveedor: TcxGridDBColumn
        DataBinding.FieldName = 'Proveedor'
        Width = 190
      end
      object cxGrid1DBTableView1ProveedorGarantia: TcxGridDBColumn
        DataBinding.FieldName = 'ProveedorGarantia'
        Width = 230
      end
      object cxGrid1DBTableView1CondicionGarantia: TcxGridDBColumn
        DataBinding.FieldName = 'CondicionGarantia'
        Options.Filtering = False
        Width = 240
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton1: TcxButton
    Left = 700
    Top = 37
    Width = 87
    Height = 30
    Caption = '&Buscar'
    TabOrder = 2
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton2: TcxButton
    Left = 534
    Top = 530
    Width = 125
    Height = 30
    Caption = 'Reporte'
    TabOrder = 3
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object dtpDesde: TcxDateEdit
    Left = 87
    Top = 40
    Width = 121
    Height = 21
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object cxButton3: TcxButton
    Left = 4
    Top = 530
    Width = 125
    Height = 30
    Caption = 'Exportar a Excel'
    TabOrder = 5
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object dtphasta: TcxDateEdit
    Left = 325
    Top = 42
    Width = 121
    Height = 21
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 6
  end
  object spConsultaActivo: TADOStoredProc
    Connection = dm.Coneccion
    CommandTimeout = 150
    ProcedureName = 'afListaDepreciacionRpt;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
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
      end>
    Left = 84
    Top = 160
    object spConsultaActivoUbicacion: TStringField
      FieldName = 'Ubicacion'
      Size = 200
    end
    object spConsultaActivoidActivo: TIntegerField
      FieldName = 'idActivo'
    end
    object spConsultaActivoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object spConsultaActivoCategoria: TStringField
      FieldName = 'Categoria'
      Size = 100
    end
    object spConsultaActivoPorcentaje: TFloatField
      FieldName = 'Porcentaje'
      DisplayFormat = '#,0.00%'
    end
    object spConsultaActivoMonto: TBCDField
      FieldName = 'Monto'
      DisplayFormat = '#,0.00'
      Precision = 19
      Size = 2
    end
    object spConsultaActivoAcumulada: TBCDField
      FieldName = 'Acumulada'
      DisplayFormat = '#,0.00'
      Precision = 19
      Size = 2
    end
    object spConsultaActivoDepMes: TBCDField
      FieldName = 'DepMes'
      DisplayFormat = '#,0.00'
      Precision = 19
      Size = 2
    end
    object spConsultaActivoFechaAdq: TDateTimeField
      FieldName = 'FechaAdq'
    end
    object spConsultaActivoDocumentoAdq: TStringField
      FieldName = 'DocumentoAdq'
      Size = 16
    end
    object spConsultaActivoFechaActivacion: TDateTimeField
      FieldName = 'FechaActivacion'
    end
    object spConsultaActivoVidaUtil: TBCDField
      FieldName = 'VidaUtil'
      Precision = 18
      Size = 2
    end
    object spConsultaActivoStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object spConsultaActivoFechaStatus: TDateTimeField
      FieldName = 'FechaStatus'
    end
    object spConsultaActivoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object spConsultaActivoNumeroSerie: TStringField
      FieldName = 'NumeroSerie'
    end
    object spConsultaActivoAsignadoA: TStringField
      FieldName = 'AsignadoA'
      Size = 100
    end
    object spConsultaActivoValorResidual: TBCDField
      FieldName = 'ValorResidual'
      Precision = 18
      Size = 2
    end
    object spConsultaActivoClase: TStringField
      FieldName = 'Clase'
      Size = 200
    end
    object spConsultaActivoTiempoGarantia: TBCDField
      FieldName = 'TiempoGarantia'
      Precision = 18
      Size = 2
    end
    object spConsultaActivoProveedor: TStringField
      FieldName = 'Proveedor'
      Size = 200
    end
    object spConsultaActivoProveedorGarantia: TStringField
      FieldName = 'ProveedorGarantia'
      Size = 200
    end
    object spConsultaActivoCondicionGarantia: TStringField
      FieldName = 'CondicionGarantia'
      Size = 200
    end
    object spConsultaActivoValorLibros: TBCDField
      FieldName = 'ValorLibros'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 21
      Size = 2
    end
  end
  object dsConsultaActivo: TDataSource
    DataSet = spConsultaActivo
    Left = 84
    Top = 210
  end
  object plReporte: TppDBPipeline
    DataSource = dsConsultaActivo
    UserName = 'plReporte'
    Left = 186
    Top = 268
    object plReporteppField1: TppField
      FieldAlias = 'Ubicacion'
      FieldName = 'Ubicacion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plReporteppField2: TppField
      FieldAlias = 'idActivo'
      FieldName = 'idActivo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plReporteppField3: TppField
      FieldAlias = 'Descripcion'
      FieldName = 'Descripcion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object plReporteppField4: TppField
      FieldAlias = 'Categoria'
      FieldName = 'Categoria'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object plReporteppField5: TppField
      FieldAlias = 'Porcentaje'
      FieldName = 'Porcentaje'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object plReporteppField6: TppField
      FieldAlias = 'Monto'
      FieldName = 'Monto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object plReporteppField7: TppField
      FieldAlias = 'Acumulada'
      FieldName = 'Acumulada'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object plReporteppField8: TppField
      FieldAlias = 'DepMes'
      FieldName = 'DepMes'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object plReporteppField9: TppField
      FieldAlias = 'FechaAdq'
      FieldName = 'FechaAdq'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object plReporteppField10: TppField
      FieldAlias = 'DocumentoAdq'
      FieldName = 'DocumentoAdq'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object plReporteppField11: TppField
      FieldAlias = 'FechaActivacion'
      FieldName = 'FechaActivacion'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object plReporteppField12: TppField
      FieldAlias = 'VidaUtil'
      FieldName = 'VidaUtil'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object plReporteppField13: TppField
      FieldAlias = 'Status'
      FieldName = 'Status'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object plReporteppField14: TppField
      FieldAlias = 'FechaStatus'
      FieldName = 'FechaStatus'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object plReporteppField15: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object plReporteppField16: TppField
      FieldAlias = 'NumeroSerie'
      FieldName = 'NumeroSerie'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object plReporteppField17: TppField
      FieldAlias = 'AsignadoA'
      FieldName = 'AsignadoA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object plReporteppField18: TppField
      FieldAlias = 'ValorResidual'
      FieldName = 'ValorResidual'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object plReporteppField19: TppField
      FieldAlias = 'Clase'
      FieldName = 'Clase'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object plReporteppField20: TppField
      FieldAlias = 'TiempoGarantia'
      FieldName = 'TiempoGarantia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object plReporteppField21: TppField
      FieldAlias = 'Proveedor'
      FieldName = 'Proveedor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object plReporteppField22: TppField
      FieldAlias = 'ProveedorGarantia'
      FieldName = 'ProveedorGarantia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object plReporteppField23: TppField
      FieldAlias = 'CondicionGarantia'
      FieldName = 'CondicionGarantia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object plReporteppField24: TppField
      FieldAlias = 'ValorLibros'
      FieldName = 'ValorLibros'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
  end
  object rListaDepr: TppReport
    AutoStop = False
    DataPipeline = plReporte
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 11430
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 8890
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
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
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 324
    Top = 212
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plReporte'
    object ppHeaderBand4: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 36248
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = clSilver
        Pen.Color = 9079434
        mmHeight = 5556
        mmLeft = 0
        mmTop = 30163
        mmWidth = 266171
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable8'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3408
        mmLeft = 246517
        mmTop = 4498
        mmWidth = 19389
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable7'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        DisplayFormat = 'dd/mm/yyyy @ hh:nn AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3408
        mmLeft = 227807
        mmTop = 529
        mmWidth = 35497
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 6816
        mmLeft = 1323
        mmTop = 529
        mmWidth = 174625
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Reporte de Activos (Depreciaci'#243'n acumulada)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6879
        mmLeft = 1058
        mmTop = 13229
        mmWidth = 147109
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Depr. mes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 237596
        mmTop = 31221
        mmWidth = 26194
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Val en Libro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 211138
        mmTop = 31221
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Deprec. Ac.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 185738
        mmTop = 31221
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Monto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 151077
        mmTop = 31221
        mmWidth = 33602
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Descripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 24606
        mmTop = 31221
        mmWidth = 123825
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Id Activo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 2910
        mmTop = 31221
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel4: TppLabel
        OnPrint = ppLabel4Print
        UserName = 'Label4'
        HyperlinkEnabled = False
        Caption = 'Al:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 21167
        mmWidth = 71438
        BandType = 0
      end
    end
    object dbDetalle: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppShape2: TppShape
        OnPrint = ppShape2Print
        UserName = 'Shape2'
        Brush.Color = clInfoBk
        Pen.Style = psClear
        mmHeight = 4498
        mmLeft = 265
        mmTop = 0
        mmWidth = 266436
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        HyperlinkEnabled = False
        DataField = 'idActivo'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3387
        mmLeft = 1323
        mmTop = 265
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText46'
        HyperlinkEnabled = False
        DataField = 'Monto'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        SuppressRepeatedValues = True
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3387
        mmLeft = 151077
        mmTop = 265
        mmWidth = 33867
        BandType = 4
      end
      object ppDBText47: TppDBText
        UserName = 'DBText47'
        HyperlinkEnabled = False
        DataField = 'Acumulada'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        SuppressRepeatedValues = True
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3387
        mmLeft = 186002
        mmTop = 265
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'ValorLibros'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        SuppressRepeatedValues = True
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3387
        mmLeft = 211403
        mmTop = 265
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'DepMes'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        SuppressRepeatedValues = True
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3387
        mmLeft = 237861
        mmTop = 265
        mmWidth = 26194
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Descripcion'
        DataPipeline = plReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3440
        mmLeft = 23283
        mmTop = 265
        mmWidth = 125148
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppFooterBand4: TppFooterBand
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
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        HyperlinkEnabled = False
        DataField = 'Monto'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3387
        mmLeft = 150548
        mmTop = 2910
        mmWidth = 34660
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        HyperlinkEnabled = False
        DataField = 'Acumulada'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3387
        mmLeft = 186532
        mmTop = 2910
        mmWidth = 24342
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        HyperlinkEnabled = False
        DataField = 'ValorLibros'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3387
        mmLeft = 211932
        mmTop = 2910
        mmWidth = 24342
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        HyperlinkEnabled = False
        DataField = 'DepMes'
        DataPipeline = plReporte
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReporte'
        mmHeight = 3387
        mmLeft = 237596
        mmTop = 2910
        mmWidth = 26723
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 2117
        mmWidth = 266701
        BandType = 7
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        Caption = 'Total General'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 124090
        mmTop = 2910
        mmWidth = 22225
        BandType = 7
      end
    end
    object ppGroup8: TppGroup
      BreakName = 'Categoria'
      DataPipeline = plReporte
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group8'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReporte'
      NewFile = False
      object ghbCategoria: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppDBText45: TppDBText
          UserName = 'DBText45'
          HyperlinkEnabled = False
          DataField = 'Categoria'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Verdana'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 5101
          mmLeft = 1058
          mmTop = 529
          mmWidth = 115094
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand8: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppShape3: TppShape
          UserName = 'Shape3'
          Brush.Color = 14342874
          Pen.Style = psClear
          mmHeight = 5556
          mmLeft = 529
          mmTop = 0
          mmWidth = 266171
          BandType = 5
          GroupNo = 0
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          HyperlinkEnabled = False
          DataField = 'Categoria'
          DataPipeline = plReporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3387
          mmLeft = 1058
          mmTop = 1058
          mmWidth = 114829
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          DataField = 'Monto'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3387
          mmLeft = 150284
          mmTop = 1058
          mmWidth = 34660
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          DataField = 'Acumulada'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3387
          mmLeft = 186267
          mmTop = 1058
          mmWidth = 24342
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          DataField = 'ValorLibros'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3387
          mmLeft = 211667
          mmTop = 1058
          mmWidth = 24342
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          HyperlinkEnabled = False
          DataField = 'DepMes'
          DataPipeline = plReporte
          DisplayFormat = '#,0.00;(#,0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3387
          mmLeft = 237332
          mmTop = 1058
          mmWidth = 26723
          BandType = 5
          GroupNo = 1
        end
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          HyperlinkEnabled = False
          DataField = 'Porcentaje'
          DataPipeline = plReporte
          DisplayFormat = '0.00 %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plReporte'
          mmHeight = 3387
          mmLeft = 119327
          mmTop = 1058
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 294
    Top = 508
  end
end

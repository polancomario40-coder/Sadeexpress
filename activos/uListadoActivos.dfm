inherited ListadoActivos: TListadoActivos
  Left = 342
  Top = 59
  Caption = 'Listado de Activos'
  ClientHeight = 480
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
  object Gradient3: TGradient
    Left = 3
    Top = 441
    Width = 787
    Height = 6
    Align = alCustom
    ColorBegin = 16750939
    ColorEnd = 14870499
    Style = gsReflectedH
  end
  object Label1: TLabel
    Left = 627
    Top = 5
    Width = 164
    Height = 25
    Caption = 'Lista de Activos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 6
    Top = 47
    Width = 66
    Height = 13
    Caption = 'Desde/Hasta:'
  end
  object bSalir: TcxButton
    Left = 665
    Top = 448
    Width = 125
    Height = 30
    Anchors = [akRight, akBottom]
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
  object cxButton2: TcxButton
    Left = 535
    Top = 448
    Width = 125
    Height = 30
    Anchors = [akRight, akBottom]
    Caption = 'Reporte'
    TabOrder = 1
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton
    Left = 2
    Top = 448
    Width = 125
    Height = 30
    Anchors = [akLeft, akBottom]
    Caption = 'Exportar a Excel'
    TabOrder = 2
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object cxGrid1: TcxGrid
    Left = 3
    Top = 72
    Width = 786
    Height = 365
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsActivos
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'IdActivo'
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
          Format = 'Valor en Libro #,0.00'
          Kind = skSum
        end>
      DataController.Summary.FooterSummaryItems = <
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
      object cxGrid1DBTableView1IdActivo: TcxGridDBColumn
        DataBinding.FieldName = 'IdActivo'
      end
      object cxGrid1DBTableView1Descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'Descripcion'
        Width = 269
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
      end
      object cxGrid1DBTableView1CuentaActivo: TcxGridDBColumn
        DataBinding.FieldName = 'CuentaActivo'
      end
      object cxGrid1DBTableView1Referencia: TcxGridDBColumn
        DataBinding.FieldName = 'Referencia'
      end
      object cxGrid1DBTableView1NumeroSerie: TcxGridDBColumn
        DataBinding.FieldName = 'NumeroSerie'
      end
      object cxGrid1DBTableView1Cantidad: TcxGridDBColumn
        DataBinding.FieldName = 'Cantidad'
        Width = 74
      end
      object cxGrid1DBTableView1Observaciones: TcxGridDBColumn
        DataBinding.FieldName = 'Observaciones'
        Width = 270
      end
      object cxGrid1DBTableView1AsignadoA: TcxGridDBColumn
        DataBinding.FieldName = 'AsignadoA'
        Width = 191
      end
      object cxGrid1DBTableView1ValorAdq: TcxGridDBColumn
        DataBinding.FieldName = 'Valor'
      end
      object cxGrid1DBTableView1ValorResidual: TcxGridDBColumn
        DataBinding.FieldName = 'ValorResidual'
      end
      object cxGrid1DBTableView1TiempoGarantia: TcxGridDBColumn
        DataBinding.FieldName = 'TiempoGarantia'
        Width = 127
      end
      object cxGrid1DBTableView1Proveedor: TcxGridDBColumn
        DataBinding.FieldName = 'Proveedor'
        Width = 189
      end
      object cxGrid1DBTableView1ProveedorGarantia: TcxGridDBColumn
        DataBinding.FieldName = 'ProveedorGarantia'
        Width = 190
      end
      object cxGrid1DBTableView1CondicionGarantia: TcxGridDBColumn
        DataBinding.FieldName = 'CondicionGarantia'
        Width = 177
      end
      object cxGrid1DBTableView1Categoria: TcxGridDBColumn
        DataBinding.FieldName = 'Categoria'
        Width = 213
      end
      object cxGrid1DBTableView1Ubicacion: TcxGridDBColumn
        DataBinding.FieldName = 'Ubicacion'
        Width = 170
      end
      object cxGrid1DBTableView1ActivoClase: TcxGridDBColumn
        DataBinding.FieldName = 'ActivoClase'
        Width = 186
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object deDesde: TcxDateEdit
    Left = 75
    Top = 43
    Width = 121
    Height = 21
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object deHasta: TcxDateEdit
    Left = 201
    Top = 43
    Width = 121
    Height = 21
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 5
  end
  object cxButton1: TcxButton
    Left = 332
    Top = 37
    Width = 127
    Height = 33
    Caption = 'Mostrar'
    TabOrder = 6
    OnClick = cxButton1Click
    LookAndFeel.NativeStyle = True
  end
  object SaveDialog1: TSaveDialog
    Left = 298
    Top = 510
  end
  object rsActivos: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'afListaActivosRpt;1'
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
    Left = 198
    Top = 122
    object rsActivosIdActivo: TAutoIncField
      FieldName = 'IdActivo'
      ReadOnly = True
    end
    object rsActivosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object rsActivosFechaAdq: TDateTimeField
      FieldName = 'FechaAdq'
    end
    object rsActivosDocumentoAdq: TStringField
      FieldName = 'DocumentoAdq'
    end
    object rsActivosFechaActivacion: TDateTimeField
      FieldName = 'FechaActivacion'
    end
    object rsActivosVidaUtil: TBCDField
      FieldName = 'VidaUtil'
      Precision = 10
      Size = 2
    end
    object rsActivosCuentaActivo: TStringField
      FieldName = 'CuentaActivo'
      Size = 16
    end
    object rsActivosReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsActivosNumeroSerie: TStringField
      FieldName = 'NumeroSerie'
    end
    object rsActivosCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 18
      Size = 0
    end
    object rsActivosObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 500
    end
    object rsActivosAsignadoA: TStringField
      FieldName = 'AsignadoA'
      Size = 100
    end
    object rsActivosValorAdq: TBCDField
      FieldName = 'ValorAdq'
      Precision = 19
      Size = 2
    end
    object rsActivosValorResidual: TBCDField
      FieldName = 'ValorResidual'
      Precision = 19
      Size = 2
    end
    object rsActivosTiempoGarantia: TIntegerField
      FieldName = 'TiempoGarantia'
    end
    object rsActivosProveedor: TStringField
      FieldName = 'Proveedor'
      Size = 200
    end
    object rsActivosProveedorGarantia: TStringField
      FieldName = 'ProveedorGarantia'
      Size = 200
    end
    object rsActivosCondicionGarantia: TStringField
      FieldName = 'CondicionGarantia'
      Size = 200
    end
    object rsActivosCategoria: TStringField
      FieldName = 'Categoria'
      Size = 50
    end
    object rsActivosUbicacion: TStringField
      FieldName = 'Ubicacion'
      Size = 100
    end
    object rsActivosActivoClase: TStringField
      FieldName = 'ActivoClase'
      Size = 100
    end
    object rsActivosStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object rsActivosValor: TBCDField
      FieldName = 'Valor'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
  end
  object dsActivos: TDataSource
    DataSet = rsActivos
    Left = 386
    Top = 244
  end
  object SaveDialog2: TSaveDialog
    Left = 294
    Top = 432
  end
  object plActivos: TppDBPipeline
    DataSource = dsActivos
    UserName = 'plActivos'
    Left = 108
    Top = 236
    object plActivosppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'IdActivo'
      FieldName = 'IdActivo'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 0
    end
    object plActivosppField2: TppField
      FieldAlias = 'Descripcion'
      FieldName = 'Descripcion'
      FieldLength = 200
      DisplayWidth = 200
      Position = 1
    end
    object plActivosppField3: TppField
      FieldAlias = 'FechaAdq'
      FieldName = 'FechaAdq'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object plActivosppField4: TppField
      FieldAlias = 'DocumentoAdq'
      FieldName = 'DocumentoAdq'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object plActivosppField5: TppField
      FieldAlias = 'FechaActivacion'
      FieldName = 'FechaActivacion'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 4
    end
    object plActivosppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'VidaUtil'
      FieldName = 'VidaUtil'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 11
      Position = 5
    end
    object plActivosppField7: TppField
      FieldAlias = 'CuentaActivo'
      FieldName = 'CuentaActivo'
      FieldLength = 16
      DisplayWidth = 16
      Position = 6
    end
    object plActivosppField8: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object plActivosppField9: TppField
      FieldAlias = 'NumeroSerie'
      FieldName = 'NumeroSerie'
      FieldLength = 20
      DisplayWidth = 20
      Position = 8
    end
    object plActivosppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cantidad'
      FieldName = 'Cantidad'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 19
      Position = 9
    end
    object plActivosppField11: TppField
      FieldAlias = 'Observaciones'
      FieldName = 'Observaciones'
      FieldLength = 500
      DisplayWidth = 500
      Position = 10
    end
    object plActivosppField12: TppField
      FieldAlias = 'AsignadoA'
      FieldName = 'AsignadoA'
      FieldLength = 100
      DisplayWidth = 100
      Position = 11
    end
    object plActivosppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'ValorAdq'
      FieldName = 'ValorAdq'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 12
    end
    object plActivosppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'ValorResidual'
      FieldName = 'ValorResidual'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 13
    end
    object plActivosppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'TiempoGarantia'
      FieldName = 'TiempoGarantia'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object plActivosppField16: TppField
      FieldAlias = 'Proveedor'
      FieldName = 'Proveedor'
      FieldLength = 200
      DisplayWidth = 200
      Position = 15
    end
    object plActivosppField17: TppField
      FieldAlias = 'ProveedorGarantia'
      FieldName = 'ProveedorGarantia'
      FieldLength = 200
      DisplayWidth = 200
      Position = 16
    end
    object plActivosppField18: TppField
      FieldAlias = 'CondicionGarantia'
      FieldName = 'CondicionGarantia'
      FieldLength = 200
      DisplayWidth = 200
      Position = 17
    end
    object plActivosppField19: TppField
      FieldAlias = 'Categoria'
      FieldName = 'Categoria'
      FieldLength = 50
      DisplayWidth = 50
      Position = 18
    end
    object plActivosppField20: TppField
      FieldAlias = 'Ubicacion'
      FieldName = 'Ubicacion'
      FieldLength = 100
      DisplayWidth = 100
      Position = 19
    end
    object plActivosppField21: TppField
      FieldAlias = 'ActivoClase'
      FieldName = 'ActivoClase'
      FieldLength = 100
      DisplayWidth = 100
      Position = 20
    end
    object plActivosppField22: TppField
      FieldAlias = 'Status'
      FieldName = 'Status'
      FieldLength = 1
      DisplayWidth = 1
      Position = 21
    end
    object plActivosppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor'
      FieldName = 'Valor'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 22
    end
  end
  object rptActivos: TppReport
    AutoStop = False
    DataPipeline = plActivos
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
    Left = 108
    Top = 292
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plActivos'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 22225
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Listado de Activos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5101
        mmLeft = 1323
        mmTop = 14288
        mmWidth = 133879
        BandType = 1
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
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
        mmTop = 1323
        mmWidth = 150813
        BandType = 1
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
        mmLeft = 252678
        mmTop = 7144
        mmWidth = 12171
        BandType = 1
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 229659
        mmTop = 2117
        mmWidth = 35190
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object TppShape
        UserName = 'Shape1'
        Brush.Color = clSilver
        Pen.Color = clSilver
        mmHeight = 6350
        mmLeft = 794
        mmTop = 0
        mmWidth = 266701
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'IdActivo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Referencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 17198
        mmTop = 1323
        mmWidth = 41010
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Descripci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 59002
        mmTop = 1323
        mmWidth = 92075
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Ubicaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 152136
        mmTop = 1323
        mmWidth = 45244
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Asignadoa A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 197644
        mmTop = 1323
        mmWidth = 29898
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 235480
        mmTop = 1323
        mmWidth = 29898
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'IdActivo'
        DataPipeline = plActivos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plActivos'
        mmHeight = 3387
        mmLeft = 1323
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = plActivos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plActivos'
        mmHeight = 3387
        mmLeft = 17198
        mmTop = 0
        mmWidth = 40746
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Ubicacion'
        DataPipeline = plActivos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plActivos'
        mmHeight = 3387
        mmLeft = 152136
        mmTop = 0
        mmWidth = 44979
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'AsignadoA'
        DataPipeline = plActivos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plActivos'
        mmHeight = 3387
        mmLeft = 197644
        mmTop = 0
        mmWidth = 33338
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Descripcion'
        DataPipeline = plActivos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'plActivos'
        mmHeight = 3704
        mmLeft = 58473
        mmTop = 0
        mmWidth = 92869
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'ValorAdq'
        DataPipeline = plActivos
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plActivos'
        mmHeight = 3387
        mmLeft = 232040
        mmTop = 0
        mmWidth = 33338
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 265
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 529
        mmTop = 794
        mmWidth = 266436
        BandType = 7
      end
      object TppShape
        UserName = 'Shape2'
        Brush.Color = clSilver
        ParentHeight = True
        Pen.Color = clSilver
        mmHeight = 6350
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        DataField = 'ValorAdq'
        DataPipeline = plActivos
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plActivos'
        mmHeight = 3440
        mmLeft = 229659
        mmTop = 1852
        mmWidth = 35719
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end

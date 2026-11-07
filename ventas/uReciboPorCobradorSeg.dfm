inherited ReciboXCobradorSeg: TReciboXCobradorSeg
  Left = 231
  Top = 169
  Caption = 'Recibo x Cobrador'
  ClientHeight = 479
  ClientWidth = 754
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Gradient1: TGradient
    Left = 0
    Top = 29
    Width = 754
    Height = 4
    Align = alTop
    ColorBegin = 4227327
    ColorEnd = 16767681
    Style = gsReflectedV
  end
  object Gradient2: TGradient
    Left = 0
    Top = 0
    Width = 754
    Height = 29
    Align = alTop
    ColorEnd = 14898176
    Style = gsLinearH
  end
  object Label2: TLabel
    Left = 635
    Top = 0
    Width = 117
    Height = 15
    Anchors = [akTop, akRight]
    Caption = 'Recibos x Cobrador'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 160
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
  object Label3: TLabel
    Left = 671
    Top = 13
    Width = 81
    Height = 15
    Anchors = [akTop, akRight]
    Caption = '(Segmentado)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 16
    Top = 41
    Width = 19
    Height = 13
    Caption = 'Del:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 307
    Top = 41
    Width = 49
    Height = 13
    Caption = 'Cobrador:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dtpDesde: TcxDateEdit
    Left = 39
    Top = 37
    Width = 102
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
    Left = 652
    Top = 35
    Width = 99
    Height = 25
    Anchors = [akTop, akRight]
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
  object dtpHasta: TcxDateEdit
    Left = 178
    Top = 37
    Width = 102
    Height = 21
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object Grid: TcxGrid
    Left = 3
    Top = 62
    Width = 748
    Height = 385
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    LookAndFeel.NativeStyle = True
    object GridDBTableView1: TcxGridDBTableView
      DataController.DataSource = dsRecibos
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'idRecibo'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,0'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '#,0.00'
          Kind = skAverage
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
          Kind = skAverage
          Position = spFooter
        end>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Delete.Enabled = False
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfAlwaysVisible
      object GridDBTableView1Compania: TcxGridDBColumn
        DataBinding.FieldName = 'Compania'
        Visible = False
      end
      object GridDBTableView1idRecibo: TcxGridDBColumn
        DataBinding.FieldName = 'idRecibo'
        Visible = False
      end
      object GridDBTableView1Recibo: TcxGridDBColumn
        DataBinding.FieldName = 'Recibo'
      end
      object GridDBTableView1idCliente: TcxGridDBColumn
        DataBinding.FieldName = 'idCliente'
      end
      object GridDBTableView1Cliente: TcxGridDBColumn
        DataBinding.FieldName = 'Cliente'
        Width = 230
      end
      object GridDBTableView1Categoria: TcxGridDBColumn
        DataBinding.FieldName = 'Categoria'
        Width = 185
      end
      object GridDBTableView1Valor: TcxGridDBColumn
        DataBinding.FieldName = 'Valor'
        Width = 114
      end
      object GridDBTableView1Cobros: TcxGridDBColumn
        DataBinding.FieldName = 'Cobros'
        Width = 108
      end
      object GridDBTableView1OtrosIng: TcxGridDBColumn
        DataBinding.FieldName = 'OtrosIng'
        Width = 97
      end
      object GridDBTableView1esCxc: TcxGridDBColumn
        DataBinding.FieldName = 'esCxc'
        Visible = False
      end
      object GridDBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
      end
      object GridDBTableView1idEmpleado: TcxGridDBColumn
        DataBinding.FieldName = 'idEmpleado'
        Visible = False
      end
      object GridDBTableView1empleado: TcxGridDBColumn
        DataBinding.FieldName = 'empleado'
      end
      object GridDBTableView1Referencia: TcxGridDBColumn
        DataBinding.FieldName = 'Referencia'
      end
      object GridDBTableView1Cancelado: TcxGridDBColumn
        DataBinding.FieldName = 'Cancelado'
      end
      object GridDBTableView1Concepto: TcxGridDBColumn
        DataBinding.FieldName = 'Concepto'
        Visible = False
      end
      object GridDBTableView1Usuario: TcxGridDBColumn
        DataBinding.FieldName = 'Usuario'
        Visible = False
      end
      object GridDBTableView1idPagoForma: TcxGridDBColumn
        Caption = 'Forma de Pago'
        DataBinding.FieldName = 'idPagoForma'
      end
      object GridDBTableView1NumeroChk: TcxGridDBColumn
        DataBinding.FieldName = 'NumeroChk'
        Visible = False
      end
      object GridDBTableView1Banco: TcxGridDBColumn
        DataBinding.FieldName = 'Banco'
        Visible = False
      end
      object GridDBTableView1Moneda: TcxGridDBColumn
        DataBinding.FieldName = 'Moneda'
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridDBTableView1
    end
  end
  object cxButton2: TcxButton
    Left = 642
    Top = 450
    Width = 108
    Height = 26
    Anchors = [akRight, akBottom]
    Caption = 'Cerrar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 4
    WordWrap = True
    OnClick = cxButton2Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton3: TcxButton
    Left = 531
    Top = 450
    Width = 108
    Height = 26
    Anchors = [akRight, akBottom]
    Caption = 'Exportar Excel'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    WordWrap = True
    OnClick = cxButton3Click
    LookAndFeel.NativeStyle = True
  end
  object cxButton6: TcxButton
    Left = 421
    Top = 450
    Width = 108
    Height = 26
    Anchors = [akRight, akBottom]
    Caption = 'Imprimir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    WordWrap = True
    OnClick = cxButton6Click
    LookAndFeel.NativeStyle = True
  end
  object edtCobrador: TcxTextEdit
    Left = 361
    Top = 37
    Width = 89
    Height = 21
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 7
    Text = '-1'
  end
  object spRecibos: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    ProcedureName = 'svReciboRptSeg;1'
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
      end
      item
        Name = '@IdEmpleado'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 280
    Top = 180
    object spRecibosCompania: TStringField
      FieldName = 'Compania'
      Size = 50
    end
    object spRecibosidRecibo: TGuidField
      FieldName = 'idRecibo'
      FixedChar = True
      Size = 38
    end
    object spRecibosRecibo: TStringField
      FieldName = 'Recibo'
      Size = 16
    end
    object spRecibosidCliente: TIntegerField
      FieldName = 'idCliente'
    end
    object spRecibosCliente: TStringField
      FieldName = 'Cliente'
      ReadOnly = True
      Size = 60
    end
    object spRecibosCategoria: TStringField
      FieldName = 'Categoria'
      Size = 50
    end
    object spRecibosesCxc: TBooleanField
      FieldName = 'esCxc'
    end
    object spRecibosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object spRecibosidEmpleado: TIntegerField
      FieldName = 'idEmpleado'
    end
    object spRecibosempleado: TStringField
      FieldName = 'empleado'
      Size = 40
    end
    object spRecibosReferencia: TIntegerField
      FieldName = 'Referencia'
    end
    object spRecibosCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object spRecibosConcepto: TStringField
      FieldName = 'Concepto'
      Size = 150
    end
    object spRecibosUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object spRecibosidPagoForma: TStringField
      FieldName = 'idPagoForma'
      Size = 16
    end
    object spRecibosNumeroChk: TStringField
      FieldName = 'NumeroChk'
      Size = 16
    end
    object spRecibosBanco: TStringField
      FieldName = 'Banco'
      Size = 100
    end
    object spRecibosMoneda: TStringField
      FieldName = 'Moneda'
    end
    object spRecibosValor: TBCDField
      FieldName = 'Valor'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object spRecibosCobros: TBCDField
      FieldName = 'Cobros'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object spRecibosOtrosIng: TBCDField
      FieldName = 'OtrosIng'
      ReadOnly = True
      DisplayFormat = '#,0.00'
      Precision = 32
    end
    object spRecibosGrupo: TStringField
      FieldName = 'Grupo'
      ReadOnly = True
      Size = 50
    end
  end
  object dsRecibos: TDataSource
    DataSet = spRecibos
    Left = 368
    Top = 242
  end
  object OpenFile: TOpenDialog
    DefaultExt = 'xls'
    FileName = 'Datos'
    Filter = 'xls|*.xls'
    Left = 594
    Top = 156
  end
  object plReciboList: TppDBPipeline
    DataSource = dsRecibos
    UserName = 'plReciboList'
    Left = 86
    Top = 144
  end
  object RPTRcCobrador: TppReport
    AutoStop = False
    DataPipeline = plReciboList
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 12700
    PrinterSetup.mmMarginLeft = 12700
    PrinterSetup.mmMarginRight = 12700
    PrinterSetup.mmMarginTop = 12700
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
    Left = 94
    Top = 206
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'plReciboList'
    object ppTitleBand14: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 23019
      mmPrintPosition = 0
      object ppLabel157: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Listado de Recibos de Ingresos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7673
        mmLeft = 794
        mmTop = 14817
        mmWidth = 120386
        BandType = 1
      end
      object ppSystemVariable27: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 221414
        mmTop = 13229
        mmWidth = 31263
        BandType = 1
      end
      object ppDBText176: TppDBText
        UserName = 'DBText176'
        DataField = 'compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 20
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 8573
        mmLeft = 1058
        mmTop = 529
        mmWidth = 186002
        BandType = 1
      end
    end
    object ppHeaderBand14: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 529
      mmPrintPosition = 0
    end
    object ppDetailBand14: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText155: TppDBText
        UserName = 'DBText1'
        DataField = 'Recibo'
        DataPipeline = plReciboList
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 2858
        mmLeft = 1323
        mmTop = 529
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText156: TppDBText
        UserName = 'DBText2'
        DataField = 'Fecha'
        DataPipeline = plReciboList
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 2858
        mmLeft = 21696
        mmTop = 529
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText157: TppDBText
        UserName = 'DBText3'
        DataField = 'Cliente'
        DataPipeline = plReciboList
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 2858
        mmLeft = 41010
        mmTop = 529
        mmWidth = 44715
        BandType = 4
      end
      object ppDBText158: TppDBText
        UserName = 'DBText6'
        DataField = 'Referencia'
        DataPipeline = plReciboList
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 2858
        mmLeft = 105569
        mmTop = 529
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText159: TppDBText
        UserName = 'DBText7'
        DataField = 'idPagoForma'
        DataPipeline = plReciboList
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 2858
        mmLeft = 121444
        mmTop = 529
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText160: TppDBText
        UserName = 'DBText10'
        BlankWhenZero = True
        DataField = 'Valor'
        DataPipeline = plReciboList
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 2858
        mmLeft = 177536
        mmTop = 529
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText161: TppDBText
        UserName = 'DBText11'
        DataField = 'Usuario'
        DataPipeline = plReciboList
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 2858
        mmLeft = 242094
        mmTop = 529
        mmWidth = 11642
        BandType = 4
      end
      object myDBCheckBox5: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = plReciboList
        DataField = 'esCxc'
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3969
        mmLeft = 88636
        mmTop = 0
        mmWidth = 4498
        BandType = 4
      end
      object myDBCheckBox7: TmyDBCheckBox
        UserName = 'DBCheckBox2'
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = plReciboList
        DataField = 'Cancelado'
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3704
        mmLeft = 97896
        mmTop = 265
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText162: TppDBText
        UserName = 'DBText101'
        BlankWhenZero = True
        DataField = 'Cobros'
        DataPipeline = plReciboList
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 2858
        mmLeft = 198702
        mmTop = 529
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText163: TppDBText
        UserName = 'DBText5'
        BlankWhenZero = True
        DataField = 'OtrosIng'
        DataPipeline = plReciboList
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 2858
        mmLeft = 220928
        mmTop = 529
        mmWidth = 20638
        BandType = 4
      end
      object ppDBMemo3: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Concepto'
        DataPipeline = plReciboList
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 3440
        mmLeft = 139436
        mmTop = 529
        mmWidth = 37571
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppFooterBand14: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine56: TppLine
        UserName = 'Line2'
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 252148
        BandType = 8
      end
      object ppSystemVariable28: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 235066
        mmTop = 1323
        mmWidth = 17082
        BandType = 8
      end
    end
    object ppSummaryBand6: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppDBCalc36: TppDBCalc
        UserName = 'DBCalc1'
        BlankWhenZero = True
        DataField = 'Valor'
        DataPipeline = plReciboList
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 2921
        mmLeft = 177271
        mmTop = 1852
        mmWidth = 20902
        BandType = 7
      end
      object ppLabel173: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Caption = 'Totales :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 153988
        mmTop = 1588
        mmWidth = 19844
        BandType = 7
      end
      object ppDBCalc37: TppDBCalc
        UserName = 'DBCalc2'
        BlankWhenZero = True
        DataField = 'Cobros'
        DataPipeline = plReciboList
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 2921
        mmLeft = 198438
        mmTop = 1852
        mmWidth = 21960
        BandType = 7
      end
      object ppDBCalc38: TppDBCalc
        UserName = 'DBCalc3'
        BlankWhenZero = True
        DataField = 'OtrosIng'
        DataPipeline = plReciboList
        DisplayFormat = '#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Small Fonts'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plReciboList'
        mmHeight = 2921
        mmLeft = 221192
        mmTop = 1852
        mmWidth = 20108
        BandType = 7
      end
      object ppLine57: TppLine
        UserName = 'Line3'
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1852
        mmLeft = 1058
        mmTop = 529
        mmWidth = 252148
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Grupo'
      DataPipeline = plReciboList
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReciboList'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 8731
        mmPrintPosition = 0
        object ppLabel1: TppLabel
          UserName = 'Label10'
          AutoSize = False
          Caption = 'Grupo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5948
          mmLeft = 2117
          mmTop = 794
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
        end
        object ppDBText1: TppDBText
          UserName = 'DBText4'
          DataField = 'Grupo'
          DataPipeline = plReciboList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 14
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 5948
          mmLeft = 28575
          mmTop = 794
          mmWidth = 183886
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 8467
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc4'
          BlankWhenZero = True
          DataField = 'Valor'
          DataPipeline = plReciboList
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 2910
          mmLeft = 178065
          mmTop = 2117
          mmWidth = 20902
          BandType = 5
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label17'
          AutoSize = False
          Caption = 'Totales por Grupo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 105304
          mmTop = 1588
          mmWidth = 69321
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc401'
          BlankWhenZero = True
          DataField = 'Cobros'
          DataPipeline = plReciboList
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 2910
          mmLeft = 199232
          mmTop = 2117
          mmWidth = 21960
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc5'
          BlankWhenZero = True
          DataField = 'OtrosIng'
          DataPipeline = plReciboList
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 2910
          mmLeft = 221986
          mmTop = 2117
          mmWidth = 20108
          BandType = 5
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line4'
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 794
          mmTop = 1058
          mmWidth = 252413
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup13: TppGroup
      BreakName = 'idEmpleado'
      DataPipeline = plReciboList
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group13'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReciboList'
      object ppGroupHeaderBand13: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 7938
        mmPrintPosition = 0
        object ppLabel174: TppLabel
          UserName = 'Label174'
          AutoSize = False
          Caption = 'Cobrador:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5821
          mmLeft = 14288
          mmTop = 1058
          mmWidth = 26988
          BandType = 3
          GroupNo = 0
        end
        object ppDBText164: TppDBText
          UserName = 'DBText164'
          DataField = 'empleado'
          DataPipeline = plReciboList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 14
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 5821
          mmLeft = 42863
          mmTop = 1058
          mmWidth = 126471
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand13: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object ppDBCalc39: TppDBCalc
          UserName = 'DBCalc39'
          BlankWhenZero = True
          DataField = 'Valor'
          DataPipeline = plReciboList
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup13
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 2910
          mmLeft = 178065
          mmTop = 1323
          mmWidth = 20902
          BandType = 5
          GroupNo = 0
        end
        object ppLabel175: TppLabel
          UserName = 'Label175'
          AutoSize = False
          Caption = 'Totales por Cobrador:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3387
          mmLeft = 105040
          mmTop = 794
          mmWidth = 69321
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc40: TppDBCalc
          UserName = 'DBCalc40'
          BlankWhenZero = True
          DataField = 'Cobros'
          DataPipeline = plReciboList
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup13
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 2910
          mmLeft = 199232
          mmTop = 1323
          mmWidth = 21960
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc41: TppDBCalc
          UserName = 'DBCalc41'
          BlankWhenZero = True
          DataField = 'OtrosIng'
          DataPipeline = plReciboList
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup13
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 2910
          mmLeft = 221986
          mmTop = 1323
          mmWidth = 20108
          BandType = 5
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 265
          mmWidth = 252413
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'Categoria'
      DataPipeline = plReciboList
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plReciboList'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 14552
        mmPrintPosition = 0
        object ppLabel2: TppLabel
          UserName = 'Label16'
          AutoSize = False
          Caption = 'Categoria:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 14
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5821
          mmLeft = 26988
          mmTop = 1058
          mmWidth = 26988
          BandType = 3
          GroupNo = 2
        end
        object ppDBText2: TppDBText
          UserName = 'DBText8'
          DataField = 'Categoria'
          DataPipeline = plReciboList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 14
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 5821
          mmLeft = 55563
          mmTop = 1058
          mmWidth = 129646
          BandType = 3
          GroupNo = 2
        end
        object ppShape1: TppShape
          UserName = 'Shape1'
          Pen.Width = 2
          mmHeight = 6350
          mmLeft = 0
          mmTop = 8202
          mmWidth = 254530
          BandType = 3
          GroupNo = 2
        end
        object ppLabel161: TppLabel
          UserName = 'Label2'
          AutoSize = False
          Caption = 'Recibo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 1323
          mmTop = 9525
          mmWidth = 19844
          BandType = 3
          GroupNo = 2
        end
        object ppLabel162: TppLabel
          UserName = 'Label3'
          AutoSize = False
          Caption = 'Fecha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 21696
          mmTop = 9525
          mmWidth = 19050
          BandType = 3
          GroupNo = 2
        end
        object ppLabel163: TppLabel
          UserName = 'Label4'
          AutoSize = False
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 41010
          mmTop = 9525
          mmWidth = 44715
          BandType = 3
          GroupNo = 2
        end
        object ppLabel164: TppLabel
          UserName = 'Label5'
          AutoSize = False
          Caption = 'CxC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 87313
          mmTop = 9525
          mmWidth = 7144
          BandType = 3
          GroupNo = 2
        end
        object ppLabel165: TppLabel
          UserName = 'Label6'
          AutoSize = False
          Caption = 'Canc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 95250
          mmTop = 9525
          mmWidth = 9525
          BandType = 3
          GroupNo = 2
        end
        object ppLabel166: TppLabel
          UserName = 'Label7'
          AutoSize = False
          Caption = 'Refer.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 105304
          mmTop = 9525
          mmWidth = 15346
          BandType = 3
          GroupNo = 2
        end
        object ppLabel167: TppLabel
          UserName = 'Label8'
          AutoSize = False
          Caption = 'Forma Pago'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 121179
          mmTop = 9525
          mmWidth = 17463
          BandType = 3
          GroupNo = 2
        end
        object ppLabel168: TppLabel
          UserName = 'Label9'
          AutoSize = False
          Caption = 'Concepto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 139171
          mmTop = 9525
          mmWidth = 37571
          BandType = 3
          GroupNo = 2
        end
        object ppLabel169: TppLabel
          UserName = 'Label11'
          AutoSize = False
          Caption = 'Total Gral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 177271
          mmTop = 9525
          mmWidth = 20902
          BandType = 3
          GroupNo = 2
        end
        object ppLabel170: TppLabel
          UserName = 'Label12'
          AutoSize = False
          Caption = 'Usuario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 242094
          mmTop = 9525
          mmWidth = 11906
          BandType = 3
          GroupNo = 2
        end
        object ppLabel171: TppLabel
          UserName = 'Label13'
          AutoSize = False
          Caption = 'Total CxC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 198438
          mmTop = 9525
          mmWidth = 21960
          BandType = 3
          GroupNo = 2
        end
        object ppLabel172: TppLabel
          UserName = 'Label14'
          AutoSize = False
          Caption = 'Total Otros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 220663
          mmTop = 9525
          mmWidth = 20638
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 7938
        mmPrintPosition = 0
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc6'
          BlankWhenZero = True
          DataField = 'Valor'
          DataPipeline = plReciboList
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 2910
          mmLeft = 178065
          mmTop = 2117
          mmWidth = 20902
          BandType = 5
          GroupNo = 2
        end
        object ppLabel4: TppLabel
          UserName = 'Label18'
          AutoSize = False
          Caption = 'Totales por Categoria:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 105304
          mmTop = 1588
          mmWidth = 69321
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc402'
          BlankWhenZero = True
          DataField = 'Cobros'
          DataPipeline = plReciboList
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 2910
          mmLeft = 199232
          mmTop = 2117
          mmWidth = 21960
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc7'
          BlankWhenZero = True
          DataField = 'OtrosIng'
          DataPipeline = plReciboList
          DisplayFormat = '#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Small Fonts'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plReciboList'
          mmHeight = 2910
          mmLeft = 221986
          mmTop = 2117
          mmWidth = 20108
          BandType = 5
          GroupNo = 2
        end
        object ppLine3: TppLine
          UserName = 'Line5'
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 265
          mmTop = 1058
          mmWidth = 252413
          BandType = 5
          GroupNo = 2
        end
      end
    end
  end
end

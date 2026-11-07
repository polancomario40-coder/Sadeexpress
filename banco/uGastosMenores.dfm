inherited GastosMenores: TGastosMenores
  Left = 253
  Top = 182
  Caption = 'Gastos'
  ClientHeight = 388
  ClientWidth = 876
  Color = 15922418
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Left = 2
    Top = 329
    Width = 876
    Align = alNone
    Anchors = [akLeft, akRight, akBottom]
  end
  inherited Gradient2: TGradient
    Width = 876
    Height = 38
    ColorBegin = 15922418
    ColorEnd = 9516803
    Reverse = True
    Style = gsLinearV
  end
  object Label1: TLabel [2]
    Left = 677
    Top = 5
    Width = 106
    Height = 26
    Alignment = taRightJustify
    Caption = 'Registro de gastos menores'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object Label2: TLabel [3]
    Left = 4
    Top = 46
    Width = 33
    Height = 13
    Caption = 'Fecha:'
  end
  object Label3: TLabel [4]
    Left = 199
    Top = 46
    Width = 24
    Height = 13
    Caption = 'NCF:'
  end
  object Label4: TLabel [5]
    Left = 647
    Top = 46
    Width = 39
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Cuenta:'
  end
  object lTotal: TLabel [6]
    Left = 616
    Top = 300
    Width = 253
    Height = 25
    Alignment = taRightJustify
    Anchors = [akRight, akBottom]
    AutoSize = False
    Caption = '[]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 9516803
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel [7]
    Left = 5
    Top = 306
    Width = 30
    Height = 13
    Caption = 'Clase:'
  end
  object LabelEcfStatus: TLabel [8]
    Left = 8
    Top = 10
    Width = 63
    Height = 13
    Caption = 'Estado ECF:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LabelCodSeg: TLabel [9]
    Left = 255
    Top = 10
    Width = 87
    Height = 13
    Caption = 'Cod. Seguridad:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  inherited btImprimir: TcxButton
    Top = 336
    Width = 56
    Height = 48
    Action = Aprint
    TabOrder = 5
  end
  inherited btLocalizar: TcxButton
    Top = 336
    Width = 56
    Height = 48
    TabOrder = 6
  end
  inherited btNuevo: TcxButton
    Top = 336
    Width = 56
    Height = 48
    TabOrder = 7
  end
  inherited btCancelar: TcxButton
    Top = 336
    Width = 56
    Height = 48
    TabOrder = 8
  end
  inherited btGuardar: TcxButton
    Top = 336
    Width = 56
    Height = 48
    TabOrder = 9
  end
  inherited btBorrar: TcxButton
    Left = 736
    Top = 336
    Width = 56
    Height = 48
    Anchors = [akRight, akBottom]
    TabOrder = 10
  end
  inherited btSalir: TcxButton
    Left = 819
    Top = 336
    Width = 56
    Height = 48
    Anchors = [akRight, akBottom]
    TabOrder = 11
  end
  inherited btEditar: TcxButton
    Top = 336
    Width = 56
    Height = 48
    TabOrder = 12
  end
  object cxDBDateEdit1: TcxDBDateEdit [18]
    Left = 40
    Top = 42
    Width = 121
    Height = 21
    DataBinding.DataField = 'Fecha'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 0
  end
  object cxDBTextEdit1: TcxDBTextEdit [19]
    Left = 225
    Top = 42
    Width = 148
    Height = 21
    TabStop = False
    DataBinding.DataField = 'CompFiscal'
    DataBinding.DataSource = DS
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 1
  end
  object cxGrid1: TcxGrid [20]
    Left = 2
    Top = 68
    Width = 867
    Height = 228
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
    OnEnter = cxGrid1Enter
    OnExit = cxGrid1Exit
    LookAndFeel.NativeStyle = True
    object tvDetalle: TcxGridDBTableView
      DataController.DataSource = dsDet
      DataController.KeyFieldNames = 'idDetalle'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'Valor'
          Column = tvDetalleValor
        end>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object tvDetalleidCuenta: TcxGridDBColumn
        Caption = 'Cuento No.'
        DataBinding.FieldName = 'idCuenta'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGrid1DBTableView1idCuentaPropertiesButtonClick
        Options.Filtering = False
        Width = 74
      end
      object tvDetalleDBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'Descripcion'
        Options.Filtering = False
        Width = 272
      end
      object tvDetalleValor: TcxGridDBColumn
        DataBinding.FieldName = 'Importe'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '$,0.00;($,0.00)'
        Properties.ValidateOnEnter = True
        HeaderAlignmentHorz = taRightJustify
        Options.Filtering = False
        Width = 85
      end
      object tvDetalleDBColumn4: TcxGridDBColumn
        Caption = 'Moneda'
        DataBinding.FieldName = 'idMoneda'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'idMoneda'
        Properties.ListColumns = <
          item
            FieldName = 'Moneda'
          end>
        Properties.ListSource = dm.dsMoneda
        Width = 69
      end
      object tvDetalleDBColumn5: TcxGridDBColumn
        Caption = 'FormaPago'
        DataBinding.FieldName = 'idPagoForma'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'idPagoForma'
        Properties.ListColumns = <
          item
            FieldName = 'PagoForma'
          end>
        Properties.ListSource = dsFormaPago
        Width = 77
      end
      object tvDetalleDBColumn2: TcxGridDBColumn
        Caption = 'Centro Costo'
        DataBinding.FieldName = 'centrocosto'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = tvDetalleDBColumn2PropertiesButtonClick
        Options.Filtering = False
        Width = 140
      end
      object tvDetalleDBColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'Referencia'
        Options.Filtering = False
        Width = 148
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tvDetalle
    end
  end
  object luCta: TcxDBLookupComboBox [21]
    Left = 688
    Top = 42
    Width = 181
    Height = 21
    Anchors = [akTop, akRight]
    BeepOnEnter = False
    DataBinding.DataField = 'idCuentaBanco'
    DataBinding.DataSource = DS
    Properties.KeyFieldNames = 'idCuentaBanco'
    Properties.ListColumns = <
      item
        FieldName = 'Nombre'
      end>
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsBcos
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 2
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [22]
    Left = 39
    Top = 302
    Width = 334
    Height = 21
    Anchors = [akLeft, akBottom]
    BeepOnEnter = False
    DataBinding.DataField = 'idClaseGasto'
    DataBinding.DataSource = DS
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'idClasegasto'
    Properties.ListColumns = <
      item
        FieldName = 'ClaseGasto'
      end>
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsClase
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  object edEcfStatus: TcxDBTextEdit [23]
    Left = 75
    Top = 6
    Width = 100
    Height = 21
    DataBinding.DataField = 'StatusEcf'
    DataBinding.DataSource = DS
    Properties.ReadOnly = True
    Style.Color = 13818837
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 14
  end
  object btnRefrescarECF: TcxButton [24]
    Left = 180
    Top = 5
    Width = 65
    Height = 23
    Caption = 'Refrescar'
    TabOrder = 15
    OnClick = btnRefrescarECFClick
  end
  object edCodSeg: TcxDBTextEdit [25]
    Left = 348
    Top = 6
    Width = 80
    Height = 21
    DataBinding.DataField = 'CodigoSeguridadEcf'
    DataBinding.DataSource = DS
    Properties.ReadOnly = True
    Style.Color = 13818837
    Style.LookAndFeel.NativeStyle = True
    TabOrder = 16
  end
  object bSendECF: TcxButton [26]
    Left = 400
    Top = 336
    Width = 75
    Height = 48
    Anchors = [akLeft, akBottom]
    Caption = 'Enviar ECF'
    TabOrder = 13
    OnClick = bSendECFClick
  end
  inherited DS: TwwDataSource
    Left = 191
    Top = 189
  end
  inherited Acciones: TActionList
    Left = 286
    Top = 132
  end
  inherited RS: TADODataSet
    CursorType = ctStatic
    BeforePost = RSBeforePost
    OnNewRecord = RSNewRecord
    CommandText = 'bcoRSGastosMenores;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@GUIDDocumento'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 467
    Top = 166
    object RSGUIDDocumento: TGuidField
      FieldName = 'GUIDDocumento'
      FixedChar = True
      Size = 38
    end
    object RSFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object RSidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
    end
    object RSCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object RSidClaseGasto: TStringField
      FieldName = 'idClaseGasto'
      Size = 16
    end
    object RSusuario: TStringField
      FieldName = 'usuario'
      Size = 30
    end
    object RSStatusEcf: TStringField
      FieldName = 'StatusEcf'
      Size = 16
    end
    object RSCodigoSeguridadEcf: TStringField
      FieldName = 'CodigoSeguridadEcf'
    end
    object RSUltError: TStringField
      FieldName = 'UltError'
      Size = 2000
    end
    object RSTrackId: TStringField
      FieldName = 'TrackId'
      Size = 100
    end
    object RSFechaFirmaDigital: TDateTimeField
      FieldName = 'FechaFirmaDigital'
    end
    object RSPendValidacion: TBooleanField
      FieldName = 'PendValidacion'
    end
    object RSPendEnvioEcf: TBooleanField
      FieldName = 'PendEnvioEcf'
    end
    object RSFechaVenceNCF: TDateTimeField
      FieldName = 'FechaVenceNCF'
    end
    object RSTipoNcf: TStringField
      FieldName = 'TipoNcf'
      Size = 3
    end
  end
  inherited RSDet: TADODataSet
    CursorType = ctStatic
    CommandText = 'bcoRSGastosMenoresDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@GUIDDocumento'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 116
    Top = 250
    object RSDetidDetalle: TGuidField
      FieldName = 'idDetalle'
      FixedChar = True
      Size = 38
    end
    object RSDetGUIDDocumento: TGuidField
      FieldName = 'GUIDDocumento'
      FixedChar = True
      Size = 38
    end
    object RSDetidCuenta: TStringField
      FieldName = 'idCuenta'
      OnValidate = RSDetidCuentaValidate
      Size = 16
    end
    object RSDetLineaNum: TAutoIncField
      FieldName = 'LineaNum'
      ReadOnly = True
    end
    object RSDetDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object RSDetImporte: TBCDField
      FieldName = 'Importe'
      Precision = 19
      Size = 2
    end
    object RSDetidcentrocosto: TGuidField
      FieldName = 'idcentrocosto'
      OnValidate = RSDetidcentrocostoValidate
      FixedChar = True
      Size = 38
    end
    object RSDetcentrocosto: TStringField
      FieldName = 'centrocosto'
      OnValidate = RSDetcentrocostoValidate
      Size = 300
    end
    object RSDetidpartida: TStringField
      FieldName = 'idpartida'
      OnValidate = RSDetidpartidaValidate
      Size = 16
    end
    object RSDetReferencia: TStringField
      FieldName = 'Referencia'
      Size = 100
    end
    object RSDetidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object RSDetidPagoForma: TIntegerField
      FieldName = 'idPagoForma'
    end
  end
  inherited dsDet: TwwDataSource
    Left = 191
    Top = 252
  end
  object dsBcos: TwwDataSource
    AutoEdit = False
    DataSet = rsBancos
    OnUpdateData = DSUpdateData
    Left = 139
    Top = 129
  end
  object rsRPT: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'bcoGastosMenoresRPT;1'
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
        Name = '@GUIDDocumento'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 374
    Top = 120
    object rsRPTGUIDDocumento: TGuidField
      FieldName = 'GUIDDocumento'
      FixedChar = True
      Size = 38
    end
    object rsRPTFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsRPTidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
    end
    object rsRPTCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object rsRPTidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsRPTDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object rsRPTImporte: TBCDField
      FieldName = 'Importe'
      Precision = 19
      Size = 2
    end
  end
  object dsRPT: TDataSource
    DataSet = rsRPT
    Left = 480
    Top = 118
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsRPT
    UserName = 'DBPipeline1'
    Left = 372
    Top = 182
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
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
    Left = 472
    Top = 230
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 52652
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 5027
        mmLeft = 794
        mmTop = 47625
        mmWidth = 201877
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Shape = stRoundRect
        mmHeight = 43392
        mmLeft = 794
        mmTop = 794
        mmWidth = 201877
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 144463
        mmTop = 2117
        mmWidth = 52123
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Shape = stRoundRect
        mmHeight = 12171
        mmLeft = 65881
        mmTop = 2646
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'COMPROBANTE FISCAL ESPECIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 69321
        mmTop = 4233
        mmWidth = 64558
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'REGISTRO DE GASTOS MENORES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 69321
        mmTop = 8467
        mmWidth = 64558
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'NCF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 145786
        mmTop = 3175
        mmWidth = 9525
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'CompFiscal'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 156104
        mmTop = 3175
        mmWidth = 39158
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha de emisi'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 138907
        mmTop = 15346
        mmWidth = 27517
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 165629
        mmTop = 19050
        mmWidth = 29898
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'DIA/MES/A'#209'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 166952
        mmTop = 19579
        mmWidth = 27517
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Width = 3
        Weight = 2.250000000000000000
        mmHeight = 794
        mmLeft = 1058
        mmTop = 23813
        mmWidth = 201613
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        Caption = 'NOMBRE O RAZON SOCIAL DEL CONTRIBUYENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 1852
        mmTop = 26194
        mmWidth = 70231
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        Caption = 'RNC DEL CONTRIBUYENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 1852
        mmTop = 31750
        mmWidth = 38608
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        Caption = 'DIRECCION DEL CONTRIBUYENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1852
        mmTop = 37571
        mmWidth = 46302
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        Caption = 'Tel.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 161661
        mmTop = 37571
        mmWidth = 5821
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 69850
        mmTop = 29898
        mmWidth = 130175
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 38629
        mmTop = 35454
        mmWidth = 161396
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 47361
        mmTop = 41275
        mmWidth = 113506
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 166952
        mmTop = 41275
        mmWidth = 33073
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3440
        mmLeft = 75406
        mmTop = 26194
        mmWidth = 122238
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'RNC'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3440
        mmLeft = 44186
        mmTop = 31750
        mmWidth = 41010
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Direccion'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3969
        mmLeft = 52652
        mmTop = 37042
        mmWidth = 106627
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Telefono'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3175
        mmLeft = 168805
        mmTop = 37571
        mmWidth = 28840
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 166952
        mmTop = 15081
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        Caption = 'CUENTA No.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 3704
        mmTop = 48419
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        HyperlinkEnabled = False
        Caption = 'DESCRIPCION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 85725
        mmTop = 48419
        mmWidth = 31485
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        Caption = 'IMPORTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 170657
        mmTop = 48419
        mmWidth = 24871
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Pen.Width = 0
        Position = lpLeft
        Style = lsDouble
        Weight = 0.250000000000000000
        mmHeight = 5027
        mmLeft = 37306
        mmTop = 47625
        mmWidth = 4763
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Pen.Width = 0
        Position = lpLeft
        Style = lsDouble
        Weight = 0.250000000000000000
        mmHeight = 5027
        mmLeft = 161925
        mmTop = 47625
        mmWidth = 4763
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppShape5: TppShape
        UserName = 'Shape5'
        ParentHeight = True
        StretchWithParent = True
        mmHeight = 5027
        mmLeft = 794
        mmTop = 0
        mmWidth = 201877
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Pen.Width = 0
        Position = lpLeft
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.250000000000000000
        mmHeight = 5027
        mmLeft = 37306
        mmTop = 0
        mmWidth = 4763
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Pen.Width = 0
        Position = lpLeft
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.250000000000000000
        mmHeight = 5027
        mmLeft = 161925
        mmTop = 0
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'idCuenta'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 1588
        mmTop = 794
        mmWidth = 33073
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'Importe'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 166688
        mmTop = 794
        mmWidth = 33073
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Descripcion'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 38894
        mmTop = 794
        mmWidth = 115359
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
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
      mmHeight = 4498
      mmPrintPosition = 0
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 4498
        mmLeft = 132821
        mmTop = 0
        mmWidth = 69850
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        DataField = 'Importe'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '"Total " ###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 138377
        mmTop = 529
        mmWidth = 61383
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object rsBancos: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from cxpBancos'
    Parameters = <>
    Left = 218
    Top = 98
    object rsBancosidCuentaBanco: TAutoIncField
      FieldName = 'idCuentaBanco'
      ReadOnly = True
    end
    object rsBancosNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsBancosidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsBancosTipoCuenta: TStringField
      FieldName = 'TipoCuenta'
      FixedChar = True
      Size = 1
    end
    object rsBancosUltimoCheque: TIntegerField
      FieldName = 'UltimoCheque'
    end
    object rsBancosidCuentaMayor: TStringField
      FieldName = 'idCuentaMayor'
      Size = 16
    end
    object rsBancosNumCuenta: TStringField
      FieldName = 'NumCuenta'
      Size = 30
    end
  end
  object rsClase: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpRSClaseGasto;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 110
    Top = 94
    object rsClaseidClasegasto: TStringField
      FieldName = 'idClasegasto'
      Size = 2
    end
    object rsClaseClaseGasto: TStringField
      FieldName = 'ClaseGasto'
      Size = 100
    end
  end
  object dsClase: TwwDataSource
    AutoEdit = False
    DataSet = rsClase
    OnUpdateData = DSUpdateData
    Left = 31
    Top = 125
  end
  object rsCCAct: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'CostCentroCostoAct;1'
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
        Name = '@idCentroCosto'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@CentroCosto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 704
    Top = 120
    object rsCCActidCentroCosto: TGuidField
      FieldName = 'idCentroCosto'
      FixedChar = True
      Size = 38
    end
    object rsCCActCentroCosto: TStringField
      FieldName = 'CentroCosto'
      Size = 16
    end
    object rsCCActCentroCostoDesc: TStringField
      FieldName = 'CentroCostoDesc'
      Size = 300
    end
    object rsCCActActivo: TBooleanField
      FieldName = 'Activo'
    end
    object rsCCActTipo: TStringField
      FieldName = 'Tipo'
      Size = 16
    end
    object rsCCActReferencia: TStringField
      FieldName = 'Referencia'
      Size = 25
    end
    object rsCCActidCentroCostoParent: TGuidField
      FieldName = 'idCentroCostoParent'
      FixedChar = True
      Size = 38
    end
    object rsCCActOrden: TIntegerField
      FieldName = 'Orden'
    end
    object rsCCActNivel: TIntegerField
      FieldName = 'Nivel'
    end
    object rsCCActStatus: TStringField
      FieldName = 'Status'
      Size = 16
    end
  end
  object cGetCuentaPorCC: TADOCommand
    CommandText = 'cxpGetCuentaCC'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idCC'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@idpartida'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@idCuenta'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 16
        Value = Null
      end>
    Left = 558
    Top = 132
  end
  object dsFormaPago: TwwDataSource
    AutoEdit = False
    DataSet = rsFormaPago
    OnUpdateData = DSUpdateData
    Left = 39
    Top = 167
  end
  object rsFormaPago: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select * from PagoFormacxp'
    Parameters = <>
    Left = 104
    Top = 158
    object rsFormaPagoidPagoForma: TIntegerField
      FieldName = 'idPagoForma'
    end
    object rsFormaPagoPagoForma: TStringField
      FieldName = 'PagoForma'
      Size = 50
    end
  end
  object cCambStatusEcf: TADOCommand
    CommandText = 'ecf_gm_send'
    CommandType = cmdStoredProc
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 250
    Top = 120
  end
end

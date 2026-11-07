inherited fImprNCR: TfImprNCR
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ds: TDataSource
    DataSet = rsCtasDoc
    Left = 30
    Top = 176
  end
  object rsDocumento: TADODataSet
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpBuscarDocumento;1'
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
        Name = '@idDoc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 38
    Top = 72
    object rsDocumentoidDocumento: TIntegerField
      FieldName = 'idDocumento'
      ReadOnly = True
    end
    object rsDocumentoidTrans: TIntegerField
      FieldName = 'idTrans'
    end
    object rsDocumentoFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsDocumentoidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
    end
    object rsDocumentoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsDocumentoValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object rsDocumentoMontoImpuestos: TBCDField
      FieldName = 'MontoImpuestos'
      Precision = 19
      Size = 2
    end
    object rsDocumentoMontoDescuento: TBCDField
      FieldName = 'MontoDescuento'
      Precision = 19
      Size = 2
    end
    object rsDocumentoMontoRetenciones: TBCDField
      FieldName = 'MontoRetenciones'
      Precision = 19
      Size = 2
    end
    object rsDocumentoTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 22
      Size = 2
    end
    object rsDocumentoConcepto: TStringField
      FieldName = 'Concepto'
      Size = 600
    end
    object rsDocumentoidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsDocumentoTelefono1: TStringField
      FieldName = 'Telefono1'
      Size = 14
    end
    object rsDocumentoTelefono2: TStringField
      FieldName = 'Telefono2'
    end
    object rsDocumentoFax: TStringField
      FieldName = 'Fax'
      Size = 8
    end
    object rsDocumentoDireccion: TStringField
      FieldName = 'Direccion'
      Size = 100
    end
    object rsDocumentoNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsDocumentoRNC: TStringField
      FieldName = 'RNC'
    end
    object rsDocumentoCodifManual: TBooleanField
      FieldName = 'CodifManual'
    end
    object rsDocumentoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 30
    end
    object rsDocumentoDebCre: TWordField
      FieldName = 'DebCre'
    end
    object rsDocumentoAbrev: TStringField
      FieldName = 'Abrev'
      Size = 5
    end
    object rsDocumentoidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsDocumentoidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
    end
    object rsDocumentoStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object rsDocumentoFechaStatus: TDateTimeField
      FieldName = 'FechaStatus'
    end
    object rsDocumentoTipoDocOrigen: TStringField
      FieldName = 'TipoDocOrigen'
      Size = 2
    end
    object rsDocumentoDocOrigen: TIntegerField
      FieldName = 'DocOrigen'
    end
    object rsDocumentoDias: TSmallintField
      FieldName = 'Dias'
    end
    object rsDocumentoMostrarEnCXP: TBooleanField
      FieldName = 'MostrarEnCXP'
    end
    object rsDocumentoBienesServicio: TSmallintField
      FieldName = 'BienesServicio'
    end
    object rsDocumentoNotaAdicional: TStringField
      FieldName = 'NotaAdicional'
      Size = 100
    end
    object rsDocumentoidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
    end
    object rsDocumentoCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object rsDocumentoGUIDDocumento: TGuidField
      FieldName = 'GUIDDocumento'
      FixedChar = True
      Size = 38
    end
    object rsDocumentoTotalNeto: TBCDField
      FieldName = 'TotalNeto'
      ReadOnly = True
      Precision = 20
      Size = 2
    end
    object rsDocumentoidTipoIdentificacion: TStringField
      FieldName = 'idTipoIdentificacion'
      Size = 2
    end
    object rsDocumentoidClaseGasto: TStringField
      FieldName = 'idClaseGasto'
      Size = 2
    end
    object rsDocumentoTasa: TBCDField
      FieldName = 'Tasa'
      Precision = 18
      Size = 2
    end
    object rsDocumentoPedirNCF: TStringField
      FieldName = 'PedirNCF'
      FixedChar = True
      Size = 1
    end
    object rsDocumentoTotalRetenciones: TFloatField
      FieldName = 'TotalRetenciones'
      ReadOnly = True
    end
  end
  object rsDocDtl: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpBuscarDocDtl;1'
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
        Name = '@idDoc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 372
    Top = 86
    object rsDocDtlidDocumento: TIntegerField
      FieldName = 'idDocumento'
    end
    object rsDocDtlLineaNum: TIntegerField
      FieldName = 'LineaNum'
      ReadOnly = True
    end
    object rsDocDtlIdDocXPagar: TIntegerField
      FieldName = 'IdDocXPagar'
    end
    object rsDocDtlValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object rsDocDtlFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsDocDtlTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 22
      Size = 2
    end
    object rsDocDtlReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsDocDtlAbrev: TStringField
      FieldName = 'Abrev'
      Size = 5
    end
    object rsDocDtlFechaDoc: TDateTimeField
      FieldName = 'FechaDoc'
    end
  end
  object dsHeader: TDataSource
    DataSet = rsDocumento
    Left = 92
    Top = 178
  end
  object plHeader: TppDBPipeline
    DataSource = dsHeader
    UserName = 'plHeader'
    Left = 124
    Top = 116
    object plHeaderppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'idDocumento'
      FieldName = 'idDocumento'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object plHeaderppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'idTrans'
      FieldName = 'idTrans'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object plHeaderppField3: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object plHeaderppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'idSuplidor'
      FieldName = 'idSuplidor'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object plHeaderppField5: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object plHeaderppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor'
      FieldName = 'Valor'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 5
    end
    object plHeaderppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'MontoImpuestos'
      FieldName = 'MontoImpuestos'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 6
    end
    object plHeaderppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'MontoDescuento'
      FieldName = 'MontoDescuento'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 7
    end
    object plHeaderppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'MontoRetenciones'
      FieldName = 'MontoRetenciones'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 8
    end
    object plHeaderppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 23
      Position = 9
    end
    object plHeaderppField11: TppField
      FieldAlias = 'Concepto'
      FieldName = 'Concepto'
      FieldLength = 600
      DisplayWidth = 600
      Position = 10
    end
    object plHeaderppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'idMoneda'
      FieldName = 'idMoneda'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object plHeaderppField13: TppField
      FieldAlias = 'Telefono1'
      FieldName = 'Telefono1'
      FieldLength = 14
      DisplayWidth = 14
      Position = 12
    end
    object plHeaderppField14: TppField
      FieldAlias = 'Telefono2'
      FieldName = 'Telefono2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object plHeaderppField15: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 8
      DisplayWidth = 8
      Position = 14
    end
    object plHeaderppField16: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 100
      DisplayWidth = 100
      Position = 15
    end
    object plHeaderppField17: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 100
      DisplayWidth = 100
      Position = 16
    end
    object plHeaderppField18: TppField
      FieldAlias = 'RNC'
      FieldName = 'RNC'
      FieldLength = 20
      DisplayWidth = 20
      Position = 17
    end
    object plHeaderppField19: TppField
      FieldAlias = 'CodifManual'
      FieldName = 'CodifManual'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 18
    end
    object plHeaderppField20: TppField
      FieldAlias = 'Descripcion'
      FieldName = 'Descripcion'
      FieldLength = 30
      DisplayWidth = 30
      Position = 19
    end
    object plHeaderppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'DebCre'
      FieldName = 'DebCre'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 20
    end
    object plHeaderppField22: TppField
      FieldAlias = 'Abrev'
      FieldName = 'Abrev'
      FieldLength = 5
      DisplayWidth = 5
      Position = 21
    end
    object plHeaderppField23: TppField
      FieldAlias = 'idCuenta'
      FieldName = 'idCuenta'
      FieldLength = 16
      DisplayWidth = 16
      Position = 22
    end
    object plHeaderppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'idCuentaBanco'
      FieldName = 'idCuentaBanco'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object plHeaderppField25: TppField
      FieldAlias = 'Status'
      FieldName = 'Status'
      FieldLength = 1
      DisplayWidth = 1
      Position = 24
    end
    object plHeaderppField26: TppField
      FieldAlias = 'FechaStatus'
      FieldName = 'FechaStatus'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 25
    end
    object plHeaderppField27: TppField
      FieldAlias = 'TipoDocOrigen'
      FieldName = 'TipoDocOrigen'
      FieldLength = 2
      DisplayWidth = 2
      Position = 26
    end
    object plHeaderppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'DocOrigen'
      FieldName = 'DocOrigen'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object plHeaderppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'Dias'
      FieldName = 'Dias'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 28
    end
    object plHeaderppField30: TppField
      FieldAlias = 'MostrarEnCXP'
      FieldName = 'MostrarEnCXP'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 29
    end
    object plHeaderppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'BienesServicio'
      FieldName = 'BienesServicio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object plHeaderppField32: TppField
      FieldAlias = 'NotaAdicional'
      FieldName = 'NotaAdicional'
      FieldLength = 100
      DisplayWidth = 100
      Position = 31
    end
    object plHeaderppField33: TppField
      FieldAlias = 'idAuxiliar'
      FieldName = 'idAuxiliar'
      FieldLength = 16
      DisplayWidth = 16
      Position = 32
    end
    object plHeaderppField34: TppField
      FieldAlias = 'CompFiscal'
      FieldName = 'CompFiscal'
      FieldLength = 19
      DisplayWidth = 19
      Position = 33
    end
    object plHeaderppField35: TppField
      FieldAlias = 'GUIDDocumento'
      FieldName = 'GUIDDocumento'
      FieldLength = 38
      DisplayWidth = 38
      Position = 34
    end
    object plHeaderppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalNeto'
      FieldName = 'TotalNeto'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 21
      Position = 35
    end
    object plHeaderppField37: TppField
      FieldAlias = 'idTipoIdentificacion'
      FieldName = 'idTipoIdentificacion'
      FieldLength = 2
      DisplayWidth = 2
      Position = 36
    end
    object plHeaderppField38: TppField
      FieldAlias = 'idClaseGasto'
      FieldName = 'idClaseGasto'
      FieldLength = 2
      DisplayWidth = 2
      Position = 37
    end
    object plHeaderppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tasa'
      FieldName = 'Tasa'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 38
    end
    object plHeaderppField40: TppField
      FieldAlias = 'PedirNCF'
      FieldName = 'PedirNCF'
      FieldLength = 1
      DisplayWidth = 1
      Position = 39
    end
    object plHeaderppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalRetenciones'
      FieldName = 'TotalRetenciones'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 40
    end
  end
  object plDet: TppDBPipeline
    DataSource = ds
    UserName = 'plDet'
    Left = 216
    Top = 126
    object plDetppField1: TppField
      FieldAlias = 'idCuenta'
      FieldName = 'idCuenta'
      FieldLength = 16
      DisplayWidth = 16
      Position = 0
    end
    object plDetppField2: TppField
      FieldAlias = 'Descripcion'
      FieldName = 'Descripcion'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object plDetppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'DebCre'
      FieldName = 'DebCre'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 2
    end
    object plDetppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'Debito'
      FieldName = 'Debito'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 3
    end
    object plDetppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Credito'
      FieldName = 'Credito'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 4
    end
    object plDetppField6: TppField
      FieldAlias = 'Automatica'
      FieldName = 'Automatica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 5
    end
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = plDet
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
    AllowPrintToArchive = True
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
    Left = 140
    Top = 284
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plDet'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 34131
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = 15000804
        ParentWidth = True
        mmHeight = 4763
        mmLeft = 0
        mmTop = 29368
        mmWidth = 203200
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Descripcion'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 3979
        mmLeft = 1588
        mmTop = 10319
        mmWidth = 88371
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 5821
        mmLeft = 167482
        mmTop = 10583
        mmWidth = 32808
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plHeader
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4763
        mmLeft = 167217
        mmTop = 16933
        mmWidth = 33073
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Nombre'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 15346
        mmWidth = 96309
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Valor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 119327
        mmTop = 24871
        mmWidth = 10583
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plHeader
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 3979
        mmLeft = 131234
        mmTop = 24871
        mmWidth = 39158
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Telefono1'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4784
        mmLeft = 1588
        mmTop = 19844
        mmWidth = 45508
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 29898
        mmWidth = 34131
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Descripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 37042
        mmTop = 29898
        mmWidth = 93398
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Debito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 132821
        mmTop = 29898
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Credito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 160073
        mmTop = 29898
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        Caption = 'No. '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 157427
        mmTop = 10583
        mmWidth = 9260
        BandType = 0
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 5292
        mmLeft = 1852
        mmTop = 2381
        mmWidth = 107156
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 265
        mmTop = 8467
        mmWidth = 202936
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 35983
        mmTop = 29369
        mmWidth = 13229
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 131234
        mmTop = 29633
        mmWidth = 1058
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 159279
        mmTop = 29369
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'NCF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 64294
        mmTop = 24871
        mmWidth = 7673
        BandType = 0
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        HyperlinkEnabled = False
        DataField = 'CompFiscal'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 3979
        mmLeft = 73290
        mmTop = 24871
        mmWidth = 42863
        BandType = 0
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkEnabled = False
        DataField = 'RNC'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3969
        mmLeft = 109538
        mmTop = 3704
        mmWidth = 42863
        BandType = 0
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkEnabled = False
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 3969
        mmLeft = 173567
        mmTop = 24871
        mmWidth = 27517
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape2'
        ParentHeight = True
        ParentWidth = True
        mmHeight = 4498
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'idCuenta'
        DataPipeline = plDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDet'
        mmHeight = 3440
        mmLeft = 529
        mmTop = 529
        mmWidth = 34131
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'Descripcion'
        DataPipeline = plDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDet'
        mmHeight = 3440
        mmLeft = 37042
        mmTop = 529
        mmWidth = 92340
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'Debito'
        DataPipeline = plDet
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDet'
        mmHeight = 3440
        mmLeft = 132821
        mmTop = 529
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'Credito'
        DataPipeline = plDet
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDet'
        mmHeight = 3440
        mmLeft = 160073
        mmTop = 529
        mmWidth = 25400
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line3'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 35983
        mmTop = 0
        mmWidth = 2381
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line6'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 130969
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 159279
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 21960
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Concepto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 794
        mmWidth = 19050
        BandType = 8
      end
      object ppDBRichText1: TppDBRichText
        UserName = 'DBRichText1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        DataField = 'Concepto'
        DataPipeline = plHeader
        ParentDataPipeline = False
        RemoveEmptyLines = False
        DataPipelineName = 'plHeader'
        mmHeight = 14817
        mmLeft = 1058
        mmTop = 5821
        mmWidth = 132292
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeftMargin = 794
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1058
        mmTop = 5027
        mmWidth = 133350
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Shape3'
        Brush.Color = 15000804
        ParentHeight = True
        ParentWidth = True
        Pen.Color = clSilver
        mmHeight = 6350
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        DataField = 'Debito'
        DataPipeline = plDet
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDet'
        mmHeight = 3704
        mmLeft = 133615
        mmTop = 1323
        mmWidth = 24606
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        DataField = 'Credito'
        DataPipeline = plDet
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDet'
        mmHeight = 3704
        mmLeft = 160867
        mmTop = 1323
        mmWidth = 24606
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object rsCtasDoc: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpBuscarCtasDoc;1'
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
        Name = '@idDocumento'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 192
    Top = 74
    object rsCtasDocidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsCtasDocDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 60
    end
    object rsCtasDocDebCre: TWordField
      FieldName = 'DebCre'
    end
    object rsCtasDocDebito: TBCDField
      FieldName = 'Debito'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsCtasDocCredito: TBCDField
      FieldName = 'Credito'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsCtasDocAutomatica: TBooleanField
      FieldName = 'Automatica'
    end
  end
  object ReportDoc: TppReport
    AutoStop = False
    DataPipeline = plDet
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 139700
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 125
    AllowPrintToArchive = True
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
    Left = 318
    Top = 320
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plDet'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 25665
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape1'
        ParentWidth = True
        mmHeight = 4763
        mmLeft = 0
        mmTop = 20373
        mmWidth = 203200
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Descripcion'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 3979
        mmLeft = 1588
        mmTop = 1323
        mmWidth = 88371
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 5821
        mmLeft = 167482
        mmTop = 1588
        mmWidth = 32808
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plDet
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDet'
        mmHeight = 4763
        mmLeft = 167217
        mmTop = 7938
        mmWidth = 33073
        BandType = 0
      end
      object ppDBText14: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Nombre'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 6350
        mmWidth = 96309
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Valor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 138113
        mmTop = 14817
        mmWidth = 21431
        BandType = 0
      end
      object ppDBText15: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plHeader
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 3969
        mmLeft = 160867
        mmTop = 14817
        mmWidth = 39158
        BandType = 0
      end
      object ppDBText16: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'Telefono1'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4763
        mmLeft = 1588
        mmTop = 10848
        mmWidth = 45508
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Cuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 20902
        mmWidth = 34131
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Descripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 37042
        mmTop = 20902
        mmWidth = 93398
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Debito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 132821
        mmTop = 20902
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Credito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 160073
        mmTop = 20902
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        Caption = 'No. '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 157427
        mmTop = 1588
        mmWidth = 9260
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText17: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'idCuenta'
        DataPipeline = plDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDet'
        mmHeight = 3440
        mmLeft = 529
        mmTop = 529
        mmWidth = 34131
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'Descripcion'
        DataPipeline = plDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDet'
        mmHeight = 3440
        mmLeft = 37042
        mmTop = 529
        mmWidth = 92340
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'Debito'
        DataPipeline = plDet
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDet'
        mmHeight = 3440
        mmLeft = 132821
        mmTop = 529
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'Credito'
        DataPipeline = plDet
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDet'
        mmHeight = 3440
        mmLeft = 160073
        mmTop = 529
        mmWidth = 25400
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 21960
      mmPrintPosition = 0
      object ppLabel14: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Concepto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 794
        mmWidth = 19050
        BandType = 8
      end
      object ppDBRichText2: TppDBRichText
        UserName = 'DBRichText1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        DataField = 'Concepto'
        DataPipeline = plHeader
        ParentDataPipeline = False
        RemoveEmptyLines = False
        DataPipelineName = 'plHeader'
        mmHeight = 14817
        mmLeft = 1058
        mmTop = 5821
        mmWidth = 132292
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeftMargin = 794
      end
      object ppLine2: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1058
        mmTop = 5027
        mmWidth = 133350
        BandType = 8
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object spCxpDocumentoRpt: TADOStoredProc
    Active = True
    Connection = dm.Coneccion
    CursorType = ctStatic
    ProcedureName = 'cxpDocumentoRpt;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@idDoc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 534
    Top = 96
    object spCxpDocumentoRptidDocumento: TAutoIncField
      FieldName = 'idDocumento'
      ReadOnly = True
    end
    object spCxpDocumentoRptidTrans: TIntegerField
      FieldName = 'idTrans'
    end
    object spCxpDocumentoRptFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object spCxpDocumentoRptidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
    end
    object spCxpDocumentoRptReferencia: TStringField
      FieldName = 'Referencia'
    end
    object spCxpDocumentoRptValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object spCxpDocumentoRptMontoImpuestos: TBCDField
      FieldName = 'MontoImpuestos'
      Precision = 19
      Size = 2
    end
    object spCxpDocumentoRptMontoDescuento: TBCDField
      FieldName = 'MontoDescuento'
      Precision = 19
      Size = 2
    end
    object spCxpDocumentoRptMontoRetenciones: TBCDField
      FieldName = 'MontoRetenciones'
      Precision = 19
      Size = 2
    end
    object spCxpDocumentoRptConcepto: TStringField
      FieldName = 'Concepto'
      Size = 600
    end
    object spCxpDocumentoRptidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object spCxpDocumentoRptCodifManual: TBooleanField
      FieldName = 'CodifManual'
    end
    object spCxpDocumentoRptStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object spCxpDocumentoRptFechaStatus: TDateTimeField
      FieldName = 'FechaStatus'
    end
    object spCxpDocumentoRptidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
    end
    object spCxpDocumentoRptidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object spCxpDocumentoRptTipoDocOrigen: TStringField
      FieldName = 'TipoDocOrigen'
      Size = 2
    end
    object spCxpDocumentoRptDocOrigen: TIntegerField
      FieldName = 'DocOrigen'
    end
    object spCxpDocumentoRptDias: TSmallintField
      FieldName = 'Dias'
    end
    object spCxpDocumentoRptMostrarEnCXP: TBooleanField
      FieldName = 'MostrarEnCXP'
    end
    object spCxpDocumentoRptBienesServicio: TSmallintField
      FieldName = 'BienesServicio'
    end
    object spCxpDocumentoRptNotaAdicional: TStringField
      FieldName = 'NotaAdicional'
      Size = 100
    end
    object spCxpDocumentoRptidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
    end
    object spCxpDocumentoRptCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object spCxpDocumentoRptGUIDDocumento: TGuidField
      FieldName = 'GUIDDocumento'
      FixedChar = True
      Size = 38
    end
    object spCxpDocumentoRptTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 21
      Size = 2
    end
    object spCxpDocumentoRptTotalNeto: TBCDField
      FieldName = 'TotalNeto'
      ReadOnly = True
      Precision = 20
      Size = 2
    end
    object spCxpDocumentoRptidTipoIdentificacion: TStringField
      FieldName = 'idTipoIdentificacion'
      Size = 2
    end
    object spCxpDocumentoRptidClaseGasto: TStringField
      FieldName = 'idClaseGasto'
      Size = 2
    end
    object spCxpDocumentoRptTasa: TBCDField
      FieldName = 'Tasa'
      Precision = 18
      Size = 2
    end
    object spCxpDocumentoRptTelefono1: TStringField
      FieldName = 'Telefono1'
      Size = 30
    end
    object spCxpDocumentoRptTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 30
    end
    object spCxpDocumentoRptFax: TStringField
      FieldName = 'Fax'
      Size = 30
    end
    object spCxpDocumentoRptDireccion: TStringField
      FieldName = 'Direccion'
      Size = 250
    end
    object spCxpDocumentoRptNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object spCxpDocumentoRptRNC: TStringField
      FieldName = 'RNC'
    end
    object spCxpDocumentoRptPedirNCF: TStringField
      FieldName = 'PedirNCF'
      FixedChar = True
      Size = 1
    end
    object spCxpDocumentoRptttDescripcion: TStringField
      FieldName = 'ttDescripcion'
      Size = 30
    end
    object spCxpDocumentoRptttDebCre: TWordField
      FieldName = 'ttDebCre'
    end
    object spCxpDocumentoRptttAbrev: TStringField
      FieldName = 'ttAbrev'
      Size = 5
    end
    object spCxpDocumentoRptTotalRetenciones: TFloatField
      FieldName = 'TotalRetenciones'
      ReadOnly = True
    end
    object spCxpDocumentoRptidAuxiliar_1: TStringField
      FieldName = 'idAuxiliar_1'
      Size = 16
    end
    object spCxpDocumentoRptDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 60
    end
    object spCxpDocumentoRptDebCre: TWordField
      FieldName = 'DebCre'
    end
    object spCxpDocumentoRptAutomatica: TBooleanField
      FieldName = 'Automatica'
    end
    object spCxpDocumentoRptDebito: TBCDField
      FieldName = 'Debito'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object spCxpDocumentoRptCredito: TBCDField
      FieldName = 'Credito'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object spCxpDocumentoRptMoneda: TStringField
      FieldName = 'Moneda'
    end
  end
  object plDocRpt: TppDBPipeline
    DataSource = dsDocRpt
    UserName = 'plDocRpt'
    Left = 538
    Top = 204
    object plDocRptppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'idDocumento'
      FieldName = 'idDocumento'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 0
    end
    object plDocRptppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'idTrans'
      FieldName = 'idTrans'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object plDocRptppField3: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object plDocRptppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'idSuplidor'
      FieldName = 'idSuplidor'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object plDocRptppField5: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object plDocRptppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor'
      FieldName = 'Valor'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 5
    end
    object plDocRptppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'MontoImpuestos'
      FieldName = 'MontoImpuestos'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 6
    end
    object plDocRptppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'MontoDescuento'
      FieldName = 'MontoDescuento'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 7
    end
    object plDocRptppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'MontoRetenciones'
      FieldName = 'MontoRetenciones'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 8
    end
    object plDocRptppField10: TppField
      FieldAlias = 'Concepto'
      FieldName = 'Concepto'
      FieldLength = 600
      DisplayWidth = 600
      Position = 9
    end
    object plDocRptppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'idMoneda'
      FieldName = 'idMoneda'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object plDocRptppField12: TppField
      FieldAlias = 'CodifManual'
      FieldName = 'CodifManual'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 11
    end
    object plDocRptppField13: TppField
      FieldAlias = 'Status'
      FieldName = 'Status'
      FieldLength = 1
      DisplayWidth = 1
      Position = 12
    end
    object plDocRptppField14: TppField
      FieldAlias = 'FechaStatus'
      FieldName = 'FechaStatus'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
    object plDocRptppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'idCuentaBanco'
      FieldName = 'idCuentaBanco'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object plDocRptppField16: TppField
      FieldAlias = 'idCuenta'
      FieldName = 'idCuenta'
      FieldLength = 16
      DisplayWidth = 16
      Position = 15
    end
    object plDocRptppField17: TppField
      FieldAlias = 'TipoDocOrigen'
      FieldName = 'TipoDocOrigen'
      FieldLength = 2
      DisplayWidth = 2
      Position = 16
    end
    object plDocRptppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'DocOrigen'
      FieldName = 'DocOrigen'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object plDocRptppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'Dias'
      FieldName = 'Dias'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object plDocRptppField20: TppField
      FieldAlias = 'MostrarEnCXP'
      FieldName = 'MostrarEnCXP'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 19
    end
    object plDocRptppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'BienesServicio'
      FieldName = 'BienesServicio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object plDocRptppField22: TppField
      FieldAlias = 'NotaAdicional'
      FieldName = 'NotaAdicional'
      FieldLength = 100
      DisplayWidth = 100
      Position = 21
    end
    object plDocRptppField23: TppField
      FieldAlias = 'idAuxiliar'
      FieldName = 'idAuxiliar'
      FieldLength = 16
      DisplayWidth = 16
      Position = 22
    end
    object plDocRptppField24: TppField
      FieldAlias = 'CompFiscal'
      FieldName = 'CompFiscal'
      FieldLength = 19
      DisplayWidth = 19
      Position = 23
    end
    object plDocRptppField25: TppField
      FieldAlias = 'GUIDDocumento'
      FieldName = 'GUIDDocumento'
      FieldLength = 38
      DisplayWidth = 38
      Position = 24
    end
    object plDocRptppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 22
      Position = 25
    end
    object plDocRptppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalNeto'
      FieldName = 'TotalNeto'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 21
      Position = 26
    end
    object plDocRptppField28: TppField
      FieldAlias = 'idTipoIdentificacion'
      FieldName = 'idTipoIdentificacion'
      FieldLength = 2
      DisplayWidth = 2
      Position = 27
    end
    object plDocRptppField29: TppField
      FieldAlias = 'idClaseGasto'
      FieldName = 'idClaseGasto'
      FieldLength = 2
      DisplayWidth = 2
      Position = 28
    end
    object plDocRptppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tasa'
      FieldName = 'Tasa'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 19
      Position = 29
    end
    object plDocRptppField31: TppField
      FieldAlias = 'Telefono1'
      FieldName = 'Telefono1'
      FieldLength = 30
      DisplayWidth = 30
      Position = 30
    end
    object plDocRptppField32: TppField
      FieldAlias = 'Telefono2'
      FieldName = 'Telefono2'
      FieldLength = 30
      DisplayWidth = 30
      Position = 31
    end
    object plDocRptppField33: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 30
      DisplayWidth = 30
      Position = 32
    end
    object plDocRptppField34: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 250
      DisplayWidth = 250
      Position = 33
    end
    object plDocRptppField35: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 100
      DisplayWidth = 100
      Position = 34
    end
    object plDocRptppField36: TppField
      FieldAlias = 'RNC'
      FieldName = 'RNC'
      FieldLength = 20
      DisplayWidth = 20
      Position = 35
    end
    object plDocRptppField37: TppField
      FieldAlias = 'PedirNCF'
      FieldName = 'PedirNCF'
      FieldLength = 1
      DisplayWidth = 1
      Position = 36
    end
    object plDocRptppField38: TppField
      FieldAlias = 'ttDescripcion'
      FieldName = 'ttDescripcion'
      FieldLength = 30
      DisplayWidth = 30
      Position = 37
    end
    object plDocRptppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'ttDebCre'
      FieldName = 'ttDebCre'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 38
    end
    object plDocRptppField40: TppField
      FieldAlias = 'ttAbrev'
      FieldName = 'ttAbrev'
      FieldLength = 5
      DisplayWidth = 5
      Position = 39
    end
    object plDocRptppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalRetenciones'
      FieldName = 'TotalRetenciones'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 40
    end
    object plDocRptppField42: TppField
      FieldAlias = 'idAuxiliar_1'
      FieldName = 'idAuxiliar_1'
      FieldLength = 16
      DisplayWidth = 16
      Position = 41
    end
    object plDocRptppField43: TppField
      FieldAlias = 'Descripcion'
      FieldName = 'Descripcion'
      FieldLength = 60
      DisplayWidth = 60
      Position = 42
    end
    object plDocRptppField44: TppField
      Alignment = taRightJustify
      FieldAlias = 'DebCre'
      FieldName = 'DebCre'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 43
    end
    object plDocRptppField45: TppField
      FieldAlias = 'Automatica'
      FieldName = 'Automatica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 44
    end
    object plDocRptppField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'Debito'
      FieldName = 'Debito'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 45
    end
    object plDocRptppField47: TppField
      Alignment = taRightJustify
      FieldAlias = 'Credito'
      FieldName = 'Credito'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 20
      Position = 46
    end
    object plDocRptppField48: TppField
      FieldAlias = 'Moneda'
      FieldName = 'Moneda'
      FieldLength = 20
      DisplayWidth = 20
      Position = 47
    end
  end
  object rptDocProveedoresInf: TppReport
    AutoStop = False
    DataPipeline = plDocRpt
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
    Left = 538
    Top = 252
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plDocRpt'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 120386
      mmPrintPosition = 0
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkEnabled = False
        Caption = 'COMPROBANTE FISCAL ESPECIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 74613
        mmTop = 1852
        mmWidth = 53975
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkEnabled = False
        Caption = 'PARA PROVEEDORES INFORMALES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 73554
        mmTop = 6085
        mmWidth = 56092
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkEnabled = False
        Caption = 'NCF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3831
        mmLeft = 1852
        mmTop = 14288
        mmWidth = 7557
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkEnabled = False
        Caption = 'FECHA EMISION:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3831
        mmLeft = 1852
        mmTop = 18785
        mmWidth = 27390
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkEnabled = False
        Caption = 'NOMBRE O RAZON SOCIAL DEL CONTRIBUYENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3831
        mmLeft = 1588
        mmTop = 28575
        mmWidth = 78761
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label201'
        HyperlinkEnabled = False
        Caption = 'RNC CONTRIBUYENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3831
        mmLeft = 1323
        mmTop = 33073
        mmWidth = 35602
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkEnabled = False
        Caption = 'DIRECCION DEL CONTRIBUYENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3831
        mmLeft = 1323
        mmTop = 37306
        mmWidth = 54737
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkEnabled = False
        Caption = 'NOMBRE O RAZON SOCIAL DEL PROVEEDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3831
        mmLeft = 2381
        mmTop = 52917
        mmWidth = 71035
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkEnabled = False
        Caption = 'CEDULA DEL PROVEEDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3831
        mmLeft = 2117
        mmTop = 57150
        mmWidth = 40936
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkEnabled = False
        Caption = 'CONCEPTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3831
        mmLeft = 2381
        mmTop = 66675
        mmWidth = 17590
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkEnabled = False
        Caption = 'TOTAL EXENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 10054
        mmTop = 107950
        mmWidth = 24342
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkEnabled = False
        Caption = 'TOTAL GRAVADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 10054
        mmTop = 112184
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkEnabled = False
        Caption = 'TOTAL ITBIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3831
        mmLeft = 124090
        mmTop = 108215
        mmWidth = 20511
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkEnabled = False
        Caption = 'TOTAL DOCUMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3831
        mmLeft = 124090
        mmTop = 112448
        mmWidth = 32258
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 1058
        mmTop = 794
        mmWidth = 200819
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line101'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 1058
        mmTop = 10583
        mmWidth = 200819
        BandType = 0
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        HyperlinkEnabled = False
        DataField = 'CompFiscal'
        DataPipeline = plDocRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDocRpt'
        mmHeight = 3704
        mmLeft = 48154
        mmTop = 14288
        mmWidth = 84138
        BandType = 0
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        HyperlinkEnabled = False
        DataField = 'Fecha'
        DataPipeline = plDocRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDocRpt'
        mmHeight = 3704
        mmLeft = 48154
        mmTop = 18785
        mmWidth = 23283
        BandType = 0
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 80698
        mmTop = 28575
        mmWidth = 112977
        BandType = 0
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        HyperlinkEnabled = False
        DataField = 'RNC'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 80698
        mmTop = 33073
        mmWidth = 62177
        BandType = 0
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        HyperlinkEnabled = False
        DataField = 'Direccion'
        DataPipeline = dm.plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 3704
        mmLeft = 80698
        mmTop = 37306
        mmWidth = 112713
        BandType = 0
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        HyperlinkEnabled = False
        DataField = 'Nombre'
        DataPipeline = plDocRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDocRpt'
        mmHeight = 3704
        mmLeft = 80698
        mmTop = 52917
        mmWidth = 118004
        BandType = 0
      end
      object ppDBText31: TppDBText
        UserName = 'DBText301'
        HyperlinkEnabled = False
        DataField = 'RNC'
        DataPipeline = plDocRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plDocRpt'
        mmHeight = 3704
        mmLeft = 80698
        mmTop = 57150
        mmWidth = 80963
        BandType = 0
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Concepto'
        DataPipeline = plDocRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'plDocRpt'
        mmHeight = 21167
        mmLeft = 2381
        mmTop = 71438
        mmWidth = 197909
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        HyperlinkEnabled = False
        DataPipeline = plDocRpt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plDocRpt'
        mmHeight = 3704
        mmLeft = 43127
        mmTop = 107950
        mmWidth = 37306
        BandType = 0
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        HyperlinkEnabled = False
        DataPipeline = plDocRpt
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'plDocRpt'
        mmHeight = 3704
        mmLeft = 43127
        mmTop = 112184
        mmWidth = 37306
        BandType = 0
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        HyperlinkEnabled = False
        DataField = 'MontoImpuestos'
        DataPipeline = plDocRpt
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDocRpt'
        mmHeight = 3704
        mmLeft = 157163
        mmTop = 108215
        mmWidth = 37306
        BandType = 0
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        HyperlinkEnabled = False
        DataField = 'Total'
        DataPipeline = plDocRpt
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plDocRpt'
        mmHeight = 3704
        mmLeft = 157163
        mmTop = 112448
        mmWidth = 37306
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 1323
        mmTop = 106363
        mmWidth = 200819
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 1058
        mmTop = 117475
        mmWidth = 200819
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 529
        mmTop = 26194
        mmWidth = 200819
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 529
        mmTop = 42863
        mmWidth = 200819
        BandType = 0
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 1588
        mmTop = 62177
        mmWidth = 200819
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand3: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
    end
    object ppParameterList3: TppParameterList
    end
  end
  object dsDocRpt: TDataSource
    DataSet = spCxpDocumentoRpt
    Left = 538
    Top = 150
  end
end

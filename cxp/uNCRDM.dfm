object ncrdm: Tncrdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 373
  Top = 334
  Height = 585
  Width = 720
  object rsDocumento: TADODataSet
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
    Left = 26
    Top = 12
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
    object rsDocumentoTotalNeto: TBCDField
      FieldName = 'TotalNeto'
      ReadOnly = True
      Precision = 20
      Size = 2
    end
    object rsDocumentoNotaAdicional: TStringField
      FieldName = 'NotaAdicional'
      Size = 100
    end
    object rsDocumentoTotalRetenciones: TFloatField
      FieldName = 'TotalRetenciones'
      ReadOnly = True
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
    object rsDocumentoBancoDestino: TStringField
      FieldName = 'BancoDestino'
      Size = 5
    end
    object rsDocumentoCuentaDestino: TStringField
      FieldName = 'CuentaDestino'
    end
    object rsDocumentoTipoAbono: TStringField
      FieldName = 'TipoAbono'
      Size = 1
    end
    object rsDocumentoVencimiento: TDateTimeField
      FieldName = 'Vencimiento'
    end
    object rsDocumentoFechaEmision: TDateTimeField
      FieldName = 'FechaEmision'
    end
    object rsDocumentoTipoGasto: TStringField
      FieldName = 'TipoGasto'
      Size = 16
    end
    object rsDocumentoOrdenCompra: TStringField
      FieldName = 'OrdenCompra'
      Size = 16
    end
    object rsDocumentomontoFacturadoBienes: TBCDField
      FieldName = 'montoFacturadoBienes'
      Precision = 19
      Size = 2
    end
    object rsDocumentomontoFacturadoServicios: TBCDField
      FieldName = 'montoFacturadoServicios'
      Precision = 19
      Size = 2
    end
    object rsDocumentoidPagoForma: TIntegerField
      FieldName = 'idPagoForma'
    end
  end
  object mDocumento: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'idDocumento'
        Attributes = [faReadonly, faFixed]
        DataType = ftInteger
      end
      item
        Name = 'idTrans'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'Fecha'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'idSuplidor'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Valor'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 19
        Size = 2
      end
      item
        Name = 'MontoImpuestos'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 19
        Size = 2
      end
      item
        Name = 'MontoDescuento'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 19
        Size = 2
      end
      item
        Name = 'MontoRetenciones'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 19
        Size = 2
      end
      item
        Name = 'Total'
        Attributes = [faReadonly, faFixed]
        DataType = ftBCD
        Precision = 22
        Size = 2
      end
      item
        Name = 'Concepto'
        DataType = ftString
        Size = 600
      end
      item
        Name = 'idMoneda'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'Telefono1'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'Fax'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Direccion'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Nombre'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'RNC'
        DataType = ftString
        Size = 20
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
    OnCalcFields = mDocumentoCalcFields
    Left = 34
    Top = 72
    object mDocumentoidDocumento: TIntegerField
      FieldName = 'idDocumento'
    end
    object mDocumentoidTrans: TIntegerField
      FieldName = 'idTrans'
      OnValidate = mDocumentoidTransValidate
    end
    object mDocumentoFecha: TDateTimeField
      FieldName = 'Fecha'
      OnValidate = mDocumentoFechaValidate
    end
    object mDocumentoidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
      OnValidate = mDocumentoidSuplidorValidate
    end
    object mDocumentoReferencia: TStringField
      FieldName = 'Referencia'
      OnValidate = mDocumentoReferenciaValidate
    end
    object mDocumentoValor: TCurrencyField
      FieldName = 'Valor'
      OnValidate = mDocumentoValorValidate
    end
    object mDocumentoMontoImpuestos: TBCDField
      FieldName = 'MontoImpuestos'
      Precision = 19
      Size = 2
    end
    object mDocumentoMontoDescuento: TBCDField
      FieldName = 'MontoDescuento'
      Precision = 19
      Size = 2
    end
    object mDocumentoMontoRetenciones: TBCDField
      FieldName = 'MontoRetenciones'
      Precision = 19
      Size = 2
    end
    object mDocumentoTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 22
      Size = 2
    end
    object mDocumentoConcepto: TStringField
      FieldName = 'Concepto'
      Size = 600
    end
    object mDocumentoidMoneda: TIntegerField
      FieldName = 'idMoneda'
      OnValidate = mDocumentoidMonedaValidate
    end
    object mDocumentoTelefono1: TStringField
      FieldName = 'Telefono1'
      Size = 14
    end
    object mDocumentoTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 14
    end
    object mDocumentoFax: TStringField
      FieldName = 'Fax'
      Size = 8
    end
    object mDocumentoDireccion: TStringField
      FieldName = 'Direccion'
      Size = 100
    end
    object mDocumentoNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object mDocumentoRNC: TStringField
      FieldName = 'RNC'
    end
    object mDocumentoCodifManual: TBooleanField
      FieldName = 'CodifManual'
    end
    object mDocumentoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object mDocumentoDebCre: TIntegerField
      FieldName = 'DebCre'
    end
    object mDocumentoAbrev: TStringField
      FieldName = 'Abrev'
      Size = 15
    end
    object mDocumentoidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object mDocumentoStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object mDocumentoFechaStatus: TDateTimeField
      FieldName = 'FechaStatus'
    end
    object mDocumentoidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
    end
    object mDocumentocTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'cTotal'
      Calculated = True
    end
    object mDocumentoTipoDocOrigen: TStringField
      FieldName = 'TipoDocOrigen'
      Size = 2
    end
    object mDocumentoDocOrigen: TIntegerField
      FieldName = 'DocOrigen'
    end
    object mDocumentoAplicado: TCurrencyField
      FieldName = 'Aplicado'
      DisplayFormat = '"Aplicado:" ###,###,##0.00'
      currency = False
    end
    object mDocumentoDiferencia: TCurrencyField
      FieldName = 'Diferencia'
      DisplayFormat = '"Descuadre:" ###,###,##0.00'
    end
    object mDocumentoDias: TSmallintField
      FieldName = 'Dias'
    end
    object mDocumentoMostrarEnCXP: TBooleanField
      FieldName = 'MostrarEnCXP'
    end
    object mDocumentoPorAplicar: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PorAplicar'
      DisplayFormat = '"Por aplicar:" ###,###,##0.00'
      currency = False
      Calculated = True
    end
    object mDocumentoNotaAdicional: TStringField
      FieldName = 'NotaAdicional'
      Size = 100
    end
    object mDocumentoidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
    end
    object mDocumentoCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object mDocumentoGUIDDocumento: TGuidField
      FieldName = 'GUIDDocumento'
      FixedChar = True
      Size = 38
    end
    object mDocumentoTasa: TFloatField
      FieldName = 'Tasa'
    end
    object mDocumentoidTipoIdentificacion: TStringField
      FieldName = 'idTipoIdentificacion'
      Size = 2
    end
    object mDocumentoVencimiento: TDateTimeField
      FieldName = 'Vencimiento'
    end
    object mDocumentoFechaEmision: TDateTimeField
      FieldName = 'FechaEmision'
    end
    object mDocumentoTipoGasto: TStringField
      FieldName = 'TipoGasto'
      Size = 16
    end
    object mDocumentoOrdenCompra: TStringField
      FieldName = 'OrdenCompra'
      Size = 16
    end
    object mDocumentomontoFacturadoServicios: TBCDField
      FieldName = 'montoFacturadoServicios'
      Precision = 19
      Size = 2
    end
    object mDocumentomontoFacturadoBienes: TBCDField
      FieldName = 'montoFacturadoBienes'
      Precision = 19
      Size = 2
    end
    object mDocumentoidPagoForma: TIntegerField
      FieldName = 'idPagoForma'
    end
  end
  object cGuardar: TADOCommand
    CommandText = 'cxpGuardarDocumento'
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
        Name = '@idDocumento'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@idTrans'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@idSuplidor'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Referencia'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@Valor'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@MontoImpuestos'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@MontoDescuento'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@MontoRetenciones'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@Concepto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 6000
        Value = Null
      end
      item
        Name = '@IdMoneda'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@CodifManual'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@idCuenta'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@idAuxiliar'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@Status'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@FechaStatus'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@idCuentaBanco'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@TipoDocOrigen'
        Attributes = [paNullable]
        DataType = ftString
        Size = 3
        Value = Null
      end
      item
        Name = '@DocOrigen'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Dias'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@MostrarEnCXP'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@idClaseGasto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@NotaAdicional'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@facturadoServicios'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@facturadoBienes'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@idFormaPago'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@nid'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end
      item
        Name = '@NCF'
        Attributes = [paNullable]
        DataType = ftString
        Size = 19
        Value = Null
      end
      item
        Name = '@GuidDocumento'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@Tasa'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@idTipoIdentificacion'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@RNC'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@Nombre'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@FechaEmision'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Vencimiento'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@TipoGasto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@OrdenCompra'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@idOrden'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 194
    Top = 122
  end
  object rsMonedas: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select idMoneda, Moneda as Nombre'#13#10' from Moneda order by Moneda'
    Parameters = <>
    Left = 122
    Top = 12
    object rsMonedasidMoneda: TIntegerField
      FieldName = 'idMoneda'
      ReadOnly = True
    end
    object uu: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
  end
  object rsTipoTrans: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select idTrans, Descripcion, debcre, Abrev'#13#10' from TiposTrans '#13#10'w' +
      'here idTrans = :idTr and Sistema = '#39'CXP'#39
    Parameters = <
      item
        Name = 'idTr'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 272
    Top = 122
    object rsTipoTransidTrans: TIntegerField
      FieldName = 'idTrans'
    end
    object rsTipoTransDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 30
    end
    object rsTipoTransAbrev: TStringField
      FieldName = 'Abrev'
      Size = 5
    end
    object rsTipoTransDebCre: TWordField
      FieldName = 'DebCre'
    end
  end
  object mDocDtl: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'idSolicitud'
        DataType = ftInteger
      end
      item
        Name = 'idDocumento'
        DataType = ftInteger
      end
      item
        Name = 'Valor'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Total'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'Fecha'
        DataType = ftDateTime
      end
      item
        Name = 'Abrev'
        DataType = ftString
        Size = 5
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
    AfterPost = mDocDtlAfterPost
    AfterDelete = mDocDtlAfterPost
    AfterScroll = mDocDtlAfterScroll
    OnNewRecord = mDocDtlNewRecord
    Left = 28
    Top = 122
    object mDocDtlidDocumento: TIntegerField
      FieldName = 'idDocumento'
    end
    object mDocDtlidDocXPagar: TIntegerField
      FieldName = 'idDocXPagar'
      OnValidate = mDocDtlidDocXPagarValidate
    end
    object mDocDtlValor: TBCDField
      FieldName = 'Valor'
      currency = True
      Precision = 19
      Size = 2
    end
    object mDocDtlReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mDocDtlTotal: TBCDField
      FieldName = 'Total'
      currency = True
      Precision = 22
      Size = 2
    end
    object mDocDtlFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object mDocDtlAbrev: TStringField
      FieldName = 'Abrev'
      Size = 5
    end
    object mDocDtlFechaDoc: TDateTimeField
      FieldName = 'FechaDoc'
    end
    object mDocDtlTasa: TFloatField
      FieldName = 'Tasa'
    end
    object mDocDtlidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object mDocDtlidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
  end
  object mCtasDoc: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'idCuenta'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'Descripcion'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DebCre'
        Attributes = [faFixed]
        DataType = ftWord
      end
      item
        Name = 'Debito'
        Attributes = [faReadonly, faFixed]
        DataType = ftBCD
        Precision = 19
        Size = 2
      end
      item
        Name = 'Credito'
        Attributes = [faReadonly, faFixed]
        DataType = ftBCD
        Precision = 19
        Size = 2
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
    BeforeEdit = mCtasDocBeforeEdit
    AfterPost = mCtasDocAfterPost
    AfterDelete = mCtasDocAfterPost
    OnNewRecord = mCtasDocNewRecord
    Left = 122
    Top = 122
    object mCtasDocidCuenta: TStringField
      FieldName = 'idCuenta'
      OnValidate = mCtasDocidCuentaValidate
      Size = 16
    end
    object mCtasDocDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 60
    end
    object mCtasDocDebCre: TWordField
      FieldName = 'DebCre'
    end
    object mCtasDocDebito: TBCDField
      FieldName = 'Debito'
      OnValidate = mCtasDocDebitoValidate
      currency = True
      Precision = 19
      Size = 2
    end
    object mCtasDocCredito: TBCDField
      FieldName = 'Credito'
      OnValidate = mCtasDocDebitoValidate
      currency = True
      Precision = 19
      Size = 2
    end
    object mCtasDocLineaNum: TAutoIncField
      FieldName = 'LineaNum'
    end
    object mCtasDocAutomatica: TBooleanField
      FieldName = 'Automatica'
    end
    object mCtasDocidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      OnValidate = mCtasDocidAuxiliarValidate
      Size = 16
    end
    object mCtasDocidCentroCosto: TGuidField
      FieldName = 'idCentroCosto'
      OnValidate = mCtasDocidCentroCostoValidate
      FixedChar = True
      Size = 38
    end
    object mCtasDocCentroCosto: TStringField
      FieldName = 'CentroCosto'
      OnValidate = mCtasDocCentroCostoValidate
      Size = 16
    end
    object mCtasDocidPartida: TStringField
      FieldName = 'idPartida'
      Size = 16
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
    Left = 122
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
    object rsCtasDocidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
    end
    object rsCtasDocidCentroCosto: TGuidField
      FieldName = 'idCentroCosto'
      FixedChar = True
      Size = 38
    end
    object rsCtasDocCentroCosto: TStringField
      FieldName = 'CentroCosto'
      Size = 16
    end
    object rsCtasDocIdpartida: TStringField
      FieldName = 'Idpartida'
      Size = 16
    end
  end
  object cBorrarCtas: TADOCommand
    CommandText = 'cxpBorrarCtasDoc;1'
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
        Name = '@IdDocumento'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 272
    Top = 74
  end
  object cGuardarCtas: TADOCommand
    CommandText = 'cxpGuardarCtasDoc;1'
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
        Name = '@IdDocumento'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Cta'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@Aux'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@dbcr'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@Valor'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end
      item
        Name = '@Automatica'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
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
      end
      item
        Name = '@idPartida'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 272
    Top = 12
  end
  object rsBuscarDoc: TADODataSet
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
    Left = 26
    Top = 208
    object rsBuscarDocidDocumento: TIntegerField
      FieldName = 'idDocumento'
      ReadOnly = True
    end
    object rsBuscarDocidTrans: TIntegerField
      FieldName = 'idTrans'
    end
    object rsBuscarDocFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsBuscarDocidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
    end
    object rsBuscarDocReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsBuscarDocValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object rsBuscarDocMontoImpuestos: TBCDField
      FieldName = 'MontoImpuestos'
      Precision = 19
      Size = 2
    end
    object rsBuscarDocMontoDescuento: TBCDField
      FieldName = 'MontoDescuento'
      Precision = 19
      Size = 2
    end
    object rsBuscarDocMontoRetenciones: TBCDField
      FieldName = 'MontoRetenciones'
      Precision = 19
      Size = 2
    end
    object rsBuscarDocTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 22
      Size = 2
    end
    object rsBuscarDocConcepto: TStringField
      FieldName = 'Concepto'
      Size = 600
    end
    object rsBuscarDocidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsBuscarDocCodifManual: TBooleanField
      FieldName = 'CodifManual'
    end
    object rsBuscarDocTelefono1: TStringField
      FieldName = 'Telefono1'
    end
    object rsBuscarDocTelefono2: TStringField
      FieldName = 'Telefono2'
    end
    object rsBuscarDocFax: TStringField
      FieldName = 'Fax'
    end
    object rsBuscarDocDireccion: TStringField
      FieldName = 'Direccion'
      Size = 250
    end
    object rsBuscarDocNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsBuscarDocRNC: TStringField
      FieldName = 'RNC'
    end
    object rsBuscarDocDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 30
    end
    object rsBuscarDocDebCre: TWordField
      FieldName = 'DebCre'
    end
    object rsBuscarDocAbrev: TStringField
      FieldName = 'Abrev'
      Size = 5
    end
    object rsBuscarDocStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object rsBuscarDocFechaStatus: TDateTimeField
      FieldName = 'FechaStatus'
    end
    object rsBuscarDocidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
    end
    object rsBuscarDocidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsBuscarDocTipoDocOrigen: TStringField
      FieldName = 'TipoDocOrigen'
      Size = 2
    end
    object rsBuscarDocDocOrigen: TIntegerField
      FieldName = 'DocOrigen'
    end
    object rsBuscarDocDias: TSmallintField
      FieldName = 'Dias'
    end
    object rsBuscarDocMostrarEnCXP: TBooleanField
      FieldName = 'MostrarEnCXP'
    end
    object rsBuscarDocBienesServicio: TSmallintField
      FieldName = 'BienesServicio'
    end
    object rsBuscarDocNotaAdicional: TStringField
      FieldName = 'NotaAdicional'
      Size = 100
    end
    object rsBuscarDocidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
    end
    object rsBuscarDocCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object rsBuscarDocGUIDDocumento: TGuidField
      FieldName = 'GUIDDocumento'
      FixedChar = True
      Size = 38
    end
    object rsBuscarDocTotalNeto: TBCDField
      FieldName = 'TotalNeto'
      ReadOnly = True
      Precision = 20
      Size = 2
    end
    object rsBuscarDocidTipoIdentificacion: TStringField
      FieldName = 'idTipoIdentificacion'
      Size = 2
    end
    object rsBuscarDocidClaseGasto: TStringField
      FieldName = 'idClaseGasto'
      Size = 2
    end
    object rsBuscarDocTasa: TBCDField
      FieldName = 'Tasa'
      Precision = 18
      Size = 2
    end
    object rsBuscarDocPedirNCF: TStringField
      FieldName = 'PedirNCF'
      FixedChar = True
      Size = 1
    end
    object rsBuscarDocTotalRetenciones: TFloatField
      FieldName = 'TotalRetenciones'
      ReadOnly = True
    end
  end
  object cGuardarDocDtl: TADOCommand
    CommandText = 'cxpGuardarDocDtl;1'
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
        Name = '@idDocumento'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@idDocXPagar'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Fec'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Valor'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@Tasa'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end>
    Left = 122
    Top = 208
  end
  object cBorrarDtl: TADOCommand
    CommandText = 'cxpBorrarDocDtl;1'
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
        Name = '@idDocumento'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 196
    Top = 208
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
    Left = 366
    Top = 12
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
    object rsDocDtlTasa: TBCDField
      FieldName = 'Tasa'
      Precision = 18
      Size = 2
    end
    object rsDocDtlidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsDocDtlidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
  end
  object rsDocsPendientes: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpDocsPendientes;1'
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
        Name = '@idEnt'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 30
    Top = 276
    object rsDocsPendientesidTrans: TIntegerField
      FieldName = 'idTrans'
    end
    object rsDocsPendientesidDocumento: TIntegerField
      FieldName = 'idDocumento'
      ReadOnly = True
    end
    object rsDocsPendientesFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsDocsPendientesValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object rsDocsPendientesPagado: TBCDField
      FieldName = 'Pagado'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object rsDocsPendientesReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsDocsPendientesAbrev: TStringField
      FieldName = 'Abrev'
      Size = 5
    end
    object rsDocsPendientesidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsDocsPendientestasa: TBCDField
      FieldName = 'tasa'
      Precision = 18
      Size = 2
    end
    object rsDocsPendientesTotalRetenciones: TFloatField
      FieldName = 'TotalRetenciones'
      ReadOnly = True
    end
    object rsDocsPendientesidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
  end
  object mDocsPendientes: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'idTrans'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'idDocumento'
        Attributes = [faReadonly, faFixed]
        DataType = ftInteger
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Fecha'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'Valor'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 19
        Size = 2
      end
      item
        Name = 'Abrev'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Pagado'
        Attributes = [faReadonly, faFixed]
        DataType = ftBCD
        Precision = 38
        Size = 2
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
    OnCalcFields = mDocsPendientesCalcFields
    Left = 122
    Top = 276
    object mDocsPendientesidTrans: TIntegerField
      FieldName = 'idTrans'
    end
    object mDocsPendientesidDocumento: TIntegerField
      FieldName = 'idDocumento'
      ReadOnly = True
    end
    object mDocsPendientesReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mDocsPendientesFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object mDocsPendientesValor: TBCDField
      FieldName = 'Valor'
      currency = True
      Precision = 19
      Size = 2
    end
    object mDocsPendientesAbrev: TStringField
      FieldName = 'Abrev'
      Size = 5
    end
    object mDocsPendientesPagado: TBCDField
      FieldName = 'Pagado'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object mDocsPendientesSel: TBooleanField
      DefaultExpression = 'False'
      FieldName = 'Sel'
    end
    object mDocsPendientesPendiente: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Pendiente'
      Calculated = True
    end
    object mDocsPendientesidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object mDocsPendientesTasa: TFloatField
      FieldName = 'Tasa'
    end
    object mDocsPendientesidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
  end
  object cBorrarDocDtl: TADOCommand
    CommandText = 'cxpBorrarDocDtl;1'
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
        Name = '@idDocumento'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 366
    Top = 74
  end
  object cValidarDoc: TADOCommand
    CommandText = 'cxpValidarDoc;1'
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
        Name = '@idTr'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Ref'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@idSup'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@idDoc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@OtroDoc'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 196
    Top = 276
  end
  object cBorrarDocumento: TADOCommand
    CommandText = 'cxpBorrarDocumento;1'
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
        Name = '@idDoc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 272
    Top = 276
  end
  object cMoverAux: TADOCommand
    CommandText = 'cxpMovCKAuxiliar;1'
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
        Name = '@IdDoc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 272
    Top = 208
  end
  object rsBuscarAux: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select * from cgAuxiliar'#13#10'where idCuenta = :idCuenta and idAuxil' +
      'iar = :idAuxiliar'
    Parameters = <
      item
        Name = 'idCuenta'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'idAuxiliar'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    Left = 24
    Top = 346
  end
  object mPrimas: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'idCuenta'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'Descripcion'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DebCre'
        DataType = ftWord
      end
      item
        Name = 'Debito'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'Credito'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'LineaNum'
        DataType = ftAutoInc
      end
      item
        Name = 'Automatica'
        DataType = ftBoolean
      end
      item
        Name = 'idAuxiliar'
        DataType = ftString
        Size = 16
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
    Left = 122
    Top = 346
    object mPrimasidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object mPrimasDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 60
    end
    object mPrimasDebCre: TWordField
      FieldName = 'DebCre'
    end
    object mPrimasDebito: TBCDField
      FieldName = 'Debito'
      Size = 2
    end
    object mPrimasCredito: TBCDField
      FieldName = 'Credito'
      Size = 2
    end
    object mPrimasAutomatica: TBooleanField
      FieldName = 'Automatica'
    end
  end
  object rsBuscarPrima: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'cgCuentaPrimaBuscar;1'
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
        Name = '@idCuenta'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@idMoneda'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Debito'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@Credito'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@Tasa'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end>
    Left = 196
    Top = 346
    object rsBuscarPrimaCuenta: TStringField
      FieldName = 'Cuenta'
      Size = 16
    end
    object rsBuscarPrimaDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 60
    end
    object rsBuscarPrimaDebito: TBCDField
      FieldName = 'Debito'
      ReadOnly = True
      Precision = 32
    end
    object rsBuscarPrimaCredito: TBCDField
      FieldName = 'Credito'
      ReadOnly = True
      Precision = 32
    end
  end
  object rsBuscarProx: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 
      'select top 1 idDocumento'#13#10'from cxpDocumentos'#13#10'where idTrans = :i' +
      'dTrans and idDocumento > :idDocumento'#13#10'order by idDocumento'
    Parameters = <
      item
        Name = 'idTrans'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'idDocumento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 366
    Top = 346
  end
  object rsBuscarAnt: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 
      'select top 1 idDocumento'#13#10'from cxpDocumentos'#13#10'where idTrans = :i' +
      'dTrans and idDocumento < :idDocumento'#13#10'order by idDocumento desc'
    Parameters = <
      item
        Name = 'idTrans'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'idDocumento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 272
    Top = 346
  end
  object rsBancos: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'cxpListaBancos;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 366
    Top = 208
    object rsBancosidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
      ReadOnly = True
    end
    object rsBancosNumCuenta: TStringField
      FieldName = 'NumCuenta'
      Size = 30
    end
    object rsBancosNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsBancosidCuentaMayor: TStringField
      FieldName = 'idCuentaMayor'
      Size = 16
    end
    object rsBancosUltimoCheque: TIntegerField
      FieldName = 'UltimoCheque'
    end
  end
  object cMovPagoAux: TADOCommand
    CommandText = 'cxpMovPagoAuxiliar;1'
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
        Name = '@IdDoc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 366
    Top = 276
  end
  object rsDocRets: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpRSPagoRetencion;1'
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
    Left = 488
    Top = 12
    object rsDocRetsidPagoRetencion: TGuidField
      FieldName = 'idPagoRetencion'
      FixedChar = True
      Size = 38
    end
    object rsDocRetsidDocumento: TIntegerField
      FieldName = 'idDocumento'
    end
    object rsDocRetsidDocXPagar: TIntegerField
      FieldName = 'idDocXPagar'
    end
    object rsDocRetsPorcentaje: TFloatField
      FieldName = 'Porcentaje'
    end
    object rsDocRetsValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object rsDocRetsidRetencion: TIntegerField
      FieldName = 'idRetencion'
    end
    object rsDocRetsRetencion: TStringField
      FieldName = 'Retencion'
      Size = 100
    end
    object rsDocRetsidTipoRetencionDGII: TIntegerField
      FieldName = 'idTipoRetencionDGII'
    end
  end
  object mDocRets: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'idPagoRetencion'
        Attributes = [faFixed]
        DataType = ftGuid
        Size = 38
      end
      item
        Name = 'idDocumento'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'idDocXPagar'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'Porcentaje'
        Attributes = [faFixed]
        DataType = ftFloat
      end
      item
        Name = 'Valor'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 19
        Size = 2
      end
      item
        Name = 'idRetencion'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'Retencion'
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
    AfterPost = mDocRetsAfterPost
    OnNewRecord = mDocRetsNewRecord
    Left = 488
    Top = 74
    object mDocRetsidPagoRetencion: TGuidField
      FieldName = 'idPagoRetencion'
      FixedChar = True
      Size = 38
    end
    object mDocRetsidDocumento: TIntegerField
      FieldName = 'idDocumento'
    end
    object mDocRetsidDocXPagar: TIntegerField
      FieldName = 'idDocXPagar'
    end
    object mDocRetsPorcentaje: TFloatField
      FieldName = 'Porcentaje'
      OnValidate = mDocRetsPorcentajeValidate
    end
    object mDocRetsValor: TBCDField
      FieldName = 'Valor'
      OnValidate = mDocRetsValorValidate
      Precision = 19
      Size = 2
    end
    object mDocRetsidRetencion: TIntegerField
      FieldName = 'idRetencion'
      OnValidate = mDocRetsidRetencionValidate
    end
    object mDocRetsRetencion: TStringField
      FieldName = 'Retencion'
      Size = 100
    end
    object mDocRetsidTipoRetencionDGII: TIntegerField
      FieldName = 'idTipoRetencionDGII'
    end
  end
  object cBorrarRets: TADOCommand
    CommandText = 'cxpBorrarPagoRetencion;1'
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
        Name = '@idDocumento'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 366
    Top = 122
  end
  object cInsRet: TADOCommand
    CommandText = 'cxpInsPagoRetencion'
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
        Name = '@idDocumento'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@idPagoRetencion'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@idDocXPagar'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Porcentaje'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Valor'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@idRetencion'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Retencion'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@idTipoRetencionDGII'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 553
    Top = 13
  end
  object rsBuscarDocRets: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpAbrirDocRetencion;1'
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
    Left = 488
    Top = 122
    object rsBuscarDocRetsidDocumento: TIntegerField
      FieldName = 'idDocumento'
    end
    object rsBuscarDocRetsidRetencion: TIntegerField
      FieldName = 'idRetencion'
    end
    object rsBuscarDocRetsRetencion: TStringField
      FieldName = 'Retencion'
      Size = 50
    end
    object rsBuscarDocRetsPorcentaje: TFloatField
      FieldName = 'Porcentaje'
    end
    object rsBuscarDocRetsidTipoRetencionDGII: TIntegerField
      FieldName = 'idTipoRetencionDGII'
    end
  end
  object rsTiposRets: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpListaRetenciones;1'
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
        Name = '@orden'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 488
    Top = 208
    object rsTiposRetsidRetencion: TIntegerField
      FieldName = 'idRetencion'
      ReadOnly = True
    end
    object rsTiposRetsRetencion: TStringField
      FieldName = 'Retencion'
      Size = 50
    end
    object rsTiposRetsPorcentaje: TFloatField
      FieldName = 'Porcentaje'
    end
    object rsTiposRetsidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
  end
  object dsTiposRets: TDataSource
    DataSet = rsTiposRets
    Left = 196
    Top = 12
  end
  object rsTipoDocID: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'RSTipoIdentificacion;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 32
    Top = 425
    object rsTipoDocIDidTipoIdentificacion: TStringField
      FieldName = 'idTipoIdentificacion'
      Size = 2
    end
    object rsTipoDocIDTipoIdentificacion: TStringField
      FieldName = 'TipoIdentificacion'
      Size = 30
    end
  end
  object dsTipoId: TDataSource
    DataSet = rsTipoDocID
    Left = 122
    Top = 425
  end
  object cAnularCheque: TADOCommand
    CommandText = 'cxpCancelarCheque   '
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
        Name = '@idCk'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 489
    Top = 272
  end
  object rsTiposRetencion: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'SELECT * FROM cxpTiposRetencionDGII'
    Parameters = <>
    Left = 491
    Top = 341
    object rsTiposRetencionidTiposRetencionDGII: TIntegerField
      FieldName = 'idTiposRetencionDGII'
    end
    object rsTiposRetencionTiposRetencionDGII: TStringField
      FieldName = 'TiposRetencionDGII'
      Size = 50
    end
  end
  object rsListaPagoForma: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'SELECT * FROM pagoFormaCXP'
    Parameters = <>
    Left = 593
    Top = 47
    object rsListaPagoFormaidPagoForma: TIntegerField
      FieldName = 'idPagoForma'
    end
    object rsListaPagoFormaPagoForma: TStringField
      FieldName = 'PagoForma'
      Size = 50
    end
  end
  object dsListaPagoForma: TDataSource
    DataSet = rsListaPagoForma
    Left = 596
    Top = 109
  end
end

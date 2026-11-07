object docdm: Tdocdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 539
  Top = 157
  Height = 468
  Width = 670
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
    Left = 30
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
    object rsDocumentoidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
    end
    object rsDocumentoTotalRetenciones: TFloatField
      FieldName = 'TotalRetenciones'
      ReadOnly = True
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
    object rsDocumentoidClaseGasto: TStringField
      FieldName = 'idClaseGasto'
      Size = 2
    end
    object rsDocumentoidTipoIdentificacion: TStringField
      FieldName = 'idTipoIdentificacion'
      Size = 2
    end
    object rsDocumentoPedirNCF: TStringField
      FieldName = 'PedirNCF'
      FixedChar = True
      Size = 1
    end
    object rsDocumentoTasa: TBCDField
      FieldName = 'Tasa'
      Precision = 18
      Size = 2
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
    object rsDocumentoidOrden: TGuidField
      FieldName = 'idOrden'
      FixedChar = True
      Size = 38
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
    object rsDocumentoMontoIsc: TBCDField
      FieldName = 'MontoIsc'
      Precision = 19
      Size = 2
    end
    object rsDocumentoOtrosImpuestos: TBCDField
      FieldName = 'OtrosImpuestos'
      Precision = 19
      Size = 2
    end
    object rsDocumentoPropinaLegal: TBCDField
      FieldName = 'PropinaLegal'
      Precision = 19
      Size = 2
    end
    object rsDocumentoItbisCosto: TBCDField
      FieldName = 'ItbisCosto'
      Precision = 19
      Size = 2
    end
    object rsDocumentoPendEnvioEcf: TBooleanField
      FieldName = 'PendEnvioEcf'
    end
    object rsDocumentoTipoNcf: TStringField
      FieldName = 'TipoNcf'
      Size = 2
    end
    object rsDocumentoCodigoSeguridadEcf: TStringField
      FieldName = 'CodigoSeguridadEcf'
      Size = 6
    end
    object rsDocumentoFechaFirmaDigital: TDateTimeField
      FieldName = 'FechaFirmaDigital'
    end
    object rsDocumentoFechaVenceNCF: TDateTimeField
      FieldName = 'FechaVenceNCF'
    end
    object rsDocumentoCompFiscalModificado: TStringField
      FieldName = 'CompFiscalModificado'
    end
    object rsDocumentoFechaCompFiscalModificado: TDateTimeField
      FieldName = 'FechaCompFiscalModificado'
    end
    object rsDocumentoIdClaseGastoModificado: TStringField
      FieldName = 'IdClaseGastoModificado'
      Size = 2
    end
    object rsDocumentoStatusEcf: TStringField
      FieldName = 'StatusEcf'
      Size = 30
    end
  end
  object mDocumento: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'idDocumento'
        DataType = ftInteger
      end
      item
        Name = 'idTrans'
        DataType = ftInteger
      end
      item
        Name = 'Fecha'
        DataType = ftDateTime
      end
      item
        Name = 'idSuplidor'
        DataType = ftInteger
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Valor'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'MontoImpuestos'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'MontoDescuento'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'MontoRetenciones'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'Concepto'
        DataType = ftString
        Size = 600
      end
      item
        Name = 'idMoneda'
        DataType = ftInteger
      end
      item
        Name = 'CodifManual'
        DataType = ftBoolean
      end
      item
        Name = 'Status'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FechaStatus'
        DataType = ftDateTime
      end
      item
        Name = 'idCuentaBanco'
        DataType = ftInteger
      end
      item
        Name = 'idCuenta'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'TipoDocOrigen'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DocOrigen'
        DataType = ftInteger
      end
      item
        Name = 'Dias'
        DataType = ftSmallint
      end
      item
        Name = 'MostrarEnCXP'
        DataType = ftBoolean
      end
      item
        Name = 'BienesServicio'
        DataType = ftSmallint
      end
      item
        Name = 'TotalNeto'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'Total'
        DataType = ftBCD
        Size = 2
      end
      item
        Name = 'NotaAdicional'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'idAuxiliar'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'CompFiscal'
        DataType = ftString
        Size = 19
      end
      item
        Name = 'GUIDDocumento'
        DataType = ftGuid
        Size = 38
      end
      item
        Name = 'Telefono1'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Telefono2'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Fax'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Direccion'
        DataType = ftString
        Size = 250
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
      end
      item
        Name = 'Descripcion'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DebCre'
        DataType = ftWord
      end
      item
        Name = 'Abrev'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'TotalRetenciones'
        DataType = ftFloat
      end
      item
        Name = 'Diferencia'
        DataType = ftCurrency
      end
      item
        Name = 'idClaseGasto'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PedirNCF'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Tasa'
        DataType = ftFloat
      end
      item
        Name = 'idTipoIdentificacion'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FechaEmision'
        DataType = ftDateTime
      end
      item
        Name = 'Vencimiento'
        DataType = ftDateTime
      end
      item
        Name = 'TipoGasto'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'OrdenCompra'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'idOrden'
        DataType = ftGuid
        Size = 38
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
    Left = 30
    Top = 77
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
    object mDocumentoValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object mDocumentoMontoImpuestos: TBCDField
      FieldName = 'MontoImpuestos'
      OnValidate = mDocumentoMontoImpuestosValidate
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
    object mDocumentoConcepto: TStringField
      FieldName = 'Concepto'
      Size = 600
    end
    object mDocumentoidMoneda: TIntegerField
      FieldName = 'idMoneda'
      OnValidate = mDocumentoidMonedaValidate
    end
    object mDocumentoCodifManual: TBooleanField
      FieldName = 'CodifManual'
    end
    object mDocumentoStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object mDocumentoFechaStatus: TDateTimeField
      FieldName = 'FechaStatus'
    end
    object mDocumentoidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
    end
    object mDocumentoidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object mDocumentoTipoDocOrigen: TStringField
      FieldName = 'TipoDocOrigen'
      Size = 2
    end
    object mDocumentoDocOrigen: TIntegerField
      FieldName = 'DocOrigen'
    end
    object mDocumentoDias: TSmallintField
      FieldName = 'Dias'
    end
    object mDocumentoMostrarEnCXP: TBooleanField
      FieldName = 'MostrarEnCXP'
    end
    object mDocumentoBienesServicio: TSmallintField
      FieldName = 'BienesServicio'
    end
    object mDocumentoTotalNeto: TBCDField
      FieldName = 'TotalNeto'
      ReadOnly = True
      Precision = 20
      Size = 2
    end
    object mDocumentoTotal: TBCDField
      FieldName = 'Total'
      Precision = 21
      Size = 2
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
    object mDocumentoTelefono1: TStringField
      FieldName = 'Telefono1'
      Size = 30
    end
    object mDocumentoTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 30
    end
    object mDocumentoFax: TStringField
      FieldName = 'Fax'
      Size = 30
    end
    object mDocumentoDireccion: TStringField
      FieldName = 'Direccion'
      Size = 250
    end
    object mDocumentoNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object mDocumentoRNC: TStringField
      FieldName = 'RNC'
    end
    object mDocumentoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 30
    end
    object mDocumentoDebCre: TWordField
      FieldName = 'DebCre'
    end
    object mDocumentoAbrev: TStringField
      FieldName = 'Abrev'
      Size = 5
    end
    object mDocumentoTotalRetenciones: TFloatField
      FieldName = 'TotalRetenciones'
      ReadOnly = True
    end
    object mDocumentocTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'cTotal'
      Calculated = True
    end
    object mDocumentoDiferencia: TCurrencyField
      FieldName = 'Diferencia'
    end
    object mDocumentoidClaseGasto: TStringField
      FieldName = 'idClaseGasto'
      Size = 2
    end
    object mDocumentoPedirNCF: TStringField
      FieldName = 'PedirNCF'
      Size = 1
    end
    object mDocumentoTasa: TFloatField
      FieldName = 'Tasa'
    end
    object mDocumentoidTipoIdentificacion: TStringField
      FieldName = 'idTipoIdentificacion'
      Size = 2
    end
    object mDocumentoFechaEmision: TDateTimeField
      FieldName = 'FechaEmision'
    end
    object mDocumentoVencimiento: TDateTimeField
      FieldName = 'Vencimiento'
    end
    object mDocumentoTipoGasto: TStringField
      FieldName = 'TipoGasto'
      Size = 16
    end
    object mDocumentoCondiciones: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Condiciones'
      Calculated = True
    end
    object mDocumentoOrdenCompra: TStringField
      FieldName = 'OrdenCompra'
      OnValidate = mDocumentoOrdenCompraValidate
      Size = 16
    end
    object mDocumentoidOrden: TGuidField
      FieldName = 'idOrden'
      FixedChar = True
      Size = 38
    end
    object mDocumentomontoFacturadoBienes: TBCDField
      FieldName = 'montoFacturadoBienes'
      OnValidate = mDocumentomontoFacturadoBienesValidate
      Precision = 21
      Size = 2
    end
    object mDocumentomontoFacturadoServicios: TBCDField
      FieldName = 'montoFacturadoServicios'
      OnValidate = mDocumentomontoFacturadoServiciosValidate
      Precision = 21
      Size = 2
    end
    object mDocumentoidPagoForma: TIntegerField
      FieldName = 'idPagoForma'
    end
    object mDocumentoMontoIsc: TCurrencyField
      FieldName = 'MontoIsc'
      OnValidate = mDocumentoMontoIscValidate
    end
    object mDocumentoPropinaLegal: TCurrencyField
      FieldName = 'PropinaLegal'
      OnValidate = mDocumentoMontoIscValidate
    end
    object mDocumentoOtrosImpuestos: TCurrencyField
      FieldName = 'OtrosImpuestos'
      OnValidate = mDocumentoMontoIscValidate
    end
    object mDocumentoItbisCosto: TCurrencyField
      FieldName = 'ItbisCosto'
    end
    object mDocumentoPendEnvioEcf: TBooleanField
      FieldName = 'PendEnvioEcf'
    end
    object mDocumentoTipoNcf: TStringField
      FieldName = 'TipoNcf'
      Size = 2
    end
    object mDocumentoCodigoSeguridadEcf: TStringField
      FieldName = 'CodigoSeguridadEcf'
      Size = 6
    end
    object mDocumentoFechaFirmaDigital: TDateTimeField
      FieldName = 'FechaFirmaDigital'
    end
    object mDocumentoFechaVenceNCF: TDateTimeField
      FieldName = 'FechaVenceNCF'
    end
    object mDocumentoCompFiscalModificado: TStringField
      FieldName = 'CompFiscalModificado'
    end
    object mDocumentoFechaCompFiscalModificado: TDateTimeField
      FieldName = 'FechaCompFiscalModificado'
    end
    object mDocumentoIdClaseGastoModificado: TStringField
      FieldName = 'IdClaseGastoModificado'
      Size = 2
    end
    object mDocumentoStatusEcf: TStringField
      FieldName = 'StatusEcf'
      Size = 30
    end
  end
  object rsTiposImp: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'select * from ocTiposImpuestos order by descripcion'
    Parameters = <>
    Left = 148
    Top = 12
    object rsTiposImpTipoImpuesto: TAutoIncField
      FieldName = 'TipoImpuesto'
      ReadOnly = True
    end
    object rsTiposImpDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object rsTiposImpPorcentaje: TBCDField
      FieldName = 'Porcentaje'
      Precision = 6
      Size = 2
    end
    object rsTiposImpTitulo: TStringField
      FieldName = 'Titulo'
    end
    object rsTiposImpidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
  end
  object mImpsDoc: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'TipoImpuesto'
        DataType = ftInteger
      end
      item
        Name = 'Descripcion'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Porcentaje'
        DataType = ftFloat
      end
      item
        Name = 'MontoImpuesto'
        DataType = ftCurrency
      end
      item
        Name = 'idCuenta'
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
    BeforeInsert = mImpsDocBeforeInsert
    AfterCancel = mCtasDocAfterPost
    Left = 28
    Top = 136
    object mImpsDocTipoImpuesto: TIntegerField
      FieldName = 'TipoImpuesto'
      OnValidate = mImpsDocTipoImpuestoValidate
    end
    object mImpsDocDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object mImpsDocPorcentaje: TFloatField
      FieldName = 'Porcentaje'
    end
    object mImpsDocMontoImpuesto: TCurrencyField
      FieldName = 'MontoImpuesto'
    end
    object mImpsDocidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
  end
  object rsImpsDoc: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'cxpBuscarImpsDoc;1'
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
    Left = 148
    Top = 78
    object rsImpsDocTipoImpuesto: TIntegerField
      FieldName = 'TipoImpuesto'
    end
    object rsImpsDocDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object rsImpsDocPorcentaje: TBCDField
      FieldName = 'Porcentaje'
      Precision = 6
      Size = 2
    end
    object rsImpsDocMontoImpuesto: TBCDField
      FieldName = 'MontoImpuesto'
      ReadOnly = True
      Precision = 31
      Size = 8
    end
    object rsImpsDocidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
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
      end
      item
        Name = '@montoIsc'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@propina'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@otrosImp'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@itbisCosto'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@PendEnvioEcf'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@TipoNcf'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@CodigoSeguridadEcf'
        Attributes = [paNullable]
        DataType = ftString
        Size = 6
        Value = Null
      end
      item
        Name = '@FechaFirmaDigital'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@FechaVenceNCF'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@CompFiscalModificado'
        Attributes = [paNullable]
        DataType = ftString
        Size = 19
        Value = Null
      end
      item
        Name = '@FechaCompFiscalModificado'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@IdClaseGastoModificado'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@StatusEcf'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 148
    Top = 136
  end
  object rsMonedas: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select idMoneda, Moneda as Nombre from Moneda order by Moneda'
    Parameters = <>
    Left = 236
    Top = 12
    object rsMonedasidMoneda: TIntegerField
      FieldName = 'idMoneda'
      ReadOnly = True
    end
    object rsMonedasNombre: TStringField
      FieldName = 'Nombre'
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
    Left = 236
    Top = 78
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
    BeforeEdit = mCtasDocBeforeEdit
    AfterPost = mCtasDocAfterPost
    OnNewRecord = mCtasDocNewRecord
    Left = 238
    Top = 136
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
    object mCtasDocCentroCostoDesc: TStringField
      FieldName = 'CentroCostoDesc'
      Size = 200
    end
  end
  object cGuardarImps: TADOCommand
    CommandText = 
      'insert into cxpDocImpuestos (idDocumento, TipoImpuesto)'#13#10'values ' +
      '(:idDocumento, :TipoImpuesto)'
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = 'idDocumento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'TipoImpuesto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 236
    Top = 200
  end
  object cBorrarImps: TADOCommand
    CommandText = 'delete from cxpDocImpuestos '#13#10'where idDocumento = :idDocumento'
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = 'idDocumento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 148
    Top = 200
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
    Left = 316
    Top = 12
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
    Left = 316
    Top = 78
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
    Left = 316
    Top = 136
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
    Left = 28
    Top = 256
  end
  object cAnular: TADOCommand
    CommandText = 'cxpAnularDocumento;1'
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
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 316
    Top = 200
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
    Left = 148
    Top = 256
  end
  object rsAplicadoADoc: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpAplicadoADoc;1'
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
    Left = 236
    Top = 256
    object rsAplicadoADocTipo: TStringField
      FieldName = 'Tipo'
      Size = 5
    end
    object rsAplicadoADocReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsAplicadoADocFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsAplicadoADocValor: TBCDField
      FieldName = 'Valor'
      currency = True
      Precision = 19
      Size = 2
    end
    object rsAplicadoADocLineaNum: TIntegerField
      FieldName = 'LineaNum'
      ReadOnly = True
    end
  end
  object rsAutoImps: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 
      'select TipoImpuesto '#13#10'from ocTiposImpuestos '#13#10'where AutoIncluir ' +
      '= 1'#13#10
    Parameters = <>
    Left = 24
    Top = 306
    object rsAutoImpsTipoImpuesto: TIntegerField
      FieldName = 'TipoImpuesto'
      ReadOnly = True
    end
  end
  object rsDocRetencion: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = rsDocRetencionCalcFields
    CommandText = 'cxpabrirDocRetencion'
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
    Left = 432
    Top = 12
    object rsDocRetencionidDocumento: TIntegerField
      FieldName = 'idDocumento'
    end
    object rsDocRetencionidRetencion: TIntegerField
      FieldName = 'idRetencion'
    end
    object rsDocRetencionRetencion: TStringField
      FieldName = 'Retencion'
      Size = 50
    end
    object rsDocRetencionPorcentaje: TFloatField
      FieldName = 'Porcentaje'
    end
    object rsDocRetencionMonto: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Monto'
      Calculated = True
    end
    object rsDocRetencionidTipoRetencionDGII: TIntegerField
      FieldName = 'idTipoRetencionDGII'
    end
  end
  object mRets: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'idDocumento'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'idRetencion'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'Retencion'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Porcentaje'
        Attributes = [faFixed]
        DataType = ftFloat
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
    Left = 432
    Top = 78
    object mRetsidDocumento: TIntegerField
      FieldName = 'idDocumento'
    end
    object mRetsidRetencion: TIntegerField
      FieldName = 'idRetencion'
      OnValidate = mRetsidRetencionValidate
    end
    object mRetsRetencion: TStringField
      FieldName = 'Retencion'
      Size = 50
    end
    object mRetsPorcentaje: TFloatField
      FieldName = 'Porcentaje'
      OnValidate = mRetsPorcentajeValidate
    end
    object mRetsMonto: TCurrencyField
      FieldName = 'Monto'
      OnValidate = mRetsMontoValidate
    end
    object mRetsidTipoRetencionDGII: TIntegerField
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
    Left = 432
    Top = 136
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
  object cBorrarRets: TADOCommand
    CommandText = 'cxpBorrarDocRetencion;1'
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
    Left = 516
    Top = 12
  end
  object cInsRetencion: TADOCommand
    CommandText = 'cxpInsDocRetencion'
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
        Name = '@idRetencion'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Descr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@Porc'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@idTipoRetencionDGII'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 516
    Top = 136
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
    Left = 316
    Top = 256
  end
  object rsDocItems: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'cxpRSDocumentoItems;1'
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
    Left = 148
    Top = 306
    object rsDocItemsidDocumentoItem: TGuidField
      FieldName = 'idDocumentoItem'
      FixedChar = True
      Size = 38
    end
    object rsDocItemsidDocumento: TIntegerField
      FieldName = 'idDocumento'
    end
    object rsDocItemsidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object rsDocItemsDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 500
    end
    object rsDocItemsCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object rsDocItemsidUnidad: TStringField
      FieldName = 'idUnidad'
      Size = 16
    end
    object rsDocItemsCosto: TBCDField
      FieldName = 'Costo'
      Precision = 19
      Size = 2
    end
    object rsDocItemsidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsDocItemsITBIS: TBCDField
      FieldName = 'ITBIS'
      Precision = 19
      Size = 2
    end
    object rsDocItemsDescuento: TBCDField
      FieldName = 'Descuento'
      Precision = 5
      Size = 2
    end
    object rsDocItemsTipoItem: TStringField
      FieldName = 'TipoItem'
      FixedChar = True
      Size = 1
    end
  end
  object cInsItems: TADOCommand
    CommandText = 'cxpGuardarDocItem;1'
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
        Name = '@iddocumentoItem'
        Attributes = [paNullable]
        DataType = ftGuid
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
        Name = '@idProducto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@descripcion'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end
      item
        Name = '@Cantidad'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@idUnidad'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@Costo'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@IdCuenta'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@Itbis'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 19
        Value = Null
      end
      item
        Name = '@descuento'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 5
        Value = Null
      end
      item
        Name = '@TipoItem'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end>
    Left = 236
    Top = 306
  end
  object mDocItems: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'idDocumentoItem'
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
        Name = 'idProducto'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'Descripcion'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'Cantidad'
        Attributes = [faFixed]
        DataType = ftFloat
      end
      item
        Name = 'idUnidad'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'Costo'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 19
        Size = 2
      end
      item
        Name = 'idCuenta'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'ITBIS'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 19
        Size = 2
      end
      item
        Name = 'Descuento'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 5
        Size = 2
      end
      item
        Name = 'TipoItem'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 1
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
    OnCalcFields = mDocItemsCalcFields
    OnNewRecord = mDocItemsNewRecord
    Left = 24
    Top = 362
    object mDocItemsidDocumentoItem: TGuidField
      FieldName = 'idDocumentoItem'
      FixedChar = True
      Size = 38
    end
    object mDocItemsidDocumento: TIntegerField
      FieldName = 'idDocumento'
    end
    object mDocItemsidProducto: TStringField
      FieldName = 'idProducto'
      OnValidate = mDocItemsidProductoValidate
      Size = 25
    end
    object mDocItemsDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 500
    end
    object mDocItemsCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object mDocItemsidUnidad: TStringField
      FieldName = 'idUnidad'
      Size = 16
    end
    object mDocItemsCosto: TBCDField
      FieldName = 'Costo'
      Precision = 19
      Size = 2
    end
    object mDocItemsidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object mDocItemsITBIS: TBCDField
      FieldName = 'ITBIS'
      Precision = 19
      Size = 2
    end
    object mDocItemsDescuento: TBCDField
      FieldName = 'Descuento'
      Precision = 5
      Size = 2
    end
    object mDocItemsTipoItem: TStringField
      FieldName = 'TipoItem'
      FixedChar = True
      Size = 1
    end
    object mDocItemsImporte: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Importe'
      Calculated = True
    end
    object mDocItemsMontoItbis: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'MontoItbis'
      Calculated = True
    end
  end
  object cBorrarItems: TADOCommand
    CommandText = 'cxpBorrarDocItems;1'
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
    Left = 148
    Top = 362
  end
  object rsProdAct: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'ProductoAct;1'
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
        Name = '@idProducto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@Lista'
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
        Name = '@idMoneda'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 432
    Top = 200
    object rsProdActidProducto: TStringField
      FieldName = 'idProducto'
      Size = 25
    end
    object rsProdActProducto: TStringField
      FieldName = 'Producto'
      Size = 100
    end
    object rsProdActMinimo: TFloatField
      FieldName = 'Minimo'
    end
    object rsProdActReorden: TFloatField
      FieldName = 'Reorden'
    end
    object rsProdActAutoDescuento: TBooleanField
      FieldName = 'AutoDescuento'
    end
    object rsProdActCambiarPrecio: TBooleanField
      FieldName = 'CambiarPrecio'
    end
    object rsProdActExistencia: TFloatField
      FieldName = 'Existencia'
      ReadOnly = True
    end
    object rsProdActCostoPromedio: TFloatField
      FieldName = 'CostoPromedio'
      ReadOnly = True
    end
    object rsProdActPrecioContado: TBCDField
      FieldName = 'PrecioContado'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsProdActPrecioCredito: TBCDField
      FieldName = 'PrecioCredito'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object rsProdActInactivo: TBooleanField
      FieldName = 'Inactivo'
    end
    object rsProdActporciento: TFloatField
      FieldName = 'porciento'
    end
    object rsProdActidUnidad: TStringField
      FieldName = 'idUnidad'
      Size = 16
    end
    object rsProdActDescuento: TFloatField
      FieldName = 'Descuento'
    end
    object rsProdActExistenciaNeg: TBooleanField
      FieldName = 'ExistenciaNeg'
    end
    object rsProdActidListaPrecio: TStringField
      FieldName = 'idListaPrecio'
      ReadOnly = True
      Size = 16
    end
    object rsProdActidPartida: TStringField
      FieldName = 'idPartida'
      Size = 16
    end
    object rsProdActidMoneda: TIntegerField
      FieldName = 'idMoneda'
      ReadOnly = True
    end
  end
  object rsUnidades: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'ocListaUnidades;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 316
    Top = 306
    object rsUnidadesidUnidad: TStringField
      FieldName = 'idUnidad'
      Size = 16
    end
    object rsUnidadesUnidad: TStringField
      FieldName = 'Unidad'
      Size = 50
    end
    object rsUnidadesidUnidadBase: TStringField
      FieldName = 'idUnidadBase'
      Size = 50
    end
    object rsUnidadesidFactor: TFloatField
      FieldName = 'idFactor'
    end
    object rsUnidadesUidUnidad: TGuidField
      FieldName = 'UidUnidad'
      FixedChar = True
      Size = 38
    end
  end
  object rsClaseGasto: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'cxpRSClaseGasto;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 432
    Top = 306
    object rsClaseGastoidClasegasto: TStringField
      FieldName = 'idClasegasto'
      Size = 2
    end
    object rsClaseGastoClaseGasto: TStringField
      FieldName = 'ClaseGasto'
      Size = 100
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
    Left = 516
    Top = 256
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
    Left = 236
    Top = 362
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
    Left = 432
    Top = 362
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
    Left = 316
    Top = 362
  end
  object rsTipoDocID: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'RSTipoIdentificacion;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 516
    Top = 85
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
    Left = 612
    Top = 84
  end
  object rsProMov: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'rsPromov'
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
        Name = '@idProMov'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 614
    Top = 172
    object rsProMovidProMov: TGuidField
      FieldName = 'idProMov'
      FixedChar = True
      Size = 38
    end
    object rsProMovidProMovTipo: TIntegerField
      FieldName = 'idProMovTipo'
    end
    object rsProMovProMov: TStringField
      FieldName = 'ProMov'
      Size = 16
    end
    object rsProMovFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsProMovSalida: TBooleanField
      FieldName = 'Salida'
    end
    object rsProMovidCompania: TIntegerField
      FieldName = 'idCompania'
    end
    object rsProMovReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsProMovUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object rsProMovidOrdComp: TGuidField
      FieldName = 'idOrdComp'
      FixedChar = True
      Size = 38
    end
    object rsProMovOrdComp: TStringField
      FieldName = 'OrdComp'
      Size = 16
    end
    object rsProMovEntregadoPor: TStringField
      FieldName = 'EntregadoPor'
      Size = 50
    end
    object rsProMovRecibidoPor: TStringField
      FieldName = 'RecibidoPor'
      Size = 50
    end
    object rsProMovidAlmacen: TStringField
      FieldName = 'idAlmacen'
      Size = 16
    end
    object rsProMovConcepto: TStringField
      FieldName = 'Concepto'
      Size = 100
    end
    object rsProMovNota: TStringField
      FieldName = 'Nota'
      Size = 500
    end
    object rsProMovidConduce: TGuidField
      FieldName = 'idConduce'
      FixedChar = True
      Size = 38
    end
    object rsProMovConduce: TStringField
      FieldName = 'Conduce'
      Size = 16
    end
    object rsProMovPosteado: TBooleanField
      FieldName = 'Posteado'
    end
    object rsProMovPosteadoFecha: TDateTimeField
      FieldName = 'PosteadoFecha'
    end
    object rsProMovidOrdenTrab: TGuidField
      FieldName = 'idOrdenTrab'
      FixedChar = True
      Size = 38
    end
    object rsProMovOrdenTrab: TStringField
      FieldName = 'OrdenTrab'
      Size = 16
    end
    object rsProMovidReferencia: TGuidField
      FieldName = 'idReferencia'
      FixedChar = True
      Size = 38
    end
    object rsProMovidAlmacenDestino: TStringField
      FieldName = 'idAlmacenDestino'
      Size = 16
    end
    object rsProMovidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
    end
    object rsProMovSuplidor: TStringField
      FieldName = 'Suplidor'
      Size = 100
    end
    object rsProMovDevolucion: TBooleanField
      FieldName = 'Devolucion'
    end
    object rsProMovContabilizar: TBooleanField
      FieldName = 'Contabilizar'
    end
    object rsProMovCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object rsProMovidClaseGasto: TStringField
      FieldName = 'idClaseGasto'
      Size = 2
    end
    object rsProMovidOrdenCompra: TGuidField
      FieldName = 'idOrdenCompra'
      FixedChar = True
      Size = 38
    end
    object rsProMovOCNumero: TStringField
      FieldName = 'OCNumero'
      Size = 16
    end
    object rsProMovFactura: TStringField
      FieldName = 'Factura'
      Size = 16
    end
    object rsProMovTotalITBIS: TBCDField
      FieldName = 'TotalITBIS'
      Precision = 19
      Size = 2
    end
  end
  object rsCostoPromov: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 
      'select sum(Costo) as CostoTotal from promovdet where idPromov = ' +
      ':idPromov'
    Parameters = <
      item
        Name = 'idPromov'
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    Left = 604
    Top = 258
    object rsCostoPromovCostoTotal: TBCDField
      FieldName = 'CostoTotal'
      Precision = 32
      Size = 2
    end
  end
  object rsTiposRetencion: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'SELECT * FROM cxpTiposRetencionDGII'
    Parameters = <>
    Left = 593
    Top = 320
    object rsTiposRetencionidTiposRetencionDGII: TIntegerField
      FieldName = 'idTiposRetencionDGII'
    end
    object rsTiposRetencionTiposRetencionDGII: TStringField
      FieldName = 'TiposRetencionDGII'
      Size = 50
    end
  end
  object rsFormaPago: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'SELECT * FROM PagoFormaCxP'
    Parameters = <>
    Left = 430
    Top = 252
  end
  object cCambStatusEcf: TADOCommand
    CommandText = 'ecf_cxp_send'
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
    Left = 678
    Top = 109
  end
end

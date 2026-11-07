object SolDM: TSolDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 353
  Top = 130
  Height = 606
  Width = 657
  object rsSol: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpBuscarSolicitud;1'
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
        Name = '@idSolicitud'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 38
    Top = 20
    object rsSolidSolicitud: TIntegerField
      FieldName = 'idSolicitud'
      ReadOnly = True
    end
    object rsSolNumero: TIntegerField
      FieldName = 'Numero'
    end
    object rsSolFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsSolidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
    end
    object rsSolTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
      Size = 2
    end
    object rsSolConcepto: TStringField
      FieldName = 'Concepto'
      Size = 6000
    end
    object rsSolStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object rsSolNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsSolTelefono1: TStringField
      FieldName = 'Telefono1'
    end
    object rsSolTelefono2: TStringField
      FieldName = 'Telefono2'
    end
    object rsSolRNC: TStringField
      FieldName = 'RNC'
    end
    object rsSolDireccion: TStringField
      FieldName = 'Direccion'
      Size = 250
    end
    object rsSolDescrStatus: TStringField
      FieldName = 'DescrStatus'
      ReadOnly = True
      Size = 32
    end
    object rsSolTotalNeto: TFloatField
      FieldName = 'TotalNeto'
      ReadOnly = True
    end
    object rsSolUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object rsSolFechaRegistro: TDateTimeField
      FieldName = 'FechaRegistro'
    end
    object rsSolValidadaPor: TStringField
      FieldName = 'ValidadaPor'
      Size = 30
    end
    object rsSolValidadaEn: TDateTimeField
      FieldName = 'ValidadaEn'
    end
    object rsSolRevisadaPor: TStringField
      FieldName = 'RevisadaPor'
      Size = 30
    end
    object rsSolRevisadaEn: TDateTimeField
      FieldName = 'RevisadaEn'
    end
    object rsSolValidadaFinalPor: TStringField
      FieldName = 'ValidadaFinalPor'
      Size = 30
    end
    object rsSolValidadaFinalEn: TDateTimeField
      FieldName = 'ValidadaFinalEn'
    end
    object rsSolNotaAdicional: TStringField
      FieldName = 'NotaAdicional'
      Size = 100
    end
    object rsSolmostrarEncxp: TBooleanField
      FieldName = 'mostrarEncxp'
    end
    object rsSolGUIDSolicitud: TGuidField
      FieldName = 'GUIDSolicitud'
      FixedChar = True
      Size = 38
    end
    object rsSolTasa: TBCDField
      FieldName = 'Tasa'
      Precision = 18
      Size = 2
    end
    object rsSolidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsSolidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
    end
    object rsSolTipoAbono: TStringField
      FieldName = 'TipoAbono'
      Size = 1
    end
    object rsSolBancoDestino: TStringField
      FieldName = 'BancoDestino'
      Size = 5
    end
    object rsSolCuentaDestino: TStringField
      FieldName = 'CuentaDestino'
    end
    object rsSolTipoSolicitud: TIntegerField
      FieldName = 'TipoSolicitud'
    end
    object rsSolidCuentaBancoDestino: TIntegerField
      FieldName = 'idCuentaBancoDestino'
    end
    object rsSolCuentaTransfer: TStringField
      FieldName = 'CuentaTransfer'
      Size = 100
    end
    object rsSolOrdenCompra: TStringField
      FieldName = 'OrdenCompra'
      Size = 16
    end
    object rsSolidOrden: TGuidField
      FieldName = 'idOrden'
      FixedChar = True
      Size = 38
    end
    object rsSolIdPagoForma: TIntegerField
      FieldName = 'IdPagoForma'
    end
  end
  object rsSolDtl: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpBuscarSolDtl;1'
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
        Name = '@idSolicitud'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 40
    Top = 100
    object rsSolDtlLineaNum: TIntegerField
      FieldName = 'LineaNum'
      ReadOnly = True
    end
    object rsSolDtlidSolicitud: TIntegerField
      FieldName = 'idSolicitud'
    end
    object rsSolDtlidDocumento: TIntegerField
      FieldName = 'idDocumento'
    end
    object rsSolDtlValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object rsSolDtlReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsSolDtlTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 22
      Size = 2
    end
    object rsSolDtlFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsSolDtlAbrev: TStringField
      FieldName = 'Abrev'
      Size = 5
    end
    object rsSolDtlTotalRetenciones: TFloatField
      FieldName = 'TotalRetenciones'
      ReadOnly = True
    end
    object rsSolDtlTasa: TBCDField
      FieldName = 'Tasa'
      Precision = 18
      Size = 2
    end
    object rsSolDtlidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
  end
  object mSol: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'idSolicitud'
        Attributes = [faReadonly, faFixed]
        DataType = ftInteger
      end
      item
        Name = 'Numero'
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
        Name = 'Total'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 19
        Size = 2
      end
      item
        Name = 'Concepto'
        DataType = ftString
        Size = 6000
      end
      item
        Name = 'Status'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 1
      end
      item
        Name = 'Usuario'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'FechaRegistro'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'ValidadaPor'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ValidadaEn'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'RevisadaPor'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'RevisadaEn'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'ValidadaFinalPor'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ValidadaFinalEn'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'NotaAdicional'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'mostrarEncxp'
        Attributes = [faFixed]
        DataType = ftBoolean
      end
      item
        Name = 'GUIDSolicitud'
        Attributes = [faFixed]
        DataType = ftGuid
        Size = 38
      end
      item
        Name = 'DescrStatus'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 32
      end
      item
        Name = 'Nombre'
        DataType = ftString
        Size = 100
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
        Name = 'RNC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Direccion'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'TotalNeto'
        Attributes = [faReadonly, faFixed]
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
    Left = 144
    Top = 26
    object mSolidSolicitud: TIntegerField
      FieldName = 'idSolicitud'
    end
    object mSolNumero: TIntegerField
      FieldName = 'Numero'
    end
    object mSolFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object mSolidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
      OnValidate = mSolidSuplidorValidate
    end
    object mSolTotal: TBCDField
      FieldName = 'Total'
      OnValidate = mSolTotalValidate
      Precision = 19
      Size = 2
    end
    object mSolConcepto: TStringField
      FieldName = 'Concepto'
      Size = 6000
    end
    object mSolStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object mSolUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object mSolFechaRegistro: TDateTimeField
      FieldName = 'FechaRegistro'
    end
    object mSolValidadaPor: TStringField
      FieldName = 'ValidadaPor'
      Size = 30
    end
    object mSolValidadaEn: TDateTimeField
      FieldName = 'ValidadaEn'
    end
    object mSolRevisadaPor: TStringField
      FieldName = 'RevisadaPor'
      Size = 30
    end
    object mSolRevisadaEn: TDateTimeField
      FieldName = 'RevisadaEn'
    end
    object mSolValidadaFinalPor: TStringField
      FieldName = 'ValidadaFinalPor'
      Size = 30
    end
    object mSolValidadaFinalEn: TDateTimeField
      FieldName = 'ValidadaFinalEn'
    end
    object mSolNotaAdicional: TStringField
      FieldName = 'NotaAdicional'
      Size = 100
    end
    object mSolmostrarEncxp: TBooleanField
      FieldName = 'mostrarEncxp'
      OnValidate = mSolTotalValidate
    end
    object mSolGUIDSolicitud: TGuidField
      FieldName = 'GUIDSolicitud'
      FixedChar = True
      Size = 38
    end
    object mSolDescrStatus: TStringField
      FieldName = 'DescrStatus'
      ReadOnly = True
      Size = 32
    end
    object mSolNombre: TStringField
      FieldName = 'Nombre'
      OnValidate = mSolNombreValidate
      Size = 100
    end
    object mSolTelefono1: TStringField
      FieldName = 'Telefono1'
      Size = 30
    end
    object mSolTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 30
    end
    object mSolRNC: TStringField
      FieldName = 'RNC'
    end
    object mSolDireccion: TStringField
      FieldName = 'Direccion'
      Size = 250
    end
    object mSolTotalNeto: TFloatField
      FieldName = 'TotalNeto'
      OnValidate = mSolTotalNetoValidate
    end
    object mSolTasa: TFloatField
      FieldName = 'Tasa'
      OnValidate = mSolTasaValidate
    end
    object mSolidCuentabanco: TIntegerField
      FieldName = 'idCuentabanco'
      OnValidate = mSolidCuentabancoValidate
    end
    object mSolidMoneda: TIntegerField
      FieldName = 'idMoneda'
      OnValidate = mSolidMonedaValidate
    end
    object mSolTipoAbono: TStringField
      FieldName = 'TipoAbono'
      Size = 1
    end
    object mSolBancoDestino: TStringField
      FieldName = 'BancoDestino'
      Size = 5
    end
    object mSolCuentaDestino: TStringField
      FieldName = 'CuentaDestino'
    end
    object mSolTipoSolicitud: TIntegerField
      FieldName = 'TipoSolicitud'
    end
    object mSolidCuentaBancoDestino: TIntegerField
      FieldName = 'idCuentaBancoDestino'
    end
    object mSolidOrden: TGuidField
      FieldName = 'idOrden'
      Size = 38
    end
    object mSolOrdenCompra: TStringField
      FieldName = 'OrdenCompra'
      OnValidate = mSolOrdenCompraValidate
      Size = 16
    end
    object mSolIdPagoForma: TIntegerField
      FieldName = 'IdPagoForma'
    end
  end
  object mSolDtl: TkbmMemTable
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
    AfterPost = mSolDtlAfterPost
    AfterDelete = mSolDtlAfterPost
    AfterScroll = mSolDtlAfterScroll
    OnNewRecord = mSolDtlNewRecord
    Left = 144
    Top = 106
    object mSolDtlidSolicitud: TIntegerField
      FieldName = 'idSolicitud'
    end
    object mSolDtlidDocumento: TIntegerField
      FieldName = 'idDocumento'
      OnValidate = mSolDtlidDocumentoValidate
    end
    object mSolDtlValor: TBCDField
      FieldName = 'Valor'
      currency = True
      Precision = 19
      Size = 2
    end
    object mSolDtlReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mSolDtlTotal: TBCDField
      FieldName = 'Total'
      currency = True
      Precision = 22
      Size = 2
    end
    object mSolDtlFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object mSolDtlAbrev: TStringField
      FieldName = 'Abrev'
      Size = 5
    end
    object mSolDtlAutomatica: TBooleanField
      FieldName = 'Automatica'
    end
    object mSolDtlTotalRetenciones: TFloatField
      FieldName = 'TotalRetenciones'
    end
    object mSolDtlTasa: TFloatField
      FieldName = 'Tasa'
    end
    object mSolDtlidMoneda: TIntegerField
      FieldName = 'idMoneda'
      OnValidate = mSolDtlidMonedaValidate
    end
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
    Left = 40
    Top = 340
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
    object rsBuscarDocTotalRetenciones: TFloatField
      FieldName = 'TotalRetenciones'
      ReadOnly = True
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
    Left = 256
    Top = 24
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
    object rsDocsPendientesTotalRetenciones: TFloatField
      FieldName = 'TotalRetenciones'
      ReadOnly = True
    end
    object rsDocsPendientesidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsDocsPendientestasa: TBCDField
      FieldName = 'tasa'
      Precision = 18
      Size = 2
    end
  end
  object cGuardarSol: TADOCommand
    CommandText = 'cxpGuardarSolicitud;1'
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
        Name = '@idSol'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Num'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
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
        Name = '@IdEnt'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
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
        Name = '@Valr'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end
      item
        Name = '@Conc'
        Attributes = [paNullable]
        DataType = ftString
        Size = 6000
        Value = Null
      end
      item
        Name = '@St'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@Usuario'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@FechaReg'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@ValidadoPor'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@validadoEn'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@revpor'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@reven'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@valfinal'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@valfinalen'
        Attributes = [paNullable]
        DataType = ftDateTime
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
        Name = '@MostrarEnCXP'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@GUIDSolicitud'
        Attributes = [paNullable]
        DataType = ftGuid
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
        Name = '@tasa'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
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
        Name = '@idMoneda'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@TipoAbono'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@BancoDestino'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = '@CuentaDestino'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@TipoSolicitud'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@idCuentaBancoDestino'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@idOrden'
        Attributes = [paNullable]
        DataType = ftGuid
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
        Name = '@idPagoForma'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 246
    Top = 102
  end
  object cGuardarSolDtl: TADOCommand
    CommandText = 'cxpGuardarSolDtl;1'
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
        Name = '@idSolicitud'
        Attributes = [paNullable]
        DataType = ftInteger
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
        Precision = 18
        Value = Null
      end>
    Left = 246
    Top = 176
  end
  object cBorrarSolDtl: TADOCommand
    CommandText = 'cxpBorrarSolDtl;1'
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
        Name = '@idSolicitud'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 142
    Top = 204
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
    Left = 362
    Top = 20
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
    object mDocsPendientesTotalRetenciones: TFloatField
      FieldName = 'TotalRetenciones'
    end
    object mDocsPendientesidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object mDocsPendientesTasa: TFloatField
      FieldName = 'Tasa'
    end
  end
  object cGenCk: TADOCommand
    CommandText = 'cxpGenerarCheque;1'
    CommandTimeout = 60
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
        Name = '@idSol'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ctabanco'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@iddoc'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 40
    Top = 174
  end
  object rsSolXNumero: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpBuscarSolicitudXNumero;1'
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
        Name = '@Numero'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 140
    Top = 280
    object rsSolXNumeroidSolicitud: TIntegerField
      FieldName = 'idSolicitud'
      ReadOnly = True
    end
    object rsSolXNumeroNumero: TIntegerField
      FieldName = 'Numero'
    end
    object rsSolXNumeroFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsSolXNumeroidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
    end
    object rsSolXNumeroTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
      Size = 2
    end
    object rsSolXNumeroConcepto: TStringField
      FieldName = 'Concepto'
      Size = 600
    end
    object rsSolXNumeroStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object rsSolXNumeroNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsSolXNumeroTelefono1: TStringField
      FieldName = 'Telefono1'
    end
    object rsSolXNumeroTelefono2: TStringField
      FieldName = 'Telefono2'
    end
    object rsSolXNumeroRNC: TStringField
      FieldName = 'RNC'
    end
    object rsSolXNumeroDireccion: TStringField
      FieldName = 'Direccion'
      Size = 250
    end
  end
  object rsBancos: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select * from cxpBancos order by Nombre'
    Parameters = <>
    Left = 260
    Top = 286
    object rsBancosidCuentaBanco: TIntegerField
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
  object mSolsPend: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Numero'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'idSolicitud'
        Attributes = [faReadonly, faFixed]
        DataType = ftInteger
      end
      item
        Name = 'Fecha'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'Total'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 19
        Size = 2
      end
      item
        Name = 'Concepto'
        DataType = ftString
        Size = 600
      end
      item
        Name = 'Nombre'
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
    Left = 366
    Top = 100
    object mSolsPendSel: TBooleanField
      DefaultExpression = 'False'
      FieldName = 'Sel'
    end
    object mSolsPendNumero: TIntegerField
      FieldName = 'Numero'
    end
    object mSolsPendidSolicitud: TIntegerField
      FieldName = 'idSolicitud'
      ReadOnly = True
    end
    object mSolsPendFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object mSolsPendTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
      Size = 2
    end
    object mSolsPendConcepto: TStringField
      FieldName = 'Concepto'
      Size = 600
    end
    object mSolsPendNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object mSolsPendidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
    end
    object mSolsPendCuentaBanco: TStringField
      FieldName = 'CuentaBanco'
      Size = 100
    end
    object mSolsPendTipoSolicitud: TIntegerField
      FieldName = 'TipoSolicitud'
    end
    object mSolsPendTipo: TStringField
      FieldName = 'Tipo'
    end
  end
  object rsSolsPend: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpSolicitudesPendientes;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 366
    Top = 176
    object rsSolsPendNumero: TIntegerField
      FieldName = 'Numero'
    end
    object rsSolsPendidSolicitud: TIntegerField
      FieldName = 'idSolicitud'
      ReadOnly = True
    end
    object rsSolsPendFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsSolsPendTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
      Size = 2
    end
    object rsSolsPendConcepto: TStringField
      FieldName = 'Concepto'
      Size = 600
    end
    object rsSolsPendNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsSolsPendTipoSolicitud: TIntegerField
      FieldName = 'TipoSolicitud'
    end
    object rsSolsPendTipo: TStringField
      FieldName = 'Tipo'
      ReadOnly = True
      Size = 13
    end
    object rsSolsPendidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
    end
    object rsSolsPendCuentaBanco: TStringField
      FieldName = 'CuentaBanco'
      Size = 100
    end
  end
  object cBorrarSolicitud: TADOCommand
    CommandText = 'cxpBorrarSolicitudes;1'
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
        Name = '@idSol'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 46
    Top = 258
  end
  object rsRPTSol: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = rsRPTSolCalcFields
    CommandText = 'cxpRPTSolicitud;1'
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
        Name = '@idSol'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 368
    Top = 276
    object rsRPTSolidSolicitud: TIntegerField
      FieldName = 'idSolicitud'
      ReadOnly = True
    end
    object rsRPTSolNumero: TIntegerField
      FieldName = 'Numero'
    end
    object rsRPTSolFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsRPTSolidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
    end
    object rsRPTSolTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
      Size = 2
    end
    object rsRPTSolConcepto: TStringField
      FieldName = 'Concepto'
      Size = 600
    end
    object rsRPTSolStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object rsRPTSolNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsRPTSolTotalRetenciones: TFloatField
      FieldName = 'TotalRetenciones'
      ReadOnly = True
    end
    object rsRPTSolReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsRPTSolFecha_1: TDateTimeField
      FieldName = 'Fecha_1'
    end
    object rsRPTSolValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object rsRPTSolRetencionDoc: TFloatField
      FieldName = 'RetencionDoc'
      ReadOnly = True
    end
    object rsRPTSolTotalNeto: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalNeto'
      Calculated = True
    end
    object rsRPTSolTelefono1: TStringField
      FieldName = 'Telefono1'
      Size = 30
    end
    object rsRPTSolRNC: TStringField
      FieldName = 'RNC'
    end
    object rsRPTSolUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object rsRPTSolFechaRegistro: TDateTimeField
      FieldName = 'FechaRegistro'
    end
    object rsRPTSolValidadaPor: TStringField
      FieldName = 'ValidadaPor'
      Size = 30
    end
    object rsRPTSolValidadaEn: TDateTimeField
      FieldName = 'ValidadaEn'
    end
    object rsRPTSolRevisadaPor: TStringField
      FieldName = 'RevisadaPor'
      Size = 30
    end
    object rsRPTSolRevisadaEn: TDateTimeField
      FieldName = 'RevisadaEn'
    end
    object rsRPTSolValidadaFinalPor: TStringField
      FieldName = 'ValidadaFinalPor'
      Size = 30
    end
    object rsRPTSolValidadaFinalEn: TDateTimeField
      FieldName = 'ValidadaFinalEn'
    end
    object rsRPTSolNotaAdicional: TStringField
      FieldName = 'NotaAdicional'
      Size = 100
    end
    object rsRPTSolmostrarEncxp: TBooleanField
      FieldName = 'mostrarEncxp'
    end
    object rsRPTSolGUIDSolicitud: TGuidField
      FieldName = 'GUIDSolicitud'
      FixedChar = True
      Size = 38
    end
    object rsRPTSolTasa: TBCDField
      FieldName = 'Tasa'
      Precision = 18
      Size = 2
    end
    object rsRPTSolidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsRPTSolidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
    end
    object rsRPTSolTipoAbono: TStringField
      FieldName = 'TipoAbono'
      Size = 1
    end
    object rsRPTSolBancoDestino: TStringField
      FieldName = 'BancoDestino'
      Size = 5
    end
    object rsRPTSolCuentaDestino: TStringField
      FieldName = 'CuentaDestino'
    end
    object rsRPTSolTipoSolicitud: TIntegerField
      FieldName = 'TipoSolicitud'
    end
    object rsRPTSolidCuentaBancoDestino: TIntegerField
      FieldName = 'idCuentaBancoDestino'
    end
    object rsRPTSolDescrStatus: TStringField
      FieldName = 'DescrStatus'
      ReadOnly = True
      Size = 32
    end
    object rsRPTSolBanco: TStringField
      FieldName = 'Banco'
      Size = 100
    end
    object rsRPTSolMoneda: TStringField
      FieldName = 'Moneda'
    end
  end
  object dsRPT: TDataSource
    DataSet = rsRPTSol
    Left = 370
    Top = 332
  end
  object plHeader: TppDBPipeline
    DataSource = dsRPT
    UserName = 'plHeader'
    Left = 440
    Top = 338
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = plHeader
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
    Template.FileName = 'C:\CBSDG2007\bin\Solicitud.rtm'
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
    Left = 440
    Top = 282
    Version = '15.02'
    mmColumnWidth = 0
    DataPipelineName = 'plHeader'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 44450
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        ParentWidth = True
        mmHeight = 4763
        mmLeft = 0
        mmTop = 39688
        mmWidth = 203200
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'Nombre'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 22754
        mmWidth = 119856
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'Numero'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 5997
        mmLeft = 167217
        mmTop = 20902
        mmWidth = 33073
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
        Font.Name = 'Verdana'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 4233
        mmLeft = 167217
        mmTop = 27252
        mmWidth = 33073
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'Telefono1'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 3440
        mmLeft = 8996
        mmTop = 30163
        mmWidth = 30427
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'RNC'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 26458
        mmWidth = 45508
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Referencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3528
        mmLeft = 1323
        mmTop = 40217
        mmWidth = 34131
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3528
        mmLeft = 37042
        mmTop = 40217
        mmWidth = 39423
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3528
        mmLeft = 128588
        mmTop = 40217
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Retencion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3528
        mmLeft = 160073
        mmTop = 40217
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        Caption = 'No. '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5997
        mmLeft = 155311
        mmTop = 20902
        mmWidth = 11007
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkEnabled = False
        DataField = 'Compania'
        DataPipeline = plConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plConfig'
        mmHeight = 7938
        mmLeft = 1588
        mmTop = 1323
        mmWidth = 93134
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkEnabled = False
        Caption = 'Solicitud de Cheque '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5292
        mmLeft = 1588
        mmTop = 9525
        mmWidth = 41910
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Color = clSilver
        Pen.Width = 4
        ParentWidth = True
        Weight = 3.000000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 15610
        mmWidth = 203200
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkEnabled = False
        Caption = 'Tel.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 30163
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Emitir cheque a nombre de:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3528
        mmLeft = 1588
        mmTop = 17992
        mmWidth = 51594
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 1588
        mmTop = 21960
        mmWidth = 120915
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12435
        mmLeft = 1588
        mmTop = 21960
        mmWidth = 2910
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkEnabled = False
        Caption = 'El pago sera aplicado a los documentos siguientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 132027
        mmTop = 35719
        mmWidth = 70644
        BandType = 0
      end
      object lCuenta: TppLabel
        UserName = 'lCuenta'
        HyperlinkEnabled = False
        Caption = 'lCuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4022
        mmLeft = 148432
        mmTop = 1588
        mmWidth = 12065
        BandType = 0
      end
      object lBanco: TppLabel
        UserName = 'lBanco'
        HyperlinkEnabled = False
        Caption = 'lBanco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4022
        mmLeft = 168275
        mmTop = 265
        mmWidth = 10710
        BandType = 0
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        Style = csXInBox
        DataPipeline = plHeader
        DataField = 'mostrarEncxp'
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 6350
        mmLeft = 185738
        mmTop = 8467
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkEnabled = False
        Caption = 'CXP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 190765
        mmTop = 9790
        mmWidth = 7938
        BandType = 0
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkEnabled = False
        DataField = 'DescrStatus'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 12
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 5122
        mmLeft = 115888
        mmTop = 9790
        mmWidth = 67733
        BandType = 0
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkEnabled = False
        DataField = 'Banco'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic, fsUnderline]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 35983
        mmWidth = 71438
        BandType = 0
      end
      object ppDBText21: TppDBText
        UserName = 'DBText201'
        HyperlinkEnabled = False
        DataField = 'Moneda'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsItalic, fsUnderline]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 3440
        mmLeft = 92604
        mmTop = 35983
        mmWidth = 28575
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'Referencia'
        DataPipeline = plHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 3528
        mmLeft = 529
        mmTop = 529
        mmWidth = 34131
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'Fecha_1'
        DataPipeline = plHeader
        DisplayFormat = 'DD/MM/YYYY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 3528
        mmLeft = 37042
        mmTop = 529
        mmWidth = 39158
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'Valor'
        DataPipeline = plHeader
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 3528
        mmLeft = 119327
        mmTop = 529
        mmWidth = 34660
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'RetencionDoc'
        DataPipeline = plHeader
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 3528
        mmLeft = 160073
        mmTop = 529
        mmWidth = 25400
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 43921
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Concepto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3528
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
        mmWidth = 129382
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
        mmWidth = 130175
        BandType = 8
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Preparado por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 265
        mmTop = 36248
        mmWidth = 63500
        BandType = 8
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 265
        mmTop = 35719
        mmWidth = 63500
        BandType = 8
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Revisado por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 67998
        mmTop = 36513
        mmWidth = 63500
        BandType = 8
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 67998
        mmTop = 35983
        mmWidth = 63500
        BandType = 8
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Aprobado por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Verdana'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 136261
        mmTop = 36513
        mmWidth = 63500
        BandType = 8
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 136261
        mmTop = 35983
        mmWidth = 63500
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 22225
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = 15987699
        ParentWidth = True
        Pen.Color = clSilver
        mmHeight = 15875
        mmLeft = 0
        mmTop = 529
        mmWidth = 203200
        BandType = 7
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Color = 15987699
        Pen.Color = clSilver
        mmHeight = 5027
        mmLeft = 116946
        mmTop = 10319
        mmWidth = 69321
        BandType = 7
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Total bruto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 129911
        mmTop = 2117
        mmWidth = 21431
        BandType = 7
      end
      object ppDBText5: TppDBText
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
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 3969
        mmLeft = 152400
        mmTop = 2117
        mmWidth = 33073
        BandType = 7
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = '(-) Total Retenciones:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 118534
        mmTop = 6350
        mmWidth = 32808
        BandType = 7
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'TotalRetenciones'
        DataPipeline = plHeader
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 3969
        mmLeft = 152400
        mmTop = 6350
        mmWidth = 33073
        BandType = 7
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Neto a pagar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 118534
        mmTop = 10848
        mmWidth = 32808
        BandType = 7
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'TotalNeto'
        DataPipeline = plHeader
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plHeader'
        mmHeight = 3969
        mmLeft = 152400
        mmTop = 10848
        mmWidth = 33073
        BandType = 7
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'plCtas'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 17198
        mmWidth = 203200
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = plCtas
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
          Version = '15.02'
          mmColumnWidth = 0
          DataPipelineName = 'plCtas'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 11377
            mmPrintPosition = 0
            object ppShape4: TppShape
              UserName = 'Shape4'
              Brush.Color = 15000804
              ParentWidth = True
              Pen.Color = clSilver
              mmHeight = 5821
              mmLeft = 0
              mmTop = 0
              mmWidth = 203200
              BandType = 1
            end
            object ppLabel17: TppLabel
              UserName = 'Label17'
              HyperlinkEnabled = False
              Caption = 'CODIFICACION'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Verdana'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4233
              mmLeft = 86784
              mmTop = 794
              mmWidth = 30163
              BandType = 1
            end
            object ppShape5: TppShape
              UserName = 'Shape5'
              Brush.Color = 16119285
              Pen.Color = clSilver
              mmHeight = 5556
              mmLeft = 265
              mmTop = 5821
              mmWidth = 203200
              BandType = 1
            end
            object ppLabel18: TppLabel
              UserName = 'Label18'
              HyperlinkEnabled = False
              AutoSize = False
              Caption = 'Cuenta #'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Verdana'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3704
              mmLeft = 1323
              mmTop = 6879
              mmWidth = 17463
              BandType = 1
            end
            object ppLabel19: TppLabel
              UserName = 'Label19'
              HyperlinkEnabled = False
              AutoSize = False
              Caption = 'Nombre de la cuenta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Verdana'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3704
              mmLeft = 26988
              mmTop = 6879
              mmWidth = 38365
              BandType = 1
            end
            object ppLabel20: TppLabel
              UserName = 'Label20'
              HyperlinkEnabled = False
              AutoSize = False
              Caption = 'Debito'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Verdana'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 132292
              mmTop = 6879
              mmWidth = 29104
              BandType = 1
            end
            object ppLabel21: TppLabel
              UserName = 'Label201'
              HyperlinkEnabled = False
              AutoSize = False
              Caption = 'Credito'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Verdana'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 166159
              mmTop = 6879
              mmWidth = 31221
              BandType = 1
            end
            object ppLine8: TppLine
              UserName = 'Line8'
              Pen.Color = clSilver
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5556
              mmLeft = 25400
              mmTop = 5821
              mmWidth = 5027
              BandType = 1
            end
            object ppLine9: TppLine
              UserName = 'Line9'
              Pen.Color = clSilver
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5556
              mmLeft = 112713
              mmTop = 5821
              mmWidth = 5027
              BandType = 1
            end
            object ppLine10: TppLine
              UserName = 'Line10'
              Pen.Color = clSilver
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5556
              mmLeft = 164042
              mmTop = 5821
              mmWidth = 5027
              BandType = 1
            end
            object ppLabel23: TppLabel
              UserName = 'Label23'
              HyperlinkEnabled = False
              AutoSize = False
              Caption = 'Aux'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Verdana'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3704
              mmLeft = 114829
              mmTop = 6879
              mmWidth = 12435
              BandType = 1
            end
            object ppLine14: TppLine
              UserName = 'Line14'
              Pen.Color = clSilver
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5556
              mmLeft = 129646
              mmTop = 5821
              mmWidth = 5027
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 5556
            mmPrintPosition = 0
            object ppShape6: TppShape
              UserName = 'Shape6'
              ParentHeight = True
              ParentWidth = True
              mmHeight = 5556
              mmLeft = 0
              mmTop = 0
              mmWidth = 203200
              BandType = 4
            end
            object ppDBText14: TppDBText
              UserName = 'DBText14'
              HyperlinkEnabled = False
              DataField = 'idCuenta'
              DataPipeline = plCtas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Verdana'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plCtas'
              mmHeight = 3440
              mmLeft = 529
              mmTop = 1058
              mmWidth = 21696
              BandType = 4
            end
            object ppDBText15: TppDBText
              UserName = 'DBText15'
              HyperlinkEnabled = False
              DataField = 'Cuenta'
              DataPipeline = plCtas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Verdana'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plCtas'
              mmHeight = 3440
              mmLeft = 26988
              mmTop = 1058
              mmWidth = 83608
              BandType = 4
            end
            object ppDBText16: TppDBText
              UserName = 'DBText16'
              HyperlinkEnabled = False
              DataField = 'Debito'
              DataPipeline = plCtas
              DisplayFormat = '#,0.00;(#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Verdana'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plCtas'
              mmHeight = 3440
              mmLeft = 131234
              mmTop = 1058
              mmWidth = 30163
              BandType = 4
            end
            object ppDBText17: TppDBText
              UserName = 'DBText17'
              HyperlinkEnabled = False
              DataField = 'Credito'
              DataPipeline = plCtas
              DisplayFormat = '#,0.00;(#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Verdana'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plCtas'
              mmHeight = 3440
              mmLeft = 166952
              mmTop = 1058
              mmWidth = 30163
              BandType = 4
            end
            object ppLine11: TppLine
              UserName = 'Line11'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5556
              mmLeft = 25135
              mmTop = 0
              mmWidth = 4763
              BandType = 4
            end
            object ppLine12: TppLine
              UserName = 'Line12'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5556
              mmLeft = 112713
              mmTop = 0
              mmWidth = 4498
              BandType = 4
            end
            object ppLine13: TppLine
              UserName = 'Line13'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5556
              mmLeft = 163777
              mmTop = 0
              mmWidth = 4498
              BandType = 4
            end
            object ppDBText18: TppDBText
              UserName = 'DBText18'
              HyperlinkEnabled = False
              DataField = 'idAuxiliar'
              DataPipeline = plCtas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Verdana'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plCtas'
              mmHeight = 3440
              mmLeft = 114829
              mmTop = 1058
              mmWidth = 12435
              BandType = 4
            end
            object ppLine15: TppLine
              UserName = 'Line15'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5556
              mmLeft = 129646
              mmTop = 0
              mmWidth = 4498
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object plConfig: TppDBPipeline
    DataSource = dsConfig
    UserName = 'plHeader1'
    Left = 364
    Top = 414
    object plConfigppField1: TppField
      FieldAlias = 'Compania'
      FieldName = 'Compania'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plConfigppField2: TppField
      FieldAlias = 'Telefono'
      FieldName = 'Telefono'
      FieldLength = 15
      DisplayWidth = 15
      Position = 1
    end
    object plConfigppField3: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 15
      DisplayWidth = 15
      Position = 2
    end
    object plConfigppField4: TppField
      FieldAlias = 'RNC'
      FieldName = 'RNC'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object plConfigppField5: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 120
      DisplayWidth = 120
      Position = 4
    end
    object plConfigppField6: TppField
      FieldAlias = 'CompaniaCorto'
      FieldName = 'CompaniaCorto'
      FieldLength = 16
      DisplayWidth = 16
      Position = 5
    end
    object plConfigppField7: TppField
      FieldAlias = 'TituloApp'
      FieldName = 'TituloApp'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
    object plConfigppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'idCompania'
      FieldName = 'idCompania'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object plConfigppField9: TppField
      FieldAlias = 'Prefijo'
      FieldName = 'Prefijo'
      FieldLength = 4
      DisplayWidth = 4
      Position = 8
    end
    object plConfigppField10: TppField
      FieldAlias = 'idOficina'
      FieldName = 'idOficina'
      FieldLength = 16
      DisplayWidth = 16
      Position = 9
    end
    object plConfigppField11: TppField
      FieldAlias = 'AgenteAWB'
      FieldName = 'AgenteAWB'
      FieldLength = 50
      DisplayWidth = 50
      Position = 10
    end
  end
  object dsConfig: TDataSource
    DataSet = dm.Configuracion
    Left = 266
    Top = 414
  end
  object rsSolCtas: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpGenSolicitudCuentas;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idSol'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@CtaBanco'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 500
    Top = 284
    object rsSolCtasidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsSolCtasDebito: TBCDField
      FieldName = 'Debito'
      Precision = 19
      Size = 2
    end
    object rsSolCtasCredito: TBCDField
      FieldName = 'Credito'
      Precision = 19
      Size = 2
    end
    object rsSolCtasCuenta: TStringField
      FieldName = 'Cuenta'
      Size = 60
    end
    object rsSolCtasidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
    end
  end
  object plCtas: TppDBPipeline
    DataSource = dsCtas
    UserName = 'plCtas'
    Left = 502
    Top = 344
    object plCtasppField1: TppField
      FieldAlias = 'idCuenta'
      FieldName = 'idCuenta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plCtasppField2: TppField
      FieldAlias = 'Debito'
      FieldName = 'Debito'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plCtasppField3: TppField
      FieldAlias = 'Credito'
      FieldName = 'Credito'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object plCtasppField4: TppField
      FieldAlias = 'Cuenta'
      FieldName = 'Cuenta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object plCtasppField5: TppField
      FieldAlias = 'idAuxiliar'
      FieldName = 'idAuxiliar'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
  end
  object dsCtas: TDataSource
    DataSet = rsSolCtas
    Left = 494
    Top = 412
  end
  object rsEnts: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select idSuplidor, Nombre from cxpSuplidores order by Nombre'
    Parameters = <>
    Left = 40
    Top = 405
    object rsEntsidSuplidor: TIntegerField
      FieldName = 'idSuplidor'
      ReadOnly = True
    end
    object rsEntsNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
  end
  object rsBancoSuplidor: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'cxpRSBancoSuplidor;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdSuplidor'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 458
    Top = 170
    object rsBancoSuplidorIdBancoSuplidor: TGuidField
      FieldName = 'IdBancoSuplidor'
      FixedChar = True
      Size = 38
    end
    object rsBancoSuplidorIdSuplidor: TIntegerField
      FieldName = 'IdSuplidor'
    end
    object rsBancoSuplidorIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
    end
    object rsBancoSuplidorBancoCodigo: TStringField
      FieldName = 'BancoCodigo'
      Size = 5
    end
    object rsBancoSuplidorTipoCuenta: TStringField
      FieldName = 'TipoCuenta'
      Size = 2
    end
    object rsBancoSuplidorCuenta: TStringField
      FieldName = 'Cuenta'
    end
    object rsBancoSuplidorBancoDefault: TBooleanField
      FieldName = 'BancoDefault'
    end
  end
  object cProcesarSol: TADOCommand
    CommandText = 'cxpProcesarSolicitud;1'
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
        Name = '@idSolicitud'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@idDoc'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 138
    Top = 393
  end
  object cValidar: TADOCommand
    CommandText = 'cxpValidarSolicitud;1'
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
        Name = '@idSolicitud'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@st'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@newst'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@usuario'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 464
    Top = 32
  end
  object mSolRets: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'idSolicitudRet'
        Attributes = [faFixed]
        DataType = ftGuid
        Size = 38
      end
      item
        Name = 'idSolicitud'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'idDocumento'
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
    OnNewRecord = mSolRetsNewRecord
    Left = 138
    Top = 448
    object mSolRetsidSolicitudRet: TGuidField
      FieldName = 'idSolicitudRet'
      FixedChar = True
      Size = 38
    end
    object mSolRetsidSolicitud: TIntegerField
      FieldName = 'idSolicitud'
    end
    object mSolRetsidDocumento: TIntegerField
      FieldName = 'idDocumento'
    end
    object mSolRetsPorcentaje: TFloatField
      FieldName = 'Porcentaje'
      OnValidate = mSolRetsPorcentajeValidate
      DisplayFormat = '##0.00###%'
    end
    object mSolRetsValor: TBCDField
      FieldName = 'Valor'
      OnValidate = mSolRetsValorValidate
      currency = True
      Precision = 19
      Size = 2
    end
    object mSolRetsidRetencion: TIntegerField
      FieldName = 'idRetencion'
      OnValidate = mSolRetsidRetencionValidate
    end
    object mSolRetsRetencion: TStringField
      FieldName = 'Retencion'
      Size = 100
    end
    object mSolRetsIdTipoRetencionDGII: TIntegerField
      FieldName = 'IdTipoRetencionDGII'
    end
  end
  object rsDocRets: TADODataSet
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
    Left = 264
    Top = 354
    object rsDocRetsidDocumento: TIntegerField
      FieldName = 'idDocumento'
    end
    object rsDocRetsidRetencion: TIntegerField
      FieldName = 'idRetencion'
    end
    object rsDocRetsRetencion: TStringField
      FieldName = 'Retencion'
      Size = 50
    end
    object rsDocRetsPorcentaje: TFloatField
      FieldName = 'Porcentaje'
    end
    object rsDocRetsidTipoRetencionDGII: TIntegerField
      FieldName = 'idTipoRetencionDGII'
    end
  end
  object rsSolRets: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cxpRSSolicitudRet'
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
        Name = '@idSolicitud'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 142
    Top = 337
    object rsSolRetsidSolicitudRet: TGuidField
      FieldName = 'idSolicitudRet'
      FixedChar = True
      Size = 38
    end
    object rsSolRetsidSolicitud: TIntegerField
      FieldName = 'idSolicitud'
    end
    object rsSolRetsidDocumento: TIntegerField
      FieldName = 'idDocumento'
    end
    object rsSolRetsPorcentaje: TFloatField
      FieldName = 'Porcentaje'
    end
    object rsSolRetsValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object rsSolRetsidRetencion: TIntegerField
      FieldName = 'idRetencion'
    end
    object rsSolRetsRetencion: TStringField
      FieldName = 'Retencion'
      Size = 100
    end
    object rsSolRetsidTipoRetencionDGII: TIntegerField
      FieldName = 'idTipoRetencionDGII'
    end
  end
  object cborrarRets: TADOCommand
    CommandText = 'cxpBorrarSolRet;1'
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
        Name = '@idSolicitud'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 40
    Top = 462
  end
  object cInsRet: TADOCommand
    CommandText = 'cxpGuardarSolicitudRet;1'
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
        Name = '@idSolicitud'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@idSolicitudRet'
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
        Name = '@Porc'
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
    Left = 262
    Top = 460
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
    Left = 468
    Top = 108
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
  object dsTiposRet: TDataSource
    DataSet = rsTiposRets
    Left = 538
    Top = 108
  end
  object rsListaRetDGII: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'SELECT * FROM cxpTiposRetencionDGII'
    Parameters = <>
    Left = 562
    Top = 256
    object rsListaRetDGIIidTiposRetencionDGII: TIntegerField
      FieldName = 'idTiposRetencionDGII'
    end
    object rsListaRetDGIITiposRetencionDGII: TStringField
      FieldName = 'TiposRetencionDGII'
      Size = 50
    end
  end
  object dsRetsDGII: TDataSource
    DataSet = rsListaRetDGII
    Left = 565
    Top = 318
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

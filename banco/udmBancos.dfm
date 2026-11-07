object dmBanco: TdmBanco
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 514
  Top = 214
  Height = 424
  Width = 517
  object rsBancos: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from cxpBancos'
    Parameters = <>
    Left = 116
    Top = 16
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
  object rsConceptos: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select * from bcoConceptos'#13#10'order by descripcion'
    Parameters = <>
    Left = 28
    Top = 116
    object rsConceptosidConcepto: TIntegerField
      FieldName = 'idConcepto'
      ReadOnly = True
    end
    object rsConceptosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object rsConceptosDebCre: TWordField
      FieldName = 'DebCre'
    end
    object rsConceptosidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
  end
  object rsDocumento: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'bcoBuscarDocumento;1'
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
        Name = '@GUIDDocumento'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 204
    Top = 18
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
    object rsDocumentoTipoTransaccion: TStringField
      FieldName = 'TipoTransaccion'
      Size = 100
    end
    object rsDocumentoDebCre: TWordField
      FieldName = 'DebCre'
    end
    object rsDocumentoNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object rsDocumentoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsDocumentoValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object rsDocumentoConcepto: TStringField
      FieldName = 'Concepto'
      Size = 100
    end
    object rsDocumentoGUIDDocumento: TGuidField
      FieldName = 'GUIDDocumento'
      FixedChar = True
      Size = 38
    end
    object rsDocumentoCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object rsDocumentoidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsDocumentoTasa: TFloatField
      FieldName = 'Tasa'
    end
    object rsDocumentoContabilizar: TBooleanField
      FieldName = 'Contabilizar'
    end
  end
  object rsDocDtl: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'bcoBuscarDocumentoDtl;1'
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
        Name = '@GUIDDocumento'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@idTrans'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 294
    Top = 16
    object rsDocDtlDebCre: TWordField
      FieldName = 'DebCre'
    end
    object rsDocDtlValor: TBCDField
      FieldName = 'Valor'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsDocDtlDebito: TBCDField
      FieldName = 'Debito'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsDocDtlCredito: TBCDField
      FieldName = 'Credito'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsDocDtlidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsDocDtlAutomatica: TBooleanField
      FieldName = 'Automatica'
    end
    object rsDocDtlidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
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
        Name = 'idCuentaBanco'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'Status'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 1
      end
      item
        Name = 'FechaStatus'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'TipoDocOrigen'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DocOrigen'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'TipoTransaccion'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DebCre'
        Attributes = [faFixed]
        DataType = ftWord
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
    Left = 128
    Top = 114
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
    object mDocumentoidCuentaBanco: TIntegerField
      FieldName = 'idCuentaBanco'
      OnValidate = mDocumentoidCuentaBancoValidate
    end
    object mDocumentoStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object mDocumentoFechaStatus: TDateTimeField
      FieldName = 'FechaStatus'
    end
    object mDocumentoTipoDocOrigen: TStringField
      FieldName = 'TipoDocOrigen'
      Size = 2
    end
    object mDocumentoDocOrigen: TIntegerField
      FieldName = 'DocOrigen'
    end
    object mDocumentoTipoTransaccion: TStringField
      FieldName = 'TipoTransaccion'
      Size = 100
    end
    object mDocumentoDebCre: TWordField
      FieldName = 'DebCre'
    end
    object mDocumentoNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object mDocumentoValor: TCurrencyField
      FieldName = 'Valor'
      OnValidate = mDocumentoValorValidate
    end
    object mDocumentoReferencia: TStringField
      FieldName = 'Referencia'
      OnValidate = mDocumentoReferenciaValidate
    end
    object mDocumentoConcepto: TStringField
      FieldName = 'Concepto'
      Size = 100
    end
    object mDocumentoGUIDDocumento: TGuidField
      FieldName = 'GUIDDocumento'
      FixedChar = True
      Size = 38
    end
    object mDocumentoCompFiscal: TStringField
      FieldName = 'CompFiscal'
      Size = 19
    end
    object mDocumentoidMoneda: TIntegerField
      FieldName = 'idMoneda'
      OnValidate = mDocumentoidMonedaValidate
    end
    object mDocumentoTasa: TFloatField
      FieldName = 'Tasa'
      OnValidate = mDocumentoValorValidate
    end
    object mDocumentoContabilizar: TBooleanField
      FieldName = 'Contabilizar'
      OnValidate = mDocumentoContabilizarValidate
    end
  end
  object mDocDtl: TkbmMemTable
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
        Name = 'LineaNum'
        Attributes = [faReadonly, faFixed]
        DataType = ftInteger
      end
      item
        Name = 'idConcepto'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'DebCre'
        Attributes = [faFixed]
        DataType = ftWord
      end
      item
        Name = 'Valor'
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
        Name = 'Concepto'
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
    BeforeEdit = mDocDtlBeforeEdit
    AfterPost = mDocDtlAfterPost
    AfterDelete = mDocDtlAfterPost
    Left = 204
    Top = 114
    object mDocDtlidCuenta: TStringField
      FieldName = 'idCuenta'
      OnValidate = mDocDtlidCuentaValidate
      Size = 16
    end
    object mDocDtlDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object mDocDtlDebCre: TWordField
      FieldName = 'DebCre'
    end
    object mDocDtlValor: TBCDField
      FieldName = 'Valor'
      Precision = 19
      Size = 2
    end
    object mDocDtlDebito: TCurrencyField
      FieldName = 'Debito'
      OnValidate = mDocDtlDebitoValidate
    end
    object mDocDtlCredito: TCurrencyField
      FieldName = 'Credito'
      OnValidate = mDocDtlCreditoValidate
    end
    object mDocDtlAutomatica: TBooleanField
      FieldName = 'Automatica'
    end
    object mDocDtlLineaNum: TAutoIncField
      FieldName = 'LineaNum'
    end
    object mDocDtlidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
    end
  end
  object rsTipoTrans: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select * from bcoTiposTrans'#13#10'where idTrans = :idTr'
    Parameters = <
      item
        Name = 'idTr'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 310
    Top = 92
    object rsTipoTransidTrans: TIntegerField
      FieldName = 'idTrans'
      ReadOnly = True
    end
    object rsTipoTransDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object rsTipoTransDebCre: TWordField
      FieldName = 'DebCre'
    end
    object rsTipoTransAbrev: TStringField
      FieldName = 'Abrev'
      Size = 10
    end
    object rsTipoTransContador: TStringField
      FieldName = 'Contador'
      Size = 16
    end
    object rsTipoTransidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
  end
  object cGuardarDoc: TADOCommand
    CommandText = 'bcoGuardarDocumento;1'
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
        Name = '@idCuentaBanco'
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
        Name = '@TipoDocOrigen'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
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
        Name = '@DebCre'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
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
        Name = '@nid'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end
      item
        Name = '@GUIDDocumento'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@CompFiscal'
        Attributes = [paNullable]
        DataType = ftString
        Size = 19
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
        Name = '@tasa'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Contabilizar'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 34
    Top = 198
  end
  object cGuardarDocDtl: TADOCommand
    CommandText = 'bcoGuardarDocDtl;1'
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
        Name = '@GUIDDocumento'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@DebCre'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
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
        Name = '@Automatica'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 128
    Top = 190
  end
  object cBorrarDtl: TADOCommand
    CommandText = 'bcoBorrarDocDtl;1'
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
        Name = '@GUIDDocumento'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 204
    Top = 194
  end
  object cValidarDoc: TADOCommand
    CommandText = 'bcoValidarDoc;1'
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
        Name = '@idBco'
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
    Left = 306
    Top = 162
  end
  object cBorrarDoc: TADOCommand
    CommandText = 'bcoBorrarDocumento'
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
        DataType = ftGuid
        Value = Null
      end>
    Left = 30
    Top = 256
  end
  object rsCatalogo: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select idCuenta, Descripcion from cgCatalogoCuentas order by Des' +
      'cripcion'
    Parameters = <>
    Left = 312
    Top = 274
    object rsCatalogoidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsCatalogoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 60
    end
  end
  object QCierre: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'Select max(cierre) as DiaCierre from cierre '
    Parameters = <>
    Left = 130
    Top = 256
    object QCierreDiaCierre: TDateTimeField
      FieldName = 'DiaCierre'
      ReadOnly = True
    end
  end
  object rsBalanceCta: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'select dbo.bcoBalanceCta(:idCta,:Hasta) as Balance'#13#10
    Parameters = <
      item
        Name = 'idCta'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'Hasta'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    Left = 386
    Top = 50
    object rsBalanceCtaBalance: TBCDField
      FieldName = 'Balance'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
  end
  object spGetNextIDStr: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    ProcedureName = 'GetNextCounterSTR;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@XContador'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Prepared = True
    Left = 300
    Top = 224
    object spGetNextIDStrValor: TStringField
      FieldName = 'Valor'
      ReadOnly = True
      Size = 8000
    end
  end
  object rsbuscarPrima: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cgcuentaPrimaBuscar'
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
    Left = 34
    Top = 316
    object rsbuscarPrimaCuenta: TStringField
      FieldName = 'Cuenta'
      Size = 16
    end
    object rsbuscarPrimaDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 60
    end
    object rsbuscarPrimaDebito: TBCDField
      FieldName = 'Debito'
      ReadOnly = True
      Precision = 32
    end
    object rsbuscarPrimaCredito: TBCDField
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
        Name = 'idDocumento'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'LineaNum'
        Attributes = [faReadonly, faFixed]
        DataType = ftInteger
      end
      item
        Name = 'idConcepto'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'DebCre'
        Attributes = [faFixed]
        DataType = ftWord
      end
      item
        Name = 'Valor'
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
        Name = 'Concepto'
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
    Left = 406
    Top = 224
    object mPrimasIdCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object mPrimasDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object mPrimasDebCre: TWordField
      FieldName = 'DebCre'
    end
    object mPrimasValor: TCurrencyField
      FieldName = 'Valor'
    end
    object mPrimasDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object mPrimasCredito: TCurrencyField
      FieldName = 'Credito'
    end
    object mPrimasAutomatica: TBooleanField
      FieldName = 'Automatica'
    end
  end
end

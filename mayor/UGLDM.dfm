object gldm: Tgldm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 436
  Top = 229
  Height = 414
  Width = 652
  object rsCatalogo: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select idCuenta, Descripcion, Origen, CtaDescargue, Detalle , Ni' +
      'vel, TipoNivel, SoloAuxiliares, Status, FechaStatus '#13#10'from cgcat' +
      'alogocuentas'#13#10'order by idCuenta'
    Parameters = <>
    Left = 12
    Top = 66
    object rsCatalogoidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsCatalogoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 60
    end
    object rsCatalogoOrigen: TStringField
      FieldName = 'Origen'
      FixedChar = True
      Size = 1
    end
    object rsCatalogoCtaDescargue: TStringField
      FieldName = 'CtaDescargue'
      Size = 16
    end
    object rsCatalogoDetalle: TBooleanField
      FieldName = 'Detalle'
    end
    object rsCatalogoNivel: TSmallintField
      FieldName = 'Nivel'
    end
    object rsCatalogoTipoNivel: TStringField
      FieldName = 'TipoNivel'
      FixedChar = True
      Size = 1
    end
    object rsCatalogoSoloAuxiliares: TBooleanField
      FieldName = 'SoloAuxiliares'
    end
    object rsCatalogoStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object rsCatalogoFechaStatus: TDateTimeField
      FieldName = 'FechaStatus'
    end
  end
  object rsCuenta: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 
      'select c.*, m.Descripcion as Madre'#13#10' from cgCatalogoCuentas c le' +
      'ft join cgCatalogoCuentas m'#13#10'  on c.CtaDescargue = m.idCuenta '#13#10 +
      'where c.idCuenta = :Cta'
    Parameters = <
      item
        Name = 'Cta'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    Left = 76
    Top = 8
    object rsCuentaidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsCuentaDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 60
    end
    object rsCuentaOrigen: TStringField
      FieldName = 'Origen'
      FixedChar = True
      Size = 1
    end
    object rsCuentaNivel: TSmallintField
      FieldName = 'Nivel'
    end
    object rsCuentaCtadescargue: TStringField
      FieldName = 'Ctadescargue'
      Size = 16
    end
    object rsCuentaFechaCreacion: TDateTimeField
      FieldName = 'FechaCreacion'
    end
    object rsCuentaDetalle: TBooleanField
      FieldName = 'Detalle'
    end
    object rsCuentaMadre: TStringField
      FieldName = 'Madre'
      Size = 60
    end
    object rsCuentaTipoNivel: TStringField
      FieldName = 'TipoNivel'
      FixedChar = True
      Size = 1
    end
    object rsCuentaCtaVieja: TStringField
      FieldName = 'CtaVieja'
      Size = 16
    end
    object rsCuentaCtaCierre: TStringField
      FieldName = 'CtaCierre'
      Size = 16
    end
    object rsCuentaStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object rsCuentaFechaStatus: TDateTimeField
      FieldName = 'FechaStatus'
    end
    object rsCuentaSoloAuxiliares: TBooleanField
      FieldName = 'SoloAuxiliares'
    end
  end
  object mCuenta: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
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
    OnNewRecord = mCuentaNewRecord
    Left = 80
    Top = 60
    object mCuentaidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object mCuentaDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 60
    end
    object mCuentaNivel: TSmallintField
      FieldName = 'Nivel'
    end
    object mCuentaCtaDescargue: TStringField
      FieldName = 'CtaDescargue'
      Size = 16
    end
    object mCuentaFechaCreacion: TDateTimeField
      FieldName = 'FechaCreacion'
    end
    object mCuentaDetalle: TBooleanField
      FieldName = 'Detalle'
    end
    object mCuentaOrigen: TStringField
      FieldName = 'Origen'
      Size = 10
    end
    object mCuentaMadre: TStringField
      FieldName = 'Madre'
      Size = 60
    end
    object mCuentaTipoCuenta: TStringField
      FieldName = 'TipoCuenta'
      Size = 10
    end
    object mCuentaCtaVieja: TStringField
      FieldName = 'CtaVieja'
      Size = 16
    end
    object mCuentaCtaCierre: TStringField
      FieldName = 'CtaCierre'
      Size = 16
    end
    object mCuentaSoloAuxiliares: TBooleanField
      FieldName = 'SoloAuxiliares'
    end
    object mCuentaStatus: TStringField
      FieldName = 'Status'
      OnValidate = mCuentaStatusValidate
      Size = 1
    end
    object mCuentaFechaStatus: TDateTimeField
      FieldName = 'FechaStatus'
    end
  end
  object cmdGuardarCta: TADOCommand
    CommandText = 'cgGuardarCuenta;1'
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
        Name = '@Cta'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@Descr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 60
        Value = Null
      end
      item
        Name = '@Orig'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@Niv'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@ctades'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@tipo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@ctacierre'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@soloaux'
        Attributes = [paNullable]
        DataType = ftBoolean
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
        Name = '@fecstatus'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 154
    Top = 10
  end
  object rsEntrada: TADODataSet
    Connection = dm.Coneccion
    LockType = ltReadOnly
    CommandText = 'select e.*'#13#10'from cgEntradasDiario e'#13#10'where e.idEntrada = :EntId'
    Parameters = <
      item
        Name = 'EntId'
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    Left = 12
    Top = 132
    object rsEntradaNumeroEntrada: TStringField
      FieldName = 'NumeroEntrada'
      Size = 16
    end
    object rsEntradaNumeroDocumento: TStringField
      FieldName = 'NumeroDocumento'
      Size = 16
    end
    object rsEntradaFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object rsEntradaConcepto: TBlobField
      FieldName = 'Concepto'
    end
    object rsEntradaTipoEntrada: TStringField
      FieldName = 'TipoEntrada'
      FixedChar = True
      Size = 2
    end
    object rsEntradaidEntrada: TGuidField
      FieldName = 'idEntrada'
      FixedChar = True
      Size = 38
    end
    object rsEntradaUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object rsEntradaFechaRegistro: TDateTimeField
      FieldName = 'FechaRegistro'
    end
  end
  object rsEntDtl: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select d.* , c.Descripcion as DescrCta, cc.CentroCosto '#13#10'from cg' +
      'EntradasDetalle d left join cgCatalogoCuentas c'#13#10'  on d.idCuenta' +
      ' = c.idCuenta'#13#10'  left join CentroCosto cc on d.idCentroCosto = c' +
      'c.idCentroCosto '#13#10'where d.idEntrada = :idEntrada'
    Parameters = <
      item
        Name = 'idEntrada'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    Left = 12
    Top = 188
    object rsEntDtlidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object rsEntDtlDebCre: TSmallintField
      FieldName = 'DebCre'
    end
    object rsEntDtlValor: TBCDField
      FieldName = 'Valor'
      Precision = 20
      Size = 2
    end
    object rsEntDtlReferencia: TStringField
      FieldName = 'Referencia'
    end
    object rsEntDtlDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object rsEntDtlDebito: TBCDField
      FieldName = 'Debito'
      ReadOnly = True
      Precision = 20
      Size = 2
    end
    object rsEntDtlCredito: TBCDField
      FieldName = 'Credito'
      ReadOnly = True
      Precision = 20
      Size = 2
    end
    object rsEntDtlDescrCta: TStringField
      FieldName = 'DescrCta'
      Size = 60
    end
    object rsEntDtlidEntradaDetalle: TGuidField
      FieldName = 'idEntradaDetalle'
      FixedChar = True
      Size = 38
    end
    object rsEntDtlidEntrada: TGuidField
      FieldName = 'idEntrada'
      FixedChar = True
      Size = 38
    end
    object rsEntDtlSecuencia: TIntegerField
      FieldName = 'Secuencia'
      ReadOnly = True
    end
    object rsEntDtlidCentroCosto: TGuidField
      FieldName = 'idCentroCosto'
      FixedChar = True
      Size = 38
    end
    object rsEntDtlidPartida: TStringField
      FieldName = 'idPartida'
      Size = 16
    end
    object rsEntDtlCentroCosto: TStringField
      FieldName = 'CentroCosto'
      Size = 16
    end
    object rsEntDtlidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      Size = 16
    end
    object rsEntDtlTipoGasto: TStringField
      FieldName = 'TipoGasto'
      Size = 16
    end
  end
  object mEntrada: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'idEntrada'
        Attributes = [faFixed]
        DataType = ftGuid
        Size = 38
      end
      item
        Name = 'NumeroEntrada'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'NumeroDocumento'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'Fecha'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'Concepto'
        DataType = ftBlob
      end
      item
        Name = 'TipoEntrada'
        Attributes = [faFixed]
        DataType = ftFixedChar
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
    Left = 80
    Top = 130
    object mEntradaidEntrada: TGuidField
      FieldName = 'idEntrada'
      FixedChar = True
      Size = 38
    end
    object mEntradaNumeroEntrada: TStringField
      FieldName = 'NumeroEntrada'
      OnValidate = mEntradaNumeroEntradaValidate
      Size = 16
    end
    object mEntradaNumeroDocumento: TStringField
      FieldName = 'NumeroDocumento'
      Size = 16
    end
    object mEntradaFecha: TDateTimeField
      FieldName = 'Fecha'
      OnValidate = mEntradaNumeroEntradaValidate
    end
    object mEntradaConcepto: TBlobField
      FieldName = 'Concepto'
    end
    object mEntradaTipoEntrada: TStringField
      FieldName = 'TipoEntrada'
      FixedChar = True
      Size = 2
    end
    object mEntradaTotalDB: TCurrencyField
      FieldName = 'TotalDB'
    end
    object mEntradaTotalCR: TCurrencyField
      FieldName = 'TotalCR'
    end
    object mEntradaDiferencia: TCurrencyField
      FieldName = 'Diferencia'
    end
    object mEntradaUsuario: TStringField
      FieldName = 'Usuario'
      Size = 30
    end
    object mEntradaFechaRegistro: TDateTimeField
      FieldName = 'FechaRegistro'
    end
  end
  object mEntdtl: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'idEntradaDetalle'
        Attributes = [faFixed]
        DataType = ftGuid
        Size = 38
      end
      item
        Name = 'idEntrada'
        Attributes = [faFixed]
        DataType = ftGuid
        Size = 38
      end
      item
        Name = 'Secuencia'
        Attributes = [faReadonly, faFixed]
        DataType = ftInteger
      end
      item
        Name = 'idCuenta'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'DebCre'
        Attributes = [faFixed]
        DataType = ftSmallint
      end
      item
        Name = 'Valor'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 20
        Size = 2
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Descripcion'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Debito'
        Attributes = [faReadonly, faFixed]
        DataType = ftBCD
        Precision = 20
        Size = 2
      end
      item
        Name = 'Credito'
        Attributes = [faReadonly, faFixed]
        DataType = ftBCD
        Precision = 20
        Size = 2
      end
      item
        Name = 'idCentroCosto'
        Attributes = [faFixed]
        DataType = ftGuid
        Size = 38
      end
      item
        Name = 'idPartida'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'DescrCta'
        DataType = ftString
        Size = 60
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
    AfterPost = mEntdtlAfterPost
    AfterDelete = mEntdtlAfterPost
    OnNewRecord = mEntdtlNewRecord
    Left = 82
    Top = 192
    object mEntdtlidEntradaDetalle: TGuidField
      FieldName = 'idEntradaDetalle'
      FixedChar = True
      Size = 38
    end
    object mEntdtlidEntrada: TGuidField
      FieldName = 'idEntrada'
      FixedChar = True
      Size = 38
    end
    object mEntdtlSecuencia: TIntegerField
      FieldName = 'Secuencia'
      ReadOnly = True
    end
    object mEntdtlidCuenta: TStringField
      FieldName = 'idCuenta'
      OnValidate = mEntdtlidCuentaValidate
      Size = 16
    end
    object mEntdtlDebCre: TSmallintField
      FieldName = 'DebCre'
    end
    object mEntdtlValor: TBCDField
      FieldName = 'Valor'
      Precision = 20
      Size = 2
    end
    object mEntdtlReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mEntdtlDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object mEntdtlDebito: TBCDField
      FieldName = 'Debito'
      OnValidate = mEntdtlDebitoValidate
      currency = True
      Precision = 20
      Size = 2
    end
    object mEntdtlCredito: TBCDField
      FieldName = 'Credito'
      OnValidate = mEntdtlDebitoValidate
      currency = True
      Precision = 20
      Size = 2
    end
    object mEntdtlidCentroCosto: TGuidField
      FieldName = 'idCentroCosto'
      OnValidate = mEntdtlidCentroCostoValidate
      FixedChar = True
      Size = 38
    end
    object mEntdtlidPartida: TStringField
      FieldName = 'idPartida'
      Size = 16
    end
    object mEntdtlDescrCta: TStringField
      FieldName = 'DescrCta'
      Size = 60
    end
    object mEntdtlCentroCosto: TStringField
      FieldName = 'CentroCosto'
      OnValidate = mEntdtlCentroCostoValidate
      Size = 16
    end
    object mEntdtlidAuxiliar: TStringField
      FieldName = 'idAuxiliar'
      OnValidate = mEntdtlidAuxiliarValidate
      Size = 16
    end
    object mEntdtlTipoGasto: TStringField
      FieldName = 'TipoGasto'
      Size = 16
    end
  end
  object cmdBorrarEntDtl: TADOCommand
    CommandText = 'cgBorrarEntradaDtl;1'
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
        Name = '@Entid'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 158
    Top = 66
  end
  object cmdGuardarEnt: TADOCommand
    CommandText = 'cgGuardarEntrada;1'
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
        Name = '@EntId'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@Num'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@Doc'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@Fec'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Conc'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8000
        Value = Null
      end
      item
        Name = '@Tipo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
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
        Name = '@usuario'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 158
    Top = 126
  end
  object cmdGuardarEntDtl: TADOCommand
    CommandText = 'cgGuardarDetEntrada;1'
    CommandTimeout = 45
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
        Name = '@EntId'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@idDetalle'
        Attributes = [paNullable]
        DataType = ftGuid
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
        Name = '@idAuxiliar'
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
        Name = '@Ref'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
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
        Name = '@idCentroCosto'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@idPartida'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@TipoGasto'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 156
    Top = 192
  end
  object rsTipos: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'select * from cgTiposEntradaDiario order by Descripcion'
    Parameters = <>
    Left = 240
    Top = 14
    object rsTiposTipoEntrada: TStringField
      FieldName = 'TipoEntrada'
      FixedChar = True
      Size = 2
    end
    object rsTiposDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  object cmdBorrarCuenta: TADOCommand
    CommandText = 'cgBorrarCuenta;1'
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
        Name = '@idCta'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 238
    Top = 70
  end
  object mTotales: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 2
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
        Name = 'Origen'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Tipo'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Nivel'
        DataType = ftInteger
      end
      item
        Name = 'BalanceAnterior'
        DataType = ftCurrency
      end
      item
        Name = 'TotalDB'
        DataType = ftCurrency
      end
      item
        Name = 'TotalCR'
        DataType = ftCurrency
      end
      item
        Name = 'BalanceActual'
        DataType = ftCurrency
      end>
    IndexFieldNames = 'idCuenta'
    IndexName = 'mTotalesix_idCuenta'
    IndexDefs = <
      item
        Name = 'mTotalesix_idCuenta'
        Fields = 'idCuenta'
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    FilterOptions = []
    Version = '4.08b'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    OnCalcFields = mTotalesCalcFields
    Left = 310
    Top = 16
    object mTotalesidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object mTotalesDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 60
    end
    object mTotalesOrigen: TStringField
      FieldName = 'Origen'
      Size = 2
    end
    object mTotalesTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object mTotalesNivel: TIntegerField
      FieldName = 'Nivel'
    end
    object mTotalesBalanceAnterior: TCurrencyField
      FieldName = 'BalanceAnterior'
    end
    object mTotalesTotalDB: TCurrencyField
      FieldName = 'TotalDB'
    end
    object mTotalesTotalCR: TCurrencyField
      FieldName = 'TotalCR'
    end
    object mTotalesGrupo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Grupo'
      Size = 1
      Calculated = True
    end
    object mTotalesNivel0: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nivel0'
      Size = 15
      Calculated = True
    end
    object mTotalesDetBalAnt: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'DetBalAnt'
      Calculated = True
    end
    object mTotalesDetTDB: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'DetTDB'
      Calculated = True
    end
    object mTotalesDetTCR: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'DetTCR'
      Calculated = True
    end
    object mTotalesDetBalAct: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'DetBalAct'
      Calculated = True
    end
    object mTotalesNivel01: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nivel01'
      Size = 15
      Calculated = True
    end
    object mTotalesSignedBal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SignedBal'
      Calculated = True
    end
    object mTotalesBalanceActual: TCurrencyField
      FieldName = 'BalanceActual'
    end
  end
  object spTotales: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 15000
    ProcedureName = 'cgListaTotalesUDF;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@inicio'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@final'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Msk'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@Nvl'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 240
    Top = 126
    object spTotalesidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object spTotalesDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 60
    end
    object spTotalesOrigen: TStringField
      FieldName = 'Origen'
      FixedChar = True
      Size = 2
    end
    object spTotalesTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object spTotalesNivel: TIntegerField
      FieldName = 'Nivel'
    end
    object spTotalesBalanceAnterior: TBCDField
      FieldName = 'BalanceAnterior'
      Precision = 19
    end
    object spTotalesTotalDB: TBCDField
      FieldName = 'TotalDB'
      Precision = 32
      Size = 2
    end
    object spTotalesTotalCR: TBCDField
      FieldName = 'TotalCR'
      Precision = 32
      Size = 2
    end
    object spTotalesBalanceActual: TBCDField
      FieldName = 'BalanceActual'
      Precision = 19
      Size = 2
    end
  end
  object spEstadosFinancieros: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    ProcedureName = 'cgAbrirEstadoFinanciero;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@EstId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = '@Hasta'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 37256d
      end>
    Left = 262
    Top = 190
    object spEstadosFinancierosGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
    object spEstadosFinancierosSeccion: TStringField
      FieldName = 'Seccion'
    end
    object spEstadosFinancierosidGrupo: TIntegerField
      FieldName = 'idGrupo'
    end
    object spEstadosFinancierosidItem: TIntegerField
      FieldName = 'idItem'
    end
    object spEstadosFinancierosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object spEstadosFinancierosOrden: TWordField
      FieldName = 'Orden'
    end
    object spEstadosFinancierosNegrita: TBooleanField
      FieldName = 'Negrita'
    end
    object spEstadosFinancierosLiteral: TBooleanField
      FieldName = 'Literal'
    end
    object spEstadosFinancierosBalance: TBCDField
      FieldName = 'Balance'
      Precision = 19
    end
    object spEstadosFinancierosCtaEstado: TStringField
      FieldName = 'CtaEstado'
      Size = 16
    end
    object spEstadosFinancierosCuenta: TStringField
      FieldName = 'Cuenta'
      Size = 60
    end
    object spEstadosFinancierosDebCre: TWordField
      FieldName = 'DebCre'
    end
  end
  object rsEstados: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select * from cgEstadosFinancieros'#13#10'order by Descripcion'
    Parameters = <>
    Left = 314
    Top = 82
    object rsEstadosDescripcion: TStringField
      DisplayWidth = 50
      FieldName = 'Descripcion'
      Size = 50
    end
    object rsEstadosidEstado: TIntegerField
      FieldName = 'idEstado'
      ReadOnly = True
      Visible = False
    end
  end
  object spMayor: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 500
    ProcedureName = 'cgListaMayorGeneralMD;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@inicio'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 37347d
      end
      item
        Name = '@final'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 37376d
      end
      item
        Name = '@Msk'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = '1111002'
      end>
    Left = 14
    Top = 244
    object spMayoridCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object spMayorNumeroEntrada: TStringField
      FieldName = 'NumeroEntrada'
      Size = 16
    end
    object spMayorConcepto: TBlobField
      FieldName = 'Concepto'
    end
    object spMayorFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object spMayorTipoEntrada: TStringField
      FieldName = 'TipoEntrada'
      FixedChar = True
      Size = 2
    end
    object spMayorDebito: TBCDField
      FieldName = 'Debito'
      ReadOnly = True
      currency = True
      Precision = 20
      Size = 2
    end
    object spMayorCredito: TBCDField
      FieldName = 'Credito'
      ReadOnly = True
      currency = True
      Precision = 20
      Size = 2
    end
    object spMayorSecuencia: TIntegerField
      FieldName = 'Secuencia'
      ReadOnly = True
      Visible = False
    end
    object spMayorDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object spMayorReferencia: TStringField
      FieldName = 'Referencia'
    end
    object spMayorIdEntrada: TGuidField
      FieldName = 'IdEntrada'
      FixedChar = True
      Size = 38
    end
  end
  object BalanzaDS: TDataSource
    DataSet = mTotales
    Left = 320
    Top = 140
  end
  object rsListaDiario: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'exec cgListaDiario :cta, :inicio, :final '
    Parameters = <
      item
        Name = 'cta'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = '2117001'
      end
      item
        Name = 'inicio'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = 37257d
      end
      item
        Name = 'final'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = 37499d
      end>
    Left = 82
    Top = 248
    object rsListaDiarioFecha: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Fecha'
    end
    object rsListaDiarioReferencia: TStringField
      DisplayWidth = 15
      FieldName = 'Referencia'
      Size = 15
    end
    object rsListaDiarioDebito: TBCDField
      DisplayWidth = 19
      FieldName = 'Debito'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object rsListaDiarioCredito: TBCDField
      DisplayWidth = 21
      FieldName = 'Credito'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object rsListaDiarioSistema: TStringField
      DisplayWidth = 12
      FieldName = 'Sistema'
      Size = 10
    end
    object rsListaDiarioDescripcion: TStringField
      DisplayWidth = 60
      FieldName = 'Descripcion'
      Size = 60
    end
    object rsListaDiarioidTrans: TIntegerField
      DisplayWidth = 10
      FieldName = 'idTrans'
      Visible = False
    end
    object rsListaDiarioidDocumento: TIntegerField
      DisplayWidth = 10
      FieldName = 'idDocumento'
      Visible = False
    end
    object rsListaDiarioKeyCol: TStringField
      DisplayWidth = 16
      FieldName = 'KeyCol'
      ReadOnly = True
      Visible = False
      Size = 16
    end
    object rsListaDiarioidCuenta: TStringField
      DisplayWidth = 16
      FieldName = 'idCuenta'
      Visible = False
      Size = 16
    end
  end
  object cmdGenDiario: TADOCommand
    CommandText = 'cgGenDiario;1'
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
        Name = '@idEd'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 154
    Top = 252
  end
  object rsBuscarED: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select * from cgEntradasDiario'#13#10'where NumeroEntrada = :Num and F' +
      'echa = :fec and idEntrada <> :Entid'
    Parameters = <
      item
        Name = 'Num'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'fec'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'Entid'
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    Left = 314
    Top = 248
  end
  object rsResumen: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'cgResumenBalanza'
    CommandTimeout = 500
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
        Name = '@fec'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 244
    Top = 256
    object rsResumenTotalActivos: TBCDField
      FieldName = 'TotalActivos'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsResumenTotalPasivos: TBCDField
      FieldName = 'TotalPasivos'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsResumenTotalCapital: TBCDField
      FieldName = 'TotalCapital'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsResumenTotalIngresos: TBCDField
      FieldName = 'TotalIngresos'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsResumenTotalCostos: TBCDField
      FieldName = 'TotalCostos'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsResumenTotalGastos: TBCDField
      FieldName = 'TotalGastos'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 2
    end
    object rsResumenPruebaCero: TBCDField
      FieldName = 'PruebaCero'
      ReadOnly = True
      currency = True
      Precision = 22
      Size = 2
    end
  end
  object QCierre: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    CommandText = 'Select max(cierre) as DiaCierre from cierre '
    Parameters = <>
    Left = 414
    Top = 196
    object QCierreDiaCierre: TDateTimeField
      FieldName = 'DiaCierre'
      ReadOnly = True
    end
  end
  object spGetDefaults: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    ProcedureName = 'GetDefault;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Clave'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@Valor'
        Attributes = [paNullable]
        DataType = ftVariant
        Direction = pdInputOutput
        Value = Null
      end>
    Prepared = True
    Left = 408
    Top = 134
  end
  object dsConfig: TDataSource
    DataSet = dm.Configuracion
    Left = 402
    Top = 68
  end
  object plConfig: TppDBPipeline
    DataSource = dsConfig
    UserName = 'plConfig'
    Left = 474
    Top = 14
  end
  object rsMoneda: TADODataSet
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select * from moneda'#13#10'where cursolegal = 1'
    Parameters = <>
    Left = 474
    Top = 72
    object rsMonedaidMoneda: TIntegerField
      FieldName = 'idMoneda'
    end
    object rsMonedaMoneda: TStringField
      FieldName = 'Moneda'
    end
    object rsMonedaCursoLegal: TBooleanField
      FieldName = 'CursoLegal'
    end
  end
  object cHacerBackup: TADOCommand
    CommandText = 'cfgBackupDatabase;1'
    CommandTimeout = 500
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
        Name = '@bkset'
        Attributes = [paNullable]
        DataType = ftString
        Size = 250
        Value = Null
      end>
    Left = 482
    Top = 134
  end
  object cRestaurarBackup: TADOCommand
    CommandText = 'set @filename = :fname'#13#10#13#10'use master'#13#10'go'#13#10#13#10'restore database '
    Connection = dm.Coneccion
    Parameters = <
      item
        Name = 'fname'
        Size = -1
        Value = Null
      end>
    Left = 490
    Top = 198
  end
  object cBorrarEntrada: TADOCommand
    CommandText = 'cgBorrarEntrada;1'
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
        Name = '@entid'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 416
    Top = 256
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
    Left = 32
    Top = 320
  end
  object spTotalesRango: TADOStoredProc
    Connection = dm.Coneccion
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 200
    ProcedureName = 'cgListaTotalesUDFRango;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@inicio'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@final'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@ctadesde'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@ctahasta'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@Nvl'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 550
    Top = 16
    object spTotalesRangoidCuenta: TStringField
      FieldName = 'idCuenta'
      Size = 16
    end
    object spTotalesRangoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 60
    end
    object spTotalesRangoOrigen: TStringField
      FieldName = 'Origen'
      FixedChar = True
      Size = 2
    end
    object spTotalesRangoTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object spTotalesRangoNivel: TIntegerField
      FieldName = 'Nivel'
    end
    object spTotalesRangoBalanceAnterior: TBCDField
      FieldName = 'BalanceAnterior'
      Precision = 19
      Size = 2
    end
    object spTotalesRangoTotalDB: TBCDField
      FieldName = 'TotalDB'
      Precision = 19
      Size = 2
    end
    object spTotalesRangoTotalCR: TBCDField
      FieldName = 'TotalCR'
      Precision = 19
      Size = 2
    end
    object spTotalesRangoBalanceActual: TBCDField
      FieldName = 'BalanceActual'
      Precision = 19
      Size = 2
    end
  end
  object cActualizarGasto: TADOCommand
    CommandText = 'cgActualizarEDGasto;1'
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
        Name = '@idEntrada'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end>
    Left = 154
    Top = 326
  end
end

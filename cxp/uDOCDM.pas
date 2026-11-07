unit uDOCDM;

interface

uses
  SysUtils, Classes, kbmMemTable, DB, DateUtils, ADODB, variants, Wwdatsrc;

type
  Tdocdm = class(TDataModule)
    rsDocumento: TADODataSet;
    rsDocumentoidDocumento: TIntegerField;
    rsDocumentoidTrans: TIntegerField;
    rsDocumentoFecha: TDateTimeField;
    rsDocumentoidSuplidor: TIntegerField;
    rsDocumentoReferencia: TStringField;
    rsDocumentoValor: TBCDField;
    rsDocumentoMontoImpuestos: TBCDField;
    rsDocumentoMontoDescuento: TBCDField;
    rsDocumentoMontoRetenciones: TBCDField;
    rsDocumentoTotal: TBCDField;
    rsDocumentoConcepto: TStringField;
    rsDocumentoidMoneda: TIntegerField;
    rsDocumentoTelefono1: TStringField;
    rsDocumentoFax: TStringField;
    rsDocumentoDireccion: TStringField;
    rsDocumentoNombre: TStringField;
    rsDocumentoRNC: TStringField;
    mDocumento: TkbmMemTable;
    rsTiposImp: TADODataSet;
    rsTiposImpTipoImpuesto: TAutoIncField;
    rsTiposImpDescripcion: TStringField;
    rsTiposImpPorcentaje: TBCDField;
    rsTiposImpTitulo: TStringField;
    rsTiposImpidCuenta: TStringField;
    mImpsDoc: TkbmMemTable;
    mImpsDocTipoImpuesto: TIntegerField;
    mImpsDocDescripcion: TStringField;
    mImpsDocPorcentaje: TFloatField;
    mImpsDocMontoImpuesto: TCurrencyField;
    rsImpsDoc: TADODataSet;
    rsImpsDocTipoImpuesto: TIntegerField;
    rsImpsDocDescripcion: TStringField;
    rsImpsDocPorcentaje: TBCDField;
    rsImpsDocMontoImpuesto: TBCDField;
    cGuardar: TADOCommand;
    rsMonedas: TADODataSet;
    rsDocumentoCodifManual: TBooleanField;
    rsDocumentoTelefono2: TStringField;
    rsCtasDoc: TADODataSet;
    rsCtasDocidCuenta: TStringField;
    rsCtasDocDescripcion: TStringField;
    rsCtasDocDebCre: TWordField;
    rsCtasDocDebito: TBCDField;
    rsCtasDocCredito: TBCDField;
    mCtasDoc: TkbmMemTable;
    mCtasDocidCuenta: TStringField;
    mCtasDocDescripcion: TStringField;
    mCtasDocDebCre: TWordField;
    mCtasDocDebito: TBCDField;
    mCtasDocCredito: TBCDField;
    rsMonedasidMoneda: TIntegerField;
    cGuardarImps: TADOCommand;
    cBorrarImps: TADOCommand;
    mCtasDocLineaNum: TAutoIncField;
    cGuardarCtas: TADOCommand;
    cBorrarCtas: TADOCommand;
    rsTipoTrans: TADODataSet;
    rsTipoTransidTrans: TIntegerField;
    rsTipoTransDescripcion: TStringField;
    rsTipoTransAbrev: TStringField;
    rsTipoTransDebCre: TWordField;
    rsDocumentoStatus: TStringField;
    rsDocumentoFechaStatus: TDateTimeField;
    rsDocumentoidCuentaBanco: TIntegerField;
    rsDocumentoDescripcion: TStringField;
    rsDocumentoDebCre: TWordField;
    rsDocumentoAbrev: TStringField;
    rsDocumentoidCuenta: TStringField;
    rsDocumentoTipoDocOrigen: TStringField;
    rsDocumentoDocOrigen: TIntegerField;
    mCtasDocAutomatica: TBooleanField;
    rsCtasDocAutomatica: TBooleanField;
    mImpsDocidCuenta: TStringField;
    rsImpsDocidCuenta: TStringField;
    cValidarDoc: TADOCommand;
    rsDocumentoDias: TSmallintField;
    rsDocumentoMostrarEnCXP: TBooleanField;
    cAnular: TADOCommand;
    cBorrarDocumento: TADOCommand;
    rsDocumentoBienesServicio: TSmallintField;
    rsAplicadoADoc: TADODataSet;
    rsAplicadoADocReferencia: TStringField;
    rsAplicadoADocFecha: TDateTimeField;
    rsAplicadoADocValor: TBCDField;
    rsAplicadoADocLineaNum: TIntegerField;
    rsAplicadoADocTipo: TStringField;
    rsAutoImps: TADODataSet;
    rsAutoImpsTipoImpuesto: TIntegerField;
    rsDocRetencion: TADODataSet;
    rsDocRetencionidDocumento: TIntegerField;
    rsDocRetencionidRetencion: TIntegerField;
    rsDocRetencionRetencion: TStringField;
    rsDocRetencionPorcentaje: TFloatField;
    mRets: TkbmMemTable;
    mRetsidDocumento: TIntegerField;
    mRetsidRetencion: TIntegerField;
    mRetsRetencion: TStringField;
    mRetsPorcentaje: TFloatField;
    rsTiposRets: TADODataSet;
    rsTiposRetsidRetencion: TIntegerField;
    rsTiposRetsRetencion: TStringField;
    rsTiposRetsPorcentaje: TFloatField;
    rsTiposRetsidCuenta: TStringField;
    cBorrarRets: TADOCommand;
    cInsRetencion: TADOCommand;
    mRetsMonto: TCurrencyField;
    rsDocRetencionMonto: TCurrencyField;
    rsMonedasNombre: TStringField;
    mCtasDocidAuxiliar: TStringField;
    rsCtasDocidAuxiliar: TStringField;
    rsBuscarAux: TADODataSet;
    rsDocumentoTotalNeto: TBCDField;
    rsDocumentoNotaAdicional: TStringField;
    rsDocumentoidAuxiliar: TStringField;
    rsDocumentoTotalRetenciones: TFloatField;
    rsDocumentoCompFiscal: TStringField;
    rsDocumentoGUIDDocumento: TGuidField;
    mDocumentoidDocumento: TIntegerField;
    mDocumentoidTrans: TIntegerField;
    mDocumentoFecha: TDateTimeField;
    mDocumentoidSuplidor: TIntegerField;
    mDocumentoReferencia: TStringField;
    mDocumentoValor: TBCDField;
    mDocumentoMontoImpuestos: TBCDField;
    mDocumentoMontoDescuento: TBCDField;
    mDocumentoMontoRetenciones: TBCDField;
    mDocumentoConcepto: TStringField;
    mDocumentoidMoneda: TIntegerField;
    mDocumentoCodifManual: TBooleanField;
    mDocumentoStatus: TStringField;
    mDocumentoFechaStatus: TDateTimeField;
    mDocumentoidCuentaBanco: TIntegerField;
    mDocumentoidCuenta: TStringField;
    mDocumentoTipoDocOrigen: TStringField;
    mDocumentoDocOrigen: TIntegerField;
    mDocumentoDias: TSmallintField;
    mDocumentoMostrarEnCXP: TBooleanField;
    mDocumentoBienesServicio: TSmallintField;
    mDocumentoTotalNeto: TBCDField;
    mDocumentoTotal: TBCDField;
    mDocumentoNotaAdicional: TStringField;
    mDocumentoidAuxiliar: TStringField;
    mDocumentoCompFiscal: TStringField;
    mDocumentoGUIDDocumento: TGuidField;
    mDocumentoTelefono1: TStringField;
    mDocumentoTelefono2: TStringField;
    mDocumentoFax: TStringField;
    mDocumentoDireccion: TStringField;
    mDocumentoNombre: TStringField;
    mDocumentoRNC: TStringField;
    mDocumentoDescripcion: TStringField;
    mDocumentoDebCre: TWordField;
    mDocumentoAbrev: TStringField;
    mDocumentoTotalRetenciones: TFloatField;
    mDocumentocTotal: TCurrencyField;
    mDocumentoDiferencia: TCurrencyField;
    mDocumentoidOrden: TGuidField;    
    rsDocItems: TADODataSet;
    rsDocItemsidDocumentoItem: TGuidField;
    rsDocItemsidDocumento: TIntegerField;
    rsDocItemsidProducto: TStringField;
    rsDocItemsDescripcion: TStringField;
    rsDocItemsCantidad: TFloatField;
    rsDocItemsidUnidad: TStringField;
    rsDocItemsCosto: TBCDField;
    rsDocItemsidCuenta: TStringField;
    rsDocItemsITBIS: TBCDField;
    rsDocItemsDescuento: TBCDField;
    rsDocItemsTipoItem: TStringField;
    cInsItems: TADOCommand;
    mDocItems: TkbmMemTable;
    mDocItemsidDocumentoItem: TGuidField;
    mDocItemsidDocumento: TIntegerField;
    mDocItemsidProducto: TStringField;
    mDocItemsDescripcion: TStringField;
    mDocItemsCantidad: TFloatField;
    mDocItemsidUnidad: TStringField;
    mDocItemsCosto: TBCDField;
    mDocItemsidCuenta: TStringField;
    mDocItemsITBIS: TBCDField;
    mDocItemsDescuento: TBCDField;
    mDocItemsTipoItem: TStringField;
    cBorrarItems: TADOCommand;
    rsProdAct: TADODataSet;
    rsProdActidProducto: TStringField;
    rsProdActProducto: TStringField;
    rsProdActMinimo: TFloatField;
    rsProdActReorden: TFloatField;
    rsProdActAutoDescuento: TBooleanField;
    rsProdActCambiarPrecio: TBooleanField;
    rsProdActExistencia: TFloatField;
    rsProdActCostoPromedio: TFloatField;
    rsProdActPrecioContado: TBCDField;
    rsProdActPrecioCredito: TBCDField;
    rsProdActInactivo: TBooleanField;
    rsProdActporciento: TFloatField;
    rsProdActidUnidad: TStringField;
    rsProdActDescuento: TFloatField;
    rsProdActExistenciaNeg: TBooleanField;
    rsProdActidListaPrecio: TStringField;
    rsProdActidPartida: TStringField;
    rsProdActidMoneda: TIntegerField;
    rsUnidades: TADODataSet;
    rsUnidadesidUnidad: TStringField;
    rsUnidadesUnidad: TStringField;
    rsUnidadesidUnidadBase: TStringField;
    rsUnidadesidFactor: TFloatField;
    rsUnidadesUidUnidad: TGuidField;
    mDocItemsImporte: TCurrencyField;
    mDocItemsMontoItbis: TCurrencyField;
    rsClaseGasto: TADODataSet;
    rsClaseGastoidClasegasto: TStringField;
    rsClaseGastoClaseGasto: TStringField;
    mDocumentoidClaseGasto: TStringField;
    rsDocumentoidClaseGasto: TStringField;
    rsDocumentoidTipoIdentificacion: TStringField;
    mDocumentoPedirNCF: TStringField;
    rsDocumentoPedirNCF: TStringField;
    mDocumentoTasa: TFloatField;
    rsDocumentoTasa: TBCDField;
    rsBuscarPrima: TADODataSet;
    rsBuscarPrimaCuenta: TStringField;
    rsBuscarPrimaDescripcion: TStringField;
    rsBuscarPrimaDebito: TBCDField;
    rsBuscarPrimaCredito: TBCDField;
    mPrimas: TkbmMemTable;
    mPrimasidCuenta: TStringField;
    mPrimasDescripcion: TStringField;
    mPrimasDebCre: TWordField;
    mPrimasDebito: TBCDField;
    mPrimasCredito: TBCDField;
    mPrimasAutomatica: TBooleanField;
    rsBuscarProx: TADODataSet;
    rsBuscarAnt: TADODataSet;
    mDocumentoidTipoIdentificacion: TStringField;
    rsTipoDocID: TADODataSet;
    rsTipoDocIDidTipoIdentificacion: TStringField;
    rsTipoDocIDTipoIdentificacion: TStringField;
    dsTipoId: TDataSource;
    mDocumentoFechaEmision: TDateTimeField;
    mDocumentoVencimiento: TDateTimeField;
    rsDocumentoBancoDestino: TStringField;
    rsDocumentoCuentaDestino: TStringField;
    rsDocumentoTipoAbono: TStringField;
    rsDocumentoVencimiento: TDateTimeField;
    rsDocumentoFechaEmision: TDateTimeField;
    mCtasDocidCentroCosto: TGuidField;
    mCtasDocCentroCosto: TStringField;
    mCtasDocidPartida: TStringField;
    mCtasDocCentroCostoDesc: TStringField;
    rsCtasDocidCentroCosto: TGuidField;
    rsCtasDocCentroCosto: TStringField;
    rsCtasDocIdpartida: TStringField;
    mDocumentoTipoGasto: TStringField;
    mDocumentoCondiciones: TIntegerField;
    rsDocumentoTipoGasto: TStringField;
    rsDocumentoOrdenCompra: TStringField;
    mDocumentoOrdenCompra: TStringField;
    rsDocumentoidOrden: TGuidField;
    rsProMov: TADODataSet;
    rsProMovidProMov: TGuidField;
    rsProMovidProMovTipo: TIntegerField;
    rsProMovProMov: TStringField;
    rsProMovFecha: TDateTimeField;
    rsProMovSalida: TBooleanField;
    rsProMovidCompania: TIntegerField;
    rsProMovReferencia: TStringField;
    rsProMovUsuario: TStringField;
    rsProMovidOrdComp: TGuidField;
    rsProMovOrdComp: TStringField;
    rsProMovEntregadoPor: TStringField;
    rsProMovRecibidoPor: TStringField;
    rsProMovidAlmacen: TStringField;
    rsProMovConcepto: TStringField;
    rsProMovNota: TStringField;
    rsProMovidConduce: TGuidField;
    rsProMovConduce: TStringField;
    rsProMovPosteado: TBooleanField;
    rsProMovPosteadoFecha: TDateTimeField;
    rsProMovidOrdenTrab: TGuidField;
    rsProMovOrdenTrab: TStringField;
    rsProMovidReferencia: TGuidField;
    rsProMovidAlmacenDestino: TStringField;
    rsProMovidSuplidor: TIntegerField;
    rsProMovSuplidor: TStringField;
    rsProMovDevolucion: TBooleanField;
    rsProMovContabilizar: TBooleanField;
    rsCostoPromov: TADODataSet;
    rsCostoPromovCostoTotal: TBCDField;
    rsProMovCompFiscal: TStringField;
    rsProMovidClaseGasto: TStringField;
    rsProMovidOrdenCompra: TGuidField;
    rsProMovOCNumero: TStringField;
    rsProMovFactura: TStringField;
    rsProMovTotalITBIS: TBCDField;
    rsDocumentomontoFacturadoBienes: TBCDField;
    rsDocumentomontoFacturadoServicios: TBCDField;
    mDocumentomontoFacturadoBienes: TBCDField;
    mDocumentomontoFacturadoServicios: TBCDField;
    rsDocRetencionidTipoRetencionDGII: TIntegerField;
    mRetsidTipoRetencionDGII: TIntegerField;
    rsTiposRetencion: TADODataSet;
    rsTiposRetencionidTiposRetencionDGII: TIntegerField;
    rsTiposRetencionTiposRetencionDGII: TStringField;
    rsFormaPago: TADODataSet;
    rsDocumentoidPagoForma: TIntegerField;
    mDocumentoidPagoForma: TIntegerField;
    rsDocumentoMontoIsc: TBCDField;
    rsDocumentoOtrosImpuestos: TBCDField;
    rsDocumentoPropinaLegal: TBCDField;
    rsDocumentoItbisCosto: TBCDField;
    rsDocumentoPendEnvioEcf: TBooleanField;
    rsDocumentoTipoNcf: TStringField;
    rsDocumentoCodigoSeguridadEcf: TStringField;
    rsDocumentoFechaFirmaDigital: TDateTimeField;
    rsDocumentoFechaVenceNCF: TDateTimeField;
    rsDocumentoCompFiscalModificado: TStringField;
    rsDocumentoFechaCompFiscalModificado: TDateTimeField;
    rsDocumentoIdClaseGastoModificado: TStringField;
    rsDocumentoStatusEcf: TStringField;
    mDocumentoTipoNcf: TStringField;
    mDocumentoFechaVenceNCF: TDateTimeField;
    mDocumentoCodigoSeguridadEcf: TStringField;
    mDocumentoUltError: TStringField;
    mDocumentoStatusEcf: TStringField;
    mDocumentoCompFiscalModificado: TStringField;
    mDocumentoFechaCompFiscalModificado: TDateTimeField;
    mDocumentoIdClaseGastoModificado: TStringField;
    cCambStatusEcf: TADOCommand;
    mDocumentoMontoIsc: TCurrencyField;
    mDocumentoPropinaLegal: TCurrencyField;
    mDocumentoOtrosImpuestos: TCurrencyField;
    mDocumentoItbisCosto: TCurrencyField;
    mDocumentoPendEnvioEcf: TBooleanField;
    mDocumentoFechaFirmaDigital: TDateTimeField;
    procedure mDocumentoidSuplidorValidate(Sender: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure mImpsDocTipoImpuestoValidate(Sender: TField);
    procedure mCtasDocidCuentaValidate(Sender: TField);
    procedure mDocumentoCalcFields(DataSet: TDataSet);
    procedure mDocumentoidTransValidate(Sender: TField);
    procedure mCtasDocNewRecord(DataSet: TDataSet);
    procedure mCtasDocDebitoValidate(Sender: TField);
    procedure mCtasDocAfterPost(DataSet: TDataSet);
    procedure mCtasDocBeforeEdit(DataSet: TDataSet);
    procedure mDocumentoReferenciaValidate(Sender: TField);
    procedure mRetsidRetencionValidate(Sender: TField);
    procedure mRetsMontoValidate(Sender: TField);
    procedure mRetsPorcentajeValidate(Sender: TField);
    procedure rsDocRetencionCalcFields(DataSet: TDataSet);
    procedure mCtasDocidAuxiliarValidate(Sender: TField);
    procedure mDocItemsNewRecord(DataSet: TDataSet);
    procedure mDocItemsidProductoValidate(Sender: TField);
    procedure mDocItemsCalcFields(DataSet: TDataSet);
    procedure mDocumentoidMonedaValidate(Sender: TField);
    procedure mCtasDocidCentroCostoValidate(Sender: TField);
    procedure mCtasDocCentroCostoValidate(Sender: TField);
    procedure mDocumentoOrdenCompraValidate(Sender: TField);
    procedure mDocumentoFechaValidate(Sender: TField);
    procedure mDocumentomontoFacturadoBienesValidate(Sender: TField);
    procedure mDocumentomontoFacturadoServiciosValidate(Sender: TField);
    procedure mDocumentoMontoImpuestosValidate(Sender: TField);
    procedure mImpsDocBeforeInsert(DataSet: TDataSet);
    procedure mDocumentoMontoIscValidate(Sender: TField);
  private
    { Private declarations }
    Floading: Boolean;
    FIdTrans: Integer;
    MONEDA_LEGAL: Integer;
    procedure RecalcularImpuestos;

    procedure GuardarCodifDoc;
    procedure CalcularTotales(out tdb, tcr: Currency);
    procedure CodificarDocumento;
    procedure LimpiarCtasAutomaticas;
    function ValidarDocumento: Integer;
    procedure GuardarRetenciones;
    procedure AbrirItems(const idDoc: Integer);
    procedure GuardarItems(const iddoc: Integer);
    procedure BorrarItems(const idDoc: Integer);
    function BuscarProducto(const idProd: string): Boolean;
    procedure AgregarCuenta(const cta, aux: string; const debcre: integer;
      const valor: Currency; const auto: Boolean = True);
    procedure IncluirCtaPrima;
    Procedure SetidOrden(numeroOC : variant);
    procedure ZapTable(dset: TDataSet);
    procedure CalcTotalDocumento;

  public
    { Public declarations }
    Novalidar : boolean;
    procedure AgregarImpuesto(const Tipo: Integer);
    procedure NuevoDocumento;
    procedure AbrirDocumento(const idDoc: Integer);
    procedure GuardarDocumento;

    procedure AutoIncluirImpuestos;

    property IdTrans: Integer read FIdTrans write FIdTrans;
    procedure AnularDocumento;
    procedure BorrarDocumento;
    procedure CerrarDocumento;
    procedure AbrirGastosDoc(const idDoc: Variant);

    function BuscarAnterior(const idDoc: Integer): Integer;
    function BuscarProximo(const idDoc: Integer): Integer;

    procedure ImportarEntrada(const id: Variant);
  end;

var
  docdm: Tdocdm;

implementation

uses uMAINDM, Udata, UUtiles, udgiidm;

{$R *.dfm}

procedure Tdocdm.AgregarImpuesto(const Tipo: Integer);
begin
  if not mImpsDoc.Locate('TipoImpuesto',tipo, []) then begin
    mImpsDoc.Append();
    mImpsDocTipoImpuesto.AsInteger := Tipo;
    mImpsDoc.Post();
  end;
end;

procedure Tdocdm.mDocumentoidSuplidorValidate(Sender: TField);
begin
  if FLoading then
    exit;

  if mDocumentoidSuplidor.AsInteger = 0 then begin
    mDocumentoNombre.AsString := '';
    mDocumentoTelefono1.AsString := '';
    mDocumentoTelefono2.AsString := '';
    mDocumentoDireccion.AsString := '';
    mDocumentoFax.AsString := '';
    mDocumentoPedirNCF.Value := 'S';
    mDocumentoidTipoIdentificacion.Value := '01';
    mDocumentoRNC.Value := '';
  end
  else if not maindm.BuscarSupXId(mDocumentoIdSuplidor.AsInteger) then
    raise Exception.Create('Este suplidor no esta registrado')
  else begin

    if mDocumentoReferencia.Asstring <> '' then begin
      if ValidarDocumento() > 0 then
        raise Exception.Create('Este documento ya fue registrado para este suplidor');
    end;

    mDocumentoNombre.AsString := maindm.rsBuscarSupNombre.AsString;
    mDocumentoTelefono1.AsString := maindm.rsBuscarSupTelefono1.AsString;
    mDocumentoTelefono2.AsString := maindm.rsBuscarSupTelefono2.AsString;
    mDocumentoDireccion.AsString := maindm.rsBuscarSupDireccion.AsString;
    mDocumentoFax.AsString := maindm.rsBuscarSupFax.AsString;
    mDocumentoIdMoneda.AsInteger := maindm.rsBuscarSupidMoneda.AsInteger;

    mDocumentoIdCuenta.AsString := maindm.BuscarCuentasSuplidor(mDocumentoIdSuplidor.AsInteger, mDocumentoIdMoneda.AsInteger);

    mDocumentoPedirNCF.AsString := maindm.rsBuscarSupPedirNCF.AsString;

    if mDocumentoPedirNCF.Value = 'G' then
      mDocumentoTiponcf.Value := iff((dmDGII <> nil) and dmDGII.UsarEcfs, '41','11')
    else if mDocumentoPedirNCF.Value = 'E' then
      mDocumentoTiponcf.Value := iff((dmDGII <> nil) and dmDGII.UsarEcfs, '47','17')
    else
      mDocumentoTiponcf.Value := '';

    mDocumentoidTipoIdentificacion.Value := maindm.rsBuscarSupidTipoIdentificacion.Value;
    mDocumentoRNC.Value := maindm.rsBuscarSupRNC.Value;
    mDocumentoMostrarEnCXP.Value := maindm.rsBuscarSupMostrarEnCXP.Value;
    mDocumentoVencimiento.Value := IncDay(mDocumentoFecha.Value, maindm.rsBuscarSupDiasCredito.AsInteger);

    ZapTable(mImpsDoc);
    
    if (maindm.rsBuscarSupTipoImpuesto.AsInteger > 0) and rsTiposImp.Locate('TipoImpuesto', maindm.rsBuscarSupTipoImpuesto.AsInteger,[]) then begin
      if rsTiposImpPorcentaje.AsFloat > 0 then
        AgregarImpuesto(maindm.rsBuscarSupTipoImpuesto.AsInteger);
    end;


    if mDocumentoTotal.asCurrency = 0 then
      mDocumentoIdMoneda.AsInteger := maindm.rsBuscarSupidMoneda.AsInteger;

    CodificarDocumento();
  end;
end;

procedure Tdocdm.ZapTable(dset : TDataSet);
begin
  dset.First();
  while not dset.Eof do
     dset.Delete();
end;

procedure Tdocdm.DataModuleCreate(Sender: TObject);
begin
  NoValidar := false;
  FLoading := False;
  MONEDA_LEGAL := dm.MonedaLegal();

  rsTiposImp.Open();
  rsMonedas.Open();
  rsTiposRets.Open();
  rsTipoDocID.Open();
  dm.rsPartidas.Open();
end;

procedure Tdocdm.mImpsDocTipoImpuestoValidate(Sender: TField);
begin
  if FLoading then
    Exit;

  if mImpsDocTipoImpuesto.AsInteger = 0 then begin
    mImpsDocDescripcion.AsString := '';
    mImpsDocPorcentaje.AsFloat := 0;
    mImpsDocMontoImpuesto.AsCurrency := 0;
    mImpsDocidCuenta.AsString := '';
  end
  else if not rsTiposImp.Locate('TipoImpuesto',mImpsDocTipoImpuesto.AsInteger,[]) then
    raise Exception.Create('Este impuesto no esta definido')
  else begin
    mImpsDocDescripcion.AsString := rsTiposImpDescripcion.Asstring;
    mImpsDocPorcentaje.AsFloat := rsTiposImpPorcentaje.AsFloat;
    mImpsDocMontoImpuesto.AsCurrency := mDocumentoTotal.AsCurrency - (mDocumentoTotal.AsCurrency / ((mImpsDocPorcentaje.AsFloat / 100) + 1));
    mImpsDocIdCuenta.AsString := rsTiposImpidCuenta.AsString;
  end;
end;

procedure Tdocdm.RecalcularImpuestos;
var
  ti: Currency;
  bm: string;
begin
  FLoading := True;
  ti := 0;
  bm := mImpsDoc.BookMark;
  try
    with mImpsDoc do begin
      First();
      while not Eof do begin
        Edit();
        //mImpsDocMontoImpuesto.AsCurrency := mDocumentoTotal.AsCurrency - (mDocumentoTotal.AsCurrency / ((mImpsDocPorcentaje.AsFloat / 100) + 1));
        mImpsDocMontoImpuesto.AsCurrency := (((mDocumentomontoFacturadoBienes.AsCurrency + mDocumentomontoFacturadoServicios.AsCurrency) * ((mImpsDocPorcentaje.AsFloat / 100) + 1)) - (mDocumentomontoFacturadoBienes.AsCurrency + mDocumentomontoFacturadoServicios.AsCurrency));
        Post();
        ti := ti + mImpsDocMontoImpuesto.AsCurrency;

        Next();
      end;
    end;

    if not (mDocumento.State in dsEditModes) then
      mDocumento.Edit();

    mDocumentoMontoImpuestos.AsCurrency := ti;
    //mDocumentoValor.AsCurrency := mDocumentoTotal.AsCurrency - ti;
    mDocumentoValor.AsCurrency := (mDocumentomontoFacturadoBienes.AsCurrency + mDocumentomontoFacturadoServicios.AsCurrency);
  finally
    mImpsDoc.Bookmark := bm;
    FLoading := False;
  end;
end;

procedure Tdocdm.CerrarDocumento;
begin
  mDocumento.Close();
  mDocumento.Open();

  mImpsDoc.Close();
  mImpsDoc.Open();
  mCtasDoc.Close();
  mCtasDoc.Open();
  rsAplicadoADoc.Close();
  mDocItems.Close();
end;

procedure Tdocdm.NuevoDocumento;
begin
  if mCtasDoc.State in dsEditModes then
    mCtasDoc.Cancel();

  if mImpsDoc.State in dsEditModes then
    mImpsDoc.Cancel();

  mDocumento.Close();
  mDocumento.Open();

  mImpsDoc.Close();
  mImpsDoc.Open();

  mRets.Close();
  mRets.Open();

  mCtasDoc.Close();
  mCtasDoc.Open();

  mDocItems.Close();
  mDocItems.Open();

  rsAplicadoADoc.Close();

  mDocumento.Append();
  mDocumentoIdTrans.AsInteger := IdTrans;
  mDocumentoGuidDocumento.asGuid := dm.NewGuid();
  mDocumentoFecha.Value := dm.DBFecha();
  mDocumentoVencimiento.Value := mDocumentoFecha.Value;
  mDocumentoFechaEmision.Value := mDocumentoFecha.Value;
  mDocumentoIdMoneda.AsInteger := rsMonedasIdMoneda.AsInteger;
  mDocumentoCodifManual.AsBoolean := True;
  mDocumentoDias.AsInteger := 0;
  mDocumentoMostrarEnCxp.AsBoolean := True;
  mDocumentoBienesServicio.AsInteger := 1;
  mDocumentoStatus.Value := 'A';
  mDocumentoTasa.Value := 1.00;
  mDocumentoTipoGasto.Value := 'COSTO';
  mDocumentomontoFacturadoServicios.Value := 0;
  mDocumentomontoFacturadoBienes.Value := 0;

  //AutoIncluirImpuestos();

  AbrirGastosDoc(mDocumentoGUIDDocumento.Value);
end;

procedure Tdocdm.AutoIncluirImpuestos;
begin
  with rsAutoImps do begin
    Close();
    Open();
    while not Eof do begin
      AgregarImpuesto(rsAutoImpsTipoImpuesto.AsInteger);
      Next();
    end;
  end;
end;

procedure Tdocdm.AbrirDocumento(const idDoc: Integer);
var
  tdb,tcr: Currency;
begin
  FLoading := True;
  try
    with rsDocumento do begin
      Close();
      Parameters[1].Value := idDoc;
      Open();
      if Eof then
        raise Exception.Create('Este documento no existe');
    end;
    mDocumento.Close();
    mDocumento.Open();

    mDocumento.LoadFromDataSet(rsDocumento,[mtcpoAppend]);

    with rsImpsDoc do begin
      Close();
      Parameters[1].Value := idDoc;
      Open();
    end;

    with mImpsDoc do begin
      Close();
      Open();
      LoadFromDataSet(rsImpsDoc, [mtcpoAppend]);
    end;

    with rsCtasDoc do begin
      Close();
      Parameters[1].Value := idDoc;
      Open();
    end;

    with rsAplicadoADoc do begin
      Close();
      Parameters[1].Value := idDoc;
      Open();
    end;

    with rsDocRetencion do begin
      Close();
      Parameters[1].Value := idDoc;
      Open();
    end;

    mRets.Close();
    mRets.Open();
    mRets.LoadFromDataSet(rsDocRetencion,[mtcpoAppend]);

    mCtasDoc.Close();
    mCtasDoc.Open();
    mCtasDoc.LoadFromDataSet(rsCtasDoc,[mtcpoAppend]);

    AbrirItems(idDoc);

    rsDocumento.Close();
    rsImpsDoc.Close();
    rsCtasDoc.Close();

    CalcularTotales(tdb,tcr);
    mDocumento.Edit();
    mDocumentoDiferencia.Value := tdb - tcr;
    mDocumento.Post();

    with rsTipoTrans do begin
      Close();
      Parameters[0].Value := mDocumentoIdTrans.Value;
      Open();
    end;

  finally
    FLoading := False;
  end;
end;

procedure Tdocdm.GuardarCodifDoc;
begin
  with cBorrarCtas do begin
    Parameters[01].Value := mDocumentoIdDocumento.AsInteger;
    Execute();
  end;

  if mDocumentoCodifManual.Value then begin
    with mCtasDoc do begin
      First();
      while not Eof do begin
        if (mCtasDocidCuenta.Asstring <> '') and
           ((mCtasDocDebito.AsCurrency <> 0) or (mCtasDocCredito.AsCurrency <> 0)) then begin
          cGuardarCtas.Parameters[01].Value := mDocumentoIdDocumento.AsInteger;
          cGuardarCtas.Parameters[02].Value := mCtasDocIdCuenta.AsString;
          cGuardarCtas.Parameters[03].Value := mCtasDocIdAuxiliar.AsString;

          if mCtasDocDebito.AsCurrency <> 0 then begin
            cGuardarCtas.Parameters[04].Value := 1;
            cGuardarCtas.Parameters[05].Value := mCtasDocDebito.AsCurrency;
          end
          else begin
            cGuardarCtas.Parameters[04].Value := 2;
            cGuardarCtas.Parameters[05].Value := mCtasDocCredito.AsCurrency;
          end;
          cGuardarCtas.Parameters[06].Value := mCtasDocAutomatica.AsBoolean;

          if mCtasDocCentroCosto.AsString = '' then begin
            cGuardarCtas.Parameters[07].Value := NULL;
            cGuardarCtas.Parameters[08].Value := NULL;
          end
          else begin
            cGuardarCtas.Parameters[07].Value := mCtasDocIdCentroCosto.Value;
            cGuardarCtas.Parameters[08].Value := mCtasDocCentroCosto.Value;
          end;

          if mCtasDocIdPartida.AsString = '' then
            cGuardarCtas.Parameters[09].Value := NULL
          else
            cGuardarCtas.Parameters[09].Value := mCtasDocIdPartida.Value;

          cGuardarCtas.Execute();
        end;
        Next();
      end;
    end;
  end
  else
    mCtasDoc.EmptyTable();
end;

procedure Tdocdm.GuardarDocumento;
 var sec : TSecuenciaNCF;
begin
  if mDocumentoIdSuplidor.AsInteger = 0 then
    raise Exception.Create('Primero seleccione un suplidor para este documento');

  dm.Coneccion.BeginTrans();

  try
    if not (mDocumento.State in dsEditModes) then
      mDocumento.Edit();

    // if (mDocumentoTipoNcf.Value = '41') then begin
    //  if mDocumentoMontoRetenciones.Value = 0 then
    //    raise Exception.Create('La DGII requiere retenciones para este tipo de comprobantes');
    // end;

    if mDocumentoPedirNCF.Value = 'S' then begin
      if mDocumentoCompFiscal.Asstring = '' then
        raise Exception.Create('Especifique un numero de comprobante fiscal valido');
    end
    else if mDocumentoTipoNcf.Value <> '' then begin
      if mDocumentoCompFiscal.Value = '' then
      begin
        sec := dm.GetCompFiscal(ComputerName(),mDocumentotipoNcf.Value);
        if sec.Cancelado = False then begin
          mDocumentoCompFiscal.Value := sec.secuencia;
          mDocumentoFechaVenceNCF.Value := sec.VencimientoNCF;
        end
        else
          raise Exception.Create('No se genero la secuencia de comprobantes fiscales, verifique que tenga disponible..');
      end;
    end;

    with cGuardar do begin
      Parameters[01].Value := mDocumentoIdDocumento.AsInteger;
      Parameters[02].Value := mDocumentoidTrans.AsInteger;
      Parameters[03].Value := DateOf(mDocumentoFecha.AsDateTime);
      Parameters[04].Value := mDocumentoidSuplidor.AsInteger;
      Parameters[05].Value := mDocumentoReferencia.Asstring;
      // Parameters[06].Value := mDocumentoTotal.AsCurrency - mDocumentoMontoImpuestos.AsCurrency;
      Parameters[06].Value := mDocumentoValor.AsCurrency;
      Parameters[07].Value := mDocumentoMontoImpuestos.AsCurrency;
      Parameters[08].Value := mDocumentoMontoDescuento.AsCurrency;
      Parameters[09].Value := mDocumentoMontoRetenciones.AsCurrency;
      Parameters[10].Value := mDocumentoConcepto.Asstring;
      Parameters[11].Value := mDocumentoidMoneda.AsInteger;
      Parameters[12].Value := mDocumentoCodifManual.AsBoolean;
      Parameters[13].Value := mDocumentoidCuenta.AsString;
      Parameters[14].Value := mDocumentoidAuxiliar.AsString;
      Parameters[15].Value := mDocumentoStatus.AsString;
      Parameters[16].Value := DateOf(mDocumentoFechaStatus.AsDateTime);
      Parameters[17].Value := mDocumentoidCuentaBanco.AsInteger;
      Parameters[18].Value := mDocumentoTipoDocOrigen.AsString;
      Parameters[19].Value := mDocumentoDocOrigen.AsInteger;
      Parameters[20].Value := mDocumentoDias.AsInteger;
      Parameters[21].Value := mDocumentoMostrarEnCXP.AsBoolean;
      Parameters[22].Value := mDocumentoidClaseGasto.Value;
      Parameters[23].Value := '';
      Parameters[24].Value := mDocumentomontoFacturadoServicios.Value;
      Parameters[25].Value := mDocumentomontoFacturadoBienes.Value;
      Parameters[26].Value := mDocumentoidPagoForma.Value;
      Parameters[28].Value := mDocumentoCompFiscal.AsString;
      Parameters[29].Value := mDocumentoGuidDocumento.Value;
      Parameters[30].Value := mDocumentoTasa.AsFloat;
      Parameters[31].Value := mDocumentoidTipoIdentificacion.Value;
      Parameters[32].Value := mDocumentoRnc.Value;
      Parameters[33].Value := mDocumentoNombre.Value;
      Parameters[34].Value := mDocumentoFechaEmision.Value;
      Parameters[35].Value := mDocumentoVencimiento.Value;
      if mDocumentoTipoGasto.AsString <> '' then
        Parameters[36].Value := mDocumentoTipoGasto.Value
      else
        Parameters[36].Value := 'COSTO';

      Parameters[39].Value := mDocumentoMontoIsc.Value;
      Parameters[40].Value := mDocumentoPropinaLegal.Value;
      Parameters[41].Value := mDocumentoOtrosImpuestos.Value;
      Parameters[42].Value := mDocumentoItbisCosto.Value;
      Parameters[43].Value := mDocumentoPendEnvioEcf.Value;
      Parameters[44].Value := mDocumentoTipoNcf.Value;
      Parameters[45].Value := mDocumentoCodigoSeguridadEcf.Value;
      Parameters[46].Value := mDocumentoFechaFirmaDigital.Value;
      Parameters[47].Value := mDocumentoFechaVenceNCF.Value;
      Parameters[48].Value := mDocumentoCompFiscalModificado.Value;
      Parameters[49].Value := mDocumentoFechaCompFiscalModificado.Value;
      Parameters[50].Value := mDocumentoIdClaseGastoModificado.Value;
      Parameters[51].Value := mDocumentoStatusEcf.Value;

      // 06/01/2009 JM
      Parameters[37].Value := mDocumentoOrdenCompra.Value;
      if mDocumentoidOrden.isnull then
        Parameters[38].Value := NULL
      else
        Parameters[38].Value := mDocumentoidOrden.Value;
      Execute();

      mDocumentoIdDocumento.AsInteger := Parameters[27].Value;
    end;

    with cBorrarImps do begin
      Parameters[0].Value := mDocumentoIdDocumento.AsInteger;
      Execute();
    end;

    with mImpsDoc do  begin
      First();
      while not Eof do begin
        if mImpsDocTipoImpuesto.AsInteger > 0 then begin
          cGuardarImps.Parameters[0].Value := mDocumentoIdDocumento.AsInteger;
          cGuardarImps.Parameters[1].Value := mImpsDocTipoImpuesto.AsInteger;
          cGuardarImps.Execute();
        end;
        Next();
      end;
    end;

    GuardarCodifDoc();

    GuardarRetenciones();

    GuardarItems(mDocumentoidDocumento.AsInteger);

    dm.Coneccion.CommitTrans();

    if mDocumento.State in dsEditModes then
      mDocumento.Post();
  except
    on e: Exception do begin
      dm.Coneccion.RollbackTrans();
      raise exception.Create('Error guardando documento: ' + #13 + e.Message);
    end;
  end;
end;

procedure Tdocdm.LimpiarCtasAutomaticas;
begin
  with mCtasDoc do begin
    First();
    while not Eof do
      Delete();
  end;
end;

procedure Tdocdm.CalcularTotales(out tdb: Currency; out tcr: Currency);
var
  bm: string;
  tc,td: Currency;
begin
  tc := 0;
  td := 0;
  with mCtasDoc do begin
    bm := bookMark;
    disableControls();
    First();
    try
      while not Eof do begin
        tc := tc + mCtasDocCredito.AsCurrency;
        td := td + mCtasDocDebito.AsCurrency;
        Next();
      end;
    finally
      BookMark := bm;
      EnableControls();
    end;
  end;

  tdb := td;
  tcr := tc;
end;

procedure tdocdm.AgregarCuenta(const cta,aux: string; const debcre: integer; const valor: Currency; const auto: Boolean = True);
var
  descr: string;
begin
  if cta <> '' then begin
    mCtasDoc.Append();
    mCtasDocIdCuenta.Asstring := cta;
    mCtasDocIdAuxiliar.Asstring := aux;
    if debcre = 1 then
      mCtasDocDebito.AsCurrency := valor
    else
      mCtasDocCredito.AsCurrency := valor;

    dm.VerificarCuenta(mCtasDocIdCuenta.AsString,descr, not FLoading);
    mCtasDocDescripcion.Value := descr;

    mCtasDocAutomatica.AsBoolean := auto;
    mCtasDoc.Post();
  end;
end;

procedure Tdocdm.CodificarDocumento;
var
  tdb,tcr: Currency;
  ctaGasto: string;
  impsrd: Currency;
begin
  FLoading := True;
  impsrd := 0;
  mImpsDoc.DisableControls();
  try
    LimpiarCtasAutomaticas();

    mImpsDoc.First();
    while not mImpsDoc.Eof do begin
      if mImpsDocMontoImpuesto.AsCurrency > 0 then begin
        impsrd := impsrd + (mImpsDocMontoImpuesto.AsCurrency * mDocumentoTasa.Value);
        AgregarCuenta(mImpsDocidCuenta.AsString, '', 1, mImpsDocMontoImpuesto.AsCurrency * mDocumentoTasa.Value);
      end;

      mImpsDoc.Next();
    end;
   if (mDocumentoIdCuenta.AsString <> '') and (mDocumentoTotal.AsCurrency > 0) then
     AgregarCuenta(mDocumentoidCuenta.AsString,mDocumentoIdAuxiliar.Asstring, 2, mDocumentoTotal.AsCurrency); // tdb - tcr);

   if mDocumentoidMoneda.AsInteger <> MONEDA_LEGAL then
     IncluirCtaPrima();

   ctaGasto := maindm.BuscarCuentasSuplidor(mDocumentoIdSuplidor.Value, mDocumentoIdMoneda.Value, False);
   if (ctaGasto <> '') and (mDocumentoTotal.Value > 0) then
     AgregarCuenta(ctaGasto,'', 1, (mDocumentoTotal.AsCurrency * mDocumentoTasa.Value) - impsrd, False);

   CalcularTotales(tdb, tcr);

   if not (mDocumento.State in dsEditModes) then
      mDocumento.Edit();

   mDocumentoDiferencia.AsCurrency := tdb - tcr;

  finally
    mImpsDoc.EnableControls();
    FLoading := False;
  end;
end;

procedure tdocdm.IncluirCtaPrima;
var
  debcre: Integer;
begin
  mCtasDoc.First();
  mPrimas.Close();
  mPrimas.Open();

  while not mCtasDoc.Eof do begin   
    with rsBuscarPrima do begin
      Close();
      Parameters[1].Value := mCtasDocIdCuenta.AsString;
      Parameters[2].Value := mDocumentoidMoneda.AsInteger;
      Parameters[3].Value := mCtasDocDebito.AsCurrency;
      Parameters[4].Value := mCtasDocCredito.AsCurrency;
      Parameters[5].Value := mDocumentoTasa.AsFloat;
      Open();

      if not rsBuscarPrima.Eof then begin
        if rsBuscarPrimaDebito.AsCurrency > 0 then
          debcre := 1
        else
          debcre := 2;
        if (rsBuscarPrimaDebito.Value + rsBuscarPrimaCredito.Value) <> 0 then
          mPrimas.InsertRecord([rsBuscarPrimaCuenta.AsString, rsBuscarPrimaDescripcion.AsString,
                                debcre, rsBuscarPrimaDebito.asCurrency, rsBuscarPrimaCredito.AsCurrency,True]);
      end;
    end;
    mCtasDoc.Next();
  end;
  mCtasDoc.LoadFromDataSet(mPrimas,[mtcpoAppend]);
end;

procedure Tdocdm.mCtasDocidCuentaValidate(Sender: TField);
var
  descr: string;
begin
  if not FLoading then begin
    dm.VerificarCuenta(mCtasDocIdCuenta.AsString,descr, not FLoading);
    mCtasDocDescripcion.AsString := descr;
  end;
end;

procedure Tdocdm.mDocumentoCalcFields(DataSet: TDataSet);
begin
  mDocumentoCondiciones.value := daysbetween(mdocumentofechaemision.value, mdocumentovencimiento.value);
  mDocumentocTotal.AsCurrency := mDocumentoValor.AsCurrency +
                                 mDocumentoMontoImpuestos.AsCurrency -
                                 mDocumentoMontoDescuento.AsCurrency;
end;

procedure Tdocdm.mDocumentoidTransValidate(Sender: TField);
begin
  if FLoading then
    Exit;

  with rsTipoTrans do begin
    Close();
    Parameters[0].Value := mDocumentoidTrans.AsInteger;
    Open();
    if Eof then
      raise Exception.Create('Este tipo de documento es invalido')
    else begin
      mDocumentoDebCre.Value := rsTipoTransDebCre.AsInteger;
      mDocumentoDescripcion.Value := rsTipoTransDescripcion.AsString;
    end;
  end;
end;

procedure Tdocdm.mCtasDocNewRecord(DataSet: TDataSet);
begin
  if not FLoading then begin
    mCtasDocAutomatica.AsBoolean := False;
  end;
end;

procedure Tdocdm.mCtasDocDebitoValidate(Sender: TField);
begin
  if FLoading then
    Exit;

  if (mCtasDocDebito.AsCurrency <> 0.00) and (mCtasDocCredito.AsCurrency <> 0.00) then
    raise Exception.Create('No puede escribir un debito y un credito en la misma linea');
end;

procedure Tdocdm.mCtasDocAfterPost(DataSet: TDataSet);
var
  tdb,tcr: Currency;
begin
  CalcularTotales(tdb, tcr);
  if not (mDocumento.State in dsEditModes) then
    mDocumento.Edit();

  mDocumentoDiferencia.AsCurrency := tdb - tcr;
end;

procedure Tdocdm.mCtasDocBeforeEdit(DataSet: TDataSet);
begin
  if not FLoading then begin
    if mCtasDocAutomatica.AsBoolean then
      raise Exception.Create('Esta linea no puede ser editada por el usuario');
  end;
end;

function Tdocdm.ValidarDocumento: Integer;
begin
  with cValidarDoc do begin
    Parameters[1].Value := IdTrans;
    Parameters[2].Value := mDocumentoReferencia.Asstring;
    Parameters[3].Value := mDocumentoIdSuplidor.AsInteger;
    Parameters[4].Value := mDocumentoIdDocumento.AsInteger;
    Execute();
    Result := Parameters[5].Value;
  end;
end;

procedure Tdocdm.mDocumentoReferenciaValidate(Sender: TField);
var
  i: Integer;
begin
  if FLoading then
    Exit;

  if (mDocumentoIdSuplidor.AsInteger > 0) and (mDocumentoReferencia.Asstring <> '') then begin
     i := ValidarDocumento();
     if (i > 0) and (i <> mDocumentoidDocumento.AsInteger) then
       raise Exception.Create('Ya existe un documento con este numero para este suplidor');

  end;
end;

procedure Tdocdm.AnularDocumento;
begin
  with cAnular do begin
    Parameters[1].Value := mDocumentoidDocumento.AsInteger;
    Parameters[2].Value := DateOf(dm.DBFecha());
    Execute();
    if Parameters[0].Value > 0 then
      raise Exception.Create('Error anulando documento');
  end;

  NuevoDocumento();
end;

procedure Tdocdm.BorrarDocumento;
begin
  with cBorrarDocumento do begin
    Parameters[1].Value := mDocumentoidDocumento.AsInteger;
    Execute();
    if Parameters[0].Value > 0 then
      raise Exception.Create('Error borrando documento');
  end;

  NuevoDocumento();
end;

procedure Tdocdm.mRetsidRetencionValidate(Sender: TField);
begin
  if not FLoading then begin
    if not rsTiposRets.Locate('idRetencion',mRetsIdRetencion.AsInteger,[]) then
      raise Exception.Create('Esta retencion no existe')
    else begin
      mRetsRetencion.Value := rsTiposRetsRetencion.Value;
      mRetsPorcentaje.Value := rsTiposRetsPorcentaje.Value;
    end;
  end;
end;

procedure Tdocdm.GuardarRetenciones;
begin
  cBorrarRets.Parameters[1].Value := mDocumentoIdDocumento.Value;
  cBorrarRets.Execute();

  with mRets do begin
    First();
    while not Eof do begin
      if mRetsIdRetencion.AsInteger > 0 then begin
        cInsRetencion.Parameters[1].Value := mDocumentoIdDocumento.Value;
        cInsRetencion.Parameters[2].Value := mRetsIdRetencion.Value;
        cInsRetencion.Parameters[3].Value := mRetsRetencion.Value;
        cInsRetencion.Parameters[4].Value := mRetsPorcentaje.Value;
        cInsRetencion.Parameters[5].Value := mRetsidTipoRetencionDGII.Value;
        cInsRetencion.Execute();
      end;

      Next();
    end;
  end;
end;

procedure Tdocdm.mRetsMontoValidate(Sender: TField);
begin
  if not FLoading then begin
    FLoading := True;
    mRetsPorcentaje.AsFloat := (mRetsMonto.AsCurrency / mDocumentoTotal.AsCurrency) * 100;
    FLoading := False;
  end;
end;

procedure Tdocdm.mRetsPorcentajeValidate(Sender: TField);
begin
  if not FLoading then begin
    FLoading := True;
    mRetsMonto.AsCurrency := (mRetsPorcentaje.AsFloat / 100.00) * mDocumentoTotal.AsCurrency;
    FLoading := False;
  end;
end;

procedure Tdocdm.rsDocRetencionCalcFields(DataSet: TDataSet);
begin
  rsDocRetencionMonto.AsCurrency := (rsDocRetencionPorcentaje.AsFloat / 100) * mDocumentoTotal.AsCurrency;
end;

procedure Tdocdm.mCtasDocidAuxiliarValidate(Sender: TField);
begin
  if not FLoading then begin
    with rsBuscarAux do begin
      Close();
      Parameters[0].Value := mCtasDocidCuenta.Value;
      Parameters[1].Value := mCtasDocidAuxiliar.Value;
      Open();
      if Eof then
        raise Exception.Create('Este auxiliar no esta definido');
    end;
  end;
end;

procedure Tdocdm.mDocItemsNewRecord(DataSet: TDataSet);
begin
  mDocItemsidDocumentoItem.asGuid := dm.NewGuid();
  mDocItemsCantidad.Value := 1;
  mDocItemsCosto.Value := 0;
  mDocItemsDescuento.Value := 0.00;
  mdocItemsTipoItem.Value := 'I';
end;

procedure TDocDm.AbrirItems(const idDoc: Integer);
begin
  with rsDocItems do begin
    Close();
    Parameters[1].Value := idDoc;
    Open();
  end;

  with mDocItems do begin
    Close();
    Open();
    LoadFromDataSet(rsDocItems,[mtcpoAppend]);
  end;
end;

procedure TDocdm.GuardarItems(const iddoc: Integer);
begin
  BorrarItems(idDoc);
  
  with mDocItems do begin
    DisableControls();
    try
      First();
      while not Eof do begin
        cInsItems.Parameters[01].Value := mDocItemsIdDocumentoitem.value;
        cInsItems.Parameters[02].Value := idDoc;
        cInsItems.Parameters[03].Value := mDocItemsIdProducto.value;
        cInsItems.Parameters[04].Value := mDocItemsDescripcion.value;
        cInsItems.Parameters[05].Value := mDocItemsCantidad.value;
        cInsItems.Parameters[06].Value := mDocItemsidUnidad.value;
        cInsItems.Parameters[07].Value := mDocItemsCosto.value;
        cInsItems.Parameters[08].Value := mDocItemsidCuenta.value;
        cInsItems.Parameters[09].Value := mDocItemsItbis.value;
        cInsItems.Parameters[10].Value := mDocItemsDescuento.value;
        cInsItems.Parameters[11].Value := mDocItemsTipoItem.value;
        cInsItems.Execute();

        Next();
      end;
    finally
      EnableControls();
    end;
  end;
end;

procedure Tdocdm.BorrarItems(const idDoc: Integer);
begin
  with cBorrarItems do begin
    Parameters[1].value := idDoc;
    Execute();
  end;
end;

procedure Tdocdm.mDocItemsidProductoValidate(Sender: TField);
var
  s: string;
begin
  if FLoading then
    Exit;
  if mDocItemsIdProducto.Value <> '' then begin
    s := '';
    if mDocItemsTipoItem.Value = 'I' then begin
      if not BuscarProducto(mDocItemsIdProducto.Value) then
        raise Exception.Create('Este producto no existe')
      else if rsProdAct.Active then begin
        mDocItemsDescripcion.Value := rsProdActProducto.Value;
        mDocItemsidUnidad.Value := rsProdActidUnidad.Value;
        mDocItemsITBIS.AsFloat := rsProdActPorciento.Value;
      end;
    end
    else begin
      if mDocItemsTipoItem.Value = 'C' then begin
        dm.VerificarCuenta(mDocItemsIdProducto.Value,s);
        mDocItemsDescripcion.Value := s;
      end;
    end;
  end;

end;

function Tdocdm.BuscarProducto(const idProd: string): Boolean;
begin
  Result := True;
  with rsProdAct do begin
    Close();
    if idProd <> '' then begin
      Parameters[1].Value := idProd;
      Open();
      Result := not Eof;
    end;
  end;
end;

procedure Tdocdm.mDocItemsCalcFields(DataSet: TDataSet);
begin
  mDocItemsMontoItbis.AsCurrency := (mDocItemsCantidad.AsFloat * mDocItemsCosto.AsCurrency) * mDocItemsItbis.AsFloat;
  mDocItemsImporte.AsCurrency :=  (mDocItemsCantidad.AsFloat * mDocItemsCosto.AsCurrency) * (1 + mDocItemsItbis.AsFloat);
end;

procedure Tdocdm.mDocumentoidMonedaValidate(Sender: TField);
begin
  if FLoading then
    Exit;

  mDocumentoIdCuenta.AsString := maindm.BuscarCuentasSuplidor(mDocumentoidSuplidor.AsInteger, mDocumentoIdMoneda.AsInteger);

  if mDocumentoidMoneda.AsInteger = MONEDA_LEGAL then
    mDocumentoTasa.AsFloat := 1.00
  else
    mDocumentoTasa.AsFloat := dm.TasaActual(mDocumentoidMoneda.AsInteger,mDocumentoFecha.Value);

  CodificarDocumento();
end;

function Tdocdm.BuscarAnterior(const idDoc: Integer): Integer;
begin
  with rsBuscarAnt do begin
    Close();
    Parameters[0].Value := idTrans;
    Parameters[1].Value := idDoc;
    Open();

    if Eof then
      Result := -1
    else
      Result := Fields[0].AsInteger;
  end;
end;

function Tdocdm.BuscarProximo(const idDoc: Integer): Integer;
begin
  with rsBuscarProx do begin
    Close();
    Parameters[0].Value := idTrans;
    Parameters[1].Value := idDoc;
    Open();

    if Eof then
      Result := -1
    else
      Result := Fields[0].AsInteger;
  end;
end;

procedure Tdocdm.AbrirGastosDoc(const idDoc: Variant);
begin
end;


procedure Tdocdm.mCtasDocidCentroCostoValidate(Sender: TField);
var
  descr: string;
  cc: string;
begin
  if FLoading then
    Exit;

  FLoading := True;
  try
    dm.ValidarCentroCosto(mCtasDocidCentroCosto.Value,descr, cc);
    mCtasDocCentroCosto.Value := cc;
    mCtasDocCentroCostoDesc.Value := descr;
  finally
    FLoading := False;
  end;
end;

procedure Tdocdm.mCtasDocCentroCostoValidate(Sender: TField);
var
  descr: string;
  idcc: Variant;
begin
  if FLoading then
    Exit;

  FLoading := True;
  try
    if mCtasDocCentroCosto.Asstring = '' then begin
      mCtasDocIdCentroCosto.Clear();
      mCtasDocCentroCostoDesc.Value := '';
      mCtasDocidPartida.Clear();
    end
    else begin
      dm.ValidarCentroCosto(mCtasDocCentroCosto.Value,descr, idcc);
      mCtasDocIdCentroCosto.Value := idcc;
      mCtasDocCentroCostoDesc.Value := descr;
    end;
  finally
    FLoading := False;
  end;
end;


procedure Tdocdm.mDocumentoOrdenCompraValidate(Sender: TField);
begin
  if sender.Value = '' then begin
    mdocumento.edit;
    mdocumentoidOrden.clear;
  end else begin
    if  not(NoValidar) then begin
      SetidOrden(sender.Value);
    end;
  end;
end;


Procedure Tdocdm.SetidOrden(numeroOC : variant);
var
  x : variant;
begin
  x := uutiles.ReturnValue('ocOrdenes','idOrden','Numero=' + NumeroOC);
  if x = NULL then
    raise exception.create('No existe este numero de OC')
  else begin
    if x <> mdocumentoidOrden.value then begin
       mdocumento.edit;
       mdocumentoidOrden.value := x;
    end;
  end;
end;

procedure Tdocdm.ImportarEntrada(const id: Variant);
var
  cto: Currency;
begin
  cto := 0;
  FLoading := True;
  try
    with rsPromov do begin
      Close();
      Parameters[1].Value := id;
      Open();
      if Eof then
        raise Exception.Create('Esta entrada no existe');

      rsCostoPromov.Close();
      rsCostoPromov.Parameters[0].Value := id;
      rsCostoPromov.Open();

      if not rsCostoPromov.Eof then
        cto := rsCostoPromovCostoTotal.AsCurrency;
      if not (mDocumento.State in dsEditModes) then
        mDocumento.Edit();

      mDocumentoIdSuplidor.Value := rsProMovidSuplidor.Value;
      mDocumentoNombre.Value := rsProMovSuplidor.Value;
      mDocumentoReferencia.Value := rsProMovFactura.Value;
      mDocumentoMontoImpuestos.Value := rsProMovTotalITBIS.Value;
      mDocumentoCompFiscal.Value := rsProMovCompFiscal.Value;
      mDocumentoidClaseGasto.Value := rsProMovIdClaseGasto.Value;
      mDocumentoFecha.Value := rsProMovFecha.Value;
      mDocumentomontoFacturadoBienes.Value := cto;
      mDocumentomontoFacturadoServicios.Value := 0;
//      mDocumentoTotal.Value := cto + rsProMovTotalITBIS.AsCurrency;
      mDocumentoConcepto.Value := rsProMovConcepto.Value;
      FLoading := false;
      mDocumentoidSuplidorValidate(mdocumentoIdSuplidor);
      CalcTotalDocumento();
    end;
  finally
    FLoading := False;
    RecalcularImpuestos();
    CodificarDocumento();
  end;
end;

procedure Tdocdm.mDocumentoFechaValidate(Sender: TField);
begin
  if not FLoading then
    dm.ValidarFechaCierre(mDocumentoFecha.Value, 'CXP');
end;

procedure Tdocdm.mDocumentomontoFacturadoBienesValidate(Sender: TField);
begin
  if not FLoading then begin
    RecalcularImpuestos();

    CalcTotalDocumento();
    //mDocumentoTotal.Value := (mDocumentomontoFacturadoBienes.Value + mDocumentomontoFacturadoServicios.Value + mDocumentoMontoImpuestos.Value);
    CodificarDocumento();
  end;
end;

procedure Tdocdm.mDocumentomontoFacturadoServiciosValidate(Sender: TField);
begin
  if not FLoading then begin
    RecalcularImpuestos();
    CalcTotalDocumento();
    //mDocumentoTotal.Value := (mDocumentomontoFacturadoBienes.Value + mDocumentomontoFacturadoServicios.Value + mDocumentoMontoImpuestos.Value);
    CodificarDocumento();
  end;
end;

procedure Tdocdm.mDocumentoMontoImpuestosValidate(Sender: TField);
begin
  if not FLoading then begin
    mImpsDoc.First();
    while not mImpsDoc.Eof do begin
      if mDocumentoMontoImpuestos.AsCurrency > 0 then
        begin
          mImpsDoc.Edit;
          mImpsDocMontoImpuesto.AsCurrency := mDocumentoMontoImpuestos.Value;
          mImpsDoc.Next();
        end
        else
          mImpsDoc.Delete;
    end;

    CalcTotalDocumento();
    //mDocumentoTotal.Value := (mDocumentomontoFacturadoBienes.Value + mDocumentomontoFacturadoServicios.Value + mDocumentoMontoImpuestos.Value);
    CodificarDocumento();
  end;
end;

procedure Tdocdm.mImpsDocBeforeInsert(DataSet: TDataSet);
begin
 if mImpsDoc.RecordCount > 0 then
   raise Exception.Create('No puedes agregar más de un tipo de impuesto, elimine el actual antes de agregar otro...');
end;

procedure Tdocdm.CalcTotalDocumento();
begin
  mDocumentoValor.Value := mDocumentomontoFacturadoBienes.Value +
                           mDocumentomontoFacturadoServicios.Value;

  mDocumentoTotal.Value := mDocumentomontoFacturadoBienes.Value +
                           mDocumentomontoFacturadoServicios.Value +
                           mDocumentoMontoImpuestos.Value +
                           mDocumentoMontoIsc.Value +
                           mDocumentoPropinaLegal.Value +
                           mDocumentoOtrosImpuestos.Value;
end;

procedure Tdocdm.mDocumentoMontoIscValidate(Sender: TField);
begin
  if FLoading then
    Exit;

  CalcTotalDocumento();
end;

end.

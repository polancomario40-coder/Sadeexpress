unit uNCRDM;

interface

uses
  SysUtils, Classes, kbmMemTable, DB, DateUtils, ADODB,dialogs,math,
  Wwdatsrc,Variants;

const
  TR_NCR  = 25;

type
  Tncrdm = class(TDataModule)
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
    mDocumentoidDocumento: TIntegerField;
    mDocumentoidTrans: TIntegerField;
    mDocumentoFecha: TDateTimeField;
    mDocumentoidSuplidor: TIntegerField;
    mDocumentoReferencia: TStringField;
    mDocumentoMontoImpuestos: TBCDField;
    mDocumentoMontoDescuento: TBCDField;
    mDocumentoMontoRetenciones: TBCDField;
    mDocumentoTotal: TBCDField;
    mDocumentoConcepto: TStringField;
    mDocumentoidMoneda: TIntegerField;
    mDocumentoTelefono1: TStringField;
    mDocumentoFax: TStringField;
    mDocumentoDireccion: TStringField;
    mDocumentoNombre: TStringField;
    mDocumentoRNC: TStringField;
    mDocumentoTelefono2: TStringField;
    cGuardar: TADOCommand;
    rsMonedas: TADODataSet;
    rsDocumentoCodifManual: TBooleanField;
    rsDocumentoTelefono2: TStringField;
    mDocumentoCodifManual: TBooleanField;
    rsMonedasidMoneda: TIntegerField;
    uu: TStringField;
    mDocumentocTotal: TCurrencyField;
    mDocumentoValor: TCurrencyField;
    mDocumentoDescripcion: TStringField;
    mDocumentoDebCre: TIntegerField;
    rsTipoTrans: TADODataSet;
    rsTipoTransidTrans: TIntegerField;
    rsTipoTransDescripcion: TStringField;
    rsTipoTransAbrev: TStringField;
    rsTipoTransDebCre: TWordField;
    mDocumentoidCuenta: TStringField;
    rsDocumentoStatus: TStringField;
    rsDocumentoFechaStatus: TDateTimeField;
    rsDocumentoidCuentaBanco: TIntegerField;
    rsDocumentoDescripcion: TStringField;
    rsDocumentoDebCre: TWordField;
    rsDocumentoAbrev: TStringField;
    mDocumentoStatus: TStringField;
    mDocumentoFechaStatus: TDateTimeField;
    mDocumentoidCuentaBanco: TIntegerField;
    mDocumentoAbrev: TStringField;
    rsDocumentoidCuenta: TStringField;
    rsDocumentoTipoDocOrigen: TStringField;
    rsDocumentoDocOrigen: TIntegerField;
    mDocumentoTipoDocOrigen: TStringField;
    mDocumentoDocOrigen: TIntegerField;
    mDocDtl: TkbmMemTable;
    mDocDtlidDocumento: TIntegerField;
    mDocDtlValor: TBCDField;
    mDocDtlReferencia: TStringField;
    mDocDtlTotal: TBCDField;
    mDocDtlFecha: TDateTimeField;
    mDocDtlAbrev: TStringField;
    mDocDtlidDocXPagar: TIntegerField;
    mCtasDoc: TkbmMemTable;
    mCtasDocidCuenta: TStringField;
    mCtasDocDescripcion: TStringField;
    mCtasDocDebCre: TWordField;
    mCtasDocDebito: TBCDField;
    mCtasDocCredito: TBCDField;
    mCtasDocLineaNum: TAutoIncField;
    mCtasDocAutomatica: TBooleanField;
    rsCtasDoc: TADODataSet;
    rsCtasDocidCuenta: TStringField;
    rsCtasDocDescripcion: TStringField;
    rsCtasDocDebCre: TWordField;
    rsCtasDocDebito: TBCDField;
    rsCtasDocCredito: TBCDField;
    rsCtasDocAutomatica: TBooleanField;
    cBorrarCtas: TADOCommand;
    cGuardarCtas: TADOCommand;
    mDocumentoAplicado: TCurrencyField;
    rsBuscarDoc: TADODataSet;
    rsBuscarDocidDocumento: TIntegerField;
    rsBuscarDocidTrans: TIntegerField;
    rsBuscarDocFecha: TDateTimeField;
    rsBuscarDocidSuplidor: TIntegerField;
    rsBuscarDocReferencia: TStringField;
    rsBuscarDocValor: TBCDField;
    rsBuscarDocMontoImpuestos: TBCDField;
    rsBuscarDocMontoDescuento: TBCDField;
    rsBuscarDocMontoRetenciones: TBCDField;
    rsBuscarDocTotal: TBCDField;
    rsBuscarDocConcepto: TStringField;
    rsBuscarDocidMoneda: TIntegerField;
    rsBuscarDocCodifManual: TBooleanField;
    rsBuscarDocTelefono1: TStringField;
    rsBuscarDocTelefono2: TStringField;
    rsBuscarDocFax: TStringField;
    rsBuscarDocDireccion: TStringField;
    rsBuscarDocNombre: TStringField;
    rsBuscarDocRNC: TStringField;
    rsBuscarDocDescripcion: TStringField;
    rsBuscarDocDebCre: TWordField;
    rsBuscarDocAbrev: TStringField;
    cGuardarDocDtl: TADOCommand;
    cBorrarDtl: TADOCommand;
    rsDocDtl: TADODataSet;
    rsDocDtlidDocumento: TIntegerField;
    rsDocDtlLineaNum: TIntegerField;
    rsDocDtlIdDocXPagar: TIntegerField;
    rsDocDtlValor: TBCDField;
    rsDocDtlFecha: TDateTimeField;
    rsDocDtlTotal: TBCDField;
    rsDocDtlReferencia: TStringField;
    rsDocDtlAbrev: TStringField;
    rsDocDtlFechaDoc: TDateTimeField;
    mDocDtlFechaDoc: TDateTimeField;
    rsDocsPendientes: TADODataSet;
    rsDocsPendientesidTrans: TIntegerField;
    rsDocsPendientesidDocumento: TIntegerField;
    rsDocsPendientesFecha: TDateTimeField;
    rsDocsPendientesValor: TBCDField;
    rsDocsPendientesPagado: TBCDField;
    rsDocsPendientesReferencia: TStringField;
    rsDocsPendientesAbrev: TStringField;
    mDocsPendientes: TkbmMemTable;
    mDocsPendientesidTrans: TIntegerField;
    mDocsPendientesidDocumento: TIntegerField;
    mDocsPendientesReferencia: TStringField;
    mDocsPendientesFecha: TDateTimeField;
    mDocsPendientesValor: TBCDField;
    mDocsPendientesAbrev: TStringField;
    mDocsPendientesPagado: TBCDField;
    mDocsPendientesSel: TBooleanField;
    mDocsPendientesPendiente: TCurrencyField;
    mDocumentoDiferencia: TCurrencyField;
    cBorrarDocDtl: TADOCommand;
    cValidarDoc: TADOCommand;
    rsDocumentoDias: TSmallintField;
    rsDocumentoMostrarEnCXP: TBooleanField;
    mDocumentoDias: TSmallintField;
    mDocumentoMostrarEnCXP: TBooleanField;
    cBorrarDocumento: TADOCommand;
    mDocumentoPorAplicar: TCurrencyField;
    cMoverAux: TADOCommand;
    mDocumentoNotaAdicional: TStringField;
    rsDocumentoBienesServicio: TSmallintField;
    rsDocumentoTotalNeto: TBCDField;
    rsDocumentoNotaAdicional: TStringField;
    rsDocumentoTotalRetenciones: TFloatField;
    rsBuscarAux: TADODataSet;
    mCtasDocidAuxiliar: TStringField;
    rsCtasDocidAuxiliar: TStringField;
    rsDocumentoidAuxiliar: TStringField;
    mDocumentoidAuxiliar: TStringField;
    mDocumentoCompFiscal: TStringField;
    rsDocumentoCompFiscal: TStringField;
    rsDocumentoGUIDDocumento: TGuidField;
    mDocumentoGUIDDocumento: TGuidField;
    mDocumentoTasa: TFloatField;
    rsDocumentoidTipoIdentificacion: TStringField;
    rsDocumentoidClaseGasto: TStringField;
    rsDocumentoTasa: TBCDField;
    rsDocumentoPedirNCF: TStringField;
    mDocDtlTasa: TFloatField;
    rsDocDtlTasa: TBCDField;
    mDocDtlidMoneda: TIntegerField;
    rsDocDtlidMoneda: TIntegerField;
    rsDocsPendientesidMoneda: TIntegerField;
    rsDocsPendientestasa: TBCDField;
    rsDocsPendientesTotalRetenciones: TFloatField;
    mDocsPendientesidMoneda: TIntegerField;
    mDocsPendientesTasa: TFloatField;
    rsBuscarDocStatus: TStringField;
    rsBuscarDocFechaStatus: TDateTimeField;
    rsBuscarDocidCuentaBanco: TIntegerField;
    rsBuscarDocidCuenta: TStringField;
    rsBuscarDocTipoDocOrigen: TStringField;
    rsBuscarDocDocOrigen: TIntegerField;
    rsBuscarDocDias: TSmallintField;
    rsBuscarDocMostrarEnCXP: TBooleanField;
    rsBuscarDocBienesServicio: TSmallintField;
    rsBuscarDocNotaAdicional: TStringField;
    rsBuscarDocidAuxiliar: TStringField;
    rsBuscarDocCompFiscal: TStringField;
    rsBuscarDocGUIDDocumento: TGuidField;
    rsBuscarDocTotalNeto: TBCDField;
    rsBuscarDocidTipoIdentificacion: TStringField;
    rsBuscarDocidClaseGasto: TStringField;
    rsBuscarDocTasa: TBCDField;
    rsBuscarDocPedirNCF: TStringField;
    rsBuscarDocTotalRetenciones: TFloatField;
    mPrimas: TkbmMemTable;
    mPrimasidCuenta: TStringField;
    mPrimasDescripcion: TStringField;
    mPrimasDebCre: TWordField;
    mPrimasDebito: TBCDField;
    mPrimasCredito: TBCDField;
    mPrimasAutomatica: TBooleanField;
    rsBuscarPrima: TADODataSet;
    rsBuscarPrimaCuenta: TStringField;
    rsBuscarPrimaDescripcion: TStringField;
    rsBuscarPrimaDebito: TBCDField;
    rsBuscarPrimaCredito: TBCDField;
    rsBuscarProx: TADODataSet;
    rsBuscarAnt: TADODataSet;
    rsBancos: TADODataSet;
    rsBancosidCuentaBanco: TIntegerField;
    rsBancosNumCuenta: TStringField;
    rsBancosNombre: TStringField;
    rsBancosidCuentaMayor: TStringField;
    rsBancosUltimoCheque: TIntegerField;
    cMovPagoAux: TADOCommand;
    rsDocRets: TADODataSet;
    rsDocRetsidPagoRetencion: TGuidField;
    rsDocRetsidDocumento: TIntegerField;
    rsDocRetsidDocXPagar: TIntegerField;
    rsDocRetsPorcentaje: TFloatField;
    rsDocRetsValor: TBCDField;
    rsDocRetsidRetencion: TIntegerField;
    rsDocRetsRetencion: TStringField;
    mDocRets: TkbmMemTable;
    mDocRetsidPagoRetencion: TGuidField;
    mDocRetsidDocumento: TIntegerField;
    mDocRetsidDocXPagar: TIntegerField;
    mDocRetsPorcentaje: TFloatField;
    mDocRetsValor: TBCDField;
    mDocRetsidRetencion: TIntegerField;
    mDocRetsRetencion: TStringField;
    cBorrarRets: TADOCommand;
    cInsRet: TADOCommand;
    rsBuscarDocRets: TADODataSet;
    rsBuscarDocRetsidDocumento: TIntegerField;
    rsBuscarDocRetsidRetencion: TIntegerField;
    rsBuscarDocRetsRetencion: TStringField;
    rsBuscarDocRetsPorcentaje: TFloatField;
    rsTiposRets: TADODataSet;
    rsTiposRetsidRetencion: TIntegerField;
    rsTiposRetsRetencion: TStringField;
    rsTiposRetsPorcentaje: TFloatField;
    rsTiposRetsidCuenta: TStringField;
    dsTiposRets: TDataSource;
    rsTipoDocID: TADODataSet;
    rsTipoDocIDidTipoIdentificacion: TStringField;
    rsTipoDocIDTipoIdentificacion: TStringField;
    dsTipoId: TDataSource;
    mDocumentoidTipoIdentificacion: TStringField;
    mDocumentoVencimiento: TDateTimeField;
    mDocumentoFechaEmision: TDateTimeField;
    rsDocumentoBancoDestino: TStringField;
    rsDocumentoCuentaDestino: TStringField;
    rsDocumentoTipoAbono: TStringField;
    rsDocumentoVencimiento: TDateTimeField;
    rsDocumentoFechaEmision: TDateTimeField;
    mCtasDocidCentroCosto: TGuidField;
    mCtasDocCentroCosto: TStringField;
    mCtasDocidPartida: TStringField;
    rsCtasDocidCentroCosto: TGuidField;
    rsCtasDocCentroCosto: TStringField;
    rsCtasDocIdpartida: TStringField;
    mDocumentoTipoGasto: TStringField;
    rsDocumentoTipoGasto: TStringField;
    rsDocsPendientesidCuenta: TStringField;
    mDocsPendientesidCuenta: TStringField;
    mDocDtlidCuenta: TStringField;
    rsDocDtlidCuenta: TStringField;
    rsDocumentoOrdenCompra: TStringField;
    mDocumentoOrdenCompra: TStringField;
    cAnularCheque: TADOCommand;
    rsDocRetsidTipoRetencionDGII: TIntegerField;
    mDocRetsidTipoRetencionDGII: TIntegerField;
    rsTiposRetencion: TADODataSet;
    rsTiposRetencionidTiposRetencionDGII: TIntegerField;
    rsTiposRetencionTiposRetencionDGII: TStringField;
    rsDocumentomontoFacturadoBienes: TBCDField;
    rsDocumentomontoFacturadoServicios: TBCDField;
    rsDocumentoidPagoForma: TIntegerField;
    mDocumentomontoFacturadoServicios: TBCDField;
    mDocumentomontoFacturadoBienes: TBCDField;
    mDocumentoidPagoForma: TIntegerField;
    rsBuscarDocRetsidTipoRetencionDGII: TIntegerField;
    rsListaPagoForma: TADODataSet;
    rsListaPagoFormaidPagoForma: TIntegerField;
    rsListaPagoFormaPagoForma: TStringField;
    dsListaPagoForma: TDataSource;
    procedure mDocumentoidSuplidorValidate(Sender: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure mImpsDocAfterPost(DataSet: TDataSet);
    procedure mDocumentoValorValidate(Sender: TField);
    procedure mCtasDocidCuentaValidate(Sender: TField);
    procedure mDocumentoCalcFields(DataSet: TDataSet);
    procedure mDocumentoidTransValidate(Sender: TField);
    procedure mCtasDocNewRecord(DataSet: TDataSet);
    procedure mCtasDocDebitoValidate(Sender: TField);
    procedure mCtasDocAfterPost(DataSet: TDataSet);
    procedure mCtasDocBeforeEdit(DataSet: TDataSet);
    procedure mDocDtlidDocXPagarValidate(Sender: TField);
    procedure mDocDtlAfterPost(DataSet: TDataSet);
    procedure mDocsPendientesCalcFields(DataSet: TDataSet);
    procedure mDocumentoReferenciaValidate(Sender: TField);
    procedure mDocDtlNewRecord(DataSet: TDataSet);
    procedure mCtasDocidAuxiliarValidate(Sender: TField);
    procedure mDocumentoidMonedaValidate(Sender: TField);
    procedure mDocRetsNewRecord(DataSet: TDataSet);
    procedure mDocRetsValorValidate(Sender: TField);
    procedure mDocRetsPorcentajeValidate(Sender: TField);
    procedure mDocDtlAfterScroll(DataSet: TDataSet);
    procedure mDocRetsAfterPost(DataSet: TDataSet);
    procedure mDocRetsidRetencionValidate(Sender: TField);
    procedure mCtasDocidCentroCostoValidate(Sender: TField);
    procedure mCtasDocCentroCostoValidate(Sender: TField);
    procedure mDocumentoFechaValidate(Sender: TField);
  private
    { Private declarations }
    Floading: Boolean;
    FIdTrans: Integer;
    FAutoCodif: Boolean;
    FMonedalegal: Integer;

    procedure GuardarCodifDoc;
    procedure CalcularTotales(out tdb, tcr: Currency);
    procedure CodificarDocumento;
    procedure LimpiarCtasAutomaticas;
    procedure CalcTotalDetalle;
    function BuscarDocumento(const idDoc: Integer; out ref: string;
      out Total: Currency; out fec: TDateTime; out Tipo: string; out idMon: Integer): Boolean;
    function ValidarDocumento: Integer;
    procedure IncluirCtaPrima;
    procedure BorrarRetenciones(const idDoc: Integer);
    procedure FiltrarRetenciones(const idDoc: Integer);
    procedure GuardarRetenciones(const idDoc: Integer);
    procedure IncluirRetenciones(const idDoc: Integer);
    procedure RecalcularRetenciones;
    function TotalRetencionDoc: Currency;
  public
    { Public declarations }
    procedure NuevoDocumento;
    procedure AbrirDocumento(const idDoc: Integer);
    procedure GuardarDocumento;
    procedure AbrirPendientes(const idSup: Integer);
    procedure AceptarPendientes;
    procedure CerrarDocumento;

    property IdTrans: Integer read FIdTrans write FIdTrans;
    property AutoCodificar: Boolean read FAutoCodif write FAutoCodif;
    procedure BorrarDocumento;

    procedure AnularDocumento();

    function BuscarAnterior(const idDoc: Integer): Integer;
    function BuscarProximo(const idDoc: Integer): Integer;
    property MONEDA_LEGAL: Integer read FMonedalegal write FMonedaLegal;
  end;

var
  ncrdm: Tncrdm;

implementation

uses uMAINDM, Udata;

{$R *.dfm}

procedure Tncrdm.mDocumentoidSuplidorValidate(Sender: TField);
begin
  if FLoading then
    exit;

  if mDocumentoidSuplidor.AsInteger = 0 then begin
    mDocumentoNombre.AsString := '';
    mDocumentoTelefono1.AsString := '';
    mDocumentoTelefono2.AsString := '';
    mDocumentoDireccion.AsString := '';
    mDocumentoFax.AsString := '';
    mDocumentoRNC.Value := '';
    mDocumentoIdTipoIdentificacion.Value := '02';
    mDocumentoIdCuenta.Value := '';
  end
  else if not maindm.BuscarSupXId(mDocumentoIdSuplidor.AsInteger) then
    raise Exception.Create('Este suplidor no esta registrado')
  else begin
    //if (maindm.rsBuscarSupidCuenta.AsString = '') and (AutoCodificar) then
    //  raise exception.Create('Este suplidor no tiene una cuenta definida');

    mDocumentoNombre.AsString := maindm.rsBuscarSupNombre.AsString;
    mDocumentoTelefono1.AsString := maindm.rsBuscarSupTelefono1.AsString;
    mDocumentoTelefono2.AsString := maindm.rsBuscarSupTelefono2.AsString;
    mDocumentoDireccion.AsString := maindm.rsBuscarSupDireccion.AsString;
    mDocumentoFax.AsString := maindm.rsBuscarSupFax.AsString;
    mDocumentoIdMoneda.AsInteger := maindm.rsBuscarSupidMoneda.AsInteger;
    mDocumentoRNC.Value := maindm.rsBuscarSupRNC.Value;
    mDocumentoIdTipoIdentificacion.Value := maindm.rsBuscarSupidTipoIdentificacion.Value;

    if mDocumentoIdTrans.AsInteger = TR_NCR then begin
        mDocumentoIdCuenta.AsString := maindm.BuscarCuentasSuplidor(mDocumentoIdSuplidor.AsInteger, mDocumentoIdMoneda.AsInteger);
      //mDocumentoIdAuxiliar.Asstring := maindm.rsBuscarSupIdAuxiliar.Asstring;
    end;

    CodificarDocumento();
  end;
end;

procedure Tncrdm.DataModuleCreate(Sender: TObject);
begin
  FLoading := False;
  rsTipoDocid.Open();
  dm.rsPartidas.Open();
  rsTiposRetencion.Open();
end;


procedure Tncrdm.CalcTotalDetalle;
var
  ti: Currency;
  bm: string;
  tasa: Single;
  tret:Currency;
begin
  ti := 0;
  tret := 0;

  RecalcularRetenciones();

  if mDocumentoTasa.AsFloat = 0 then
    tasa := 1.0
  else
    tasa := mDocumentoTasa.AsFloat;

  bm := mDocDtl.BookMark;
  try
    with mDocDtl do begin
      First();
      while not Eof do begin
        tret := tret + (TotalRetencionDoc() * mDocDtlTasa.AsFloat);

        ti := ti + (mDocDtlValor.AsCurrency * mDocDtlTasa.AsFloat);
        Next();
      end;
    end;

    if not (mDocumento.State in dsEditModes) then
      mDocumento.Edit();

    mDocumentoMontoRetenciones.AsCurrency := tret / mDocumentoTasa.Asfloat;
      
    if mDocumentoIdMoneda.AsInteger = MONEDA_LEGAL then
      mDocumentoAplicado.AsCurrency := ti
    else
      mDocumentoAplicado.AsCurrency := ti / tasa;
  finally
    mDocDtl.Bookmark := bm;
  end;
end;


procedure Tncrdm.mImpsDocAfterPost(DataSet: TDataSet);
begin
  if not FLoading then begin
    CodificarDocumento();
  end;
end;

procedure Tncrdm.mDocumentoValorValidate(Sender: TField);
begin
  if not FLoading then begin
    CodificarDocumento();
  end;
end;

procedure Tncrdm.NuevoDocumento;
begin
  AutoCodificar := FIdTrans = TR_NCR;
  mDocumento.ReadOnly := False;
  mDocumento.Close();
  mDocumento.Open();

  mDocDtl.Close();
  mDocDtl.Open();

  mCtasDoc.Close();
  mCtasDoc.Open();

  mDocumento.Append();
  mDocumentoIdTrans.AsInteger := FIdTrans;
  mDocumentoGUIDDocumento.AsGuid := dm.NewGuid();
  mDocumentoFecha.Value := DateOf(Date());
  mDocumentoFechaStatus.Value := DateOf(Date());
  mDocumentoIdMoneda.AsInteger := rsMonedasIdMoneda.AsInteger;
  mDocumentoCodifManual.AsBoolean := True;
  mDocumentoDias.AsInteger := 0;
  mDocumentoMostrarEnCxp.AsBoolean := True;

  mDocumentoTipoGasto.Value := 'PAGO';

  mDocRets.Close();
  mDocRets.Open();
end;

procedure Tncrdm.AbrirDocumento(const idDoc: Integer);
begin
  mDocumento.ReadOnly := False;
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
    //showmessage(rsDocumentoStatus.Asstring + '---->' + mDocumentoStatus.Asstring);
//    mDocumento.Edit();

    with rsDocDtl do begin
      Close();
      Parameters[1].Value := idDoc;
      Open();
    end;

    mDocDtl.Close();
    mDocDtl.Open();
    mDocDtl.LoadFromDataSet(rsDocDtl,[mtcpoAppend]);

    with rsCtasDoc do begin
      Close();
      Parameters[1].Value := idDoc;
      Open();
    end;

    mCtasDoc.Close();
    mCtasDoc.Open();
    mCtasDoc.LoadFromDataSet(rsCtasDoc,[mtcpoAppend]);

    rsDocumento.Close();
    rsCtasDoc.Close();
    rsDocdtl.Close();

    mDocRets.Close();
    mDocRets.Open();

    with rsDocRets do begin
      Close();
      Parameters[1].Value := idDoc;
      Open();
    end;

    mDocRets.LoadFromDataSet(rsDocRets,[mtcpoAppend]);

    FiltrarRetenciones(mDocDtlIdDocXPagar.AsInteger);

    with rsTipoTrans do begin
      Close();
      Parameters[0].Value := mDocumentoIdTrans.Value;
      Open();
    end;    

  finally
    FLoading := False;
  end;

  AutoCodificar :=  mDocumentoIdTrans.AsInteger = TR_NCR;
  CalcTotalDetalle();
end;

procedure Tncrdm.GuardarCodifDoc;
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

procedure Tncrdm.GuardarDocumento;
begin
  if mDocumentoIdSuplidor.AsInteger = 0 then
    raise Exception.Create('Primero selecciones un suplidor');

  dm.Coneccion.BeginTrans();
  try
    with cGuardar do begin
      Parameters[01].Value := mDocumentoIdDocumento.AsInteger;
      Parameters[02].Value := mDocumentoidTrans.AsInteger;
      Parameters[03].Value := DateOf(mDocumentoFecha.AsDateTime);
      Parameters[04].Value := mDocumentoidSuplidor.AsInteger;
      Parameters[05].Value := mDocumentoReferencia.Asstring;
      Parameters[06].Value := mDocumentoValor.AsCurrency;
      Parameters[07].Value := mDocumentoMontoImpuestos.AsCurrency;
      Parameters[08].Value := mDocumentoMontoDescuento.AsCurrency;
      Parameters[09].Value := mDocumentoMontoRetenciones.AsCurrency;
      Parameters[10].Value := mDocumentoConcepto.Asstring;
      Parameters[11].Value := mDocumentoidMoneda.AsInteger;
      Parameters[12].Value := mDocumentoCodifManual.AsBoolean;
      Parameters[13].Value := mDocumentoidCuenta.AsString;
      Parameters[14].Value := mDocumentoidAuxiliar.AsString;

      //showMessage(mDOcumentoStatus.AsString);
      Parameters[15].Value := mDocumentoStatus.AsString;
      Parameters[16].Value := DateOf(mDocumentoFechaStatus.AsDateTime);
      Parameters[17].Value := mDocumentoidCuentaBanco.AsInteger;
      Parameters[18].Value := mDocumentoTipoDocOrigen.AsString;
      Parameters[19].Value := mDocumentoDocOrigen.AsInteger;
      Parameters[20].Value := mDocumentoDias.AsInteger;
      Parameters[21].Value := mDocumentoMostrarEnCXP.AsBoolean;
      Parameters[22].Value := 1;
      Parameters[23].Value := mDocumentoNotaAdicional.Value;
      Parameters[24].Value := mDocumentoValor.Value;
      Parameters[25].Value := mDocumentomontoFacturadoBienes.Value;
      Parameters[26].Value := mDocumentoidPagoForma.Value;

      Parameters[28].Value := mDocumentoCompFiscal.Asstring;
      Parameters[29].Value := mDocumentoGUIDDocumento.Value;
      Parameters[30].value := mDocumentoTasa.AsFloat;
      Parameters[31].Value := mDocumentoidTipoIdentificacion.Value;
      Parameters[32].Value := mDocumentoRnc.Value;
      Parameters[33].Value := mDocumentoNombre.Value;
      Parameters[34].Value := mDocumentoFechaEmision.Value;
      Parameters[35].Value := mDocumentoVencimiento.Value;
      Parameters[36].Value := mDocumentoTipoGasto.Value;
      Parameters[37].Value := mDocumentoOrdenCompra.Value;
      Execute();

      if not (mDocumento.State in dsEditModes) then
        mDocumento.Edit();
      mDocumentoIdDocumento.AsInteger := Parameters[27].Value;
    end;

//    if mDocumentoCodifManual.AsBoolean then
      GuardarCodifDoc() ;
//    else
 //CodificarAutomaticamente();

    BorrarRetenciones(mDocumentoIdDocumento.AsInteger);

    with cBorrarDocDtl do begin
      Parameters[1].Value := mDocumentoIdDocumento.AsInteger;
      Execute();
    end;

    with mDocDtl do begin
      First();
      while not Eof do Begin
        if mDocDtlValor.AsCurrency > 0 then begin
          cGuardarDocDtl.Parameters[01].Value := mDocumentoIdDocumento.AsInteger;
          cGuardarDocDtl.Parameters[02].Value := mDocDtlIdDocXPagar.AsInteger;
          cGuardarDocDtl.Parameters[03].Value := mDocDtlFecha.Value;
          cGuardarDocDtl.Parameters[04].Value := mDocDtlValor.AsCurrency;
          cGuardarDocDtl.Parameters[05].Value := mDocDtlTasa.AsFloat;
          cGuardarDocDtl.Execute();

          GuardarRetenciones(mDocDtlIdDocXPagar.AsInteger);
        end;
        Next();
      end;
    end;

    if mDocumentoidTrans.AsInteger <> TR_NCR then begin
      if mDocumentoIdTrans.AsInteger = 20 then begin
        cMoverAux.Parameters[1].Value := mDocumentoIdDocumento.AsInteger;
        cMoverAux.Execute();
      end
      else begin
        cMovPagoAux.Parameters[1].Value := mDocumentoIdDocumento.AsInteger;
        cMovPagoAux.Execute();
      end;
    end;

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

procedure Tncrdm.LimpiarCtasAutomaticas;
begin
  with mCtasDoc do begin
    First();
    while not Eof do begin
      if (mCtasDocAutomatica.AsBoolean) or ((Trim(mCtasDocIdCuenta.AsString) = '') and (mCtasDocDebito.AsCurrency + mCtasDocCredito.AsCurrency = 0)) then
        Delete()
      else
        Next();
    end;
  end;
end;

procedure Tncrdm.CalcularTotales(out tdb: Currency; out tcr: Currency);
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

procedure tncrdm.IncluirCtaPrima;
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

        if (rsBuscarPrimaCuenta.AsString <> '') and ((rsBuscarPrimaDebito.asCurrency > 0) or (rsBuscarPrimaCredito.asCurrency > 0)) then
          mPrimas.InsertRecord([rsBuscarPrimaCuenta.AsString, rsBuscarPrimaDescripcion.AsString,
                               debcre, rsBuscarPrimaDebito.asCurrency, rsBuscarPrimaCredito.AsCurrency,True]);
      end;
    end;
    mCtasDoc.Next();
  end;
  
  if mPrimas.RecordCount > 0 then
    mCtasDoc.LoadFromDataSet(mPrimas,[mtcpoAppend]);
end;

procedure Tncrdm.CodificarDocumento;
var
  tdb,tcr: Currency;
  bm: string;

procedure AgregarCuenta(const cta,aux: string; const debcre: integer; const valor: Currency);
begin
  if (valor > 0) and (cta <> '') then begin
    mCtasDoc.Append();
    mCtasDocIdCuenta.Asstring := cta;
    mCtasDocIdAuxiliar.Value := aux;
    if debcre = 1 then
      mCtasDocDebito.AsCurrency := valor
    else
      mCtasDocCredito.AsCurrency := valor;

    mCtasDocAutomatica.AsBoolean := True;
    mCtasDoc.Post();
  end;
end;

begin
  if not AutoCodificar then
    Exit;

  FLoading := True;
  mDocDtl.DisableControls();
  try
    LimpiarCtasAutomaticas();

//    if mDocumentoDebCre.Value = 1 then

    if mDocumentoidTrans.AsInteger = TR_NCR then begin
      with mDocDtl do begin
        DisableControls();
        bm := BookMark;
        First();
        while not Eof do begin
          AgregarCuenta(mDocDtlidCuenta.Value,'',1,mDocDtlValor.AsCurrency);
          Next();
        end;
        BookMark := bm;
        EnableControls();
      end;
    end
    else begin
      AgregarCuenta(mDocumentoidCuenta.AsString, mDocumentoIdAuxiliar.Asstring, 2, mDocumentoValor.AsCurrency - mDocumentoMontoRetenciones.AsCurrency);
    end;

    if mDocumentoIdMoneda.AsInteger <> MONEDA_LEGAL then
      IncluirCtaPrima();

    CalcularTotales(tdb, tcr);
   // showmessage(FormatFloat('###,###.00',tdb - tcr));

{    if tcr > tdb then
      AgregarCuenta(mDocumentoidCuenta.AsString,1, tcr - tdb)
    else if tdb > tcr then
      AgregarCuenta(mDocumentoidCuenta.AsString,2, tdb - tcr);
 }
    if not (mDocumento.State in dsEditModes) then
      mDocumento.Edit();

    mDocumentoDiferencia.AsCurrency := tdb - tcr;
  finally
    mDocDtl.EnableControls();
    FLoading := False;
  end;
end;

procedure Tncrdm.mCtasDocidCuentaValidate(Sender: TField);
var
  descr: string;
begin
  try
    dm.VerificarCuenta(mCtasDocIdCuenta.AsString,descr);
  except
    if not FLoading then
      raise;
  end;

  mCtasDocDescripcion.AsString := descr;
end;

procedure Tncrdm.mDocumentoCalcFields(DataSet: TDataSet);
begin
  mDocumentocTotal.AsCurrency := mDocumentoValor.AsCurrency +
                                 mDocumentoMontoImpuestos.AsCurrency -
                                 mDocumentoMontoDescuento.AsCurrency;

  mDocumentoPorAplicar.AsCurrency := mDocumentoValor.AsCurrency - mDocumentoAplicado.AsCurrency;
end;

procedure Tncrdm.mDocumentoidTransValidate(Sender: TField);
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

procedure Tncrdm.mCtasDocNewRecord(DataSet: TDataSet);
begin
  if not FLoading then begin
    mCtasDocAutomatica.AsBoolean := False;
  end;
end;

procedure Tncrdm.mCtasDocDebitoValidate(Sender: TField);
begin
  if FLoading then
    Exit;

  if (mCtasDocDebito.AsCurrency <> 0.00) and (mCtasDocCredito.AsCurrency <> 0.00) then
    raise Exception.Create('No puede escribir un debito y un credito en la misma linea');
end;

procedure Tncrdm.mCtasDocAfterPost(DataSet: TDataSet);
begin
  if mDocumentoCodifManual.AsBoolean and (not FLoading) then
    CodificarDocumento();
end;

procedure Tncrdm.mCtasDocBeforeEdit(DataSet: TDataSet);
begin
  if (not FLoading) and (AutoCodificar) then begin
    if mCtasDocAutomatica.AsBoolean then
      raise Exception.Create('Esta linea no puede ser editada por el usuario');
  end;
end;

procedure Tncrdm.mDocDtlidDocXPagarValidate(Sender: TField);
var
  ref,Tipo: string;
  fec: TDateTime;
  Total: Currency;
  idMon: Integer;
begin
  if FLoading then
    Exit
  else begin
    if BuscarDocumento(mDocDtlIdDocumento.AsInteger,ref, Total, fec, Tipo,idMon) then begin
      mDocDtlFecha.Value := fec;
      mDocDtlReferencia.AsString := ref;
      mDocDtlTotal.AsCurrency := Total;
      mDocDtlAbrev.Asstring := Tipo;
      mDocDtlIdMoneda.AsInteger := idMon;
      if idMon = MONEDA_LEGAL then
        mDocDtltasa.AsFloat := 1.0
      else
        mDocDtlTasa.AsFloat := dm.TasaActual(mDocDtlidMoneda.asInteger, mDocumentoFecha.Value);

      IncluirRetenciones(mDocDtlIdDocXPagar.AsInteger);
    end
    else
      raise Exception.Create('Este documento no existe');
  end;
end;

function TNCRDM.BuscarDocumento(const idDoc: Integer; out ref: string; out Total: Currency;
  out fec: TDateTime; out Tipo: string; out idMon: integer): Boolean;
begin
  with rsBuscarDoc do begin
    Close();
    Parameters[01].Value := idDoc;
    Open();

    if Eof then begin
      Result := False;
      ref := '';
      Total := 0;
      Fec := 0;
      Tipo := '';
      idMon := MONEDA_LEGAL;
    end
    else begin
      Result := True;
      ref := rsBuscarDocReferencia.AsString;
      Total := rsBuscarDocTotal.AsCurrency;
      Fec := rsBuscarDocFecha.AsDateTime;
      Tipo := rsBuscarDocAbrev.Asstring;
      idMon := rsbuscarDocIdMoneda.AsInteger;
    end;
    Close();
  end;
end;

procedure Tncrdm.mDocDtlAfterPost(DataSet: TDataSet);
begin
  if not FLoading then begin
    CalcTotalDetalle();
    CodificarDocumento();
  end;
end;

procedure TNCRDM.AbrirPendientes(const idSup: Integer);
var
  bm: string;
begin
  with rsDocsPendientes do begin
    Close();
    Parameters[01].Value := idSup;
    Open();
  end;

  with mDocsPendientes do begin
    Close();
    Open();
    LoadFromDataSet(rsDocsPendientes,[mtcpoAppend]);
  end;

  with mDocDtl do begin
    bm := BookMark;
    DisableControls();
    try
      First();
      while not Eof do begin
         if mDocsPendientes.Locate('idDocumento',mDocDtlIdDocumento.AsInteger,[]) then begin
           mDocsPendientes.Edit();
           mDocsPendientesSel.AsBoolean := True;
           mDocsPendientes.Post();
         end;
         Next();
      end;
      BookMark := bm;
    finally
      EnableControls();
    end;
  end;
end;


procedure TNCRDM.AceptarPendientes;
var
  cResto: Currency;
begin
  cResto := mDocumentoValor.AsCurrency * mDocumentoTasa.AsFloat;
  FLoading := True;
  try
    with mDocsPendientes do begin
      First();
      while (not Eof) do begin //and (cResto > 0) do begin
        if mDocsPendientesSel.AsBoolean then begin
          if not mDocDtl.Locate('IdDocumento',mDocsPendientesIdDocumento.AsInteger,[]) then begin
            mDocDtl.Append();
            mDocDtlidDocXPagar.AsInteger := mDocsPendientesidDocumento.AsInteger;
            mDocDtlFechaDoc.AsDateTime := mDocsPendientesFecha.AsDateTime;
            mDocDtlReferencia.Asstring := mDocsPendientesReferencia.AsString;
            mDocDtlAbrev.AsString := mDocsPendientesAbrev.AsString;
            mDocDtlTotal.AsCurrency := mDocsPendientesPendiente.AsCurrency;
            mDocDtlFecha.Value := mdocumentoFecha.Value;
            mDocDtlidMoneda.AsInteger := mDocsPendientesIdMoneda.AsInteger;
            mDocDtlIdCuenta.Asstring := mDocsPendientesIdCuenta.AsString;
            mDocDtlValor.AsCurrency := mDocsPendientesPendiente.AsCurrency;

            if mDocDtlIdMoneda.AsInteger = MONEDA_LEGAL then
              mDocDtlTasa.AsFloat := 1.00
            else
              mDocDtlTasa.AsFloat := dm.TasaActual(mDocDtlidMoneda.AsInteger,mDocumentoFecha.Value);

            //mDocdtlTasa.Value := mDocumentoTasa.AsFloat;
            {if cResto > mDocsPendientesPendiente.AsCurrency then begin
              mDocDtlValor.AsCurrency := mDocsPendientesPendiente.AsCurrency;
              cResto := cResto - mDocsPendientesPendiente.AsCurrency;
            end
            else begin
              mDocDtlValor.AsCurrency := cResto;
              cResto := 0;
            end;}
            //mDocDtlValor.AsCurrency := 0;

            IncluirRetenciones(mDocDtlIdDocXPagar.asInteger);
            
            mDocDtl.Post();
          end
          else
            cResto := cResto - mDocDtlValor.AsCurrency;
        end;
        Next();
      end;
    end;
  finally
    FLoading := False;
  end;

  CodificarDocumento();
end;

procedure Tncrdm.mDocsPendientesCalcFields(DataSet: TDataSet);
begin
  mDocsPendientesPendiente.AsCurrency := mDocsPendientesValor.AsCurrency - mDocsPendientesPagado.AsCurrency;
end;

procedure Tncrdm.mDocumentoReferenciaValidate(Sender: TField);
var
  i: Integer;
begin
  if FLoading then
    Exit;

  if (mDocumentoIdSuplidor.AsInteger > 0) and (mDocumentoReferencia.Asstring <> '') then begin
     i := ValidarDocumento();
     if (i > 0) and (i <> mDocumentoidDocumento.AsInteger) then begin
       //AbrirDocumento(i);
       raise Exception.Create('Ya existe un documento con este numero para este suplidor');
     end;
  end;
end;

function Tncrdm.ValidarDocumento: Integer;
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

procedure Tncrdm.BorrarDocumento;
begin
  with cBorrarDocumento do begin
    Parameters[1].Value := mDocumentoidDocumento.AsInteger;
    //Parameters[2].Value := DateOf(MainDM.DBFecha());
    Execute();
    if Parameters[0].Value > 0 then
      raise Exception.Create('Error borrando documento');
  end;

  NuevoDocumento();
end;

procedure Tncrdm.CerrarDocumento;
begin
  mDocumento.Close();
  mDocumento.Open();

  mDocDtl.Close();
  mDocDtl.Open();
  
  mCtasDoc.Close();
  mCtasDoc.Open();
end;

procedure Tncrdm.mDocDtlNewRecord(DataSet: TDataSet);
begin
  if not FLoading then
    mDocDtlFecha.Value := mDocumentoFecha.Value;
end;

procedure Tncrdm.mCtasDocidAuxiliarValidate(Sender: TField);
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

procedure Tncrdm.mDocumentoidMonedaValidate(Sender: TField);
begin
  if FLoading then
    Exit;

  if mDocumentoIdTrans.AsInteger = TR_NCR then 
     mDocumentoIdCuenta.AsString := maindm.BuscarCuentasSuplidor(mDocumentoIdSuplidor.AsInteger, mDocumentoIdMoneda.AsInteger);

  if mDocumentoIdMoneda.Value = MONEDA_LEGAL then
    mDocumentoTasa.AsFloat := 1.00
  else
    mDocumentoTasa.AsFloat := dm.TasaActual(mDocumentoIdMoneda.AsInteger, mDocumentoFecha.Value);

  CodificarDocumento();
end;

function Tncrdm.BuscarAnterior(const idDoc: Integer): Integer;
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

function Tncrdm.BuscarProximo(const idDoc: Integer): Integer;
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

procedure Tncrdm.FiltrarRetenciones(const idDoc: Integer);
begin
  with mDocRets do begin
    Filtered := False;
    Filter := Format('idDocXPagar = %d',[idDoc]);
    Filtered := True;
  end;
end;

procedure Tncrdm.BorrarRetenciones(const idDoc: Integer);
begin
  with cBorrarRets do begin
    Parameters[1].Value := idDoc;
    Execute();
  end;
end;

procedure Tncrdm.GuardarRetenciones(const idDoc: Integer);
begin
  FiltrarRetenciones(idDoc);
  with mDocRets do begin
    First();
    while not eof do begin
      if mDocRetsValor.AsCurrency > 0 then begin
        cInsRet.Parameters[1].Value := mDocumentoidDocumento.AsInteger;
        cInsRet.Parameters[2].Value := mDocRetsidPagoRetencion.Value;
        cInsRet.Parameters[3].Value := mDocDtlidDocXPagar.Value;
        cInsRet.Parameters[4].Value := mDocRetsPorcentaje.AsFloat;
        cInsRet.Parameters[5].Value := mDocRetsValor.asCurrency;
        cInsRet.Parameters[6].Value := mDocRetsidRetencion.AsInteger;
        cInsRet.Parameters[7].Value := mDocRetsRetencion.Value;
        cInsRet.Parameters[8].Value := mDocRetsidTipoRetencionDGII.Value;
        cInsRet.Execute();
      end;
      Next();
    end;
  end;
end;

procedure TNCRDM.IncluirRetenciones(const idDoc: Integer);
begin
  BorrarRetenciones(idDoc);
  with rsBuscarDocRets do begin
    Close();
    Parameters[1].Value := idDoc;
    Open();
    while not Eof do begin
      mDocRets.Append();
      mDocRetsidDocumento.Value := idDoc;
      mDocRetsidRetencion.Value := rsBuscarDocRetsidRetencion.Value;
      mDocRetsRetencion.Value := rsBuscarDocRetsRetencion.Value;
      mDocRetsidTipoRetencionDGII.Value := rsBuscarDocRetsIdTipoRetencionDGII.Value;      
      mDocRetsPorcentaje.Value := rsBuscarDocRetsPorcentaje.AsFloat;
      mDocRetsValor.Value := SimpleRoundTo(mDocDtlValor.Value * (mDocRetsPorcentaje.AsFloat / 100.00),-2);

      mDocRets.Post();
      Next();
    end;
  end;
end;

procedure TNCRDM.RecalcularRetenciones;
var
  fl: Boolean;
begin
  fl := FLoading;
  FLoading := True;
  with mDocRets do begin
    DisableControls();

    FiltrarRetenciones(mDocDtlIdDocXPagar.AsInteger);

    First();
    while not Eof do begin
      Edit();
      mDocRetsValor.Value := SimpleRoundTo(mDocDtlValor.AsCurrency * (mDocRetsPorcentaje.AsFloat / 100.00),-2);
      Post();

      Next();
    end;

    First();
    EnableControls();
  end;
  FLoading := fl;
end;

procedure Tncrdm.mDocRetsNewRecord(DataSet: TDataSet);
begin
  mDocRetsidPagoRetencion.asGuid := dm.NewGuid();
  mDocRetsidDocumento.Value := mDocumentoidDocumento.Value;
  mDocRetsidDocXPagar.Value := mDocDtlidDocXPagar.Value;
end;

procedure Tncrdm.mDocRetsValorValidate(Sender: TField);
begin
  if not FLoading then begin
    FLoading := True;
    try
      mDocRetsPorcentaje.asFloat := mDocRetsValor.AsCurrency / mDocDtlValor.AsCurrency * 100.00;
    finally
      FLoading := False;
    end;
  end;
end;

procedure Tncrdm.mDocRetsPorcentajeValidate(Sender: TField);
begin
  if not FLoading then begin
    FLoading := True;
    try
      mDocRetsValor.Value := SimpleRoundTo(mDocDtlValor.Value * (mDocRetsPorcentaje.AsFloat / 100.00),-2);
    finally
      FLoading := False;
    end;
  end;
end;

procedure Tncrdm.mDocDtlAfterScroll(DataSet: TDataSet);
begin
  if not FLoading then
    FiltrarRetenciones(mDocDtlIdDocXPagar.AsInteger);
end;

function TNCRDM.TotalRetencionDoc: Currency;
var
  tot: Currency;
begin
  tot := 0;
  with mDocRets do begin
    DisableControls();

    FiltrarRetenciones(mDocDtlIdDocXPagar.AsInteger);

    First();
    while not Eof do begin
      tot := tot + mDocRetsValor.AsCurrency;
      Next();
    end;
    First();
    EnableControls();
  end;
  Result := tot;
end;

procedure Tncrdm.mDocRetsAfterPost(DataSet: TDataSet);
begin
  if not FLoading then
    CalcTotalDetalle();
end;

procedure Tncrdm.mDocRetsidRetencionValidate(Sender: TField);
begin
  if FLoading then
    Exit;

  if rsTiposRets.Locate('idRetencion',mDocRetsIdRetencion.AsInteger,[]) then begin
    mDocRetsPorcentaje.asFloat := rsTiposRetsPorcentaje.asFloat;
    mDocRetsRetencion.Value := rsTiposRetsRetencion.Value;
  end;
end;

procedure Tncrdm.mCtasDocidCentroCostoValidate(Sender: TField);
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
//    mCtasDocCentroCostoDesc.Value := descr;
  finally
    FLoading := False;
  end;
end;

procedure Tncrdm.mCtasDocCentroCostoValidate(Sender: TField);
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
      mCtasDocidPartida.Clear();
    end
    else begin
      dm.ValidarCentroCosto(mCtasDocCentroCosto.Value,descr, idcc);
      mCtasDocIdCentroCosto.Value := idcc;
//    mCtasDocCentroCostoDesc.Value := descr;
    end;
  finally
    FLoading := False;
  end;
end;


procedure Tncrdm.AnularDocumento();
begin
  if mDocumentoidTrans.Value = TR_NCR then begin
    mDocumentoStatus.Value := 'C';
    mDocumentoFechaStatus.Value := dm.DBFecha();
    GuardarDocumento();
  end
  else begin
    with cAnularCheque do begin
      Parameters[1].Value := mDocumentoIdDocumento.Value;
      Execute();
    end;
    AbrirDocumento(mDocumentoIdDocumento.Value);
  end;
end;

procedure Tncrdm.mDocumentoFechaValidate(Sender: TField);
begin
  if not FLoading then
    dm.ValidarFechaCierre(mDocumentoFecha.Value,'CXP');
end;

end.







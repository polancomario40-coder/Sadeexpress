unit uSolDM;

interface

uses
  SysUtils, Classes, DB, ADODB, kbmMemTable, DateUtils, Variants, ppCtrls,
  ppStrtch, ppRichTx, ppBands, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,math, Clipbrd, ppSubRpt,
  ppParameter, myChkBox,uCodifCtas;

type
  TSolDM = class(TDataModule)
    rsSol: TADODataSet;
    rsSolidSolicitud: TIntegerField;
    rsSolNumero: TIntegerField;
    rsSolFecha: TDateTimeField;
    rsSolidSuplidor: TIntegerField;
    rsSolTotal: TBCDField;
    rsSolConcepto: TStringField;
    rsSolStatus: TStringField;
    rsSolNombre: TStringField;
    rsSolTelefono1: TStringField;
    rsSolTelefono2: TStringField;
    rsSolRNC: TStringField;
    rsSolDireccion: TStringField;
    rsSolDtl: TADODataSet;
    rsSolDtlLineaNum: TIntegerField;
    rsSolDtlidSolicitud: TIntegerField;
    rsSolDtlidDocumento: TIntegerField;
    rsSolDtlValor: TBCDField;
    rsSolDtlReferencia: TStringField;
    rsSolDtlTotal: TBCDField;
    rsSolDtlFecha: TDateTimeField;
    rsSolDtlAbrev: TStringField;
    mSol: TkbmMemTable;
    mSolDtl: TkbmMemTable;
    mSolDtlidSolicitud: TIntegerField;
    mSolDtlidDocumento: TIntegerField;
    mSolDtlValor: TBCDField;
    mSolDtlReferencia: TStringField;
    mSolDtlTotal: TBCDField;
    mSolDtlFecha: TDateTimeField;
    mSolDtlAbrev: TStringField;
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
    rsDocsPendientes: TADODataSet;
    rsDocsPendientesidTrans: TIntegerField;
    rsDocsPendientesidDocumento: TIntegerField;
    rsDocsPendientesFecha: TDateTimeField;
    rsDocsPendientesValor: TBCDField;
    rsDocsPendientesPagado: TBCDField;
    rsDocsPendientesReferencia: TStringField;
    rsDocsPendientesAbrev: TStringField;
    cGuardarSol: TADOCommand;
    cGuardarSolDtl: TADOCommand;
    cBorrarSolDtl: TADOCommand;
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
    cGenCk: TADOCommand;
    rsSolXNumero: TADODataSet;
    rsSolXNumeroidSolicitud: TIntegerField;
    rsSolXNumeroNumero: TIntegerField;
    rsSolXNumeroFecha: TDateTimeField;
    rsSolXNumeroidSuplidor: TIntegerField;
    rsSolXNumeroTotal: TBCDField;
    rsSolXNumeroConcepto: TStringField;
    rsSolXNumeroStatus: TStringField;
    rsSolXNumeroNombre: TStringField;
    rsSolXNumeroTelefono1: TStringField;
    rsSolXNumeroTelefono2: TStringField;
    rsSolXNumeroRNC: TStringField;
    rsSolXNumeroDireccion: TStringField;
    rsBancos: TADODataSet;
    rsBancosidCuentaBanco: TIntegerField;
    rsBancosNombre: TStringField;
    rsBancosidMoneda: TIntegerField;
    rsBancosTipoCuenta: TStringField;
    rsBancosUltimoCheque: TIntegerField;
    rsBancosidCuentaMayor: TStringField;
    mSolDtlAutomatica: TBooleanField;
    rsSolDescrStatus: TStringField;
    mSolsPend: TkbmMemTable;
    rsSolsPend: TADODataSet;
    rsSolsPendNumero: TIntegerField;
    rsSolsPendidSolicitud: TIntegerField;
    rsSolsPendFecha: TDateTimeField;
    rsSolsPendTotal: TBCDField;
    rsSolsPendConcepto: TStringField;
    rsSolsPendNombre: TStringField;
    mSolsPendNumero: TIntegerField;
    mSolsPendidSolicitud: TIntegerField;
    mSolsPendFecha: TDateTimeField;
    mSolsPendTotal: TBCDField;
    mSolsPendConcepto: TStringField;
    mSolsPendNombre: TStringField;
    mSolsPendSel: TBooleanField;
    cBorrarSolicitud: TADOCommand;
    rsBuscarDocStatus: TStringField;
    rsBuscarDocFechaStatus: TDateTimeField;
    rsBuscarDocidCuentaBanco: TIntegerField;
    rsBuscarDocidCuenta: TStringField;
    rsBuscarDocTipoDocOrigen: TStringField;
    rsBuscarDocDocOrigen: TIntegerField;
    rsBuscarDocDias: TSmallintField;
    rsBuscarDocMostrarEnCXP: TBooleanField;
    rsBuscarDocBienesServicio: TSmallintField;
    rsBuscarDocTotalRetenciones: TFloatField;
    mDocsPendientesTotalRetenciones: TFloatField;
    rsSolTotalNeto: TFloatField;
    rsSolDtlTotalRetenciones: TFloatField;
    rsDocsPendientesTotalRetenciones: TFloatField;
    rsRPTSol: TADODataSet;
    rsRPTSolidSolicitud: TIntegerField;
    rsRPTSolNumero: TIntegerField;
    rsRPTSolFecha: TDateTimeField;
    rsRPTSolidSuplidor: TIntegerField;
    rsRPTSolTotal: TBCDField;
    rsRPTSolConcepto: TStringField;
    rsRPTSolStatus: TStringField;
    rsRPTSolNombre: TStringField;
    rsRPTSolTotalRetenciones: TFloatField;
    rsRPTSolReferencia: TStringField;
    rsRPTSolFecha_1: TDateTimeField;
    rsRPTSolValor: TBCDField;
    rsRPTSolRetencionDoc: TFloatField;
    dsRPT: TDataSource;
    plHeader: TppDBPipeline;
    Report: TppReport;
    plConfig: TppDBPipeline;
    dsConfig: TDataSource;
    rsRPTSolTotalNeto: TCurrencyField;
    rsRPTSolTelefono1: TStringField;
    rsRPTSolRNC: TStringField;
    mSolDtlTotalRetenciones: TFloatField;
    rsSolUsuario: TStringField;
    rsSolFechaRegistro: TDateTimeField;
    rsSolValidadaPor: TStringField;
    rsSolValidadaEn: TDateTimeField;
    rsSolRevisadaPor: TStringField;
    rsSolRevisadaEn: TDateTimeField;
    rsSolValidadaFinalPor: TStringField;
    rsSolValidadaFinalEn: TDateTimeField;
    rsSolCtas: TADODataSet;
    rsSolCtasidCuenta: TStringField;
    rsSolCtasDebito: TBCDField;
    rsSolCtasCredito: TBCDField;
    rsSolCtasCuenta: TStringField;
    plCtas: TppDBPipeline;
    dsCtas: TDataSource;
    rsSolNotaAdicional: TStringField;
    rsSolmostrarEncxp: TBooleanField;
    rsBancosNumCuenta: TStringField;
    rsSolGUIDSolicitud: TGuidField;
    mSolidSolicitud: TIntegerField;
    mSolNumero: TIntegerField;
    mSolFecha: TDateTimeField;
    mSolidSuplidor: TIntegerField;
    mSolTotal: TBCDField;
    mSolConcepto: TStringField;
    mSolStatus: TStringField;
    mSolUsuario: TStringField;
    mSolFechaRegistro: TDateTimeField;
    mSolValidadaPor: TStringField;
    mSolValidadaEn: TDateTimeField;
    mSolRevisadaPor: TStringField;
    mSolRevisadaEn: TDateTimeField;
    mSolValidadaFinalPor: TStringField;
    mSolValidadaFinalEn: TDateTimeField;
    mSolNotaAdicional: TStringField;
    mSolmostrarEncxp: TBooleanField;
    mSolGUIDSolicitud: TGuidField;
    mSolDescrStatus: TStringField;
    mSolNombre: TStringField;
    mSolTelefono1: TStringField;
    mSolTelefono2: TStringField;
    mSolRNC: TStringField;
    mSolDireccion: TStringField;
    mSolTotalNeto: TFloatField;
    rsRPTSolUsuario: TStringField;
    rsRPTSolFechaRegistro: TDateTimeField;
    rsRPTSolValidadaPor: TStringField;
    rsRPTSolValidadaEn: TDateTimeField;
    rsRPTSolRevisadaPor: TStringField;
    rsRPTSolRevisadaEn: TDateTimeField;
    rsRPTSolValidadaFinalPor: TStringField;
    rsRPTSolValidadaFinalEn: TDateTimeField;
    rsRPTSolNotaAdicional: TStringField;
    rsRPTSolmostrarEncxp: TBooleanField;
    rsRPTSolGUIDSolicitud: TGuidField;
    rsSolCtasidAuxiliar: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText11: TppDBText;
    ppLabel8: TppLabel;
    ppLine2: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLabel16: TppLabel;
    lCuenta: TppLabel;
    lBanco: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel22: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel2: TppLabel;
    ppDBRichText1: TppDBRichText;
    ppLine1: TppLine;
    ppLabel11: TppLabel;
    ppLine3: TppLine;
    ppLabel12: TppLabel;
    ppLine4: TppLine;
    ppLabel13: TppLabel;
    ppLine5: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppLabel1: TppLabel;
    ppDBText5: TppDBText;
    ppLabel9: TppLabel;
    ppDBText12: TppDBText;
    ppLabel10: TppLabel;
    ppDBText13: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppShape4: TppShape;
    ppLabel17: TppLabel;
    ppShape5: TppShape;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel23: TppLabel;
    ppLine14: TppLine;
    ppDetailBand2: TppDetailBand;
    ppShape6: TppShape;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppDBText18: TppDBText;
    ppLine15: TppLine;
    ppSummaryBand2: TppSummaryBand;
    rsEnts: TADODataSet;
    rsEntsidSuplidor: TIntegerField;
    rsEntsNombre: TStringField;
    rsSolTasa: TBCDField;
    rsSolDtlTasa: TBCDField;
    mSolTasa: TFloatField;
    mSolDtlTasa: TFloatField;
    mSolidCuentabanco: TIntegerField;
    mSolidMoneda: TIntegerField;
    rsSolidMoneda: TIntegerField;
    rsSolidCuentaBanco: TIntegerField;
    mDocsPendientesidMoneda: TIntegerField;
    rsDocsPendientesidMoneda: TIntegerField;
    mSolDtlidMoneda: TIntegerField;
    rsSolDtlidMoneda: TIntegerField;
    rsDocsPendientestasa: TBCDField;
    mDocsPendientesTasa: TFloatField;
    rsBuscarDocNotaAdicional: TStringField;
    rsBuscarDocidAuxiliar: TStringField;
    rsBuscarDocCompFiscal: TStringField;
    rsBuscarDocGUIDDocumento: TGuidField;
    rsBuscarDocTotalNeto: TBCDField;
    rsBuscarDocidTipoIdentificacion: TStringField;
    rsBuscarDocidClaseGasto: TStringField;
    rsBuscarDocTasa: TBCDField;
    rsBuscarDocPedirNCF: TStringField;
    rsBancoSuplidor: TADODataSet;
    rsBancoSuplidorIdBancoSuplidor: TGuidField;
    rsBancoSuplidorIdSuplidor: TIntegerField;
    rsBancoSuplidorIdMoneda: TIntegerField;
    rsBancoSuplidorBancoCodigo: TStringField;
    rsBancoSuplidorTipoCuenta: TStringField;
    rsBancoSuplidorCuenta: TStringField;
    rsBancoSuplidorBancoDefault: TBooleanField;
    rsSolTipoAbono: TStringField;
    rsSolBancoDestino: TStringField;
    rsSolCuentaDestino: TStringField;
    rsSolTipoSolicitud: TIntegerField;
    mSolTipoAbono: TStringField;
    mSolBancoDestino: TStringField;
    mSolCuentaDestino: TStringField;
    mSolTipoSolicitud: TIntegerField;
    rsSolidCuentaBancoDestino: TIntegerField;
    mSolidCuentaBancoDestino: TIntegerField;
    cProcesarSol: TADOCommand;
    rsSolsPendTipoSolicitud: TIntegerField;
    rsSolsPendTipo: TStringField;
    rsSolsPendidCuentaBanco: TIntegerField;
    rsSolsPendCuentaBanco: TStringField;
    mSolsPendidCuentaBanco: TIntegerField;
    mSolsPendCuentaBanco: TStringField;
    mSolsPendTipoSolicitud: TIntegerField;
    mSolsPendTipo: TStringField;
    rsSolCuentaTransfer: TStringField;
    cValidar: TADOCommand;
    rsRPTSolTasa: TBCDField;
    rsRPTSolidMoneda: TIntegerField;
    rsRPTSolidCuentaBanco: TIntegerField;
    rsRPTSolTipoAbono: TStringField;
    rsRPTSolBancoDestino: TStringField;
    rsRPTSolCuentaDestino: TStringField;
    rsRPTSolTipoSolicitud: TIntegerField;
    rsRPTSolidCuentaBancoDestino: TIntegerField;
    rsRPTSolDescrStatus: TStringField;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    rsRPTSolBanco: TStringField;
    rsRPTSolMoneda: TStringField;
    ppDBText21: TppDBText;
    mSolRets: TkbmMemTable;
    rsDocRets: TADODataSet;
    rsDocRetsidDocumento: TIntegerField;
    rsDocRetsidRetencion: TIntegerField;
    rsDocRetsRetencion: TStringField;
    rsDocRetsPorcentaje: TFloatField;
    rsSolRets: TADODataSet;
    rsSolRetsidSolicitudRet: TGuidField;
    rsSolRetsidSolicitud: TIntegerField;
    rsSolRetsidDocumento: TIntegerField;
    rsSolRetsPorcentaje: TFloatField;
    rsSolRetsValor: TBCDField;
    rsSolRetsidRetencion: TIntegerField;
    rsSolRetsRetencion: TStringField;
    mSolRetsidSolicitudRet: TGuidField;
    mSolRetsidSolicitud: TIntegerField;
    mSolRetsidDocumento: TIntegerField;
    mSolRetsPorcentaje: TFloatField;
    mSolRetsValor: TBCDField;
    mSolRetsidRetencion: TIntegerField;
    mSolRetsRetencion: TStringField;
    cborrarRets: TADOCommand;
    cInsRet: TADOCommand;
    rsTiposRets: TADODataSet;
    rsTiposRetsidRetencion: TIntegerField;
    rsTiposRetsRetencion: TStringField;
    rsTiposRetsPorcentaje: TFloatField;
    rsTiposRetsidCuenta: TStringField;
    dsTiposRet: TDataSource;
    rsSolOrdenCompra: TStringField;
    rsSolidOrden: TGuidField;
    mSolidOrden: TGuidField;
    mSolOrdenCompra: TStringField;
    mSolRetsIdTipoRetencionDGII: TIntegerField;
    rsListaRetDGII: TADODataSet;
    rsListaRetDGIIidTiposRetencionDGII: TIntegerField;
    rsListaRetDGIITiposRetencionDGII: TStringField;
    dsRetsDGII: TDataSource;
    rsDocRetsidTipoRetencionDGII: TIntegerField;
    rsSolRetsidTipoRetencionDGII: TIntegerField;
    rsSolIdPagoForma: TIntegerField;
    mSolIdPagoForma: TIntegerField;
    rsListaPagoForma: TADODataSet;
    dsListaPagoForma: TDataSource;
    rsListaPagoFormaidPagoForma: TIntegerField;
    rsListaPagoFormaPagoForma: TStringField;
    procedure mSolDtlidDocumentoValidate(Sender: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure mSolidSuplidorValidate(Sender: TField);
    procedure mDocsPendientesCalcFields(DataSet: TDataSet);
    procedure mSolDtlAfterPost(DataSet: TDataSet);
    procedure rsRPTSolCalcFields(DataSet: TDataSet);
    procedure mSolNombreValidate(Sender: TField);
    procedure mSolDtlNewRecord(DataSet: TDataSet);
    procedure mSolidMonedaValidate(Sender: TField);
    procedure mSolDtlidMonedaValidate(Sender: TField);
    procedure mSolidCuentabancoValidate(Sender: TField);
    procedure mSolTasaValidate(Sender: TField);
    procedure mSolRetsPorcentajeValidate(Sender: TField);
    procedure mSolRetsValorValidate(Sender: TField);
    procedure mSolRetsNewRecord(DataSet: TDataSet);
    procedure mSolRetsidRetencionValidate(Sender: TField);
    procedure mSolDtlAfterScroll(DataSet: TDataSet);
    procedure mSolTotalNetoValidate(Sender: TField);
    procedure mSolTotalValidate(Sender: TField);
    procedure mSolOrdenCompraValidate(Sender: TField);
  private
    { Private declarations }
    FLoading: Boolean;
    FDefaultStatus: string;
    MONEDA_LEGAL: Integer;
    FCodifCtas: TfrCodifCtas;
    function BuscarDocumento(const idDoc: Integer; out ref: string; out Total: Currency;
    out fec: TDateTime; out Tipo: string; out Ret: Single; out idMon: Integer; out tasa: Single): Boolean;
    procedure CalcularTotalesSol;
    procedure BorrarRetenciones(const idDoc: Integer);
    procedure IncluirRetenciones(const idDoc: Integer);
    procedure RecalcularRetenciones;
    function TotalRetencionDoc: Currency;
    procedure FiltrarRetenciones(const idDoc: Integer);
    procedure SetidOrden(numeroOC: variant);
    procedure CodificarBanco;
  public
    { Public declarations }
    Novalidar : boolean;
    procedure ReasignarTasa;
    procedure NuevaSolicitud(const Tipo: Integer = 1);
    procedure GuardarSolicitud;
    procedure AbrirSolicitud(const idSol: Integer);
    procedure AbrirPendientes(const idSup: Integer);
    procedure AceptarPendientes;
    procedure CerrarSolicitud;

    function GenerarCheque(const idSol, idBco: Integer): Integer;

    function ProcesarSolicitud(const idSol: Integer): Integer;

    procedure ValidarSolicitudID(const idSol: Integer; out Num: Integer;
      out Nom: string; out fec: TDateTime; out Valor: Currency;
      out st: string; out TipoSol: Integer; out idCuenta: integer);

    procedure ValidarSolicitud(const Num: Integer; out idSol: Integer;
      out Nom: string; out fec: TDateTime; out Valor: Currency;
      out st: string);

    procedure AbrirSolsPendientes;

    procedure BorrarSolicitud(const idSol: Integer);

    procedure AbrirBancosSuplidor(const idSup: Integer);

    property Codificacion: TfrCodifCtas read FCodifCtas write FCodifCtas;

    procedure CancelarSolicitud(const idSol: Integer; const st: string; const usr: string; const newst: string = 'C');
  end;

{**************************************************
 Esto no esta bien pero los status de las solicitudes pueden ser:
 1: Digitada
 2: Pagada
 3: Aprobada en Primera instancia
 4: Revisada
 A: Aprobada en segunda instancia (lista para pagar)
 C: Cancelada.
 ***************************************************}

var
  SolDM: TSolDM;

implementation

uses uMAINDM, Udata, UUtiles;

{$R *.dfm}

{ TSolDM }

procedure TSolDM.IncluirRetenciones(const idDoc: Integer);
begin
  BorrarRetenciones(idDoc);
  with rsDocRets do begin
    Close();
    Parameters[1].Value := idDoc;
    Open();
    while not Eof do begin
      mSolRets.Append();
      mSolRetsidDocumento.Value := idDoc;
      mSolRetsidRetencion.Value := rsDocRetsidRetencion.Value;
      mSolRetsRetencion.Value := rsDocRetsRetencion.Value;
      mSolRetsPorcentaje.Value := rsDocRetsPorcentaje.AsFloat;
      mSolRetsIdTipoRetencionDGII.Value := rsDocRetsidTipoRetencionDGII.Value;      
      mSolRetsValor.Value := SimpleRoundTo(mSolDtlValor.Value * (mSolRetsPorcentaje.AsFloat / 100.00),-2);
      mSolRets.Post();
      Next();
    end;
  end;
end;

procedure TSolDM.FiltrarRetenciones(const idDoc: Integer);
begin
  with mSolRets do begin
    Filtered := False;
    Filter := Format('idDocumento = %d',[idDoc]);
    Filtered := True;
  end;
end;

procedure TSolDM.BorrarRetenciones(const idDoc: Integer);
begin
  FiltrarRetenciones(idDoc);
  
  with mSolRets do begin
    First();
    while not Eof do
      Delete();
  end;
end;

function TSolDM.BuscarDocumento(const idDoc: Integer; out ref: string; out Total: Currency;
  out fec: TDateTime; out Tipo: string; out Ret: Single; out idMon: Integer; out tasa: Single): Boolean;
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
      Ret := 0;
      idMon := MONEDA_LEGAL;
      Tasa := 1;
    end
    else begin
      Result := True;
      ref := rsBuscarDocReferencia.AsString;
      Total := rsBuscarDocTotal.AsCurrency;
      Fec := rsBuscarDocFecha.AsDateTime;
      Tipo := rsBuscarDocAbrev.Asstring;
      Ret := rsBuscarDocTotalRetenciones.Value;
      idMon := rsbuscarDocidMoneda.AsInteger;
      tasa := rsbuscarDocTasa.asFloat;
    end;
    Close();
  end;
end;

procedure TSolDM.mSolDtlidDocumentoValidate(Sender: TField);
var
  ref,Tipo: string;
  fec: TDateTime;
  Ret,Tasa: Single;
  Total: Currency;
  idMon: Integer;
begin
  if FLoading then
    Exit
  else begin
    if BuscarDocumento(mSolDtlIdDocumento.AsInteger,ref, Total, fec, Tipo, Ret, idMon, Tasa) then begin
      mSolDtlFecha.Value := fec;
      mSolDtlReferencia.AsString := ref;
      mSolDtlTotal.AsCurrency := Total;
      mSolDtlAbrev.Asstring := Tipo;
      mSolDtlidMoneda.AsInteger := idMon;
      if mSolDtlIdMoneda.asInteger = MONEDA_LEGAL then
        mSolDtlTasa.AsFloat := 1.00
      else
        mSolDtlTasa.AsFloat := dm.TasaActual(mSolDtlIdMoneda.AsInteger,mSolFecha.Value);

      IncluirRetenciones(mSolDtlIdDocumento.AsInteger);
    end
    else
      raise Exception.Create('Este documento no existe');
  end;
end;

procedure TSolDM.DataModuleCreate(Sender: TObject);
var
  st: Variant;
begin
  NoValidar := false;
  FLoading := False;
  MONEDA_LEGAL := dm.MonedaLegal();

  rsEnts.Open();
  rsTiposRets.Open();
  rsListaRetDGII.Open();
  
  st := dm.GetDefault('SOL_DEF_STATUS');
  if st <> NULL then
    FDefaultStatus := st
  else
    FDefaultStatus := 'A';

end;

procedure TSolDM.mSolidSuplidorValidate(Sender: TField);
begin
  if FLoading then
    exit;

  FLoading := True;
  try
    if mSolidSuplidor.AsInteger <= 0 then begin
      //mSolNombre.AsString := '';
      mSolTelefono1.AsString := '';
      mSolTelefono2.AsString := '';
      mSolDireccion.AsString := '';
      mSolRNC.AsString := '';
    end
    else if not maindm.BuscarSupXId(mSolIdSuplidor.AsInteger) then
      raise Exception.Create('Este suplidor no esta registrado')
    else begin
      mSolNombre.AsString := maindm.rsBuscarSupNombre.AsString;
      mSolTelefono1.AsString := maindm.rsBuscarSupTelefono1.AsString;
      mSolTelefono2.AsString := maindm.rsBuscarSupTelefono2.AsString;
      mSolDireccion.AsString := maindm.rsBuscarSupDireccion.AsString;
      mSolRNC.AsString := maindm.rsBuscarSupRNC.AsString;
    end;

    AbrirBancosSuplidor(mSolIdSuplidor.Value);
    if not rsBancoSuplidor.Eof then begin
       rsBancoSuplidor.Locate('idMoneda;BancoDefault',VarArrayOf([mSolidMoneda.Value,True]), []);
       
       mSolBancoDestino.Value := rsBancoSuplidorBancoCodigo.Value;
       mSolCuentaDestino.Value := rsBancoSuplidorCuenta.Value;
    end
    else begin
       mSolBancoDestino.Clear();
       mSolCuentaDestino.Clear();
    end;
  finally
    FLoading := False;
  end;
end;

procedure TSolDM.AbrirSolicitud(const idSol: Integer);
begin
  mSol.ReadOnly := False;
  mSolDtl.ReadOnly := False;
  FLoading := True;
  with rsSol do begin
    Close();
    Parameters[01].Value := idSol;
    Open();
    if Eof then
      raise Exception.Create('Esta solicitud no existe')
    else begin
      mSol.Close();
      mSol.Open();
      mSol.LoadFromDataSet(rsSol,[mtcpoAppend]);

      mSolDtl.Close();
      mSolDtl.Open();

      rsSolDtl.Close();
      rsSolDtl.Parameters[01].Value := idSol;
      rsSolDtl.Open();
      try
        mSolDtl.LoadFromDataSet(rsSolDtl, [mtcpoAppend]);
      finally
        rsSolDtl.Close();
      end;

      rsSolRets.Close();
      rsSolRets.Parameters[1].Value := idSol;
      rsSolRets.Open();

      mSolRets.Close();
      mSolRets.Open();
      mSolRets.Filtered := True;
      mSolRets.LoadFromDataSet(rsSolRets,[mtcpoAppend]);

      FiltrarRetenciones(mSolDtlidDocumento.AsInteger);

    end;
    Close();
  end;
  FLoading := False;
  
  mSol.ReadOnly := (mSolStatus.AsString = '2') or (mSolStatus.Asstring = 'C');

  mSolDtl.ReadOnly := mSol.ReadOnly;
end;

procedure TSolDM.GuardarSolicitud;
begin
  if mSolStatus.AsString = '2' then
    Exit;

  if mSolIdSolicitud.AsInteger > 0 then begin
    cBorrarSolDtl.Parameters[1].Value := mSolIdSolicitud.AsInteger;
    cBorrarSolDtl.Execute();
  end;

  with cGuardarSol do begin
    Parameters[01].Value := mSolIdSolicitud.AsInteger;
    Parameters[02].Value := mSolNumero.AsInteger;
    Parameters[03].Value := mSolFecha.AsDateTime;
    Parameters[04].Value := mSolIdSuplidor.AsInteger;
    Parameters[05].Value := mSolNombre.AsString;
    Parameters[06].Value := mSolTotal.AsCurrency;
    Parameters[07].Value := mSolConcepto.Asstring;
    Parameters[08].Value := mSolStatus.Asstring;
    Parameters[09].Value := mSolUsuario.Asstring;
    Parameters[10].Value := dm.DBFechaHora();
    Parameters[11].Value := mSolValidadaPor.Value;
    Parameters[12].Value := mSolValidadaEn.Value;
    Parameters[13].Value := mSolRevisadaPor.Value;
    Parameters[14].Value := mSolRevisadaEn.Value;
    Parameters[15].Value := mSolValidadaFinalPor.Value;
    Parameters[16].Value := mSolValidadaFinalEn.Value;
    Parameters[17].Value := mSolNotaAdicional.Value;
    Parameters[18].Value := mSolmostrarEncxp.Value;
    Parameters[19].Value := mSolGUIDSolicitud.Value;
    Parameters[21].Value := mSolTasa.AsFloat;
    Parameters[22].Value := mSolidCuentabanco.AsInteger;
    Parameters[23].Value := mSolidMoneda.AsInteger;
    Parameters[24].Value := mSolTipoAbono.Value;
    Parameters[25].Value := mSolBancoDestino.Value;
    Parameters[26].Value := mSolCuentaDestino.Value;
    Parameters[27].Value := mSolTipoSolicitud.Value;
    Parameters[28].Value := mSolidCuentaBancoDestino.Value;
    if mSolidOrden.isnull then
      Parameters[29].Value := NULL
    else
      Parameters[29].Value := mSolidOrden.Value;

    Parameters[30].Value := mSolOrdenCompra.Value;
    Parameters[31].Value := mSolIdPagoForma.Value;    

    Execute();

    if not (mSol.State in dsEditModes) then
      mSol.Edit();

    mSolIdSolicitud.AsInteger := Parameters[20].Value;
  end;

  with cBorrarRets do begin
    Parameters[1].Value := mSolIdSolicitud.Value;
    Execute();
  end;

  with mSolDtl do begin
    First();
    while not Eof do Begin
      if mSolDtlValor.AsCurrency > 0 then begin
        cGuardarSolDtl.Parameters[01].Value := mSolIdSolicitud.AsInteger;
        cGuardarSolDtl.Parameters[02].Value := mSolDtlIdDocumento.AsInteger;
        cGuardarSolDtl.Parameters[03].Value := mSolDtlValor.AsCurrency;
        cGuardarSolDtl.Parameters[04].Value := mSolDtlTasa.AsFloat;
        cGuardarSolDtl.Execute();

        FiltrarRetenciones(mSolDtlIdDocumento.AsInteger);

        mSolRets.First();
        while not mSolRets.eof do begin
          if mSolRetsValor.AsCurrency > 0 then begin
            cInsRet.Parameters[1].Value := mSolIdSolicitud.Value;
            cInsRet.Parameters[2].Value := mSolRetsidSolicitudRet.Value;
            cInsRet.Parameters[3].Value := mSolRetsIdDocumento.AsInteger;
            cInsRet.Parameters[4].Value := mSolRetsPorcentaje.AsFloat;
            cInsRet.Parameters[5].Value := mSolRetsValor.AsCurrency;
            cInsRet.Parameters[6].Value := mSolRetsIdRetencion.AsInteger;
            cInsRet.Parameters[7].Value := mSolRetsRetencion.Value;
            cInsRet.Parameters[8].Value := mSolRetsIdTipoRetencionDGII.Value;           

            cInsRet.Execute();
          end;

          mSolRets.Next();
        end;
      end;
      
      Next();
    end;
  end;

  if mSol.State in dsEditModes then
    mSol.Post();
end;

procedure TSolDM.NuevaSolicitud(const Tipo: Integer = 1);
var
  bco: string;
begin
  bco := dm.GetDefaultStr('BANCO_DEFAULT');

  mSol.ReadOnly := False;
  mSolDtl.ReadOnly := False;
  mSol.Close();
  mSol.Open();

  mSolDtl.Close();
  mSolDtl.Open();

  mSolRets.Close();
  mSolRets.Open();

  mSol.Append();
  mSolFecha.Value := Date();
  mSolStatus.AsString := FDefaultStatus;
  mSolUsuario.Value := dm.UsuarioActual;
  mSolGUIDSolicitud.AsGuid := dm.NewGuid();
  mSolMostrarEnCXP.Value := True;
  mSolTasa.Value := 1.0;
  mSolTipoSolicitud.Value := Tipo;

  if bco <> '' then
    mSolIdCuentaBanco.AsString := bco;

end;

procedure TSolDM.CerrarSolicitud;
begin
  mSol.ReadOnly := True;
  mSolDtl.ReadOnly := True;
  mSol.Close();
  mSol.Open();

  mSolDtl.Close();
  mSolDtl.Open();

  mSolRets.Close();
  mSolRets.Open();
end;

procedure TSolDM.AbrirPendientes(const idSup: Integer);
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

  with mSolDtl do begin
    bm := BookMark;
    DisableControls();
    try
      First();
      while not Eof do begin
         if mDocsPendientes.Locate('idDocumento',mSolDtlIdDocumento.AsInteger,[]) then begin
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

procedure TSolDM.ReasignarTasa;
var
  bm: string;
begin
  with mSolDtl do begin
    if not Active then
      Exit;
      
    bm := bookmark;
    DisableControls();
    FLoading := True;
    try
      First();
      while not Eof do begin
        Edit();
        if mSolDtlIdMoneda.asInteger = MONEDA_LEGAL then
          mSolDtlTasa.asFloat := 1.0
        else
          mSolDtlTasa.asFloat := dm.TasaActual(mSolDtlIdMoneda.AsInteger,mSolFecha.Value);
        Post();

        Next();
      end;
      Bookmark := bm;
    finally
      FLoading := False;
      EnableControls();
    end;
  end;
end;

procedure TSolDM.RecalcularRetenciones;
var
  fl: Boolean;
begin
  fl := FLoading;
  FLoading := True;
  with mSolRets do begin
    DisableControls();

    FiltrarRetenciones(mSolDtlIdDocumento.AsInteger);

    First();
    while not Eof do begin
      Edit();
      mSolRetsValor.Value := SimpleRoundTo(mSolDtlValor.AsCurrency * (mSolRetsPorcentaje.AsFloat / 100.00),-2);
      Post();

      Next();
    end;

    First();
    EnableControls();
  end;
  FLoading := fl;
end;

function TSolDM.TotalRetencionDoc: Currency;
var
  tot: Currency;
begin
  tot := 0;
  with mSolRets do begin
    DisableControls();

    FiltrarRetenciones(mSolDtlIdDocumento.AsInteger);

    First();
    while not Eof do begin
      tot := tot + mSolRetsValor.AsCurrency;
      Next();
    end;
    First();
    EnableControls();
  end;
  Result := tot;
end;

procedure TSolDM.CalcularTotalesSol;
var
  tot: Currency;
  tret: Single;
  tasa: Currency;
  bm: string;
begin
  if mSolDtl.Active = false then
    Exit;

  if not mSolmostrarEncxp.AsBoolean then
    Exit;

  RecalcularRetenciones();

  tot := 0;
  tret := 0;
  if mSoltasa.AsFloat = 0 then
    tasa := 1
  else
    tasa := roundTo(mSoltasa.AsFloat,-2);

  with mSolDtl do begin
    bm := BookMark;
    DisableControls();
    try
      First();
      while not Eof do begin
        tot := tot + RoundTo((mSolDtlValor.AsCurrency * RoundTo(mSolDtlTasa.AsFloat,-2)),-2);
        //tret := tret + (SimpleRoundTo(((mSolDtlTotalRetenciones.asFloat / 100.00) * mSolDtlValor.AsCurrency),-2) * mSolDtlTasa.AsFloat);
        tret := tret + (TotalRetencionDoc() * mSolDtlTasa.AsFloat);
        Next();
      end;
    finally
      BookMark := bm;
      EnableControls();
    end;
  end;

  if not (mSol.State in dsEditModes) then
    mSol.Edit();

  if mSolidMoneda.AsInteger = MONEDA_LEGAL then begin
    mSolTotal.AsCurrency := tot;
    mSolTotalNeto.AsCurrency := tot - tret;
  end
  else begin
    mSolTotal.AsCurrency := roundTo(tot / tasa,-2);
    mSolTotalNeto.AsCurrency := RoundTo((tot - tret) / tasa,-2);
  end;
end;

procedure TSolDM.AceptarPendientes;
 var
   conc: string;// cResto: Currency;
   oleConc: Variant;
begin
  //cResto := 0; //mSolTotal.AsCurrency;
  FLoading := True;
  //conc := 'Pago de los documentos ';
  try
    with mDocsPendientes do begin
      First();
      while (not Eof) do begin //and (cResto > 0) do begin
        if mDocsPendientesSel.AsBoolean then begin
          if not mSolDtl.Locate('IdDocumento',mDocsPendientesIdDocumento.AsInteger,[]) then begin
            mSolDtl.Append();
            mSolDtlidDocumento.AsInteger := mDocsPendientesidDocumento.AsInteger;
            mSolDtlFecha.AsDateTime := mDocsPendientesFecha.AsDateTime;
            mSolDtlReferencia.Asstring := mDocsPendientesReferencia.AsString;
            mSolDtlAbrev.AsString := mDocsPendientesAbrev.AsString;
            mSolDtlTotal.AsCurrency := mDocsPendientesValor.AsCurrency;
            mSolDtlValor.AsCurrency := mDocsPendientesPendiente.AsCurrency;
            mSolDtlTotalRetenciones.asFloat := mDocsPendientesTotalRetenciones.AsFloat;
            mSolDtlIdMoneda.AsInteger := mDocsPendientesIdMoneda.asInteger;
            if mDocsPendientesIdMoneda.asInteger = MONEDA_LEGAL then
              mSolDtltasa.AsFloat := 1.00
            else
              mSolDtlTasa.AsFloat := dm.TasaActual(mSolDtlidMoneda.asInteger,mSolFecha.AsDateTime) ;
              
            conc := conc + mDocsPendientesReferencia.AsString + ', ';
           { if cResto > mDocsPendientesPendiente.AsCurrency then begin
              mSolDtlValor.AsCurrency := mDocsPendientesPendiente.AsCurrency;
              cResto := cResto - mDocsPendientesPendiente.AsCurrency;
            end
            else begin
              mSolDtlValor.AsCurrency := cResto;
              cResto := 0;
            end;  }

            IncluirRetenciones(mSolDtlIdDocumento.AsInteger);

            mSolDtl.Post();
          end;
          //else
          //  cResto := cResto - mSolDtlValor.AsCurrency;
        end;
        Next();
      end;
    end;

    oleConc := dm.GetDefault('CONCEPTO_SOL');

    if conc <> '' then
      delete(conc,length(conc) - 1,2);

    Clipboard.AsText := conc;

    if oleConc <> NULL then begin
      if oleConc <> '' then begin
        if not (mSol.State in dsEditModes) then
          mSol.Edit();

        mSolConcepto.Value := oleConc + conc;
      end;
    end;

    CalcularTotalesSol();
  finally
    FLoading := False;
  end;
end;

procedure TSolDM.mDocsPendientesCalcFields(DataSet: TDataSet);
begin
  mDocsPendientesPendiente.AsCurrency := mDocsPendientesValor.AsCurrency - mDocsPendientesPagado.AsCurrency;
end;

function TSolDM.GenerarCheque(const idSol, idBco: Integer): Integer;
begin
  with cGenCk do begin
    Parameters[1].Value := idSol;
    Parameters[2].Value := idBco;
    Parameters[3].Value := DateOf(maindm.DBFecha());
    Execute();
    if (Parameters[0].Value = NULL) or (Parameters[0].Value <> 0) then
      Result := -1
    else
      Result := Parameters[4].Value;
  end;
end;

procedure TSolDM.ValidarSolicitudID(const idSol: Integer; out Num: Integer;
                                  out Nom: string; out fec: TDateTime;
                                  out Valor: Currency; out st: string;
                                  out TipoSol: Integer; out idCuenta: integer);
begin
  with rsSol do begin
    Close();
    Parameters[01].Value := idSol;
    Open();
    if Eof then begin
      Num := -1;
      Nom := '';
      fec := 0;
      Valor := 0;
      st := 'X';
      TipoSol := 0;
      idCuenta := 0;
    end
    else begin
      Num := rsSolNumero.AsInteger;
      if rsSolTipoSolicitud.AsInteger = 3 then
        Nom := rsSolCuentaTransfer.Value
      else
        Nom := rsSolNombre.asString;
      fec := rsSolFecha.asDateTime;
      Valor := rsSolTotal.AsCurrency;
      st := rsSolStatus.Asstring;
      TipoSol := rsSolTipoSolicitud.AsInteger;
      idCuenta := rsSolIdCuentaBanco.AsInteger;
    end;
    Close();
  end;
end;

procedure TSolDM.ValidarSolicitud(const Num: Integer; out idSol: Integer;
                                  out Nom: string; out fec: TDateTime;
                                  out Valor: Currency; out st: string);
begin
  with rsSolXNumero do begin
    Close();
    Parameters[01].Value := Num;
    Open();
    if Eof then begin
      idSol := -1;
      Nom := '';
      fec := 0;
      Valor := 0;
      st := 'X';
    end
    else begin
      idSol := rsSolXNumeroidSolicitud.AsInteger;
      Nom := rsSolXNumeroNombre.asString;
      fec := rsSolXNumeroFecha.asDateTime;
      Valor := rsSolXNumeroTotal.AsCurrency;
      st := rsSolXNumeroStatus.Asstring;
    end;
    Close();
  end;
end;
procedure TSolDM.AbrirSolsPendientes;
begin
  with rsSolsPend do begin
    Close();
    Open();
  end;

  with mSolsPend do begin
    Close();
    Open();
    LoadFromDataSet(rsSolsPend,[mtcpoAppend]);
  end;
end;


procedure TSolDM.mSolDtlAfterPost(DataSet: TDataSet);
begin
  if not FLoading then
    CalcularTotalesSol();
end;

procedure TSolDM.BorrarSolicitud(const idSol: Integer);
begin
  with cBorrarSolicitud do begin
    Parameters[1].Value := idSol;
    Execute();
  end;
end;

procedure TSolDM.rsRPTSolCalcFields(DataSet: TDataSet);
begin
  rsRPTSolTotalNeto.AsCurrency := rsRPTSolTotal.AsCurrency - rsRPTSolTotalRetenciones.AsCurrency;
end;

procedure TSolDM.mSolNombreValidate(Sender: TField);
begin
  if not FLoading then begin
    if rsEnts.Locate('NOMBRE',mSolNombre.AsString,[loCaseInsensitive]) then
      mSolIdSuplidor.AsInteger := rsEntsIdSuplidor.AsInteger
    else
      mSolidSuplidor.AsInteger := -1;
  end;
end;

procedure TSolDM.mSolDtlNewRecord(DataSet: TDataSet);
begin
  if mSol.Active then
    mSolDtlTasa.Value := mSolTasa.AsFloat;
end;

procedure TSolDM.mSolidMonedaValidate(Sender: TField);
begin
  if FLoading then
    Exit;

  if mSolIdMoneda.AsInteger = MONEDA_LEGAL then
    mSoltasa.AsFloat := 1.00
  else
    mSolTasa.Asfloat := dm.TasaActual(mSolIdMoneda.AsInteger, mSolFecha.AsDateTime);

  if Codificacion <> nil then
    Codificacion.idMoneda := mSolidMoneda.asInteger;
end;

procedure TSolDM.mSolDtlidMonedaValidate(Sender: TField);
begin
  if FLoading then
    Exit;

  if mSolDtlIdMoneda.AsInteger = MONEDA_LEGAL then
    mSoltasa.AsFloat := 1.00
  else
    mSolDtlTasa.Asfloat := mSolTasa.AsFloat;
end;

procedure TSolDM.mSolidCuentabancoValidate(Sender: TField);
begin
  if FLoading then
    Exit;

  if not rsbancos.Locate('idCuentaBanco',mSolIdCuentaBanco.asInteger,[]) then
    raise Exception.Create('Este banco no existe')
  else begin
    mSolidMoneda.Value := rsbancosIdMoneda.Value;
    CalcularTotalesSol();
  end;

  CodificarBanco();
end;

procedure TSolDM.mSolTasaValidate(Sender: TField);
begin
  if FLoading then
    Exit;
//  if not FLoading then
//  ReasignarTasa();
  CalcularTotalesSol();

  if Codificacion <> nil then
    Codificacion.Tasa := mSolTasa.AsCurrency;
end;

procedure TSolDM.AbrirBancosSuplidor(const idSup: Integer);
begin
  with rsBancoSuplidor do begin
    Close();
    Parameters[1].Value := idSup;
    Open();
  end;
end;

function TSolDM.ProcesarSolicitud(const idSol: Integer): Integer;
begin
  with cProcesarSol do begin
    Parameters[1].Value := idSol;
    Execute();
    if (Parameters[0].Value = NULL) or (Parameters[0].Value <> 0) then
      Result := -1
    else
      Result := Parameters[2].Value;
  end;
end;

procedure TSolDM.CancelarSolicitud(const idSol: Integer; const st: string; const usr: string; const newst: string = 'C');
begin
  with cValidar do begin
    Parameters[1].Value := idSol;
    Parameters[2].Value := st;
    Parameters[3].Value := newst;
    Parameters[4].Value := dm.UsuarioActual;
    Execute();
  end;
end;

procedure TSolDM.mSolRetsPorcentajeValidate(Sender: TField);
begin
  if not FLoading then begin
    FLoading := True;
    try
      mSolRetsValor.Value := SimpleRoundTo(mSolDtlValor.Value * (mSolRetsPorcentaje.AsFloat / 100.00),-2);
    finally
      FLoading := False;
    end;
  end;
end;

procedure TSolDM.mSolRetsValorValidate(Sender: TField);
begin
  if not FLoading then begin
    FLoading := True;
    try
      mSolRetsPorcentaje.asFloat := mSolRetsValor.AsCurrency / mSolDtlValor.AsCurrency * 100.00;
    finally
      FLoading := False;
    end;
  end;
end;

procedure TSolDM.mSolRetsNewRecord(DataSet: TDataSet);
begin
  mSolRetsidSolicitudRet.AsGuid := dm.NewGuid();
  mSolRetsidSolicitud.Value := mSolidSolicitud.Value;
  mSolRetsidDocumento.Value := mSolDtlidDocumento.Value;
end;

procedure TSolDM.mSolRetsidRetencionValidate(Sender: TField);
begin
  if FLoading then
    Exit;

  if rsTiposRets.Locate('idRetencion',mSolRetsIdRetencion.AsInteger,[]) then
    mSolRetsPorcentaje.asFloat := rsTiposRetsPorcentaje.asFloat;
end;

procedure TSolDM.mSolDtlAfterScroll(DataSet: TDataSet);
var
  i: Integer;
begin
  if not FLoading then begin
    if mSolDtl.Active and (mSolDtl.RecordCount > 0) then
      i := mSolDtlIdDocumento.AsInteger
    else
      i := -1;
    FiltrarRetenciones(i);
  end;
end;

procedure TSolDM.mSolTotalNetoValidate(Sender: TField);
begin
  if FLoading then
    Exit;

  if mSolmostrarEncxp.Value then
    Exit;

  CodificarBanco();
end;

procedure TSolDM.CodificarBanco;
begin
  if rsBancos.Locate('idCuentaBanco',mSolIdCuentaBanco.AsInteger,[]) then begin
    if Codificacion <> nil then begin
      Codificacion.BorrarAutomaticas();
      if mSolTotalNeto.AsCurrency > 0 then
        Codificacion.AgregarLinea(rsBancosIdCuentaMayor.Value,'',2,mSolTotalNeto.AsCurrency,True);
    end;
  end;
end;

procedure TSolDM.mSolTotalValidate(Sender: TField);
begin
  if FLoading then
    Exit;

  if not mSolMostrarEnCXP.Value then
    mSolTotalNeto.Value := mSolTotal.Value;
end;

procedure TSolDM.mSolOrdenCompraValidate(Sender: TField);
begin
  if sender.Value = '' then begin
    msol.edit;
    mSOLidOrden.clear;
  end else begin
    if  not(NoValidar) then begin
      SetidOrden(sender.Value);
    end;
  end;
end;


Procedure TSolDM.SetidOrden(numeroOC : variant);
var
  x : variant;
begin
  x := uutiles.ReturnValue('ocOrdenes','idOrden','Numero=' + NumeroOC);
  if x = '' then
    raise exception.create('No existe este numero de OC')
  else begin
    if x <> mSolidOrden.value then begin
       mSol.edit;
       mSolidOrden.value := x;
    end;
  end;
end;

end.

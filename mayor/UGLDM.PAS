unit ugldm;

interface

uses
  SysUtils, Forms, Classes, DB, ADODB, kbmMemTable, Dialogs, DateUtils,
  ppComm, ppRelatv, ppDB, ppDBPipe, Variants;

const
  NOCUENTA = 'x*x*x*x*';

type
  Tgldm = class(TDataModule)
    rsCatalogo: TADODataSet;
    rsCatalogoidCuenta: TStringField;
    rsCatalogoDescripcion: TStringField;
    rsCatalogoOrigen: TStringField;
    rsCatalogoCtaDescargue: TStringField;
    rsCuenta: TADODataSet;
    rsCuentaidCuenta: TStringField;
    rsCuentaDescripcion: TStringField;
    rsCuentaOrigen: TStringField;
    rsCuentaNivel: TSmallintField;
    rsCuentaCtadescargue: TStringField;
    rsCuentaFechaCreacion: TDateTimeField;
    mCuenta: TkbmMemTable;
    mCuentaidCuenta: TStringField;
    mCuentaDescripcion: TStringField;
    mCuentaNivel: TSmallintField;
    mCuentaCtaDescargue: TStringField;
    mCuentaFechaCreacion: TDateTimeField;
    cmdGuardarCta: TADOCommand;
    rsCatalogoDetalle: TBooleanField;
    rsCuentaDetalle: TBooleanField;
    mCuentaDetalle: TBooleanField;
    mCuentaOrigen: TStringField;
    rsCuentaMadre: TStringField;
    mCuentaMadre: TStringField;
    rsEntrada: TADODataSet;
    rsEntradaNumeroEntrada: TStringField;
    rsEntradaNumeroDocumento: TStringField;
    rsEntradaFecha: TDateTimeField;
    rsEntradaConcepto: TBlobField;
    rsEntradaTipoEntrada: TStringField;
    rsEntDtl: TADODataSet;
    rsEntDtlidCuenta: TStringField;
    rsEntDtlDebCre: TSmallintField;
    rsEntDtlValor: TBCDField;
    rsEntDtlReferencia: TStringField;
    rsEntDtlDescripcion: TStringField;
    rsEntDtlDebito: TBCDField;
    rsEntDtlCredito: TBCDField;
    rsEntDtlDescrCta: TStringField;
    mEntrada: TkbmMemTable;
    mEntdtl: TkbmMemTable;
    cmdBorrarEntDtl: TADOCommand;
    cmdGuardarEnt: TADOCommand;
    cmdGuardarEntDtl: TADOCommand;
    rsTipos: TADODataSet;
    rsTiposTipoEntrada: TStringField;
    rsTiposDescripcion: TStringField;
    rsCuentaTipoNivel: TStringField;
    mCuentaTipoCuenta: TStringField;
    cmdBorrarCuenta: TADOCommand;
    rsCatalogoNivel: TSmallintField;
    rsCatalogoTipoNivel: TStringField;
    mTotales: TkbmMemTable;
    mCuentaCtaVieja: TStringField;
    rsCuentaCtaVieja: TStringField;
    spTotales: TADOStoredProc;
    spTotalesidCuenta: TStringField;
    spTotalesDescripcion: TStringField;
    spTotalesOrigen: TStringField;
    spTotalesTipo: TStringField;
    spTotalesNivel: TIntegerField;
    spTotalesBalanceAnterior: TBCDField;
    spTotalesTotalDB: TBCDField;
    spTotalesTotalCR: TBCDField;
    mTotalesidCuenta: TStringField;
    mTotalesDescripcion: TStringField;
    mTotalesOrigen: TStringField;
    mTotalesTipo: TStringField;
    mTotalesNivel: TIntegerField;
    mTotalesBalanceAnterior: TCurrencyField;
    mTotalesTotalDB: TCurrencyField;
    mTotalesTotalCR: TCurrencyField;
    mTotalesGrupo: TStringField;
    mTotalesNivel0: TStringField;
    mTotalesDetBalAnt: TCurrencyField;
    mTotalesDetTDB: TCurrencyField;
    mTotalesDetTCR: TCurrencyField;
    mTotalesDetBalAct: TCurrencyField;
    mTotalesNivel01: TStringField;
    spEstadosFinancieros: TADOStoredProc;
    rsEstados: TADODataSet;
    rsEstadosidEstado: TIntegerField;
    rsEstadosDescripcion: TStringField;
    spEstadosFinancierosGrupo: TStringField;
    spEstadosFinancierosidGrupo: TIntegerField;
    spEstadosFinancierosidItem: TIntegerField;
    spEstadosFinancierosDescripcion: TStringField;
    spEstadosFinancierosOrden: TWordField;
    spEstadosFinancierosNegrita: TBooleanField;
    spEstadosFinancierosLiteral: TBooleanField;
    spEstadosFinancierosBalance: TBCDField;
    spEstadosFinancierosCtaEstado: TStringField;
    spEstadosFinancierosCuenta: TStringField;
    spEstadosFinancierosDebCre: TWordField;
    spEstadosFinancierosSeccion: TStringField;
    spMayor: TADOStoredProc;
    spMayoridCuenta: TStringField;
    spMayorNumeroEntrada: TStringField;
    spMayorConcepto: TBlobField;
    spMayorFecha: TDateTimeField;
    spMayorTipoEntrada: TStringField;
    spMayorDebito: TBCDField;
    spMayorCredito: TBCDField;
    spMayorSecuencia: TIntegerField;
    BalanzaDS: TDataSource;
    rsListaDiario: TADODataSet;
    rsListaDiarioidTrans: TIntegerField;
    rsListaDiarioidDocumento: TIntegerField;
    rsListaDiarioKeyCol: TStringField;
    rsListaDiarioFecha: TDateTimeField;
    rsListaDiarioReferencia: TStringField;
    rsListaDiarioSistema: TStringField;
    rsListaDiarioidCuenta: TStringField;
    rsListaDiarioDebito: TBCDField;
    rsListaDiarioCredito: TBCDField;
    rsListaDiarioDescripcion: TStringField;
    cmdGenDiario: TADOCommand;
    rsBuscarED: TADODataSet;
    mTotalesSignedBal: TCurrencyField;
    spTotalesBalanceActual: TBCDField;
    mTotalesBalanceActual: TCurrencyField;
    rsResumen: TADODataSet;
    rsResumenTotalActivos: TBCDField;
    rsResumenTotalPasivos: TBCDField;
    rsResumenTotalCapital: TBCDField;
    rsResumenTotalIngresos: TBCDField;
    rsResumenTotalCostos: TBCDField;
    rsResumenTotalGastos: TBCDField;
    rsResumenPruebaCero: TBCDField;
    spMayorDescripcion: TStringField;
    spMayorReferencia: TStringField;
    QCierre: TADODataSet;
    QCierreDiaCierre: TDateTimeField;
    spGetDefaults: TADOStoredProc;
    mCuentaCtaCierre: TStringField;
    rsCuentaCtaCierre: TStringField;
    dsConfig: TDataSource;
    plConfig: TppDBPipeline;
    rsMoneda: TADODataSet;
    rsMonedaidMoneda: TIntegerField;
    rsMonedaMoneda: TStringField;
    rsMonedaCursoLegal: TBooleanField;
    cHacerBackup: TADOCommand;
    rsEntradaidEntrada: TGuidField;
    mEntradaidEntrada: TGuidField;
    mEntradaNumeroEntrada: TStringField;
    mEntradaNumeroDocumento: TStringField;
    mEntradaFecha: TDateTimeField;
    mEntradaConcepto: TBlobField;
    mEntradaTipoEntrada: TStringField;
    mEntradaTotalDB: TCurrencyField;
    mEntradaTotalCR: TCurrencyField;
    mEntradaDiferencia: TCurrencyField;
    rsEntDtlidEntradaDetalle: TGuidField;
    rsEntDtlidEntrada: TGuidField;
    rsEntDtlSecuencia: TIntegerField;
    rsEntDtlidCentroCosto: TGuidField;
    rsEntDtlidPartida: TStringField;
    mEntdtlidEntradaDetalle: TGuidField;
    mEntdtlidEntrada: TGuidField;
    mEntdtlSecuencia: TIntegerField;
    mEntdtlidCuenta: TStringField;
    mEntdtlDebCre: TSmallintField;
    mEntdtlValor: TBCDField;
    mEntdtlReferencia: TStringField;
    mEntdtlDescripcion: TStringField;
    mEntdtlDebito: TBCDField;
    mEntdtlCredito: TBCDField;
    mEntdtlidCentroCosto: TGuidField;
    mEntdtlidPartida: TStringField;
    mEntdtlDescrCta: TStringField;
    spMayorIdEntrada: TGuidField;
    mEntdtlCentroCosto: TStringField;
    rsEntDtlCentroCosto: TStringField;
    cRestaurarBackup: TADOCommand;
    cBorrarEntrada: TADOCommand;
    mEntdtlidAuxiliar: TStringField;
    rsBuscarAux: TADODataSet;
    rsEntDtlidAuxiliar: TStringField;
    spTotalesRango: TADOStoredProc;
    spTotalesRangoidCuenta: TStringField;
    spTotalesRangoDescripcion: TStringField;
    spTotalesRangoOrigen: TStringField;
    spTotalesRangoTipo: TStringField;
    spTotalesRangoNivel: TIntegerField;
    spTotalesRangoBalanceAnterior: TBCDField;
    spTotalesRangoTotalDB: TBCDField;
    spTotalesRangoTotalCR: TBCDField;
    spTotalesRangoBalanceActual: TBCDField;
    mCuentaSoloAuxiliares: TBooleanField;
    rsCatalogoSoloAuxiliares: TBooleanField;
    rsCuentaStatus: TStringField;
    rsCuentaFechaStatus: TDateTimeField;
    rsCuentaSoloAuxiliares: TBooleanField;
    rsCatalogoStatus: TStringField;
    rsCatalogoFechaStatus: TDateTimeField;
    mCuentaStatus: TStringField;
    mCuentaFechaStatus: TDateTimeField;
    mEntradaUsuario: TStringField;
    mEntradaFechaRegistro: TDateTimeField;
    rsEntradaUsuario: TStringField;
    rsEntradaFechaRegistro: TDateTimeField;
    cActualizarGasto: TADOCommand;
    mEntdtlTipoGasto: TStringField;
    rsEntDtlTipoGasto: TStringField;
    procedure mCuentaNewRecord(DataSet: TDataSet);
    procedure mEntdtlidCuentaValidate(Sender: TField);
    procedure mEntdtlAfterPost(DataSet: TDataSet);
    procedure mTotalesCalcFields(DataSet: TDataSet);
    procedure mEntdtlDebitoValidate(Sender: TField);
    procedure mEntradaNumeroEntradaValidate(Sender: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure mEntdtlNewRecord(DataSet: TDataSet);
    procedure mEntdtlidAuxiliarValidate(Sender: TField);
    procedure mCuentaStatusValidate(Sender: TField);
    procedure mEntdtlCentroCostoValidate(Sender: TField);
    procedure mEntdtlidCentroCostoValidate(Sender: TField);
  private
    FLoading : Boolean;
//    FGlobalDesde: TDateTime;
//    FGlobalHasta: TDateTime;
 //   FGuardarDescuadrada: Boolean;
    procedure BorrarDetalleEntrada(const Entid: Variant);
    procedure SubirDetalleEntrada;
    procedure BajarDetalleEntrada;

    procedure ActualizarTotalesEntrada;

//    function BuscarConexion: string;
    function GetGlobalDesde: TDateTime;
    function GetGlobalHasta: TDateTime;
    procedure SetGlobalDesde(const Value: TDateTime);
    procedure SetGlobalHasta(const Value: TDateTime);
  //  procedure EndCargarTotales(sender: TObject);
    { Private declarations }
  public
    { Public declarations }
    property GlobalDesde: TDateTime read GetGlobalDesde write SetGlobalDesde;
    property GlobalHasta: TDateTime read GetGlobalHasta write SetGlobalHasta;

    function NewGuid: TGUID;
    function BuscarCuenta(const idcta: string): string;
    procedure SubirCuenta(const idCta: string);
    procedure BajarCuenta();
    procedure CrearCuenta();
    procedure CrearSubCuenta(const idCta: string);
    procedure BorrarCuenta(const idCta: string);

    procedure BajarEntrada;
    procedure SubirEntrada(const idEnt: Variant);
    procedure NuevaEntrada;
    procedure EditarEntrada;
    procedure CerrarEntrada;

    procedure BorrarEntrada(const idEnt: Variant);

    procedure CargarTotales(const Desde,Hasta: TDateTime;
                            const msk: string = '%';
                            const Nvl: integer = 55); overload;
    procedure CargarTotales(const Desde,Hasta: TDateTime;
                            const ctadesde,ctahasta: string;
                            const Nvl: integer = 55); overload;
                            
    procedure BeginCargarTotales(const Desde,Hasta: TDateTime; const msk: string = '%'; const Nvl: integer = 55);

    procedure AbrirMayorGeneral(const Desde,Hasta: TDateTime;
                            const msk: string = '%');
    procedure AbrirListaDiario(const idCta: string; const Desde, Hasta: TDateTime);
    function VerificarEntrada(const Num: string; const fec: TDateTime; const eid: Variant): Boolean;

//    function Cierre: TDateTime;

//    property GuardarDescuadrada: Boolean read FGuardarDescuadrada;
    procedure HacerBackup(const fn: string);
    function GetDefault(Clave: String): variant;
    function GetDefaultStr(Clave: String): string;
  end;

var
  gldm: Tgldm;

function Confirmar(mensaje: string): Boolean;

implementation

uses Udata;//, uOpenDSThread;

{$R *.dfm}

{ Tgldm }

procedure Tgldm.BajarCuenta;
begin
  // verif. datos requeridos luego
  with cmdGuardarCta do begin
    Parameters[01].Value := Trim(mCuentaIdCuenta.AsString);
    Parameters[02].Value := mCuentaDescripcion.Value;

{    if mCuentaOrigen.Value = 'Debito' then
      Parameters[3].Value := 'D'
    else
      Parameters[3].Value := 'C';
}

    Parameters[03].Value := mCuentaOrigen.Value;
    Parameters[04].Value := mCuentaNivel.Value;
    Parameters[05].Value := mCuentaCtaDescargue.Value;
    Parameters[06].Value := Copy(mCuentaTipoCuenta.AsString,1,1);
    Parameters[07].Value := mCuentaCtaCierre.AsString;

    Parameters[08].Value := mCuentaSoloAuxiliares.Value;
    Parameters[09].Value := mCuentaStatus.Value;
    Parameters[10].Value := mCuentaFechaStatus.Value;
    Execute();
  end;
end;

procedure Tgldm.CrearCuenta;
begin
  mCuenta.Close();
  mCuenta.Open();

  mCuenta.Append();
end;

procedure Tgldm.CrearSubCuenta(const idCta: string);
begin
  with rsCuenta do begin
    Close();
    Parameters[0].Value := idCta;
    Open();
    if Eof then
      raise Exception.Create('Esta cuenta no existe')
  end;

  mCuenta.Close();
  mCuenta.Open();
  mCuenta.Append();
  mCuentaCtaDescargue.Value := idCta;
  mCuentaMadre.Value := rsCuentaDescripcion.Value;

  if rsCuentaOrigen.Value = 'D' then
    mCuentaOrigen.Value := 'Debito'
  else
    mCuentaOrigen.Value := 'Credito';

  mCuentaNivel.Value := rsCuentaNivel.AsInteger + 1;
  rsCuenta.Close();
end;

procedure Tgldm.SubirCuenta(const idCta: string);
begin
  with rsCuenta do begin
    Close();
    Parameters[0].Value := idCta;
    Open();
    if Eof then
      raise Exception.Create('Esta cuenta no existe')
  end;

  mCuenta.Close();
  mCuenta.Open();
  mCuenta.Append();
  mCuentaIdCuenta.Value := rsCuentaidCuenta.Asstring;
  mCuentaDescripcion.Value := rsCuentaDescripcion.AsString;
  mCuentaCtaDescargue.Value := rsCuentaCtaDescargue.AsString;
  mCuentaMadre.Value := rsCuentaMadre.Asstring;
  mCuentaCtaCierre.AsString := rsCuentaCtaCierre.AsString;
  mCuentaSoloAuxiliares.Value := rsCuentaSoloAuxiliares.Value;
  mCuentaStatus.Value := rsCuentaStatus.Value;
  mCuentaFechaStatus.Value := rsCuentaFechaStatus.Value;

{
  if rsCuentaTipoNivel.Asstring = 'C' then
    mCuentaTipoCuenta.AsString := 'Control'
  else if rsCuentaTipoNivel.Asstring = 'S' then
    mCuentaTipoCuenta.AsString := 'Sub Control'
  else if rsCuentaTipoNivel.Asstring = 'T' then
    mCuentaTipoCuenta.AsString := 'Totales'
  else if rsCuentaTipoNivel.Asstring = 'D' then
    mCuentaTipoCuenta.AsString := 'Detalle';

  if rsCuentaOrigen.Value = 'D' then
    mCuentaOrigen.Value := 'Debito'
  else
    mCuentaOrigen.Value := 'Credito';
}

  mCuentaTipoCuenta.AsString := rsCuentaTipoNivel.Asstring;

  mCuentaOrigen.Value := rsCuentaOrigen.Value;

  mCuentaNivel.Value := rsCuentaNivel.AsInteger;
  rsCuenta.Close();
end;

function Confirmar(mensaje: string): Boolean;
begin
   Result := False; //MessageBox(0,mensaje,'Confirme',MB_YESNO + MB_ICONQUESTION) = ID_YES;
end;


procedure Tgldm.mCuentaNewRecord(DataSet: TDataSet);
begin
  mCuentaFechaCreacion.Value := Date();
  mCuentaDetalle.Value := True;
  mCuentaTipoCuenta.Value := 'Detalle';
  mCuentaNivel.Value := 0;

  // JMB - 20.10.2007 @ 11:03am
  mCuentaStatus.Value :='A';
  mCuentaFechaCreacion.Value := dm.DBFechaHora();
  mCuentaFechaStatus.Value := dm.DBFecha();
  mCuentaSoloAuxiliares.Value := False;
end;

procedure Tgldm.BorrarDetalleEntrada(const Entid: Variant);
begin
  with cmdBorrarEntDtl do begin
    Parameters[1].Value := Entid;
    Execute();
  end;
end;

procedure Tgldm.SubirDetalleEntrada;
var
  ordenar: Variant;
begin
  try
    mEntDtl.DisableControls();
    
    mEntDtl.Close();
    mEntDtl.Open();
    ordenar := GetDefault('ORDENAR_ENTRADA');

    with rsEntDtl do begin
      Close();

      Parameters[0].Value := mEntradaIdEntrada.Value;
      Open();

      if (ordenar = NULL) or (ordenar = '1') then
        Sort := 'DebCre, idCuenta'
      else
        Sort := 'Secuencia';

      while not Eof do begin
        mEntDtl.Append();
        mEntDtlIdCuenta.Value := rsEntDtlIdCuenta.Value;
        mEntDtlIdAuxiliar.Value := rsEntDtlIdAuxiliar.Value;
        mEntDtlReferencia.Value := rsEntDtlReferencia.Value;
        mEntDtlDescripcion.Value := rsEntDtlDescripcion.Value;
        mEntDtlDescrCta.Value := rsEntDtlDescrCta.Value;
        mEntDtlDebCre.Value := rsEntDtlDebCre.Value;
        mEntDtlValor.AsCurrency := rsEntDtlValor.AsCurrency;
        mEntDtlTipoGasto.Value := rsEntDtlTipoGasto.Value;
        if mEntDtlDebCre.Value = 1 then begin
          mEntDtlDebito.AsCurrency := rsEntDtlValor.AsCurrency;
          mEntDtlCredito.AsCurrency := 0;
        end
        else begin
          mEntDtlCredito.AsCurrency := rsEntDtlValor.AsCurrency;
          mEntDtlDebito.AsCurrency := 0;
        end;
        mEntDtlIdCentroCosto.Value := rsEntDtlIdCentroCosto.Value;
        mEntDtlCentroCosto.Value := rsEntDtlCentroCosto.Value;
        mEntDtlIdPartida.Value := rsEntDtlIdPartida.Value;
        mEntDtl.Post();
        Next();
      end;
    end;
  finally
    mEntDtl.EnableControls();
  end;
end;

procedure Tgldm.BajarDetalleEntrada;
begin
  with mEntDtl do begin
    First();
    while not Eof do begin
      if Trim(mEntDtlIdCuenta.Asstring) <> '' then begin
        cmdGuardarEntDtl.Parameters[1].Value := mEntradaIdEntrada.Value;
        cmdGuardarEntDtl.Parameters[2].Value := mEntDtlIdEntradaDetalle.Value;

        cmdGuardarEntDtl.Parameters[3].Value := Trim(mEntDtlIdCuenta.Value);
        cmdGuardarEntDtl.Parameters[4].Value := Trim(mEntDtlIdAuxiliar.Value);

        if mEntDtlDebito.AsCurrency > 0 then begin
          cmdGuardarEntDtl.Parameters[5].Value := 1;
          cmdGuardarEntDtl.Parameters[6].Value := mEntDtlDebito.AsCurrency;
        end
        else begin
          cmdGuardarEntDtl.Parameters[5].Value := 2;
          cmdGuardarEntDtl.Parameters[6].Value := mEntDtlCredito.AsCurrency;
        end;
        cmdGuardarEntDtl.Parameters[7].Value := mEntDtlReferencia.Value;
        cmdGuardarEntDtl.Parameters[8].Value := mEntDtlDescripcion.Value;

        if mEntDtlIdCentroCosto.Asstring = '' then
          cmdGuardarentDtl.Parameters[9].Value := NULL
        else
          cmdGuardarEntDtl.Parameters[9].Value := mEntDtlIdCentroCosto.Value;

        if mEntDtlIdPartida.Asstring = '' then
          cmdGuardarEntDtl.Parameters[10].Value := NULL
        else
          cmdGuardarEntDtl.Parameters[10].Value := mEntDtlIdPartida.Value;

        cmdGuardarEntDtl.Parameters[11].Value := mEntDtlTipoGasto.Value;

        cmdGuardarEntDtl.Execute();
      end;
      Next();
    end;
    First();
  end;
end;

procedure Tgldm.BajarEntrada;
begin
  if Trim(mEntradaNumeroEntrada.Asstring) = '' then
    raise Exception.Create('No puede guardar una entrada sin numero');

  if not dm.PermitirDescuadre then begin
     if mEntradaDiferencia.AsCurrency <> 0 then
       raise exception.Create('Esta entrada esta descuadrada, por favor verifique!');
  end;

  //if mEntradaEntradaId.Value > 0 then
  dm.Coneccion.BeginTrans();
  try
    try
      mEntDtl.DisableControls();
      BorrarDetalleEntrada(mEntradaIdEntrada.Value);

      with cmdGuardarEnt do begin
        Parameters[1].Value := mEntradaIdEntrada.Value;
        Parameters[2].Value := mEntradaNumeroEntrada.Value;
        Parameters[3].Value := mEntradaNumeroDocumento.Value;
        Parameters[4].Value := Int(mEntradaFecha.Value);
        Parameters[5].Value := mEntradaConcepto.AsString;
        Parameters[6].Value := mEntradaTipoEntrada.Value;
        Parameters[7].Value := 'A'; //status
        Parameters[8].Value := dm.UsuarioActual;
        Execute();
        //mEntradaEntradaid.Value := Parameters[8].Value;
      end;

      BajarDetalleEntrada();

      with cActualizarGasto do begin
        Parameters[1].Value := mEntradaidEntrada.Value;
        Execute();
      end;

      dm.Coneccion.CommitTrans();

      mEntrada.ReadOnly := True;
      mEntDtl.ReadOnly := True;
    finally
      mEntDtl.EnableControls();
    end;
  except
    dm.Coneccion.RollbackTrans();
    raise;
  end;
end;

procedure Tgldm.SubirEntrada(const idEnt: Variant);
begin
  mEntrada.ReadOnly := False;
  mEntdtl.ReadOnly := False;

  FLoading := True;
  mEntrada.Close();
  mEntrada.Open();
  mEntrada.Append();
  with rsEntrada do begin
    Close();
    Parameters[0].Value := idEnt;
    Open();
    if Eof then
      raise Exception.Create('Esta entrada no esta registrada en el sistema')
    else begin
      mEntradaIdEntrada.Value := rsEntradaIdEntrada.Value;
      mEntradaFecha.Value := int(rsEntradaFecha.Value);
      mEntradaNumeroEntrada.Value := rsEntradaNumeroEntrada.Value;
      mEntradaNumeroDocumento.Value := rsEntradaNumeroDocumento.Value;
      mEntradaConcepto.Asstring := rsEntradaConcepto.AsString;
      mEntradaTipoEntrada.Value := rsEntradaTipoEntrada.Value;
      mEntradaUsuario.Value := rsEntradaUsuario.Value;
      mEntradaFechaRegistro.Value := rsEntradaFechaRegistro.Value;
      // mEntradaEstatus.Value := rsEntradaEstatus.Value;
    end;
    Close();
  end;
  SubirDetalleEntrada();
  FLoading := False;
  ActualizarTotalesEntrada();

//  if mEntradaFecha.Value < Cierre() then begin
  mEntrada.ReadOnly := True;
  mEntdtl.ReadOnly := True;
//  end;
end;

procedure Tgldm.mEntdtlidCuentaValidate(Sender: TField);
var
  s: string;
  cta: string;
begin
  if not FLoading then begin
    cta := Trim(mEntDtlidCuenta.Asstring);
    if cta = '' then
      mEntdtlDescrCta.Value := ''
    else begin
      s := BuscarCuenta(cta);
      if s = NOCUENTA then
        raise exception.Create('Esta cuenta no existe')
      else begin
        if Trim(rsCatalogoTipoNivel.Asstring) <> 'D' then
          raise Exception.Create('Esta no es una cuenta de detalle');

        if (rsCatalogoStatus.Value = 'C') then
          raise Exception.Create('Esta esta inactiva');

        if rsCatalogoSoloAuxiliares.Value then
          raise Exception.Create('Esta cuenta no puede ser afectada desde el mayor directamente');
      end;

      mEntDtlDescrCta.Value := s;
    end;
  end;
end;

function Tgldm.BuscarCuenta(const idcta: string): string;
begin
  if rsCatalogo.Locate('idCuenta',idcta,[]) then
    Result := rsCatalogoDescripcion.Value
  else
    Result := NOCUENTA
end;

procedure Tgldm.ActualizarTotalesEntrada;
var
  tdb,tcr,dif: Currency;
  bm: string;
begin
  tdb := 0;
  tcr := 0;
  with mEntDtl do begin
    bm := BookMark;
    DisableControls();
    First();
    while not Eof do begin
      tdb := tdb + mEntDtlDebito.AsCurrency;
      tcr := tcr + mEntDtlCredito.AsCurrency;
      Next();
    end;
    dif := tdb - tcr;
    BookMark := bm;
    EnableControls();
  end;
  mEntradaTotalDb.AsCurrency := tdb;
  mEntradaTotalCr.AsCurrency := tcr;
  mEntradaDiferencia.AsCurrency := dif;
end;

procedure Tgldm.mEntdtlAfterPost(DataSet: TDataSet);
begin
  if not FLoading then
    ActualizarTotalesEntrada();
end;

function Tgldm.NewGuid: TGUID;
var
  g: TGUID;
begin
  CreateGuid(g);
  Result := g;
end;

procedure Tgldm.NuevaEntrada;
begin
  mEntrada.ReadOnly := False;
  mEntdtl.ReadOnly := False;

  mEntrada.Close();
  mEntrada.Open();
  mEntDtl.Close();
  mEntDtl.Open();
  mEntrada.Append();
  mEntradaIdEntrada.asGuid := NewGuid();
  mEntradaFecha.Value := int(Date());
  mEntradaTipoEntrada.Value := 'ED';
  mEntradausuario.Value := dm.UsuarioActual;
  mEntradaFechaRegistro.Value := dm.DBFechaHora();
end;

procedure Tgldm.BorrarCuenta(const idCta: string);
begin
  with cmdBorrarCuenta do begin
    Parameters[1].Value := idCta;
    Execute();
    if Parameters[0].Value = 0 then
      rsCatalogo.Requery;
  end;
end;

procedure Tgldm.CargarTotales(const Desde,Hasta: TDateTime;
                              const ctadesde,ctahasta: string;
                              const Nvl: integer = 55);
begin
  mTotales.DisableControls();
  try
    with spTotalesRango do begin
      Close();
      Parameters[1].Value := int(Desde);
      Parameters[2].Value := int(Hasta);
      Parameters[3].Value := ctadesde;
      Parameters[4].Value := ctahasta;
      Parameters[5].Value := Nvl;
      Open();
    end;
    mTotales.Close();
    mTotales.Open();
    mTotales.LoadFromDataSet(spTotalesRango,[mtcpoAppend]);
    spTotalesRango.Close();

    with rsResumen do begin
      Close();
      Parameters[1].Value := int(Hasta);
      Open();
    end;
  finally
    mTotales.EnableControls();
  end;
end;


procedure Tgldm.BeginCargarTotales(const Desde,Hasta: TDateTime; const msk: string = '%'; const Nvl: integer = 55);
//var
//  t: TOpenDSThread;
begin
{  with spTotales do begin
    Close();
    Parameters[1].Value := int(Desde);
    Parameters[2].Value := int(Hasta);
    Parameters[3].Value := msk;
    Parameters[4].Value := Nvl;
  end;

  t := TOpenDSThread.Create(True, spTotales);
  t.OnEnd := EndCargarTotales;
  t.Resume();
 }
  {    with rsResumen do begin
      Close();
      Parameters[1].Value := int(Hasta);
      Open();
    end;}
end;


procedure Tgldm.CargarTotales(const Desde,Hasta: TDateTime;
                              const msk: string = '%';
                              const Nvl: integer = 55);
begin
  mTotales.DisableControls();
  try
    with spTotales do begin
      Close();
      Parameters[1].Value := int(Desde);
      Parameters[2].Value := int(Hasta);
      Parameters[3].Value := msk;
      Parameters[4].Value := Nvl;

      Open();
    end;
    mTotales.Close();
    mTotales.Open();
    mTotales.LoadFromDataSet(spTotales,[mtcpoAppend]);
    spTotales.Close();

    with rsResumen do begin
      Close();
      Parameters[1].Value := int(Hasta);
      Open();
    end;
  finally
    mTotales.EnableControls();
  end;
end;

procedure Tgldm.mTotalesCalcFields(DataSet: TDataSet);
begin
  mTotalesNivel0.Value := copy(mTotalesIdCuenta.Asstring,1,1);
  mTotalesNivel01.Value := copy(mTotalesIdCuenta.Asstring,1,2);

  if Length(mTotalesNivel01.Value) = 1 then
    mTotalesNivel01.Value := mTotalesnivel01.Value + '1';

  {if Trim(mTotalesOrigen.AsString) = 'D' then
    mTotalesBalanceActual.AsCurrency := mTotalesBalanceAnterior.AsCurrency +
      (mTotalesTotalDB.AsCurrency - mTotalesTotalCR.AsCurrency)
  else
    mTotalesBalanceActual.AsCurrency := mTotalesBalanceAnterior.AsCurrency +
      (mTotalesTotalCR.AsCurrency - mTotalesTotalDB.AsCurrency); }

  mTotalesGrupo.AsString := copy(mtotalesidCuenta.AsString,1,1);
  if Trim(mTotalesTipo.Value) = 'D' then begin
    mTotalesDetBalAnt.Value := mTotalesBalanceAnterior.AsCurrency;
    mTotalesDetTDB.Value := mTotalesTotalDB.AsCurrency;
    mTotalesDetTCR.Value := mTotalesTotalCR.AsCurrency;
    mTotalesDetBalAct.Value := mTotalesBalanceActual.AsCurrency;
    if Trim(mTotalesOrigen.AsString) = 'D' then
      mTotalesSignedBal.AsCurrency := mTotalesBalanceActual.AsCurrency
    else
      mTotalesSignedBal.AsCurrency := mTotalesbalanceActual.AsCurrency * -1;
      //mTotalesSignedBal.AsCurrency := mTotalesBalanceAnterior.AsCurrency + (mTotalesTotalDB.AsCurrency - mTotalesTotalCR.AsCurrency)
    //else
    //  mTotalesSignedBal.AsCurrency := (mTotalesBalanceAnterior.AsCurrency + (mTotalesTotalDB.AsCurrency - mTotalesTotalCR.AsCurrency)) * -1;
  end
  else begin
    mTotalesDetBalAnt.Value := 0;
    mTotalesDetTDB.Value := 0;
    mTotalesDetTCR.Value := 0;
    mTotalesDetBalAct.Value := 0;
    mTotalesSignedBal.AsCurrency := 0;
  end;
end;

procedure Tgldm.mEntdtlDebitoValidate(Sender: TField);
begin
  if (mEntDtlDebito.AsCurrency <> 0) and (mEntDtlCredito.AsCurrency <> 0) then
    raise Exception.Create('No puede registrar un debito y un credito en la misma linea');
end;

procedure Tgldm.BorrarEntrada(const idEnt: Variant);
begin
{ glConn.Execute(format('DELETE FROM cgEntradasDetalle WHERE EntradaId = %d',[idEnt]));
  glConn.Execute(format('DELETE FROM cgEntradasDiario WHERE EntradaId = %d',[idEnt]));
}
  //glConn.Execute(format('exec cgBorrarEntrada %s',[idEnt]));
  cBorrarEntrada.Parameters[1].Value := idEnt;
  cBorrarEntrada.Execute();
  NuevaEntrada();
end;

procedure Tgldm.AbrirMayorGeneral(const Desde, Hasta: TDateTime;
  const msk: string = '%');
begin
  with spMayor do begin
    Close();
    Parameters[1].Value := int(Desde);
    Parameters[2].Value := int(Hasta);
    Parameters[3].Value := msk;
    Open();
  end;
end;

procedure Tgldm.AbrirListaDiario(const idCta: string;
  const Desde, Hasta: TDateTime);
begin
  with rsListaDiario do begin
    Close();
    Parameters[0].Value := idCta;
    Parameters[1].Value := Desde;
    Parameters[2].Value := hasta;
    Open();
  end;
  CargarTotales(Desde,Hasta, idCta);
end;

function Tgldm.VerificarEntrada(const Num: string; const fec: TDateTime;
  const eid: Variant): Boolean;
begin
  with rsBuscarED do begin
    Close();
    Parameters[0].Value := Num;
    Parameters[1].Value := DateOf(fec);
    Parameters[2].Value := eid;
    Open();
    Result := Eof;
  end;
end;

procedure Tgldm.mEntradaNumeroEntradaValidate(Sender: TField);
begin
  if FLoading then
    Exit;
    
  if not VerificarEntrada(mEntradaNumeroEntrada.AsString, mEntradaFecha.AsDateTime, mEntradaIdEntrada.Value) then
    ShowMessage('Ya existe una entrada con este numero para esta fecha');

  if mEntradaFecha.Value <= dm.Cierre('Contabilidad') then
    raise Exception.Create('Esta fecha es anterior al ultimo cierre');
end;

procedure Tgldm.DataModuleCreate(Sender: TObject);
//var
//  s: string;
begin
//  glConn.Close();
{  s := BuscarConexion();
  if s = '' then begin
    ShowMessage('No aparecio el archivo de coneccion');
    Application.Terminate();
    Exit;
  end;
  dm.Coneccion.Connected := False;
  dm.Coneccion.ConnectionString := s;

  FGlobalDesde := DateOf(StartOfTheMonth(Date()));
  FGlobalHasta := DateOf(EndOfTheMonth(Date()));

  FGuardarDescuadrada := GetDefault('ED_DESCUADRADA');
  Configuracion.Open();                               }
end;

{function Tgldm.BuscarConexion: string;
begin
  DBManager := TDBManager.Create(self);
  try
    Result := DBManager.BuscarConexionXDefecto();
  finally
    DBManager.Free();
  end;
end;


function Tgldm.Cierre() : TDateTime;
begin
  if not QCierre.active then
    QCierre.Open
  else
    QCierre.Requery;

  result := QCierreDiaCierre.value;
end;
}

function Tgldm.GetDefault(Clave: String): variant;
begin
  spGetDefaults.Parameters[1].Value := Clave;
  spGetDefaults.ExecProc;
  Result := spGetDefaults.Parameters[2].Value;
end;

function Tgldm.GetDefaultStr(Clave: String): string;
var
  olevar: variant;
begin
  spGetDefaults.Parameters[1].Value := Clave;
  spGetDefaults.ExecProc;
  olevar := spGetDefaults.Parameters[2].Value;
  if olevar = NULL then
    result := ''
  else
    Result := oleVar;
end;

procedure Tgldm.HacerBackup(const fn: string);
begin
  with cHacerBackup do begin
    Parameters[1].Value := fn;
    Execute();
  end;
end;

procedure Tgldm.mEntdtlNewRecord(DataSet: TDataSet);
begin
  mentdtlIdEntradaDetalle.AsGuid := NewGuid();
end;

procedure Tgldm.mEntdtlidAuxiliarValidate(Sender: TField);
begin
  if mEntDtlIdAuxiliar.AsString <> '' then begin
    if mEntDtlIdCuenta.Asstring = '' then
      raise Exception.Create('Escriba una cuenta primero');

    with rsBuscarAux do begin
      Close();
      Parameters[0].Value := mEntDtlidCuenta.Value;
      Parameters[1].Value := mEntDtlidAuxiliar.Value;
      Open();
      if Eof then
        raise Exception.Create('Este auxiliar no esta definido');
    end;
  end;
end;

procedure Tgldm.EditarEntrada;
begin
  if mEntrada.Active then begin
    mEntrada.ReadOnly := False;
    mEntdtl.ReadOnly := False;

    mEntrada.Edit();
  end;
end;

procedure Tgldm.CerrarEntrada;
begin
  mEntrada.Close();
  mEntDtl.Close();
end;

function Tgldm.GetGlobalDesde: TDateTime;
begin
  result := dm.FechaDesde;
end;

function Tgldm.GetGlobalHasta: TDateTime;
begin
  Result := dm.FechaDesde;
end;

procedure Tgldm.SetGlobalDesde(const Value: TDateTime);
begin
  dm.FechaDesde := Value;
end;

procedure Tgldm.SetGlobalHasta(const Value: TDateTime);
begin
  dm.FechaHasta := Value;
end;

procedure Tgldm.mCuentaStatusValidate(Sender: TField);
begin
  if mCuentaStatus.Value = 'A' then
    mCuentaFechaStatus.Value := DateOf(mCuentaFechaCreacion.Value)
  else
    mCuentaFechaStatus.Value := dm.DBFecha();
end;

procedure Tgldm.mEntdtlCentroCostoValidate(Sender: TField);
var
  idCC: Variant;
  descr: string;
begin
  if FLoading then
    Exit;

  FLoading := True;
  try
    if mEntDtlCentroCosto.Value = '' then
      mEntDtlIdCentroCosto.Clear()
    else begin
      dm.ValidarCentroCosto(mEntDtlCentroCosto.Value,descr, idCC);
      mEntdtlidCentroCosto.Value := idCC;
    end;
  finally
    FLoading := False;
  end;
end;

procedure Tgldm.mEntdtlidCentroCostoValidate(Sender: TField);
var
  CC: string;
  descr: string;
begin
  if FLoading then
    Exit;

  FLoading := True;
  try
    if mEntDtlidCentroCosto.Value = '' then
      mEntDtlCentroCosto.Clear()
    else begin
      dm.ValidarCentroCosto(mEntDtlidCentroCosto.Value,descr, CC);
      mEntdtlCentroCosto.Value := CC;
    end;
  finally
    FLoading := False;
  end;
end;

end.

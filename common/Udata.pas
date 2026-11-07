unit Udata;

interface

uses
  SysUtils, Classes, DB, ADODB, Wwintl, Wwdatsrc, Forms, Dialogs, UUtiles, variants,
  ImgList, Controls, Graphics, Types, dxCntner, ppComm, ppRelatv,
  ppDB, ppDBPipe, cxContainer, cxEdit,actnList;

type TDocumentos = (
    dcPendiente = 0,
    dcCedula,
    dcPasaporte,
    dcRNC,
    dcConducir,
    dcArmaFuego
    );

type TSecuenciaNCF = record
    secuencia: string;
    VencimientoNCF: TDateTime;
    Reorden: Boolean;
    Cancelado: Boolean;
  end;
      
type
  Tdm = class(TDataModule)
    Coneccion: TADOConnection;
    Idioma: TwwIntl;
    SPPermiso: TADOStoredProc;
    SPPermisoAgregar: TIntegerField;
    SPPermisoEditar: TIntegerField;
    SPPermisoBorrar: TIntegerField;
    SPPermisoAbrir: TIntegerField;
    SPPermisoImprimir: TIntegerField;
    UsuarioOld: TADOTable;
    UsuarioOldidSegUserGrp: TStringField;
    UsuarioOldClave: TStringField;
    UsuarioOldesGrupo: TBooleanField;
    UsuarioOldObjetoDefault: TStringField;
    UsuarioOldActivo: TBooleanField;
    QSegGrupo: TADOQuery;
    QSegUser: TADOQuery;
    QSegUseridSegUserGrp: TStringField;
    QSegUserClave: TStringField;
    QSegUseresGrupo: TBooleanField;
    QSegUserObjetoDefault: TStringField;
    QSegUserActivo: TBooleanField;
    QSegUserinGrp: TADOQuery;
    DQSegUser: TDataSource;
    QSegUserinGrpidSegUser: TStringField;
    QSegUserinGrpidSegGrupo: TStringField;
    QSegPermiso: TADOQuery;
    QSegObjeto: TADOQuery;
    QSegUserGrp: TADOQuery;
    QSegUserGrpidSegUserGrp: TStringField;
    QSegUserGrpesGrupo: TBooleanField;
    dsSegObjeto: TDataSource;
    QSegGrupoidSegUserGrp: TStringField;
    QSegGrupoesGrupo: TBooleanField;
    QSegObjetoCategoria: TStringField;
    QSegObjetoTipoObjeto: TStringField;
    QSegObjetoSegObjeto: TStringField;
    QSegObjetoidSegObjeto: TStringField;
    spGetNextIDStr: TADOStoredProc;
    spGetNextIDInt: TADOStoredProc;
    spGetNextIDStrValor: TStringField;
    spGetNextIDIntValor: TLargeintField;
    spGetDefaults: TADOStoredProc;
    ImageList: TImageList;
    dsUsuario: TDataSource;
    Fecha: TADOCommand;
    Autorizacion: TADOCommand;
    SegObjExi: TADOCommand;
    SPPermisoAnular: TWordField;
    SPPermisoAprobar: TWordField;
    qryGuid: TADOQuery;
    qryGuidNewGuid: TGuidField;
    QSegPermisoidSegObjeto: TStringField;
    QSegPermisoidSegUserGrp: TStringField;
    QSegPermisoAgregar: TWordField;
    QSegPermisoEditar: TWordField;
    QSegPermisoBorrar: TWordField;
    QSegPermisoImprimir: TWordField;
    QSegPermisoAbrir: TWordField;
    QSegPermisoAnular: TWordField;
    QSegPermisoAprobar: TWordField;
    UsuarioOldNivel: TIntegerField;
    QSegUserNivel: TSmallintField;
    rsTasaFecha: TADODataSet;
    rsTasaFechaidTasatipo: TStringField;
    rsTasaFechaTasa: TBCDField;
    dsTasas: TDataSource;
    dxEstilo: TdxEditStyleController;
    Image24: TImageList;
    QCierre: TADODataSet;
    QCierreDiaCierre: TDateTimeField;
    cValidarCta: TADOCommand;
    Moneda: TADODataSet;
    MonedaidMoneda: TIntegerField;
    MonedaMoneda: TStringField;
    MonedaCursoLegal: TBooleanField;
    dsMoneda: TDataSource;
    dsConfig: TDataSource;
    plConfig: TppDBPipeline;
    cxEstilo: TcxEditStyleController;
    Log: TADOCommand;
    svCompfiscal: TADOCommand;
    GetTasaActual: TADOCommand;
    Usuario: TADODataSet;
    UsuarioidSegUserGrp: TStringField;
    UsuarioClave: TStringField;
    UsuarioesGrupo: TBooleanField;
    UsuarioObjetoDefault: TStringField;
    UsuarioActivo: TBooleanField;
    UsuarioNivel: TIntegerField;
    Configuracion: TADODataSet;
    ConfiguracionCompania: TStringField;
    ConfiguracionTelefono: TStringField;
    ConfiguracionFax: TStringField;
    ConfiguracionRNC: TStringField;
    ConfiguracionDireccion: TStringField;
    ConfiguracionCompaniaCorto: TStringField;
    ConfiguracionTituloApp: TStringField;
    ConfiguracionUConfiguracion: TGuidField;
    cCatObjeto: TADOCommand;
    rsIdioma: TADODataSet;
    rsIdiomaidIdioma: TStringField;
    rsIdiomaIdioma: TStringField;
    dsIdioma: TDataSource;
    rsCentroCosto: TADODataSet;
    rsCentroCostoidCentroCosto: TGuidField;
    rsCentroCostoCentroCosto: TStringField;
    rsCentroCostoCentroCostoDesc: TStringField;
    rsCentroCostoActivo: TBooleanField;
    rsCentroCostoTipo: TStringField;
    rsCentroCostoReferencia: TStringField;
    rsCentroCostoidCentroCostoParent: TGuidField;
    rsCentroCostoOrden: TIntegerField;
    rsCentroCostoNivel: TIntegerField;
    rsCentroCostoStatus: TStringField;
    rsCentroCostoNota: TStringField;
    rsCacheSeguridad: TADODataSet;
    rsCacheSeguridadidSegObjeto: TStringField;
    rsCacheSeguridadAgregar: TWordField;
    rsCacheSeguridadEditar: TWordField;
    rsCacheSeguridadBorrar: TWordField;
    rsCacheSeguridadAbrir: TWordField;
    rsCacheSeguridadImprimir: TWordField;
    rsCacheSeguridadAnular: TWordField;
    rsCacheSeguridadAprobar: TWordField;
    rsCacheDefaults: TADODataSet;
    rsCacheDefaultsClave: TStringField;
    rsCacheDefaultsValor: TVariantField;
    QCierreModulo: TStringField;
    rsPartidas: TADODataSet;
    rsPartidasidPartida: TStringField;
    rsPartidasPartida: TStringField;
    rsPartidasidUnidad: TStringField;
    rsPartidasCostoUnidad: TBCDField;
    rsPartidasCompuesto: TBooleanField;
    rsPartidasuidPartida: TGuidField;
    dsPartidas: TDataSource;
    rsConfigPC: TADODataSet;
    rsConfigPCNombrePC: TStringField;
    rsConfigPCConfiguracion: TStringField;
    rsConfigPCValor: TStringField;
    rsBuscarAutorizacion: TADODataSet;
    rsBuscarAutorizacionidAutorizacion: TStringField;
    rsBuscarAutorizacionClase: TSmallintField;
    rsBuscarAutorizacionReferencia: TStringField;
    rsBuscarAutorizacionDescripcion: TStringField;
    rsBuscarAutorizacionUsadoPor: TStringField;
    rsBuscarAutorizacionCreadoPor: TStringField;
    rsBuscarAutorizacionFecha: TDateTimeField;
    rsPermisosUsuario: TADODataSet;
    rsPermisosUsuarioAgregar: TWordField;
    rsPermisosUsuarioEditar: TWordField;
    rsPermisosUsuarioBorrar: TWordField;
    rsPermisosUsuarioAbrir: TWordField;
    rsPermisosUsuarioImprimir: TWordField;
    rsPermisosUsuarioAnular: TWordField;
    rsPermisosUsuarioAprobar: TWordField;
    spCentroCosto: TADOCommand;
    cBuscarFormatoReporte: TADOCommand;
    cGuardarFormatoReporte: TADOCommand;
    ConfiguracionEmail: TStringField;
    ConfiguracionLogo: TBlobField;
    ConfiguracionIntroduccion: TBlobField;
    spGetDataSet: TADOStoredProc;
    rsEcfStatus: TADODataSet;
    rsEcfStatusStatusEcf: TStringField;
    rsEcfStatusUltError: TStringField;
    rsEcfStatusCodigoSeguridadEcf: TWideStringField;
    procedure ConeccionBeforeConnect(Sender: TObject);
    procedure QSegUserNewRecord(DataSet: TDataSet);
    procedure QSegGrupoNewRecord(DataSet: TDataSet);
    procedure QSegUserinGrpNewRecord(DataSet: TDataSet);
    procedure QSegPermisoNewRecord(DataSet: TDataSet);
    procedure QSegUserClaveGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ConeccionAfterConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    private
    InifileValues : tstringlist;
    FSeguridadActiva: Boolean;
    ActivarLog : string;
    FPermitirDescuadre: Boolean;
    FLoading: Boolean;

    function PreValidarAutorizacion(const idAuto: string;
                                        const idObj:string; const Permiso: TApppermiso): Boolean;
    function UsuarioTienePermiso(const idUsuario: string; const idObj: string; const nivel: Integer;
                                 const Permiso: TAppPermiso): Boolean;

    function AutorizarPermiso( const nivel: Integer;
                               const objeto: string;
                               const Permiso: TappPermiso;
                               const Mensaje: string;
                               const Descrip: string = '';
                               const Referencia: string = ''): Boolean;
    function PermisoToString(Permiso: TAppPermiso): string;

    { Private declarations }
    public
    FechaDesde : Tdatetime;
    FechaHasta : Tdatetime;
    FechaHoy   : Tdatetime;
    UsarEcfs: Boolean;
    PuedeEnviarEcfs: Boolean;
    PuedeEditarEcfEnviado: Boolean;
    AutoEnviarEcfs: Boolean;
    { Public declarations }
    property SeguridadActiva: Boolean read FSeguridadActiva; // write FSeguridadActiva;
    function GetDataSet(const cmd: string; params: Variant): TDataSet;
    function TasaActual(Moneda : integer; Fecha : TDatetime = 0): double;
    function Cierre(Modulo : string ='') : Tdate;
    procedure SegObjetoExiste(Objeto, Descripcion: string); overload;
    procedure SegObjetoExiste(Objeto, Descripcion, Categoria: string); overload;
    procedure CambiarClave(NuevaClave:string);

    function Tienepermiso(Permiso : Tapppermiso; Permisos : TStringList;
    Descrip : string = ''; Referencia : string = ''):Boolean; overload;
    function Tienepermiso(Permiso : Tapppermiso;
                          idObjeto: string;
                          Descrip : string = '';
                          Referencia : string = ''):Boolean; overload;

    function apppermisos(objeto: string): TStringList;  overload;
    function appPermisos(objeto: string; usuario: string): TStringList; overload;
    Function apppermisos(Objeto : string; Descripcion : string; Categoria : String): TStringList; overload;
    function TienePermisoShow(Permiso: Tapppermiso;
      Permisos: TStringList): Boolean;
    function UsuarioActual: String;
    function CompaniaActual: integer;
    function NivelUsuario: integer;
    function Login(usuarioid, password: string): Boolean;
    function GetNextCounterStr(Contador : String) : String;
    function GetCompFiscal(Terminal : String; TipoCF : string; idCliente: integer) : String; overload;
    function GetCompFiscal(Terminal : String;TipoCF : string) : TSecuenciaNCF; overload;
    function GetCompFiscal(TipoCF : string) : TSecuenciaNCF; overload;

    //function GetCompFiscal(Terminal : String; TipoCF : string; idCliente: integer) : string; overload;
    function GetCompFiscal(TipoCF : string; idCliente: integer) : TSecuenciaNCF; overload;
    function GetNextCounterInt(Contador : String) : Integer;
    function GetDefault(Clave: String): variant; overload;
    function GetDefault(Clave: String; Field : TField): variant; overload;
    function GetDefaultStr(Clave: String): String;
    Function DBFecha(): tdate;
    Function DBFechaHora(): tdatetime;
    function Autorizar(Clase: integer; Referencia, Descripcion : String ):boolean; overload;
    function Autorizar(Clase: integer; Referencia, Descripcion, Mensaje :String ):boolean; overload;
    function NewGuid: TGuid;
    function GetParamIni(IniValue: string): variant;
    function ValidarCuenta(const idCta: string; out Descr: string): Boolean;
    procedure VerificarCuenta(const idCta: string; out descr: string; const ShowError: Boolean = True);
    function ValidarCuentaEx(const idCta: string; out Descr: string; out Mensaje: string; out SoloAux: Boolean): Boolean;
    procedure CreateLog(Accion, Objeto, Referencia : string);
    function MonedaLegal: Integer;
    procedure ValidarCentroCosto(const idCC: Variant; out descr: string; out CC: string; const showError: Boolean = True); overload;
    procedure ValidarCentroCosto(const CC: string; out descr: string; out idCC: Variant; const showError: Boolean = True); overload;
    procedure CategorizarObjetos(al: TCustomActionList; const cat: string);
    constructor Create(Aowner: TComponent); override;
    procedure AbrirCompania(const constr: string);
    procedure LoadDefaultsCache;
    function GetPCSetting(const Index: string): string;
    procedure SetPCSetting(const Index: string; const Value: string);

    property PermitirDescuadre: Boolean read FPermitirDescuadre;
    property PCSettings[const Index: string]: string read GetPCSetting write SetPCSetting;
    function CentroCostoUpdate(id, cod, desc, tipo, ref: string;  act: boolean; Parent : string = ''; nota : string =''; Nivel : integer = 0): boolean;

    procedure ValidarFechaCierre(const fec: TDateTime; const modulo: string = '');
    function BuscarFormatoReporte(const rpt: string): string;
    procedure GuardarFormatoReporte(const rpt: string; const tipo: string; const path: string);
    function TipoDocumentoValido(const Tipo: TDocumentos;
      Documento: string): boolean;
  end;

const
  // por motivos de transportabilidad
  isTrue = 1;
  isFalse = 0;
  iniFile = 'Params.ini';

var
  dm: Tdm;
  vl      : TStringList;

implementation

uses uform, udmRepository;

{$R *.dfm}



Function Tdm.GetParamIni(IniValue : string) : variant;
begin
   try
     Result := IniFileValues.Values[iniValue];
   except
     Result := '';
   end;
end;


function Tdm.NewGuid: TGuid;
begin
    qryGuid.Open;
    Result := qryGuidNewGuid.AsGuid;
    qryGuid.Close;
end;

function TDM.AutorizarPermiso( const nivel: Integer;
                               const objeto: string;
                               const Permiso: TappPermiso;
                               const Mensaje: string;
                               const Descrip: string = '';
                               const Referencia: string = ''): Boolean;
var
  clave : string;
begin
  if NivelUsuario >=  nivel then begin
      result := true
  end else begin
    Clave := InputBox('Autorizacion ['+ inttostr(nivel)+']', Mensaje, '');
    if Clave <> '' then
    begin
      if not PreValidarAutorizacion(clave, objeto, Permiso) then
        Result := false
      else begin
        Autorizacion.Parameters[1].Value := Clave;
        Autorizacion.Parameters[2].Value := nivel;
        Autorizacion.Parameters[3].Value := Referencia;
        Autorizacion.Parameters[4].Value := UsuarioActual;
        Autorizacion.Parameters[5].Value := Descrip;
        Autorizacion.Execute;
        Result := Autorizacion.Parameters[6].Value;
      end;
      //if Not(Result) then Showmessage('Autorizacion No Valida');
    end
    else
    begin
      Result := False;
    end;
  end;
end;

function Tdm.Tienepermiso(Permiso : Tapppermiso;
  idObjeto: string;
  Descrip : string = '';
  Referencia : string = ''):Boolean;  
var
  Permisos : TStringList ;
  acceso : integer;
  strpermiso : string;
Begin
    if not SeguridadActiva then begin
      Result := True;
      Exit;
    end;
    Permisos := AppPermisos(idObjeto);
    strPermiso := PermisoToString(Permiso) ;

    acceso := savestrtoint(Permisos.Values[strpermiso]);
    if (acceso = 0) then
      result := false
    else if (acceso = 6) or (acceso <= NivelUsuario) then
      result := True
    else
      Result := AutorizarPermiso(acceso, idObjeto, Permiso, 'Esta accion requiere autorizacion', strpermiso + '->'+Descrip, Referencia);
      //if ((acceso >=1) and (acceso <=5)) and (acceso > dm.NivelUsuario) then
end;


function Tdm.Tienepermiso(Permiso : Tapppermiso;
  Permisos : TStringList;
  Descrip : string = '';
  Referencia : string = ''):Boolean;
var
  acceso : integer;
  strpermiso : string;
Begin
    if not SeguridadActiva then begin
      Result := True;
      Exit;
    end;
    case permiso of
      pAbrir   : strpermiso := 'pAbrir';
      pEditar  : strpermiso := 'pEditar';
      pBorrar  : strpermiso := 'pBorrar';
      pAgregar : strpermiso := 'pAgregar';
      pImprimir: strpermiso := 'pImprimir';
      pAnular  : strpermiso := 'pAnular';
      pAprobar : strpermiso := 'pAprobar';
    end;
    acceso := savestrtoint(Permisos.Values[strpermiso]);
    if (acceso = 0) then
      result := false
    else if (acceso = 6) or (acceso <= NivelUsuario) then
      result := True
    else
      Result := dm.Autorizar(acceso, Referencia, strpermiso + '->'+Descrip);
      //if ((acceso >=1) and (acceso <=5)) and (acceso > dm.NivelUsuario) then
end;

function Tdm.PermisoToString(Permiso: TAppPermiso): string;
begin
  Result := '';
  case permiso of
    pAbrir   : Result := 'pAbrir';
    pEditar  : Result := 'pEditar';
    pBorrar  : Result := 'pBorrar';
    pAgregar : Result := 'pAgregar';
    pImprimir: Result := 'pImprimir';
    pAnular  : Result := 'pAnular';
    pAprobar : Result := 'pAprobar';
  end;
end;

function Tdm.TienePermisoShow(Permiso : Tapppermiso; Permisos : TStringList):Boolean;
var
  acceso : integer;
  strpermiso : string;
Begin
    if not SeguridadActiva then begin
      Result := True;
      Exit;
    end;

    case permiso of
      pAbrir   : strpermiso := 'pAbrir';
      pEditar  : strpermiso := 'pEditar';
      pBorrar  : strpermiso := 'pBorrar';
      pAgregar : strpermiso := 'pAgregar';
      pImprimir: strpermiso := 'pImprimir';
      pAnular  : strpermiso := 'pAnular';
      pAprobar : strpermiso := 'pAprobar';
    end;

    acceso := savestrtoint(Permisos.Values[strpermiso]);

    if acceso = 0 then
       result := False
    else
      result := True;
end;

Function Tdm.UsuarioActual():String;
begin
  Result := dmRepository.UsuarioActual; //UsuarioidSegUserGrp.Value ;
end;

procedure Tdm.ConeccionBeforeConnect(Sender: TObject);
begin
  if not FLoading then
    Abort();
end;

// funcion para login  (Se debe encriptar el pasword antes de almacenarlo y antes de compararlo)
function Tdm.Login(usuarioid, password: string): Boolean;
begin
   result := False;
//   if (usuario.Locate('idSegUserGrp', usuarioid, [])) and (password = usuarioclave.value) then
//      result := not UsuarioesGrupo.AsBoolean;
end;

//registras los nombre de objetos en la tabla de seguridad
Procedure Tdm.SegObjetoExiste(Objeto, Descripcion : string);
Begin
    segobjexi.Parameters[1].Value := Objeto;
    segobjexi.Parameters[2].Value := Descripcion;
    segobjexi.Parameters[3].Value := 'General';
    segobjexi.Execute;
End;

Procedure Tdm.SegObjetoExiste(Objeto, Descripcion, Categoria : string);
Begin
    segobjexi.Parameters[1].Value := Objeto;
    segobjexi.Parameters[2].Value := Descripcion;
    segobjexi.Parameters[3].Value := Categoria;

    segobjexi.Execute;
End;

Function Tdm.apppermisos(Objeto : string; usuario: string): TStringList;
var
   vapppermiso : TStringList;
Begin
  vapppermiso := TStringList.Create();
  vapppermiso.Clear();
  with rsPermisosUsuario do begin
    Close();
    Parameters[1].Value := usuario;
    Parameters[2].Value := objeto;
    Open();
    if not Eof then begin
      vapppermiso.Add('pAbrir='   + rsPermisosUsuarioAbrir.asstring);
      vapppermiso.add('pAgregar=' + rsPermisosUsuarioAgregar.asstring);
      vapppermiso.add('pEditar='  + rsPermisosUsuarioEditar.asstring);
      vapppermiso.add('pBorrar='  + rsPermisosUsuarioBorrar.asstring);
      vapppermiso.add('pImprimir='+ rsPermisosUsuarioImprimir.asstring);
      vapppermiso.add('pAprobar=' + rsPermisosUsuarioAprobar.asstring);
      vapppermiso.add('pAnular='  + rsPermisosUsuarioAnular.asstring);
    end
    else
       SegObjetoExiste(Objeto, Objeto);
  end;
  Result := vapppermiso;
end;

Function Tdm.apppermisos(Objeto : string; Descripcion : string; Categoria : String): TStringList;
var
   vapppermiso : TStringList;
Begin
    vapppermiso := tstringlist.Create;
    vapppermiso.Clear;


       if rsCacheSeguridad.Locate('idSegObjeto',Objeto,[]) then begin

          vapppermiso.Add('pAbrir='   + rsCacheSeguridadAbrir.asstring);
          vapppermiso.add('pAgregar=' + rsCacheSeguridadAgregar.asstring);
          vapppermiso.add('pEditar='  + rsCacheSeguridadEditar.asstring);
          vapppermiso.add('pBorrar='  + rsCacheSeguridadBorrar.asstring);
          vapppermiso.add('pImprimir='+ rsCacheSeguridadImprimir.asstring);
          vapppermiso.add('pAprobar=' + rsCacheSeguridadAprobar.asstring);
          vapppermiso.add('pAnular='  + rsCacheSeguridadAnular.asstring);
        end
        else
          dm.SegObjetoExiste(Objeto, Descripcion, Categoria);

     Result := vapppermiso;
end;


Function Tdm.apppermisos(Objeto : string): TStringList;
var
   vapppermiso : TStringList;
Begin
    vapppermiso := tstringlist.Create;
    vapppermiso.Clear;


       if rsCacheSeguridad.Locate('idSegObjeto',Objeto,[]) then begin

          vapppermiso.Add('pAbrir='   + rsCacheSeguridadAbrir.asstring);
          vapppermiso.add('pAgregar=' + rsCacheSeguridadAgregar.asstring);
          vapppermiso.add('pEditar='  + rsCacheSeguridadEditar.asstring);
          vapppermiso.add('pBorrar='  + rsCacheSeguridadBorrar.asstring);
          vapppermiso.add('pImprimir='+ rsCacheSeguridadImprimir.asstring);
          vapppermiso.add('pAprobar=' + rsCacheSeguridadAprobar.asstring);
          vapppermiso.add('pAnular='  + rsCacheSeguridadAnular.asstring);
        end
        else
          dm.SegObjetoExiste(Objeto, Objeto);

     Result := vapppermiso;
end;

procedure Tdm.QSegUserNewRecord(DataSet: TDataSet);
begin
   QSegUseresGrupo.Value := False;
end;

procedure Tdm.QSegGrupoNewRecord(DataSet: TDataSet);
begin
   QSegGrupoesGrupo.Value := True;
end;

procedure Tdm.QSegUserinGrpNewRecord(DataSet: TDataSet);
begin
  qSegUserinGrpidSegUser.Value := QSegUseridSegUserGrp.value;
end;

procedure Tdm.QSegPermisoNewRecord(DataSet: TDataSet);
begin
  qsegpermisoidsegobjeto.Value := QSegObjetoidSegObjeto.value;
  QSegPermisoAgregar.Value := 6;
  QSegPermisoAbrir.Value := 6;
  QSegPermisoBorrar.Value := 6;
  QSegPermisoEditar.Value := 6;
  QSegPermisoimprimir.Value := 6;
  QSegPermisoAnular.Value := 6;
  QSegPermisoAprobar.Value := 6;
end;

function Tdm.GetNextCounterInt(Contador: String): Integer;
begin
  spGetNextIdInt.Parameters[1].Value := Contador;
  spGetNextIDInt.Open;
  Result := spGetNextIDIntValor.Value;
  spGetNextIDInt.Close;
end;

function Tdm.GetDefault(Clave: String): variant;
begin
//  spGetDefaults.Parameters[1].Value := Clave;
//  spGetDefaults.ExecProc;
//  Result := spGetDefaults.Parameters[2].Value;
  if rsCacheDefaults.Locate('Clave',Clave,[loCaseInsensitive]) then
    Result := rsCacheDefaultsValor.Value
  else
    Result := NULL;
end;

function Tdm.GetDefault(Clave: String; Field : TField): variant;
var
  v: OleVariant;
begin
//  spGetDefaults.Parameters[1].Value := Clave;
//  spGetDefaults.ExecProc;
//  if spGetDefaults.Parameters[2].Value <> NULL then
//     Field.value := spGetDefaults.Parameters[2].value;
  v := GetDefault(Clave);
  if v <> null then
    Field.Value := v;
end;


function Tdm.GetNextCounterStr(Contador: String): String;
begin
  spGetNextIdStr.Parameters[1].Value := Contador;
  spGetNextIDStr.Open;
  Result := spGetNextIDStrValor.Value;
  spGetNextIDStr.Close;
end;

function Tdm.TasaActual(Moneda : integer; Fecha : TDatetime = 0): double;
begin
   GetTasaActual.parameters[1].value := Moneda;
   if Fecha = 0 then
     GetTasaActual.parameters[2].value := null
   else
     GetTasaActual.parameters[2].value := Fecha;

   GetTasaActual.Execute();
   Result := GetTasaActual.Parameters[3].Value;
end;


function Tdm.DBFecha: Tdate;
begin
   fecha.parameters[2].value := 1;
   fecha.Execute();
   Result := fecha.Parameters[1].Value;
end;

function Tdm.DBFechaHora: Tdatetime;
begin
   fecha.parameters[2].value := 2;
   fecha.Execute();
   Result := fecha.Parameters[1].Value;
end;

function Tdm.UsuarioTienePermiso(const idUsuario: string; const idObj: string; const nivel: Integer;
const Permiso: TAppPermiso): Boolean;
var
  strPermiso: string;
  perms: TStringList;
  acceso: Integer;
begin
  Result := False;
  strPermiso := PermisoToString(Permiso);
  perms := apppermisos(idObj,idUsuario);
  if perms <> nil then begin
    acceso := savestrtoint(perms.Values[strpermiso]);

    if (acceso <> 0) and ((acceso = 6) or (acceso < nivel)) then
      result := True;
  end;
end;

function Tdm.PreValidarAutorizacion(const idAuto: string;
const idObj:string; const Permiso: TApppermiso): Boolean;
begin
  Result := False;
  with rsBuscarAutorizacion do begin
    Close();
    Parameters[0].Value := idAuto;
    Open();

    if not Eof then begin
      Result := UsuarioTienePermiso(rsBuscarAutorizacionCreadoPor.Value, idObj,
                                    rsBuscarAutorizacionClase.AsInteger, Permiso);
    end;
  end;
end;

function Tdm.Autorizar(Clase: integer; Referencia, Descripcion: String): boolean;
var
  clave : string;
begin
  if not SeguridadActiva then begin
    Result := True;
    Exit;
  end;

  if NivelUsuario >= Clase then begin
      result := true
  end else begin
    Clave := InputBox('Autorizacion', 'Codigo de Autorizacion', '');
    if Clave <> '' then
    begin
      Autorizacion.Parameters[1].Value := Clave;
      Autorizacion.Parameters[2].Value := Clase;
      Autorizacion.Parameters[3].Value := Referencia;
      Autorizacion.Parameters[4].Value := UsuarioActual;
      Autorizacion.Parameters[5].Value := Descripcion;
      Autorizacion.Execute;
      Result := Autorizacion.Parameters[6].Value;
      //if Not(Result) then Showmessage('Autorizacion No Valida');
    end
    else
    begin
      Result := False;
    end;
  end;
end;

function Tdm.Autorizar(Clase: integer; Referencia, Descripcion, Mensaje : string): boolean;
var
  clave : string;
begin
  if NivelUsuario >=  Clase then begin
      result := true
  end else begin
    Clave := InputBox('Autorizacion ['+ inttostr(clase)+']', Mensaje, '');
    if Clave <> '' then
    begin
      Autorizacion.Parameters[1].Value := Clave;
      Autorizacion.Parameters[2].Value := Clase;
      Autorizacion.Parameters[3].Value := Referencia;
      Autorizacion.Parameters[4].Value := UsuarioActual;
      Autorizacion.Parameters[5].Value := Descripcion;
      Autorizacion.Execute;
      Result := Autorizacion.Parameters[6].Value;
      //if Not(Result) then Showmessage('Autorizacion No Valida');
    end
    else
    begin
      Result := False;
    end;
  end;
end;


procedure Tdm.CambiarClave(NuevaClave:string);
begin
   Usuario.edit;
   Usuario.fieldbyname('Clave').value := NuevaClave;
   Usuario.post;
end;

procedure Tdm.QSegUserClaveGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
    text := '*****'
end;

function Tdm.NivelUsuario: integer;
begin
  result := dmRepository.NivelUsuario; // UsuarioNivel.value;
end;

procedure Tdm.ConeccionAfterConnect(Sender: TObject);
begin
  usuario.open;

  with rsTasaFecha do begin
    Parameters[1].Value := dbfecha();
    Open();
  end;
end;

procedure Tdm.LoadDefaultsCache;
begin
  rsCacheDefaults.Close();
  rsCacheDefaults.Open();
end;

procedure Tdm.AbrirCompania(const constr: string);
begin
  FLoading := True;
  try

      coneccion.Close;
      if conStr <> '' then begin
        coneccion.ConnectionString := constr;
        try
          coneccion.Open();
        except
          Showmessage('Error en conexion al servidor de datos, La aplicacion sera cerrada');
          Application.Terminate;
        end;

        rsCacheSeguridad.Close();
        rsCacheSeguridad.Parameters[1].Value := UsuarioActual();
        rsCacheSeguridad.Open();

        LoadDefaultsCache();
        AutoEnviarEcfs :=  GetDefaultStr('AUTO_ENVIAR_ECF') = '1';
        UsarEcfs := GetDefaultStr('USAR_ECF') = '1';
        PuedeEnviarEcfs :=  TienePermiso(pAbrir,'ENVIARECF');
        PuedeEditarEcfEnviado := TienePermiso(pAbrir, 'EDITARECF');

        ActivarLog := Getdefaultstr('ACTIVAR_LOGS');
        FPermitirDescuadre := Getdefaultstr('ED_DESCUADRE') = '1';
        configuracion.Open;
        Moneda.Open;

        rsPartidas.Close();
        rsPartidas.Open();

        QCierre.Open;

        dmRepository.LogFormEvent(EVENT_CHANGE_CIA,Application.Title,'Hora local:' + FormatdateTime('dd/mm/yyyy hh:nn:ss',Now()));
    end;
  finally
    FLoading := False;
  end;
end;

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  FechaDesde := date();
  FechaHasta := date();
  FechaHoy   := date();

  AbrirCompania(''); //FILE NAME=conexion.udl');
  FSeguridadActiva := True;
  CurrencyString := '$';
  InifileValues := tStringList.Create();
  InifileValues.Text := '';
  try
    if FileExists('C:\'+inifile) then
      InifileValues.LoadFromFile('C:\'+inifile)
    else
      if FileExists(inifile) then InifileValues.LoadFromFile(inifile);
  except
  end;
end;

function Tdm.CompaniaActual: integer;
begin
 try
   result := 1; //Configuracion.FieldValues['idCompania']
 except
   result := 0;
 end;
end;

function Tdm.Cierre(Modulo : string ='') : Tdate;
begin
  Result := 0;
  if Not QCierre.active then
    QCierre.Open()
  else
    QCierre.Requery();

  QCierre.First;
  if QCierre.locate('Modulo',Modulo,[]) then
    result := QCierreDiaCierre.value
  else begin
    QCierre.First;
    if QCierre.Locate('Modulo','General',[]) then
      result := QCierreDiaCierre.value
  end;
end;

function Tdm.ValidarCuentaEx(const idCta: string;
  out Descr: string; out Mensaje: string; out SoloAux: Boolean): Boolean;
begin
  Descr := '';

  with cValidarCta do begin
    Parameters[1].Value := idCta;
    Parameters[2].Value := Null;
    Execute();

    Descr := Parameters[2].Value;
    Mensaje := Parameters[3].Value;
    if Parameters[4].Value <> NULL then
      SoloAux := Parameters[4].Value
    else
      SoloAux := true;

    Result := (Parameters[0].Value = 0);
  end;
end;

function Tdm.ValidarCuenta(const idCta: string;
  out Descr: string): Boolean;
var
  Mensaje: string;
  SoloAux: Boolean;
begin
  Result := ValidarCuentaEx(idCta, Descr, Mensaje, SoloAux);
end;

procedure Tdm.VerificarCuenta(const idCta: string; out descr: string; const ShowError: Boolean = True);
var
  msg: string;
  aux: Boolean;
begin
  descr := '';

  if not dm.ValidarCuentaEx(idCta,descr,msg,aux) then
    if ShowError then
      raise Exception.Create(msg);

end;

function Tdm.GetDefaultStr(Clave: String): String;
var
  d : variant;
begin
  d := GetDefault(Clave);
  if d <> NULL then
    Result := d
  else
    Result := '';
end;

procedure Tdm.CreateLog(Accion, Objeto, Referencia: string);
begin
  if ActivarLog = '1' then begin
    log.Parameters[1].value := UsuarioActual();
    log.Parameters[2].value := Accion;
    log.Parameters[3].value := Objeto;
    log.Parameters[4].value := Referencia;
    log.Execute;
  end;

  dmRepository.LogFormEvent(Accion,Referencia,'Registro de evento en formulario');
end;

function Tdm.GetDataSet(const cmd: string; params: Variant): TDataSet;
var
  i                 : Integer;
  GenSp             : TADODataSet;
begin
  GenSp := TADODataSet.Create(self);
  GenSp.Connection := Coneccion;
  GenSp.CommandType := cmdStoredProc;

  if GenSp.Active then
    GenSp.Close();

  GenSp.CommandText := cmd;
  GenSp.Parameters.Refresh();
  if VarIsArray(params) then begin
    for i := VarArrayLowBound(params, 1) to VarArrayHighBound(params, 1) do
      GenSp.Parameters[i + 1].Value := params[i];
  end
  else
    GenSp.Parameters[1].Value := params;

  GenSp.Open();
  Result := GenSp;
end;

function Tdm.GetCompFiscal(Terminal,TipoCF: string): TSecuenciaNCF;
var sec : TSecuenciaNCF;
    rs: _Recordset;
    msg: string;
    v: OleVariant;
begin
  svCompFiscal.Parameters[1].value := Null;
  svCompFiscal.Parameters[2].value := Terminal;
  svCompFiscal.Parameters[3].value := tipoCF;
  svCompFiscal.Parameters[4].value := 0; 
  svCompFiscal.Parameters[5].value := Null; 
  svCompFiscal.Parameters[6].value := Null; 
  
  rs := svCompFiscal.Execute;
  
  while Assigned(rs) and (rs.State = 1) do
  begin
    if not rs.EOF then
    begin
      try
        v := rs.Fields.Item['Debug'].Value;
        if not VarIsNull(v) then
        begin
          msg := VarToStr(v);
          if Pos('ERROR', msg) > 0 then
          begin
            rs.Close;
            raise Exception.Create(msg);
          end;
        end;
      except
        // ignore if Debug field doesn't exist
      end;
    end;
    try
      rs := rs.NextRecordset(v);
    except
      break;
    end;
  end;
  
  if (not(svCompFiscal.Parameters[1].value = NULL) and not(svCompFiscal.Parameters[1].value = ''))  then
  begin
    sec.secuencia := svCompFiscal.Parameters[1].value;
    sec.VencimientoNCF := svCompFiscal.Parameters[5].Value;
    sec.Reorden := svCompFiscal.Parameters[6].Value;
    sec.Cancelado := False;

    if sec.Reorden then
      MessageDlg('Este tipo de comprobantes fiscales se esta agotando, verifique por favor..', mtWarning, [mbOK], 0);
  end
  else
    sec.Cancelado := True;

  result := sec;
end;



function Tdm.GetCompFiscal(Terminal, TipoCF: string;
  idCliente: integer): String;
begin
  svCompFiscal.Parameters[1].value := null;    // retorna el comp fiscal en este parametro output
  svCompFiscal.Parameters[2].value := Terminal;
  svCompFiscal.Parameters[3].value := TipoCF;
  svCompFiscal.Parameters[4].value := idCliente;
  svCompFiscal.execute;
  //if svCompFiscal.Parameters[0].value <> 0 then
   // raise exception.create('Este maquina no tiene configurado los comprobantes fiscales para este tipo de documento');
  if svCompFiscal.Parameters[1].value = NULL then
    result := ''
  else
    result := svCompFiscal.Parameters[1].value;
end;
 function Tdm.GetCompFiscal(TipoCF: string;
  idCliente: integer): TSecuenciaNCF;
  var sec : TSecuenciaNCF;
begin
  svCompFiscal.Parameters[1].value := Null;    // retorna el comp fiscal en este parametro output
  svCompFiscal.Parameters[2].value := Null;
  svCompFiscal.Parameters[3].value := TipoCF;
  svCompFiscal.Parameters[4].value := idCliente;
  svCompFiscal.Parameters[5].value := Null; // retorna la fecha de vencimiento del comp fiscal en este parametro output
  svCompFiscal.Parameters[6].value := Null; // retorna el reorden del comp fiscal en este parametro output
  svCompFiscal.execute;

  if (not(svCompFiscal.Parameters[1].value = NULL) and not(svCompFiscal.Parameters[1].value = ''))  then
  begin
    sec.secuencia := svCompFiscal.Parameters[1].value;
    sec.VencimientoNCF := svCompFiscal.Parameters[5].Value;
    sec.Reorden := svCompFiscal.Parameters[6].Value;
    sec.Cancelado := False;

    if sec.Reorden then
      MessageDlg('Este tipo de comprobantes fiscales se esta agotando, verifique por favor..', mtWarning, [mbOK], 0);
  end
  else
    sec.Cancelado := True;

  result := sec;
end;
function Tdm.GetCompFiscal(TipoCF: string): TSecuenciaNCF;
  var sec : TSecuenciaNCF;
begin
  svCompFiscal.Parameters[1].value := Null;    // retorna el comp fiscal en este parametro output
  svCompFiscal.Parameters[2].value := tipoCF;
  svCompFiscal.Parameters[3].value := 0;
  svCompFiscal.Parameters[4].value := Null; // retorna la fecha de vencimiento del comp fiscal en este parametro output
  svCompFiscal.Parameters[5].value := Null; // retorna el reorden del comp fiscal en este parametro output
  svCompFiscal.execute;

  if (not(svCompFiscal.Parameters[1].value = NULL) and not(svCompFiscal.Parameters[1].value = ''))  then
  begin
    sec.secuencia := svCompFiscal.Parameters[1].value;
    sec.VencimientoNCF := svCompFiscal.Parameters[4].Value;
    sec.Reorden := svCompFiscal.Parameters[5].Value;
    sec.Cancelado := False;

    if sec.Reorden then
      MessageDlg('Este tipo de comprobantes fiscales se esta agotando, verifique por favor..', mtWarning, [mbOK], 0);
  end
  else
    sec.Cancelado := True;

  result := sec;
end;


{

function Tdm.GetCompFiscal(Terminal, TipoCF: string;
  idCliente: integer): string;
begin
  svCompFiscal.Parameters[1].value := null;    // retorna el comp fiscal en este parametro output
  svCompFiscal.Parameters[2].value := Terminal;
  svCompFiscal.Parameters[3].value := TipoCF;
  svCompFiscal.Parameters[4].value := idCliente;
  svCompFiscal.Parameters[5].value := null; // retorna el id de la fecha de vencimiento del comp fiscal en este parametro output
  svCompFiscal.execute;

  if svCompFiscal.Parameters[1].value = NULL then
    result := ''
  else
    result := svCompFiscal.Parameters[1].value;
end;

function Tdm.GetCompFiscal(TipoCF: string;
  idCliente: integer): TSecuenciaNCF;
  var sec : TSecuenciaNCF;
begin
  svCompFiscal.Parameters[1].value := Null;    // retorna el comp fiscal en este parametro output
  svCompFiscal.Parameters[2].value := Null;
  svCompFiscal.Parameters[3].value := TipoCF;
  svCompFiscal.Parameters[4].value := idCliente;
  svCompFiscal.Parameters[5].value := Null; // retorna la fecha de vencimiento del comp fiscal en este parametro output
  svCompFiscal.Parameters[6].value := Null; // retorna el reorden del comp fiscal en este parametro output
  svCompFiscal.execute;

  if (not(svCompFiscal.Parameters[1].value = NULL) and not(svCompFiscal.Parameters[1].value = ''))  then
  begin
    sec.secuencia := svCompFiscal.Parameters[1].value;
    sec.VencimientoNCF := svCompFiscal.Parameters[5].Value;
    sec.Reorden := svCompFiscal.Parameters[6].Value;
    sec.Cancelado := False;

    if sec.Reorden then
      MessageDlg('Este tipo de comprobantes fiscales se esta agotando, verifique por favor..', mtWarning, [mbOK], 0);
  end
  else
    sec.Cancelado := True;

  result := sec;
end;
    }
function Tdm.MonedaLegal: Integer;
begin
  if not Moneda.Active then
    Moneda.Open();

  if Moneda.Locate('CursoLegal', True, []) then
    Result := MonedaIdMoneda.AsInteger
  else
    result := -1;
end;

procedure Tdm.CategorizarObjetos(al: TCustomActionList; const cat: string);
var
  j: Integer;
begin
  for j := 0 to al.ActionCount - 1 do begin
    with cCatObjeto do begin
      Parameters[1].Value := al.Actions[j].Name;
      Parameters[2].Value := TAction(al.Actions[j]).Caption;
      Parameters[3].Value := cat;
      Execute();
    end;
  end;
end;

constructor Tdm.Create(Aowner: TComponent);
begin
  inherited;
  FLoading := False;
end;

procedure Tdm.ValidarCentroCosto(const idCC: Variant; out descr, CC: string;
  const showError: Boolean);
begin
  with rsCentroCosto do begin
    Close();
    Parameters[1].Value := idCC;
    Parameters[2].Value := null;
    Open();
    if Eof then begin
      descr := '';
      CC := '';
      if showError then
        raise Exception.Create('Este centro de costo no existe');
    end
    else begin

      if (showError) and (not(rscentrocostoactivo.value))  then
         raise Exception.Create('Este centro de costo se encuentra inactivo');

      descr := rsCentroCostoCentroCostoDesc.Value;
      CC := rsCentroCostoCentroCosto.Value;
    end;
  end;
end;

procedure Tdm.ValidarCentroCosto(const CC: string; out descr: string;
  out idCC: Variant; const showError: Boolean);
begin
  with rsCentroCosto do begin
    Close();
    Parameters[1].Value := null;
    Parameters[2].Value := cc;
    Open();
    if Eof then begin
      descr := '';
      idCC := null;
      if showError then
        raise Exception.Create('Este centro de costo no existe');
    end else if recordcount > 1 then begin
      if showError then
        raise Exception.Create('existe mas de un Centro con este codigo, seleccione usando la lista');
    end else begin
      if (showError) and (not(rscentrocostoactivo.value))  then
         raise Exception.Create('Este centro de costo se encuentra inactivo');

      descr := rsCentroCostoCentroCostoDesc.Value;
      idCC := rsCentroCostoIdCentroCosto.Value;
    end;
  end;
end;


function Tdm.GetPCSetting(const Index: string): string;
begin
  with rsConfigPC do begin
    if not Active then
      Open();

    if Locate('Configuracion',Index,[loCaseInsensitive]) then
      Result := rsConfigPCValor.Asstring
    else
      Result := '';
  end;
end;

procedure Tdm.SetPCSetting(const Index, Value: string);
begin
  with rsConfigPC do begin
    if not Active then
      Open();

    if not Locate('Configuracion',Index,[loCaseInsensitive]) then begin
      Append();
      rsConfigPCConfiguracion.Value := Index;
    end
    else
      Edit();
    rsConfigPCValor.Value := Value;
    Post();
  end;
end;

function Tdm.CentroCostoUpdate(id, cod, desc, tipo, ref: string;
  act: boolean; Parent : string = ''; nota : string =''; Nivel : integer = 0): boolean;
begin
  try
    spCentroCosto.parameters[1].value := id;
    spCentroCosto.parameters[2].value := cod;
    spCentroCosto.parameters[3].value := desc;
    spCentroCosto.parameters[4].value := act;
    spCentroCosto.parameters[5].value := tipo;
    spCentroCosto.parameters[6].value := ref;
    if Parent = '' then
      spCentroCosto.parameters[7].value := Null
    else
      spCentroCosto.parameters[7].value := Parent;
    spCentroCosto.parameters[8].value := Nivel;
    spCentroCosto.parameters[9].value := Nota;
    spCentroCosto.execute;
    result := not(spCentroCosto.parameters[0].value <> 0);
  except
    Result := False;
  end;
end;

procedure Tdm.ValidarFechaCierre(const fec: TDateTime;
  const modulo: string);
var
  f: TDateTime;
begin
  f := dm.Cierre(Modulo);
  if fec <= f then
    raise Exception.Create('No puede hacer registros antes del cierre: ' + FormatDateTime('dd/mm/yyyy', f));
end;

function Tdm.BuscarFormatoReporte(const rpt: string): string;
begin
  with cBuscarFormatoReporte do begin
    Parameters[1].Value := rpt;
    Execute() ;
    if Parameters[2].Value = NULL then
      Result := ''
    else
      Result := Parameters[2].Value;
  end;
end;

procedure Tdm.GuardarFormatoReporte(const rpt: string; const tipo: string; const path: string);
begin
  with cGuardarFormatoReporte do begin
    Parameters[1].Value := rpt;
    Parameters[2].Value := tipo;
    Parameters[3].Value := path;

    Execute() ;
  end;
end;


function Tdm.TipoDocumentoValido(const Tipo: TDocumentos; Documento: string): boolean;
var
  multiplica, longitud: smallInt;
  resto, digito, valor, suma, i: integer;
  t                 : string;
const
  peso              : array[0..7] of integer = (7, 9, 8, 6, 5, 4, 3, 2);
  remp              : string = '-';
begin

  t := documento;

  documento := trim(StringReplace(documento, remp, '', [rfReplaceAll]));

  if documento = '' then
  begin
    result := false;
    exit;
  end;
  longitud := length(documento);

    //Inicializar la variable suma
  suma := 0;
  case tipo of
    dcCedula, dcConducir, dcArmaFuego:  //Es un numero de cedula o su equivalente
      begin
            {La actual cedula electora dominicana usa un digito verificador
            calculado por modulo 10}
        for i := 0 to longitud - 2 do
        begin
          if i mod 2 = 0 then
            multiplica := 1
          else multiplica := 2;

          valor := strtoIntDef(documento[i + 1], -1) * multiplica;

                //Si el digito que se encontro no es numerico.
          if valor < 0 then break;

          if valor > 9 then
            valor := strToIntDef(copy(intTostr(valor), 1, 1), 0)
              + strToIntDef(copy(intTostr(valor), 2, 1), 0);

          suma := suma + valor;
        end;

            //ahora  la variable Valor toma el digito verificador
        valor := strToIntDef(copy(documento, longitud, 1), 0);

            //Comprar el resultado
        result := valor = (10 - (suma mod 10)) mod 10;

      end;
    dcRNC:                              //Asumimos como valor de RNC con 9 caracteres
      begin
            {Calculo del R N C  modulo 11}
        for i := 0 to longitud - 2 do
        begin
          multiplica := peso[i];

          valor := strtoIntDef(documento[i + 1], -1) * multiplica;

                //Si el digito que se encontro no es numerico.
          if valor < 0 then break;

          suma := suma + valor;
        end;

            //ahora  la variable Valor toma el digito verificador
        valor := strToIntDef(copy(documento, longitud, 1), 0);

        resto := trunc(suma - (integer(trunc(suma / 11)) * 11));

        case resto of
          0: digito := 2;
          1: digito := 1;
        else digito := 11 - resto;
        end;

            //result  :=  valor= (11-(suma mod 11)) mod 11;
        result := valor = digito;
      end;
  else
    result := documento <> '';

  end;
end;

end.





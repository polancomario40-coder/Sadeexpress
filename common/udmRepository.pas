unit udmRepository;

interface

uses
  SysUtils, Classes, DB, ADODB,Variants, Forms, Dialogs;

const
  EVENT_LOGIN_OK = 'Log In exitoso';
  EVENT_LOGIN_FAIL = 'Log In fallido';
  EVENT_LOGOUT = 'Salida sistema';
  EVENT_CHANGE_CIA = 'Ingreso a empresa';
  EVENT_USER_BLOCKED = 'Usuario bloqueado';
  EVENT_INSERT = 'Nuevo registro';
  EVENT_EDIT = 'Registro editado';
  EVENT_DELETE = 'Registro borrado';
  EVENT_PRINT = 'Registro impreso';

  ST_BLOCKED_SYSTEM = 'A4E0EAAE-1C1C-4964-BFC4-5831D9D854E9';
     ST_DEMO_SYSTEM = '907A093C-1350-4E8D-BA5F-DB1E04907FD0';
  ST_GENUINE_SYSTEM = '5CBF2C43-EB6B-41CC-8D54-6EC9A0D43DB7';

type
  TdmRepository = class(TDataModule)
    repConx: TADOConnection;
    rsBuscarUsuario: TADODataSet;
    rsBuscarUsuarioidSegUserGrp: TStringField;
    rsBuscarUsuarioClave: TStringField;
    rsBuscarUsuarioesGrupo: TBooleanField;
    rsBuscarUsuarioObjetoDefault: TStringField;
    rsBuscarUsuarioActivo: TBooleanField;
    rsBuscarUsuarioNivel: TIntegerField;
    rsBuscarUsuarioGuidUserGrp: TGuidField;
    rsEmpresasUsr: TADODataSet;
    rsEmpresasUsridEmpresa: TGuidField;
    rsEmpresasUsrEmpresa: TStringField;
    rsEmpresasUsrRNC: TStringField;
    rsEmpresasUsrServidor: TStringField;
    rsEmpresasUsrBaseDatos: TStringField;
    rsEmpresasUsrTrusted: TBooleanField;
    rsEmpresasUsrUserId: TStringField;
    rsEmpresasUsrUserPwd: TWideStringField;
    rsEmpresasUsrActiva: TBooleanField;
    rsEmpresa: TADODataSet;
    rsEmpresaidEmpresa: TGuidField;
    rsEmpresaEmpresa: TStringField;
    rsEmpresaRNC: TStringField;
    rsEmpresaServidor: TStringField;
    rsEmpresaBaseDatos: TStringField;
    rsEmpresaTrusted: TBooleanField;
    rsEmpresaUserId: TStringField;
    rsEmpresaUserPwd: TWideStringField;
    rsEmpresaActiva: TBooleanField;
    cUsuarioEmpresa: TADOCommand;
    cLeerLic: TADOCommand;
    cEscribirLic: TADOCommand;
    rsFecha: TADODataSet;
    rsFechaFecha: TDateTimeField;
    cLogEvent: TADOCommand;
    rsEmpresaEncriptada: TBooleanField;
    cGetGlobal: TADOCommand;
    cSetGlobal: TADOCommand;
    procedure DataModuleCreate(Sender: TObject);
  private
    FUsuarioActual: string;
    FNivelUsuario: Integer;
    _empresaActual: Variant;
    function DBFecha: TDateTime;
    procedure EscribirLicencia(const idCia: Variant; const lic: string);
    function ReadDCF: string;
    procedure ConnectDCFRepository;

    { Private declarations }
  public
    { Public declarations }
    function ValidarClaveUsuario(const Usr, clave: string): Boolean;
    procedure ConnectRepository;
    procedure CreateDCF;
    
    function ValidarUsuario(const Usr: string; const clave: string): Boolean;
    procedure CambiarClave(const Usr: string; const nuevaclave: string);
    procedure AbrirEmpresas(const idUsr: string);

    function CreateConString(const server, dbname: string;
  const trusted: Boolean; const usr, pwd: string; const Encript: Boolean = True): string;
    function GetCIAConString(const idEmp: Variant): string;

    property UsuarioActual: string read FUsuarioActual;
    property NivelUsuario: Integer read FNivelUsuario;

    function NewGUID: TGUID;

    procedure AgregarUsuarioEmpresa(const idUser: string; const idEmpresa: Variant); overload;
    procedure AgregarUsuarioEmpresa(const idUser: string; const conStr: string); overload;

    procedure ValidarLicenciaCia(const idCia: Variant);
    procedure LogEvent(const evento:string; const objeto: string; const ref: string;
    const descr: string; const datosAdd: string = '');
    procedure LogFormEvent(const evento, ref, descr: string; const datosAdd: string = '');
    procedure BlockUser(const user: string);

    function GetGlobalValue(const id: string): string;
    procedure SetGlobalValue(const id: string; const valor: string);

    property EmpresaActual: Variant read _empresaActual write _empresaActual;
  end;

var
  dmRepository: TdmRepository;

implementation

uses uLicenseManager, DateUtils, Math;

{$R *.dfm}

{ TdmRepository }


function TdmRepository.ValidarClaveUsuario(const Usr, clave: string): Boolean;
var
  cypherPwd: string;
begin
  Result := False;
  if rsEmpresaEncriptada.Value then
    cypherPwd := TLicenseManager.EncryptString(clave)
  else
    cypherPwd := clave;

  with rsBuscarUsuario do begin
    if Active then
      Close();

    Parameters[1].Value := Usr;
    Open();

    if not Eof then begin
      if (not rsBuscarUsuarioEsGrupo.AsBoolean) and (rsBuscarUsuarioActivo.AsBoolean) then begin
        if rsBuscarUsuarioClave.AsString = cypherPwd then begin
          Result := True;
        end;
      end;
    end;

    Close();
  end;
end;

procedure TdmRepository.CambiarClave(const Usr, nuevaclave: string);
var
  cypherPwd: string;
begin
  if rsEmpresaEncriptada.Value then
    cypherPwd := TLicenseManager.EncryptString(nuevaClave)
  else
    cypherPwd := nuevaClave;

  with rsBuscarUsuario do begin
    if Active then
      Close();

    Parameters[1].Value := Usr;
    Open();
    if not Eof then begin
      Edit();
      rsBuscarUsuarioClave.Asstring := cypherPwd;
      Post();
    end;
    Close();
  end;
end;

function TdmRepository.ValidarUsuario(const Usr, clave: string): Boolean;
var
  cypherPwd: string;
begin
  Result := False;
  if rsEmpresaEncriptada.Value then
    cypherPwd := TLicenseManager.EncryptString(clave)
  else
    cypherPwd := clave; 


  with rsBuscarUsuario do begin
    if Active then
      Close();

    Parameters[1].Value := Usr;
    Open();

    if not Eof then begin
      if (not rsBuscarUsuarioEsGrupo.AsBoolean) and (rsBuscarUsuarioActivo.AsBoolean) then begin
        if rsBuscarUsuarioClave.AsString = cypherPwd then begin
          Result := True;
          FUsuarioActual := Usr;
          FNivelUsuario := rsBuscarUsuarioNivel.AsInteger;
        end;
      end;
    end;

    Close();
  end;
end;

procedure TdmRepository.DataModuleCreate(Sender: TObject);
begin
  FUsuarioActual := '';
  ConnectDCFRepository();

  if (GetGlobalValue('SYSTEM_STATUS') = ST_BLOCKED_SYSTEM) then begin
    ShowMessage('Este sistema esta bloqueado! contacte a CBS/DG al 809.508.7935');
    Application.Terminate();
  end;

  {$IFDEF DEMOBUILD}
  if (MonthOf(Date)) >= 7 then begin
    try
      SetGlobalValue('SYSTEM_STATUS', ST_BLOCKED_SYSTEM);
    except
    on e: Exception do
      showmessage(e.Message);
    end;
    ShowMessage('Esta version de evaluacion ha expirado, contacte a CBS/DG al 809.508.7935');
    Application.Terminate();
  end;
  {$ENDIF}

  rsEmpresa.Open();
  EmpresaActual := null;
end;

procedure TdmRepository.ConnectDCFRepository;
begin
  if repConx.Connected then
    repConx.Close();

  if FileExists('CBSRepository.dcf') then begin
    repConx.ConnectionString := ReadDCF();
    try
      repConx.Open();
    except
      ShowMessage('Error conectando el sistema al repositorio [0x0002]');
      Application.Terminate();
    end;
  end
  else begin
    if FileExists('cbsRepository.udl') then begin
      repConx.ConnectionString := 'FILE NAME=cbsrepository.udl';
      try
        repConx.Open();
      except
        ShowMessage('Error conectando el sistema al repositorio [0x0003]');
        Application.Terminate();
      end
    end
    else begin
      ShowMessage('Error conectando el sistema al repositorio [0x0001]');
      Application.Terminate();
    end;
  end;
end;


procedure TdmRepository.ConnectRepository;
var
  nodcf: Boolean;
begin
  nodcf := False;
  if repConx.Connected then
    repConx.Close();

  if FileExists('CBSRepository.dcf') then
    repConx.ConnectionString := ReadDCF()
  else begin
    repConx.ConnectionString := 'FILE NAME=cbsrepository.udl';
    nodcf := True;
  end;

  try
    repConx.Open();
  except
    ShowMessage('Error conectando el sistema al repositorio');
    Application.Terminate();
    Exit;
  end;

  if nodcf then
    CreateDCF();
end;

function TdmRepository.ReadDCF: string;
var
  f: Text;
  linea: string;
begin
  try
    AssignFile(f, 'CBSRepository.dcf');
    Reset(f);
    ReadLn(f, linea);
    Result := TLicenseManager.DeEncryptString(linea);
    CloseFile(f);
  except
    Result := '';
  end;
end;

procedure TdmRepository.CreateDCF;
var
  f: Text;
  linea: string;
begin
  try
    AssignFile(f, 'CBSRepository.dcf');
    Rewrite(f);
    linea := TLicenseManager.EncryptString(repConx.ConnectionString);
    WriteLn(f, linea);
    CloseFile(f);
  except
  end;
end;

procedure TdmRepository.AbrirEmpresas(const idUsr: string);
begin
  with rsEmpresasUsr do begin
    Close();
    Parameters[1].Value := idUsr;
    Open();
  end;
end;

function TdmRepository.CreateConString(const server, dbname: string;
  const trusted: Boolean; const usr, pwd: string; const Encript: Boolean = True): string;
var
  clearUser, clearPwd: string;
begin
  if encript then begin
    clearUser := TLicenseManager.DeEncryptString(Usr);
    clearPwd := TLicenseManager.DeEncryptString(pwd);
  end
  else begin
    clearUser := Usr;
    clearPwd := pwd;
  end;

  Result :='Provider=SQLOLEDB.1;Data Source=' + server + ';Initial catalog=' + dbname;
  if Trusted then
    Result := Result + ';Integrated Security=SSPI'
  else
    Result := Result + ';User ID=' + clearUser + ';Password=' + clearPwd;
end;


function TdmRepository.GetCIAConString(const idEmp: Variant): string;
begin
  rsEmpresa.Requery();

  if rsEmpresa.Locate('idEmpresa',idEmp,[]) then
    Result := CreateConString(rsEmpresaServidor.Asstring, rsEmpresaBaseDatos.Asstring,
                              rsEmpresaTrusted.asBoolean, rsEmpresaUserId.Value,
                              rsEmpresaUserPwd.Value, rsEmpresaEncriptada.Value)
  else
    Result := '';
end;


function TdmRepository.NewGUID: TGUID;
var
  g: TGUID;
begin
  CreateGUID(g);
  Result := g;
end;

procedure TdmRepository.AgregarUsuarioEmpresa(const idUser: string;
  const idEmpresa: Variant);
begin
  with cUsuarioEmpresa do begin
    Parameters[0].Value := idUser;
    Parameters[1].Value := idEmpresa;
    Execute();
  end;
end;

procedure TdmRepository.AgregarUsuarioEmpresa(const idUser,
  conStr: string);
var
  id: Variant;
begin
  id := null;

  AbrirEmpresas(UsuarioActual);
  while not rsEmpresasUsr.Eof do begin
    if CreateConString(rsEmpresasUsrServidor.Asstring, rsEmpresasUsrBaseDatos.Asstring,
                       rsEmpresasUsrTrusted.asBoolean, rsEmpresasUsrUserId.Value,
                        rsEmpresasUsrUserPwd.Value) = conStr then begin
      id := rsEmpresasUsrIdEmpresa.Value;
      break;
    end;
    rsEmpresasUsr.Next();
  end;

  if id <> NULL then
    AgregarUsuarioEmpresa(idUser,id);
end;

procedure TdmRepository.ValidarLicenciaCia(const idCia: Variant);
var
  lm: TLicenseManager;
  msg: string;
  licstr: string;
begin
  try
    with cLeerLic do begin
      Parameters[1].Value := idCia;
      Execute();
      if (Parameters[2].Value = NULL) or (Parameters[2].Value = '') then begin
        licstr := '';
        msg := 'La licencia para esta empresa no esta presente';
      end
      else
        licstr := Parameters[2].Value;
        //showmessage(format('largo %d',[length(licstr)]));
    end;

    if licstr <> '' then begin
      lm := TLicenseManager.Create(licstr, DBFecha());
      if not lm.EsValida then begin
        if lm.Cancelada then
          msg := 'La licencia para utilizar esta empresa fue cancelada'
        else begin
          msg := 'La licencia para utilizar esta empresa ha expirado';
          lm.AnularLicencia();
          EscribirLicencia(idCia, lm.LicenciaCodif);
        end;
      end;
    end;
  except
    msg := 'Error Validando la licencia';
    licstr := '';
  end;

  if msg <> '' then begin
    ShowMessage(msg);
    Application.Terminate();
    Application.ProcessMessages();
  end;
end;

procedure TdmRepository.EscribirLicencia(const idCia: Variant; const lic: string);
begin
  //showmessage(format('largo %d',[length(lic)]));
  with cEscribirLic do begin
    Parameters[1].Value := idCia;
    Parameters[2].Value := lic;
    Execute();
  end;
end;

function TdmRepository.DBFecha: TDateTime;
begin
   with rsfecha do begin
     Close();
     Open();
     Result := Fields[0].AsDateTime;
   end;
end;


procedure TdmRepository.LogEvent(const evento, objeto, ref, descr: string;
  const datosAdd: string = '');
begin
  with cLogEvent do begin
    Parameters[1].Value := EmpresaActual;
    Parameters[2].Value := UsuarioActual;
    Parameters[3].Value := evento;
    Parameters[4].Value := objeto;
    Parameters[5].Value := ref;
    Parameters[6].Value := descr;
    Parameters[7].Value := datosAdd;
    Execute();
  end;
end;

procedure TdmRepository.LogFormEvent(const evento, ref, descr: string; const datosAdd: string = '');
var
  form: string;
begin
  if Screen.ActiveForm = nil then
    form := application.Title
  else
    Form := application.Title + '.' + Screen.ActiveForm.ClassName;

  with cLogEvent do begin
    Parameters[1].Value := EmpresaActual;
    Parameters[2].Value := UsuarioActual;
    Parameters[3].Value := evento;
    Parameters[4].Value := Form;
    Parameters[5].Value := ref;
    Parameters[6].Value := descr;
    Parameters[7].Value := datosAdd;
    Execute();
  end;
end;


procedure TdmRepository.BlockUser(const user: string);
begin
  repConx.Execute('update segUserGrp set Activo = 0 where esGrupo = 0 and idSegUserGrp = ' + QuotedStr(user));
  LogFormEvent(EVENT_USER_BLOCKED,user,'Usuario bloqueado por exceder numero de intentos');
end;

function TdmRepository.GetGlobalValue(const id: string): string;
begin
  with cGetGlobal do begin
    Parameters[1].Value := id;
    Execute();
    Result := Parameters[2].Value;
  end;
end;

procedure TdmRepository.SetGlobalValue(const id, valor: string);
begin
  with cSetGlobal do begin
    Parameters[1].Value := id;
    Parameters[2].Value := valor;
    Parameters[3].Value := '';
    Execute();
  end;
end;

end.

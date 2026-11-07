unit uUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, ADODB, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxCheckBox, cxDBEdit, cxImage, cxMaskEdit, cxSpinEdit,
  cxControls, cxContainer, cxEdit, cxTextEdit;

type
  TUsuario = class(TFForm)
    rs: TADODataSet;
    rsidSegUserGrp: TStringField;
    rsClave: TStringField;
    rsesGrupo: TBooleanField;
    rsObjetoDefault: TStringField;
    rsActivo: TBooleanField;
    rsNivel: TIntegerField;
    rsGuidUserGrp: TGuidField;
    rsEmail: TStringField;
    rsNombre: TStringField;
    rsTelefono: TStringField;
    rsFoto: TBlobField;
    rsPreguntaSecreta: TStringField;
    rsRespuesta: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edCodigo: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBImage1: TcxDBImage;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    rsCambiarClave: TBooleanField;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    rsValidarusuario: TADODataSet;
    rsValidarusuarioidSegUserGrp: TStringField;
    rsValidarusuarioClave: TStringField;
    rsValidarusuarioesGrupo: TBooleanField;
    rsValidarusuarioObjetoDefault: TStringField;
    rsValidarusuarioActivo: TBooleanField;
    rsValidarusuarioNivel: TIntegerField;
    rsValidarusuarioGuidUserGrp: TGuidField;
    rsValidarusuarioEmail: TStringField;
    rsValidarusuarioNombre: TStringField;
    rsValidarusuarioTelefono: TStringField;
    rsValidarusuarioFoto: TBlobField;
    rsValidarusuarioPreguntaSecreta: TStringField;
    rsValidarusuarioRespuesta: TStringField;
    rsValidarusuarioCambiarClave: TBooleanField;
    procedure rsidSegUserGrpValidate(Sender: TField);
    procedure rsNewRecord(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    _UsuarioActual: Boolean;
    { Private declarations }
  public
    { Public declarations }
    property UsuarioActual:Boolean read _UsuarioActual write _UsuarioActual;
  end;

var
  Usuario: TUsuario;

procedure AbrirUsuario(const usuario: string);
function  CrearUsuario: string;

implementation

uses udmRepository, uCambiarClave;

{$R *.dfm}

procedure TUsuario.rsidSegUserGrpValidate(Sender: TField);
begin
  inherited;
  with rsValidarusuario do begin
    Close();
    Parameters[1].Value := rsidSegUserGrp.Value;
    Open();
    if not Eof then begin
      if rsGuidUserGrp.Value <> rsValidarusuarioGuidUserGrp.Value then
        raise Exception.Create('Esta cuenta ya existe');
    end;
  end;
end;

function CrearUsuario: string;
begin
  with TUsuario.Create(Application) do begin
    rs.Close();
    rs.Parameters[1].Value := '***';
    rs.Open();
    rs.Append();

    if ShowModal() = mrOk then
      Result := rsIdSegUserGrp.Value;

    Release();
  end;
end;

procedure AbrirUsuario(const usuario: string);
var
  u: string;
begin
  if usuario = '' then
    u := dmRepository.UsuarioActual
  else
    u := usuario;

  with TUsuario.Create(Application) do begin
    with rs do begin
      Close();
      parameters[1].Value := u;
      Open();
    end;
    UsuarioActual := (u = dmRepository.UsuarioActual);
    edCodigo.Enabled := False;
    rs.Edit();
    ShowModal();
    Release();
  end;
end;




procedure TUsuario.rsNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsActivo.Value := True;
  rsCambiarClave.Value := true;
  rsNivel.Value := 0;
  rsGuidUserGrp.AsGuid := dmRepository.NewGUID();
  rsEsGrupo.Value := False;
end;

procedure TUsuario.cxButton1Click(Sender: TObject);
begin
  inherited;
  if rs.State in dsEditModes then
    rs.Post();
  Modalresult := mrOk;
end;

procedure TUsuario.cxButton2Click(Sender: TObject);
begin
  inherited;
  if rs.State in dsEditmodes then
    rs.Cancel();

  ModalResult := mrCancel;
end;

procedure TUsuario.cxButton3Click(Sender: TObject);
begin
  inherited;
  if not (rs.State in dsEditModes) then
    MostrarCambioClave(rsidSegUserGrp.Value);
end;

end.

unit uMultiLogin;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, Dialogs, ComCtrls, wwdblook, Db, cxLookAndFeelPainters,
  cxButtons, Gradient, ExtCtrls, cxControls, cxContainer, cxEdit,
  cxTextEdit;

type
  TMultiLogin = class(TForm)
    Label1: TLabel;
    Password: TcxTextEdit;
    usuario: TcxTextEdit;
    Label2: TLabel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    Image1: TImage;
    Label5: TLabel;
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure nuevaclaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  Protected
     intentos : integer;
  end;

var
  MultiLogin: TMultiLogin;
  Cambiar : boolean;

implementation

uses udmRepository, uutiles, uCambiarClave;


{$R *.DFM}

procedure TMultiLogin.OKBtnClick(Sender: TObject);
begin
   if (usuario.text <> '') then
   begin
      if dmRepository.ValidarUsuario(usuario.text, password.text) then
      begin
         dmRepository.LogFormEvent(EVENT_LOGIN_OK,usuario.Text,'Hora local: ' + FormatDateTime('dd/mm/yyyy hh:nn:ss',Now()));
         tag := 1;
         close;
      end
      else
      begin
         dmRepository.LogFormEvent(EVENT_LOGIN_FAIL,usuario.Text, 'Fallo en ingreso de credenciales');
         showmessage('Nombre de Usuario o Password Invalido');
         intentos := intentos + 1;
         if intentos >= 5 then begin
            dmRepository.BlockUser(usuario.Text);
            ShowMessage('Ha soprepasado el limite de intentos para proveer credenciales validas' + #13 +
                         'Su usuario ha sido bloqueado, consulte su administrador');
            Application.Terminate();
         end;
      end
   end
   else
     Showmessage('Nombre de usuario no especificado');
end;

procedure TMultiLogin.CancelBtnClick(Sender: TObject);
begin
  application.Terminate;
end;

function DelphiIsRunning : boolean;
var
  H1, H2, H3, H4 : Hwnd;
const
  A1 : array[0..12] of char = 'TApplication'#0;
  A2 : array[0..15] of char = 'TAlignPalette'#0;
  A3 : array[0..18] of char = 'TPropertyInspector'#0;
  A4 : array[0..11] of char = 'TAppBuilder'#0;
  T1 : array[0..6] of char = 'Delphi'#0;
begin
  H1 := FindWindow(A1, T1);
  H2 := FindWindow(A2, nil);
  H3 := FindWindow(A3, nil);
  H4 := FindWindow(A4, nil);
  Result := (H1 <> 0) and (H2 <> 0) and
            (H3 <> 0) and (H4 <> 0);
end;

procedure TMultiLogin.FormCreate(Sender: TObject);
begin
  if WinUserName() = 'Jorge Montas' then
    Usuario.Text := 'cbsAdmin'
  else
    Usuario.Text := WinUserName() ;  //buscar en registry el ultimo usuario !!!!!

  intentos := 0;
  tag := 0;
end;

procedure TMultiLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if tag <> 1 then application.Terminate ;
end;


procedure TMultiLogin.nuevaclaveClick(Sender: TObject);
begin
   if (usuario.text = '') then  //or not((dmRepository.ValidarUsuario(usuario.text, password.text))) then
     exit;

{
   if (Cambiar) then
   begin
     self.Height := 320;
     tbutton(sender).Caption:= 'Aplicar';
     Cambiar := Not(Cambiar);
   end
   else
   begin
     if Nuevo1.text = Nuevo2.text then
     begin
        tbutton(sender).Caption:= 'Cambiar Clave';
        self.Height := 235;
        Cambiar := Not(Cambiar);
        dmRepository.CambiarClave(usuario.Text, Nuevo1.text);
        password.Clear;
        nuevo1.clear;
        nuevo2.Clear;
     end
     else
     begin
         Showmessage('Re-escriba el nuevo password en los dos espacios');
     end;
   end;
           }
  MostrarCambioClave(usuario.Text);
  Password.Text := '';
  Password.SetFocus();
end;

procedure TMultiLogin.FormShow(Sender: TObject);
begin
  Password.Text := '';
end;

Initialization
  Cambiar := true;    
end.


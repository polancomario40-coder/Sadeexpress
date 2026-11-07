unit Upassword;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, Dialogs, ComCtrls, wwdblook, Db, cxLookAndFeelPainters,
  cxButtons, Gradient, ExtCtrls;

type
  TPassword = class(TForm)
    Label1: TLabel;
    Password: TEdit;
    usuario: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Nuevo1: TEdit;
    Label4: TLabel;
    Nuevo2: TEdit;
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
  Password: TPassword;
  Cambiar : boolean;

implementation

uses udata, UUtiles;


{$R *.DFM}

procedure TPassword.OKBtnClick(Sender: TObject);
begin
   if (usuario.text <> '') then
   begin
      if dm.login(usuario.text, password.text) then
      begin
         tag := 1;
         close;
      end
      else
      begin
         showmessage('Nombre de Usuario o Password Invalido');
         intentos := intentos + 1;
         if intentos >= 3 then Application.Terminate;
      end
   end
   else
     Showmessage('Nombre de usuario no especificado');
end;

procedure TPassword.CancelBtnClick(Sender: TObject);
begin
  application.Terminate;
end;

procedure TPassword.FormCreate(Sender: TObject);
begin
  Usuario.Text := WinUserName() ;
  intentos := 0;
  tag := 0;
end;

procedure TPassword.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if tag <> 1 then application.Terminate ;
end;


procedure TPassword.nuevaclaveClick(Sender: TObject);
begin
   if (usuario.text = '')  or not((dm.login(usuario.text, password.text))) then
     exit;

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
        dm.CambiarClave(Nuevo1.text);
        password.Clear;
        nuevo1.clear;
        nuevo2.Clear;
     end
     else
     begin
         Showmessage('Re-escriba el nuevo password en los dos espacios');
     end;
   end;

end;

procedure TPassword.FormShow(Sender: TObject);
begin
  Password.Text := '';
end;

Initialization
  Cambiar := true;

end.


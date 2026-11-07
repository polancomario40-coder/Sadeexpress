unit uCambiarClave;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, cxLookAndFeelPainters, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, DB, Wwdatsrc;

type
  TCambiarClave = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edVieja: TcxTextEdit;
    edConfirm: TcxTextEdit;
    edNueva: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    _usuario: string;
    { Private declarations }
  public
    { Public declarations }
    property Usuario: string read _usuario write _usuario;
  end;

var
  CambiarClave: TCambiarClave;

procedure MostrarCambioClave(const usr: string);

implementation

uses udmRepository;

{$R *.dfm}

procedure TCambiarClave.cxButton2Click(Sender: TObject);
begin

  Modalresult := mrCancel;
end;

procedure TCambiarClave.cxButton1Click(Sender: TObject);
begin
 

  if edNueva.Text <> edConfirm.Text then
    raise Exception.Create('La clave nueva no coincide con su confirmacion');
    
  if dmRepository.ValidarClaveusuario(Usuario, edVieja.Text) then begin
    dmRepository.CambiarClave(Usuario, edNueva.Text);
    Modalresult := mrOk;
  end
  else
    ShowMessage('La clave anterior no coincide');
end;


procedure MostrarCambioClave(const usr: string);
begin
  with TCambiarClave.Create(Application) do begin
    Usuario := usr;
    ShowModal();

    Release();
  end;
end;


end.

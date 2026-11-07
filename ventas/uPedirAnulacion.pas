unit uPedirAnulacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSimpleForm, DB, Gradient, cxMemo, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, ADODB,
  cxLookAndFeelPainters, cxButtons;

type
  TPedirAnulacion = class(TSimpleForm)
    rs: TADODataSet;
    Label1: TLabel;
    Label2: TLabel;
    luCausa: TcxLookupComboBox;
    Label3: TLabel;
    mNota: TcxMemo;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    rsidCausaAnulacion: TStringField;
    rsCausaAnulacion: TStringField;
    rsRequiereComentario: TBooleanField;
    procedure cxButton1Click(Sender: TObject);
  private
    procedure AbrirConceptos(const tipo: string);
    { Private declarations }
  public
    { Public declarations }
    class function PedirConceptoAnulacion(const tipo: string; out causa: string; out nota: string): Boolean;
  end;

var
  PedirAnulacion: TPedirAnulacion;

implementation

uses Udata;

{$R *.dfm}

{ TPedirAnulacion }

class function TPedirAnulacion.PedirConceptoAnulacion(const tipo: string;
  out causa, nota: string): Boolean;
begin
  with TPedirAnulacion.Create(Application) do begin
    AbrirConceptos(tipo);
    if ShowModal() = mrOk then begin
      causa := luCausa.EditValue;
      nota := mNota.Text;
      Result := True;
    end
    else begin
      causa := '';
      nota := '';
      Result := false;
    end;
    Release();
  end;
end;

procedure TPedirAnulacion.cxButton1Click(Sender: TObject);
begin
  inherited;  
  if luCausa.EditValue = null then
    raise Exception.Create('Es necesario una causa para la anulacion de este documento');

  if rs.Locate('idCausaAnulacion',luCausa.EditValue,[]) then begin
    if rsRequiereComentario.Value and (mNota.Text = '') then
      raise Exception.Create('Esta causa de anulacion requiere que el usuario escriba un comentario');
  end;
end;

procedure TPedirAnulacion.AbrirConceptos(const tipo: string);
begin
  with rs do begin
    Close();
    Parameters[1].Value := tipo;
    Open();
  end;
end;

end.

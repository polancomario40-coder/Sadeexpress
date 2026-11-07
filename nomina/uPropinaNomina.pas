unit uPropinaNomina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, ADODB, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxLabel, cxCurrencyEdit, cxDBEdit, cxControls, cxContainer,
  cxEdit, cxTextEdit;

type
  TPropinaNomina = class(TFForm)
    rsPropina: TADODataSet;
    rsPropinaNominaId: TIntegerField;
    rsPropinaPropina: TBCDField;
    edNomina: TcxDBTextEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PropinaNomina: TPropinaNomina;

procedure RegistrarPropina(const nom: Integer);

implementation

uses Udata;

{$R *.dfm}

procedure RegistrarPropina(const nom: Integer);
begin
  with TPropinaNomina.Create(Application) do begin
    rsPropina.Close();
    rsPropina.Parameters[0].Value := nom;
    rsPropina.Open();

    if rsPropina.Eof then begin
      rsPropina.Append();
      rsPropinaNominaId.Value := nom;
      rsPropinaPropina.Value := 0;
    end;
    
    ShowModal();

    Release();
  end;
end;

procedure TPropinaNomina.cxButton1Click(Sender: TObject);
begin
  inherited;
  if rsPropina.State in dsEditModes then begin
    rsPropina.Post();
  end;

  Close();
end;

procedure TPropinaNomina.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close();
end;

end.

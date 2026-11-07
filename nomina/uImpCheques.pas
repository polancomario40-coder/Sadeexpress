unit uImpCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxSpinEdit, StdCtrls, cxLookAndFeelPainters, cxButtons, DB, cxLabel,
  cxDBLabel, ADODB, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TImpCheques = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    seDesde: TcxSpinEdit;
    seHasta: TcxSpinEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ds: TDataSource;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    rs: TADODataSet;
    rsCheque: TIntegerField;
    rsNumero: TIntegerField;
    rsEmpleado: TStringField;
    cxButton3: TcxButton;
    cCancelar: TADOCommand;
    rsDpto: TADODataSet;
    rsDptoDepartamentoId: TIntegerField;
    rsDptoDepartamento: TStringField;
    dsDpto: TDataSource;
    luDpto: TcxLookupComboBox;
    Label3: TLabel;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure ImprimirRangoCheques;
    procedure CancelarRangoCheques;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpCheques: TImpCheques;

implementation

uses Udata, UdataNom, urcheques;

{$R *.dfm}

procedure TImpCheques.cxButton2Click(Sender: TObject);
begin
  Close();
end;

procedure TImpCheques.cxButton1Click(Sender: TObject);
begin
  ImprimirRangoCheques();
end;

procedure TImpCheques.ImprimirRangoCheques;
begin
  with rs do begin
    Close();
    Parameters[1].Value := dmNom.NominasNominaId.AsInteger;
    Parameters[2].Value := seDesde.Value;
    Parameters[3].Value := seHasta.Value;
    Parameters[4].Value := luDpto.EditValue;
    Open();

    while not Eof do begin
      PrintChk(rsCheque.AsInteger);
      Sleep(500);
      Application.ProcessMessages();
      Next();
    end;
  end;
end;

procedure TImpCheques.CancelarRangoCheques;
begin
  with rs do begin
    Close();
    Parameters[1].Value := dmNom.NominasNominaId.AsInteger;
    Parameters[2].Value := seDesde.Value;
    Parameters[3].Value := seHasta.Value;
    Parameters[4].Value := luDpto.EditValue;
    Open();

    while not Eof do begin
      cCancelar.Parameters[1].Value := rsCheque.AsInteger;
      cCancelar.Parameters[2].Value := 'Error de impresion en nomina';
      cCancelar.Execute();
      Application.ProcessMessages();
      Next();
    end;
  end;
end;

procedure TImpCheques.cxButton3Click(Sender: TObject);
begin
  if Application.MessageBox('Esta seguro de cancelar estos cheques','Confirme',MB_ICONQUESTION + MB_YESNO) = ID_YES then begin
    CancelarRangoCheques();
    Showmessage('Los cheques han sido cancelados');
    Close();
  end;
end;

procedure TImpCheques.FormCreate(Sender: TObject);
begin
  rsDpto.Open();
  luDpto.EditValue := 0;
end;

end.

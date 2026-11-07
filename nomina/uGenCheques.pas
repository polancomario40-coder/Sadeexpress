unit uGenCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxSpinEdit, StdCtrls, cxLookAndFeelPainters, cxButtons, DB, cxLabel,
  cxDBLabel, ADODB;

type
  TGenCheques = class(TForm)
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    ds: TDataSource;
    cGenerar: TADOCommand;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FCtaBanco: Integer;
    procedure GenerarCheques;
    { Private declarations }
  public
    { Public declarations }
    property CtaBanco: Integer read FCtaBanco;
  end;

var
  GenCheques: TGenCheques;

implementation

uses Udata, UdataNom;

{$R *.dfm}

procedure TGenCheques.cxButton2Click(Sender: TObject);
begin
  Close();
end;

procedure TGenCheques.cxButton1Click(Sender: TObject);
begin
  GenerarCheques();
end;

procedure TGenCheques.GenerarCheques;
begin
  if CtaBanco <> -1 then begin
    with cGenerar do begin
      Parameters[1].Value := dmNom.NominasNominaID.Value;
      Parameters[2].Value := CtaBanco;
      Parameters[3].Value := dm.DBFecha();
      Execute();
    end;
  end
  else
    raise Exception.Create('Defina la cuenta de banco para los cheques de nomina'#13 +
                           'Mantenimiento->Setup->Parametros: BCO_NOMINA');
end;

procedure TGenCheques.FormCreate(Sender: TObject);
var
  cta: Variant;
begin
  FCtaBanco := -1;
  cta := dm.GetDefault('BCO_NOMINA');
  if cta = NULL then
    raise Exception.Create('Defina la cuenta de banco para los cheques de nomina'#13 +
                           'Mantenimiento->Setup->Parametros: BCO_NOMINA')
  else
    FCtaBanco := cta;
end;

end.

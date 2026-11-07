unit uGenerarFactRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, StdCtrls, DB, Wwdatsrc,
  cxLookAndFeelPainters, cxButtons, cxSpinEdit, ADODB;

type
  TGenerarFactRec = class(TFForm)
    Label1: TLabel;
    Label2: TLabel;
    deFecha: TcxDateEdit;
    seDia: TcxSpinEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cGenerar: TADOCommand;
    Label3: TLabel;
    seFact: TcxSpinEdit;
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GenerarFactRec: TGenerarFactRec;

implementation

uses DateUtils, Udata;

{$R *.dfm}

procedure TGenerarFactRec.FormCreate(Sender: TObject);
begin
  inherited;
  Modulo := 'Venta';
  deFecha.Date := EndOfTheMonth(Date());
  
end;

procedure TGenerarFactRec.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TGenerarFactRec.cxButton1Click(Sender: TObject);
begin
  inherited;
  if deFecha.Date <= dm.cierre(Modulo) then
    raise Exception.Create('No puede generar facturas antes del ultimo cierre');

  with cGenerar do begin
    Parameters[1].Value := seDia.Value;
    Parameters[2].Value := int(deFecha.Date);
    Parameters[3].Value := dm.UsuarioActual;
    Parameters[4].Value := seFact.Value;
    Execute();
  end;

  ShowMessage('Las facturas se generaron exitosamente');
  CrearLog('Generacion');
  Close();
end;

end.

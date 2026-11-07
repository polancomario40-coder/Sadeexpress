unit uCerrarPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls, Buttons, ADODB,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar;

type
  TfCerrarPeriodo = class(TForm)
    Label2: TLabel;
    dtHasta: TcxDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cCierre: TADOCommand;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCerrarPeriodo: TfCerrarPeriodo;

implementation

uses ugldm;

{$R *.dfm}

procedure TfCerrarPeriodo.BitBtn1Click(Sender: TObject);
begin
  if MessageDlg('Esta seguro de cerrar este periodo',mtConfirmation, [mbYes , mbNo],0) = mrYes then begin
    with cCierre do begin
      Parameters[01].Value := dtHasta.Date;
      Parameters[02].Value := 'Cierre contable';
      Execute();
      ShowMessage('El periodo se ha cerrado con exito');
    end;
  end;

end;

procedure TfCerrarPeriodo.BitBtn2Click(Sender: TObject);
begin
  Close();
end;

end.

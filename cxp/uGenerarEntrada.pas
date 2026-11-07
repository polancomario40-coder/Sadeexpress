unit uGenerarEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, StdCtrls, DB, dxCntner, Gradient, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLookAndFeelPainters, cxButtons, ADODB, cxCheckBox, ImgList, ActnList,
  Wwdatsrc, uSimpleForm;

type
  TfGenerarEntrada = class(TSimpleForm)
    Label1: TLabel;
    Label2: TLabel;
    edDesde: TcxDateEdit;
    edHasta: TcxDateEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cGenerarED: TADOCommand;
    Gradient3: TGradient;
    Label3: TLabel;
    cCheques: TcxCheckBox;
    cxCheckBox1: TcxCheckBox;
    cCXP: TcxCheckBox;
    cCancelados: TcxCheckBox;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure GenerarEntrada(const desde, hasta: TDateTime; Chq, cxp, cancelados : boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fGenerarEntrada: TfGenerarEntrada;

implementation

uses uMAINDM, Udata;

{$R *.dfm}

procedure TfGenerarEntrada.cxButton1Click(Sender: TObject);
begin
  inherited;
  if edDesde.Date <= dm.Cierre() then
    raise exception.Create('No puede generar entradas anteriores al ultimo cierre');
    
  GenerarEntrada(edDesde.Date, edHasta.Date, cCheques.checked, cCxp.checked, cCancelados.Checked );
  ShowMessage('Entrada generada con exito');
end;

procedure TfGenerarEntrada.GenerarEntrada(const desde, hasta: TDateTime; Chq, cxp, cancelados : boolean);
begin
  with cGenerarED do begin
    Parameters[1].Value := desde;
    Parameters[2].Value := hasta;
    Parameters[3].Value := chq;
    Parameters[4].Value := cxp;
    Parameters[5].Value := Cancelados;

    Execute();
    if Parameters[0].Value > 0 then
      raise Exception.Create('Error generando entrada');
  end;
end;

procedure TfGenerarEntrada.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TfGenerarEntrada.FormCreate(Sender: TObject);
begin
  inherited;
  edDesde.Date := Date();
  edHasta.Date := Date();
end;

end.

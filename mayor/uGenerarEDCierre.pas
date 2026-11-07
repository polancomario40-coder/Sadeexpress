unit uGenerarEDCierre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls, ADODB, Buttons;

type
  TfGenEDCierre = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edDesde: TdxDateEdit;
    StyleController: TdxEditStyleController;
    edHasta: TdxDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cGenerarED: TADOCommand;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fGenEDCierre: TfGenEDCierre;

implementation

uses ugldm, DateUtils, Udata;

{$R *.dfm}

procedure TfGenEDCierre.FormCreate(Sender: TObject);
begin
  edDesde.Date := DateOf(StartOfAYear(YearOf(Date()) - 1));
  edHasta.Date := DateOf(EndOfAYear(YearOf(Date()) - 1));
end;

procedure TfGenEDCierre.BitBtn1Click(Sender: TObject);
var
  ed: string;
begin
  ed := dm.GetDefaultStr('ED_CIERRE');
  if ed = '' then
    ed := '99';
  with cGenerarED do begin
    Parameters[01].Value := edDesde.Date;
    Parameters[02].Value := edHasta.Date;
    Parameters[03].Value := dm.UsuarioActual;
    Parameters[04].Value := ed;              
    Execute();
  end;
  ShowMessage('Entrada de cierre generada exitosamente');
end;

procedure TfGenEDCierre.BitBtn2Click(Sender: TObject);
begin
  Close();
end;

end.

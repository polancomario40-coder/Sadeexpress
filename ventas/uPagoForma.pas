unit uPagoForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantConf, DB, ADODB, ImgList, DBActns, ActnList, Wwdatsrc,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, Grids, Wwdbigrd,
  Wwdbgrid;

type
  TPagoForma = class(TMantConf)
    PagoForma: TADODataSet;
    PagoFormaidPagoForma: TStringField;
    PagoFormaesTarjeta: TBooleanField;
    PagoFormaComision: TFloatField;
    PagoFormaCC: TStringField;
    PagoFormaCtaComision: TStringField;
    PagoFormaCtaImpuesto: TStringField;
    PagoFormaPorcImpuesto: TFloatField;
    procedure PagoFormaNewRecord(DataSet: TDataSet);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PagoForma: TPagoForma;

implementation

uses Udata, uformx, uBuscarCuentaMayor, UUtiles;

{$R *.dfm}

procedure TPagoForma.PagoFormaNewRecord(DataSet: TDataSet);
begin
  inherited;
  pagoformaestarjeta.Value := false;
end;

procedure TPagoForma.wwDBGrid1DblClick(Sender: TObject);
var
  s: string;
begin
  inherited;
  if wwDBGrid1.SelectedField = PagoFormaCC then begin
    s := BuscarCtaDetalle();
    if s <> '' then begin
      if not (PagoForma.State in dsEditModes) then
        PagoForma.Edit();

      PagoFormaCC.Value := s;
    end;
  end;
end;

end.

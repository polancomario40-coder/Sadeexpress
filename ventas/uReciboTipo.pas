unit uReciboTipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantConf, DB, ADODB, ImgList, DBActns, ActnList, Wwdatsrc,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, Grids, Wwdbigrd,
  Wwdbgrid;

type
  TReciboTipo = class(TMantConf)
    RS: TADODataSet;
    RSidReciboTipo: TStringField;
    RSReciboTipo: TStringField;
    RSCC: TStringField;
    RSesCxC: TBooleanField;
    RSesAvance: TBooleanField;
    RSCtaAplicacion: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReciboTipo: TReciboTipo;

implementation

uses Udata, uBuscarCuentaMayor, UUtiles;

{$R *.dfm}

procedure TReciboTipo.FormCreate(Sender: TObject);
begin
  inherited;
  RS.Open;
end;

procedure TReciboTipo.wwDBGrid1DblClick(Sender: TObject);
var
  s: string;
begin
  inherited;
  if (rs.State in dsEditModes) then begin
    if wwDBGrid1.SelectedField = RSCC then begin
       s := BuscarCtaDetalle();
       if s <> '' then
          rsCC.Value := s;
    end;
  end;
end;

end.

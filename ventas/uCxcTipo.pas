unit uCxcTipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantConf, DB, ADODB, ImgList, DBActns, ActnList, Wwdatsrc,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, Grids, Wwdbigrd,
  Wwdbgrid;

type
  TCxcTipo = class(TMantConf)
    rsCxcTipo: TADODataSet;
    rsCxcTipoidCxcTipo: TIntegerField;
    rsCxcTipoCxcTipo: TStringField;
    rsCxcTipoesCredito: TBooleanField;
    rsCxcTipoCC: TStringField;
    rsCxcTipouidCxcTipo: TGuidField;
    rsCxcTipoInterno: TBooleanField;
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CxcTipo: TCxcTipo;

implementation

uses Udata, uBuscarCuentaMayor;

{$R *.dfm}

procedure TCxcTipo.wwDBGrid1DblClick(Sender: TObject);
var
  s: string;
begin
  inherited;
  if (rsCXCTipo.State in dsEditModes) then begin
    if wwDBGrid1.SelectedField = rsCXCTipoCC then begin
       s := BuscarCtaDetalle();
       if s <> '' then
          rsCXCTipoCC.Value := s;
    end;
  end;
end;

end.

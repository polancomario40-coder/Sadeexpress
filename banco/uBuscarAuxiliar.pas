unit uBuscarAuxiliar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, dxTL, dxDBCtrl, dxDBGrid, DB, dxCntner, ADODB, StdCtrls, Buttons,
  dxExEdtr;

type
  TBuscarAuxiliar = class(TForm)
    CDSource: TDataSource;
    rs: TADODataSet;
    Grid: TdxDBGrid;
    bbOk: TBitBtn;
    bbCan: TBitBtn;
    rsidAuxiliar: TStringField;
    rsidCuenta: TStringField;
    rsAuxiliar: TStringField;
    rsActivo: TBooleanField;
    GrididAuxiliar: TdxDBGridMaskColumn;
    GridAuxiliar: TdxDBGridMaskColumn;
    procedure GridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BuscarAuxiliar: TBuscarAuxiliar;

function BuscarAuxiliarCta(const idCta: string): string;

implementation

uses  udmBancos, Udata;

{$R *.dfm}

procedure TBuscarAuxiliar.GridDblClick(Sender: TObject);
begin
  bbOk.Click();
end;

function  BuscarAuxiliarCta(const idCta: string): string;
begin
  with TBuscarAuxiliar.Create(Application) do begin
    rs.Close();
    rs.Parameters[1].Value := idCta;
    rs.Open();
    if ShowModal() = mrOk then
      Result := rsIdAuxiliar.AsString
    else
      Result := '';
  end;
end;

end.

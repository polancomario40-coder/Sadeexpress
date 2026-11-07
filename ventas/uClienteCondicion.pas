unit uClienteCondicion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantConf, DB, ADODB, ImgList, DBActns, ActnList, Wwdatsrc,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, Grids, Wwdbigrd,
  Wwdbgrid;

type
  TClienteCondicion = class(TMantConf)
    qryCondicion: TADOQuery;
    qryCondicionidCondicion: TStringField;
    qryCondicionCondicion: TStringField;
    qryCondicionCredito: TBooleanField;
    qryCondicionDias: TIntegerField;
    qryCondicionPrecioContado: TBooleanField;
    qryCondicionNoCreditoCheck: TBooleanField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClienteCondicion: TClienteCondicion;

implementation

uses Udata;

{$R *.dfm}

procedure TClienteCondicion.FormCreate(Sender: TObject);
begin
  inherited;
  qryCondicion.Open;
end;

end.

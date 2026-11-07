unit uCentroCostoFind;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBusqueda, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, DB,
  ADODB, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, dxEdLib;

type
  TFindCentroCosto = class(TBusqueda)
    Tipo: TADODataSet;
    dsTipo: TDataSource;
    TipoTipo: TStringField;
    lTipo: TdxLookupEdit;
    Label2: TLabel;
    Activo: TdxCheckEdit;
    SpeedButton1: TSpeedButton;
    RSidCentroCosto: TGuidField;
    RSCentroCosto: TStringField;
    RSReferencia: TStringField;
    RSCentroCostoDesc: TStringField;
    RSActivo: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SetQuery(); override;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FindCentroCosto: TFindCentroCosto;

implementation

uses Udata;

{$R *.dfm}

procedure TFindCentroCosto.FormCreate(Sender: TObject);
var
  x : variant;
begin
  inherited;
  Tipo.Open;

  try
    x := dm.GetDefault('DEF.CENTROCOSTO');
    if x <> NULL then
      ltipo.LookupKeyValue := x
    else
      ltipo.LookupKeyValue := '(Todos)';
   except
      ltipo.LookupKeyValue := '(Todos)';
   end;
end;

procedure TFindCentroCosto.SetQuery();
begin
if Campo = '' then Campo := '2' ;
  rs.parameters[1].value := Campo + Asc;
  RS.Parameters[2].Value := ltipo.LookupKeyValue;
  RS.Parameters[3].Value := Activo.Checked;
  if rs.Active then rs.Requery;
end;


procedure TFindCentroCosto.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  setquery();
end;

end.

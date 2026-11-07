unit uCentroCostoFindTree;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBusqueda, ufrArbol, DB, ADODB, ExtCtrls, StdCtrls, Buttons,
  Grids, DBGrids, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr, dxDBELib;

type
  TFindCentroCostoTree = class(TBusqueda)
    tree: TfrArbol;
    SpeedButton1: TSpeedButton;
    Tipo: TADODataSet;
    TipoTipo: TStringField;
    dsTipo: TDataSource;
    Label2: TLabel;
    lTipo: TdxLookupEdit;
    Activo: TdxCheckEdit;
    procedure SetQuery(); Override;
    procedure SetResultado(const Key : Variant);
    procedure Dobleclick(Key: Tobject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);

  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  FindCentroCostoTree: TFindCentroCostoTree;

implementation

uses Udata;

{$R *.dfm}

{ TBusqueda1 }

procedure TFindCentroCostoTree.SetQuery;
begin
  inherited;
  if Campo = '' then Campo := '2' ;
  rs.parameters[1].value := Campo + Asc;
  RS.Parameters[2].Value := ltipo.LookupKeyValue;
  RS.Parameters[3].Value := Activo.Checked;
  if rs.Active then rs.close;
  rs.Open;
  if tree.RS <> RS then tree.RS := RS;
  tree.FillTree(Null);
  tree.OnSelectedChange := SetResultado;
  tree.Tree.OnDblClick  := Dobleclick;
  tree.Tree.Items[0].Focused := True;
end;

procedure TFindCentroCostoTree.SetResultado(const Key: Variant);
begin
  rs.Locate('Key',Key,[]);
end;

procedure TFindCentroCostoTree.Dobleclick(Key: Tobject);
begin
  ModalResult := MROK;
end;


procedure TFindCentroCostoTree.FormCreate(Sender: TObject);
var
  x : variant;
begin
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
  inherited;
end;

procedure TFindCentroCostoTree.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  setquery();
end;

end.

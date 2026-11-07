unit uBusquedaBasica;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, ADODB, Variants,
  ubusquedaBase;

Function fBuscar(fBusq : tFormClass; ReturnField : String) : Variant;

type
  TfrmBusquedaBasica = class(TBusquedaBase)
    grid: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dsBasico: TDataSource;
    Label1: TLabel;
    edtBuscar: TEdit;
    Panel1: TPanel;
    qryBasico: TADOQuery;

    procedure edtBuscarChange(Sender: TObject);
    procedure gridDblClick(Sender: TObject);
    procedure gridTitleClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    Procedure SetQry; Virtual; Abstract;
  private
    { Private declarations }
  public
    Campo : String;
    { Public declarations }
  end;

var
  frmBusquedaBasica: TfrmBusquedaBasica;

implementation

uses Udata;

{$R *.DFM}

Function fBuscar(fBusq : tFormClass; ReturnField : String) : Variant;
Var
  BusqActiva : tForm;
Begin
  busqActiva := fBusq.Create(Application);
  With BusqActiva Do
  Begin
     if ShowModal = 1 then
        Result := (BusqActiva as TfrmBusquedaBasica).qryBasico.FieldByName(ReturnField).Value
     else
        Result := null;
     Free
  End;

End;

procedure TfrmBusquedaBasica.edtBuscarChange(Sender: TObject);
begin
   if trim(edtBuscar.Text) = '' then exit;
   try
     qryBasico.Locate(campo,edtBuscar.Text,[loPartialKey]);
   except
     ;
   end
end;

procedure TfrmBusquedaBasica.gridDblClick(Sender: TObject);
begin
  ModalResult := MrOK;
end;

procedure TfrmBusquedaBasica.gridTitleClick(Column: TColumn);
var
 i:integer;
begin

if (Column.FieldName <> Campo) then
begin

  for i:= 0 to grid.Columns.count - 1 do
      grid.Columns[i].Color := clWindow;

  Campo := Column.FieldName;
  Column.Color := clInfoBk;

  SetQry;
  edtBuscar.Clear;
  edtBuscar.SetFocus;
end;


end;

procedure TfrmBusquedaBasica.FormCreate(Sender: TObject);
begin
  Campo := Grid.Columns[0].FieldName;
  SetQry;
  Grid.Columns[0].color := clInfoBk;
end;

end.

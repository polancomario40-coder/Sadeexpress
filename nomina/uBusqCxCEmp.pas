unit uBusqCxCEmp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBusquedaBasica, DB, ADODB, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, ComCtrls, wwdblook;

type
  TBusqCxCEmp = class(TfrmBusquedaBasica)
    chkactivo: TCheckBox;
    qryBasicoCxcEmpID: TIntegerField;
    qryBasicoCxcEmp: TStringField;
    qryBasicoTotal: TBCDField;
    qryBasicoBalance: TBCDField;
    qryBasicoEmpleadoID: TIntegerField;
    qryBasicoEmpleado: TStringField;
    procedure chkactivoClick(Sender: TObject);
    procedure InventarioCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure SetQry; Override;
  end;

var
  BusqCxCEmp: TBusqCxCEmp;

implementation

uses UUtiles, Udata;

{$R *.dfm}

{ TfrmBusqPaquetes }

procedure TBusqCxCEmp.SetQry;
var
  act : string;
begin
  inherited;

  if chkactivo.checked then act := '1' else act := '0';
  With qryBasico, Sql Do
  Begin
    Close;
    Clear;
    Add('Select x.* From (SELECT c.CxcEmpID, c.CxcEmp, c.Total, c.Balance,  c.EmpleadoID, E.Apellido + '', '' + E.Nombre as Empleado, c.Activo ');
    Add('               FROM CxCEmp c JOIN Empleado E ON c.EmpleadoId = E.EmpleadoID) x ');
    Add(' WHERE');
    Add(' x.Activo = ' + act );
    Add('ORDER BY ');
    Add(Campo);
    Open;
  End;
end;

procedure TBusqCxCEmp.chkactivoClick(Sender: TObject);
begin
  inherited;
  setqry;
end;

procedure TBusqCxCEmp.InventarioCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  inherited;
  setqry;
end;

end.

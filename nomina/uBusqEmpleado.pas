unit uBusqEmpleado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBusquedaBasica, DB, ADODB, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, ComCtrls, wwdblook, uBusqueda;

type
  TBusqEmpleado = class(TBusqueda)
    chkactivo: TCheckBox;
    RSEmpleadoid: TIntegerField;
    RSApellido: TStringField;
    RSNombre: TStringField;
    RSCedula: TStringField;
    RSesVendedor: TBooleanField;
    RSidEmpleadoRoll: TStringField;
    procedure chkactivoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetQuery; Override;
  end;

var
  BusqEmpleado: TBusqEmpleado;

implementation

uses UUtiles, Udata;

{$R *.dfm}

{ TfrmBusqPaquetes }

procedure TBusqEmpleado.SetQuery;
begin
  inherited;
  RS.Parameters[2].Value := chkactivo.Checked;
  if rs.Active then rs.Requery;
end;

procedure TBusqEmpleado.chkactivoClick(Sender: TObject);
begin
  inherited;
  setquery;
end;

procedure TBusqEmpleado.FormCreate(Sender: TObject);
begin
  inherited;
  chkactivo.checked := true;
end;

end.

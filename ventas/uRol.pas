unit uRol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantConf, DB, ADODB, ImgList, DBActns, ActnList, Wwdatsrc,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, Grids, Wwdbigrd,
  Wwdbgrid, StdCtrls, Mask, DBCtrls;

type
  TRol = class(TMantConf)
    rs: TADODataSet;
    rsidEmpleadoRoll: TStringField;
    rsEmpleadoRoll: TStringField;
    rsActivo: TBooleanField;
    rsVentas: TBooleanField;
    rsVentaGral: TBooleanField;
    rsCobros: TBooleanField;
    rsDespachoGral: TBooleanField;
    rsDespachoPlanta: TBooleanField;
    rsDespachoConduce: TBooleanField;
    rsViaje: TBooleanField;
    rsVentaGrupoProd: TBooleanField;
    rsSueldoHora: TBCDField;
    rsVentaGrupoProdFact: TBooleanField;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    procedure rsNewRecord(DataSet: TDataSet);
    procedure rsAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rol: TRol;

implementation

uses Udata;

{$R *.dfm}

procedure TRol.rsNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsactivo.Value := true;
  rsVentas.Value := false;
  rsVentaGral.Value := false;
  rscobros.Value := false;
  rsDespachoGral.Value := false;
  rsDespachoplanta.Value := false;
  rsDespachoConduce.Value := false;
  rsviaje.Value := false;
end;

procedure TRol.rsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if rs.State = dsedit then
    CrearLog('Edicion')
  else
    CrearLog('Insertar');
end;

end.

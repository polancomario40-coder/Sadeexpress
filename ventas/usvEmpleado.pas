unit usvEmpleado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformmant1, DB, ADODB, ActnList, ImgList, Wwdatsrc,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxExEdtr, dxEdLib,
  dxDBELib, StdCtrls, dxCntner, dxEditor, dxDBEdtr;

type
  TsvEmpleado = class(Tfformmant1)
    RSidEmpleado: TIntegerField;
    RSEmpleado: TStringField;
    RSDireccion: TStringField;
    RSCiudad: TStringField;
    RSTelefono: TStringField;
    RSBeeper: TStringField;
    RSNotas: TStringField;
    RSesVendedor: TBooleanField;
    RSinactivo: TBooleanField;
    RSUidEmpleado: TGuidField;
    RSGrupoTrabajo: TIntegerField;
    dxDBEdit1: TdxDBEdit;
    Label1: TLabel;
    dxDBEdit3: TdxDBEdit;
    Label3: TLabel;
    dxDBEdit4: TdxDBEdit;
    Label4: TLabel;
    dxDBCheckEdit1: TdxDBCheckEdit;
    dxDBEdit5: TdxDBEdit;
    Label5: TLabel;
    dxDBCheckEdit2: TdxDBCheckEdit;
    RSidPlanta: TStringField;
    RSIdEmpleadoGrupo: TIntegerField;
    Label9: TLabel;
    dxDBEdit2: TdxDBEdit;
    RSEmail: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure RSNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  Protected
    procedure UserAutoCodigo; override;  
  end;

var
  svEmpleado: TsvEmpleado;

implementation

uses Udata, uBusqueda;

{$R *.dfm}



procedure TsvEmpleado.UserAutoCodigo;
begin
  if rsidEmpleado.isNull then
    rsidEmpleado.Value := dm.GetNextCounterInt ('EMPLEADO');
end;

procedure TsvEmpleado.FormCreate(Sender: TObject);
begin
  inherited;
  LogField := 'idEmpleado';
  ImageidField := 'uidEmpleado';
  TipoDoc := 'SVEMPLEADO';
  spName := 'svFindEmpleado';
  Busqfield := 'idEmpleado';
  tfBusqueda := TBusqueda;
  OcultarC1 := false;    //oculta la columna 1 en la busqueda

end;

procedure TsvEmpleado.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsinactivo.Value := false;
  rsuidempleado.AsGuid := dm.NewGuid;
  rsesvendedor.Value := false;

end;

end.

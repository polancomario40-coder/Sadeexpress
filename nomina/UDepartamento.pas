unit UDepartamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc, StdCtrls, wwdblook,
  uform, ADODB, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxDBLookupComboBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxButtonEdit;

type
  TDepartamento = class(TFForm)
    DsSeccion: TwwDataSource;
    Button1: TButton;
    Departamento: TADODataSet;
    Seccion: TADODataSet;
    SeccionSeccionID: TIntegerField;
    SeccionDepartamentoID: TIntegerField;
    SeccionSeccion: TStringField;
    SeccionOrden: TIntegerField;
    DepartamentoDepartamentoID: TIntegerField;
    DepartamentoDepartamento: TStringField;
    DepartamentoOrden: TIntegerField;
    DepartamentoPorcPropina: TFloatField;
    DepartamentouDepartamento: TGuidField;
    SeccionuSeccion: TGuidField;
    rsDir: TADODataSet;
    rsDiridDireccion: TGuidField;
    rsDirDireccion: TStringField;
    DepartamentoidDireccion: TGuidField;
    dsDir: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1DepartamentoID: TcxGridDBColumn;
    cxGrid1DBTableView1Departamento: TcxGridDBColumn;
    cxGrid1DBTableView1Orden: TcxGridDBColumn;
    cxGrid1DBTableView1PorcPropina: TcxGridDBColumn;
    cxGrid1DBTableView1idDireccion: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1SeccionID: TcxGridDBColumn;
    cxGridDBTableView1Seccion: TcxGridDBColumn;
    cxGridDBTableView1Orden: TcxGridDBColumn;
    SeccionSeccionDesc: TStringField;
    cxGridDBTableView1DBColumn1: TcxGridDBColumn;
    DepartamentoUsuarioSuperv: TStringField;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    dsusuarios: TDataSource;
    Usuario: TADODataSet;
    UsuarioidSegUserGrp: TStringField;
    UsuarioClave: TStringField;
    UsuarioesGrupo: TBooleanField;
    UsuarioObjetoDefault: TStringField;
    UsuarioActivo: TBooleanField;
    UsuarioNivel: TIntegerField;
    SeccionidCentroCosto: TGuidField;
    cxGridDBTableView1DBColumn2: TcxGridDBColumn;
    SeccionCentroCosto: TStringField;
    spCentroCostoAct: TADOStoredProc;
    spCentroCostoActidCentroCosto: TGuidField;
    spCentroCostoActCentroCosto: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DepartamentoNewRecord(DataSet: TDataSet);
    procedure SeccionNewRecord(DataSet: TDataSet);
    procedure DepartamentoBeforePost(DataSet: TDataSet);
    procedure SeccionBeforePost(DataSet: TDataSet);
    procedure cxGridDBTableView1DBColumn2PropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure SeccionidCentroCostoValidate(Sender: TField);
    procedure SeccionCentroCostoValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

CONST
 CCTIPO = 'DEPARTAMENTO';

var
  Departamento: TDepartamento;

implementation


uses Udata, uFullTextSearch, UUtiles;

{$R *.dfm}

procedure TDepartamento.Button1Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TDepartamento.FormCreate(Sender: TObject);
begin
  inherited;
  Usuario.Open;
  LogField := 'Departamento';
  dsseccion.DataSet.Open;
  rsDir.Open();
  Departamento.Open();
  Enter2Tab := False;
end;

procedure TDepartamento.FormDestroy(Sender: TObject);
begin
  inherited;
  dsseccion.DataSet.Close ;

end;

procedure TDepartamento.DepartamentoNewRecord(DataSet: TDataSet);
begin
  inherited;
  departamentoudepartamento.AsGuid := dm.NewGuid;
end;

procedure TDepartamento.SeccionNewRecord(DataSet: TDataSet);
begin
  inherited;
  SeccionuSeccion.AsGuid := dm.NewGuid;
end;

procedure TDepartamento.DepartamentoBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DepartamentoDepartamentoID.AsInteger = 0 then
    DepartamentoDepartamentoID.AsInteger := dm.GetNextCounterInt('DEPARTAMENTO');
end;

procedure TDepartamento.SeccionBeforePost(DataSet: TDataSet);
begin
  inherited;
  if SeccionSeccionID.AsInteger = 0 then
    SeccionSeccionID.AsInteger := dm.GetNextCounterInt('SECCION');
end;

procedure TDepartamento.cxGridDBTableView1DBColumn2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  id : variant;
begin
  id := TfulltextSearch.Buscar('idCentroCosto',true,'costCentroCostoFind');
  if id <> null then begin
    if not(seccion.State in dsEditmodes) then seccion.Edit;
      seccionidCentroCosto.Value := id;
  end;
end;
procedure TDepartamento.SeccionidCentroCostoValidate(Sender: TField);
var
  h : variant;
begin
  inherited;

  if sender.AsString <> '' then
    h := ReturnVariant('CentroCosto','CentroCosto','idCentroCosto = ''' + Sender.AsString + '''')
  else begin
    if not(SeccionCentroCosto.isnull) then seccionCentroCosto.Clear;
    exit;
  end;

  if SeccionCentroCosto.Value <> H then
    SeccionCentroCosto.Value := H;

end;


procedure TDepartamento.SeccionCentroCostoValidate(Sender: TField);
begin
  inherited;
 inherited;
  With spCentroCostoAct, Parameters Do
  Begin
    If Sender.Value <> '' Then
    Begin
      Close();
      ParamByName('@CentroCosto').Value := Sender.Value;

      Open();
      If IsEmpty Then
        SeccionidCentroCosto.Value := null
      Else
        SeccionidCentroCosto.Value := spCentroCostoActidCentroCosto.Value;
    End;
  End;
end;

end.

unit uClienteObra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformmant2, StdCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, DB,
  ADODB, ActnList, ImgList, Wwdatsrc, wwSpeedButton, wwDBNavigator,
  ExtCtrls, wwclearpanel, dxExEdtr, dxDBEdtr, uformmant1, Grids, Wwdbigrd,
  Wwdbgrid, cxLookAndFeelPainters, cxButtons, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxDBLookupComboBox, cxCheckBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid;

type
  TClienteObra = class(Tfformmant2)
    RSDetidClienteObra: TStringField;
    RSDetidCliente: TIntegerField;
    RSDetDireccionObra: TStringField;
    RSDetSectorObra: TStringField;
    RSDetCiudadObra: TStringField;
    RSDetTelefonoObra: TStringField;
    RSDetFaxObra: TStringField;
    RSDetCelularObra: TStringField;
    RSDetContactoObra: TStringField;
    RSDetActivoObra: TBooleanField;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1idClienteObra: TcxGridDBColumn;
    cxGridDBTableView1DireccionObra: TcxGridDBColumn;
    cxGridDBTableView1CiudadObra: TcxGridDBColumn;
    cxGridDBTableView1SectorObra: TcxGridDBColumn;
    cxGridDBTableView1ContactoObra: TcxGridDBColumn;
    cxGridDBTableView1TelefonoObra: TcxGridDBColumn;
    cxGridDBTableView1CelularObra: TcxGridDBColumn;
    cxGridDBTableView1FaxObra: TcxGridDBColumn;
    cxGridDBTableView1idZona: TcxGridDBColumn;
    cxGridDBTableView1ActivoObra: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    rsZonaTransp: TADODataSet;
    rsZonaTranspidZona: TStringField;
    rsZonaTranspZona: TStringField;
    dsZonaTrans: TDataSource;
    RSidCliente: TIntegerField;
    RSCliente: TStringField;
    RSContacto: TStringField;
    RSDireccion: TStringField;
    RSSector: TStringField;
    RSCiudad: TStringField;
    RSTelefono: TStringField;
    RSFax: TStringField;
    RSBeeper: TStringField;
    RSEMail: TStringField;
    RSLimiteCredito: TBCDField;
    RSidClienteTipo: TIntegerField;
    RSidClienteStatus: TIntegerField;
    RSUidCliente: TGuidField;
    RSidEmpleado: TIntegerField;
    RSidClienteGrupo: TIntegerField;
    RSRNC_Cedula: TStringField;
    RSNotas: TStringField;
    RSDescuento: TFloatField;
    RSidListaPrecio: TStringField;
    RSCondicion: TIntegerField;
    RSFechaActivo: TDateTimeField;
    RSFechaInactivo: TDateTimeField;
    RSidTarifa: TStringField;
    RSidTasaTipo: TStringField;
    RSPassword: TStringField;
    RSGrupo: TStringField;
    RSUserName: TStringField;
    RSidCuenta: TStringField;
    RSidAuxiliar: TStringField;
    RSidZona: TStringField;
    RSidCondicion: TStringField;
    RSComisionFactor: TBCDField;
    RSidCuentaContado: TStringField;
    RSIdMoneda: TIntegerField;
    RSNumeroSuplidor: TStringField;
    RSidClienteParent: TIntegerField;
    RSIdTipoIdentificacion: TStringField;
    RSRepresentante: TStringField;
    RSRepresentanteCedula: TStringField;
    RSidClienteObra: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure RSDetNewRecord(DataSet: TDataSet);
    procedure cxGrid2Enter(Sender: TObject);
    procedure cxGrid2Exit(Sender: TObject);
    procedure RSCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure UserAutoCodigo; override;
    procedure browsebotonstate; override;
    procedure editbotonstate; override;
    procedure newbotonstate; override;
  end;

var
  ClienteObra: TClienteObra;

implementation

uses Udata, uBusqueda, UUtiles;

{$R *.dfm}


procedure TClienteObra.UserAutoCodigo;
begin

end;

procedure TClienteObra.FormCreate(Sender: TObject);
begin
  MasterField := 'idCliente';
  DetailField := 'idCliente';
  inherited;
  DetalleObligatorio := false;
  spName := 'FindCliente';
  Busqfield := 'idCliente';
  tfBusqueda := TBusqueda;
  OcultarC1 := false;    //oculta la columna 1 en la busqueda
  rsZonaTransp.Open();
end;

procedure TClienteObra.RSDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsdetactivoobra.Value := true;
  rsdetDireccionObra.Value := '';
  rsdetSectorObra.Value := '';
  rsdetCiudadObra.Value := '';
  rsdetContactoObra.Value := '';
  rsdetTelefonoObra.Value := '';
end;

procedure TClienteObra.browsebotonstate;
begin
  inherited;
  CxGridReadOnly(True, cxGrid2);
end;

procedure TClienteObra.editbotonstate;
begin
  inherited;
  CxGridReadOnly(False, cxGrid2);
end;

procedure TClienteObra.newbotonstate;
begin
  inherited;
  CxGridReadOnly(False, cxGrid2);
end;

procedure TClienteObra.cxGrid2Enter(Sender: TObject);
begin
  inherited;
  if appEstado <> appBrowse then begin
    Enter2Tab := False;
    if rsDet.IsEmpty then
      rsDet.Append();
  end;
end;

procedure TClienteObra.cxGrid2Exit(Sender: TObject);
begin
  inherited;
  Enter2Tab := True;
end;

procedure TClienteObra.RSCalcFields(DataSet: TDataSet);
begin
  inherited;
  if rsDet.Active then
     rsidClienteObra.Value := rsDetIdClienteObra.AsString; 
end;

end.

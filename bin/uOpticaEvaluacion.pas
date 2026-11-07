unit uOpticaEvaluacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformmant2, DB, dxDBELib, StdCtrls, dxCntner, dxEditor, dxEdLib,
  ADODB, ActnList, ImgList, Wwdatsrc, Grids, Wwdbigrd, Wwdbgrid,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxExEdtr, dxDBEdtr,
  ComCtrls, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppProd,
  ppReport, ppComm, ppRelatv, ppDBPipe, ppVar, ppStrtch, ppMemo, jpeg, math,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Menus, strUtils,
  cxLookAndFeelPainters, cxButtons, DBCtrls, ppParameter, ufrBuscadorProds,
  ppRichTx, Buttons, Mask;

type
  TOpticaEvaluacion = class(Tfformmant2)
    dxDBEdit2: TdxDBEdit;
    Label6: TLabel;
    dxDBEdit3: TdxDBEdit;
    Label7: TLabel;
    ClienteAct: TADODataSet;
    dsEstacionAct: TDataSource;
    Label9: TLabel;
    FindCliente: TButton;
    dxDBEdit6: TdxDBEdit;
    Clientes: TAction;
    ClienteActidCliente: TIntegerField;
    ClienteActCliente: TStringField;
    ClienteActLimiteCredito: TBCDField;
    ClienteActActivo: TBooleanField;
    Empleado: TADODataSet;
    dsEmpleado: TDataSource;
    dxDBEdit11: TdxDBEdit;
    Label12: TLabel;
    dxDBEdit5: TdxDBEdit;
    ClienteActContacto: TStringField;
    ClienteActidEmpleado: TIntegerField;
    ClienteActDireccion: TStringField;
    ClienteActSector: TStringField;
    ClienteActCiudad: TStringField;
    ClienteActTelefono: TStringField;
    ClienteActNoPagaItbis: TBooleanField;
    bPrint: TwwNavButton;
    ClienteActDescuento: TFloatField;
    SendMail: TAction;
    ClienteActFax: TStringField;
    ClienteActeMail: TStringField;
    ClienteActidListaPrecio: TStringField;
    ClienteActCondicion: TIntegerField;
    ClienteActidCuenta: TStringField;
    ClienteActidAuxiliar: TStringField;
    ClienteActidCondicion: TStringField;
    ClienteActNotas: TStringField;
    dsClienteAct: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label8: TLabel;
    dxDBMemo1: TdxDBMemo;
    TabSheet4: TTabSheet;
    dxDBMemo3: TdxDBMemo;
    tsNotaReferencia: TTabSheet;
    dxDBMemo4: TdxDBMemo;
    RSidEvaluacion: TGuidField;
    RSidCliente: TIntegerField;
    RSFecha: TDateTimeField;
    RSMontura: TStringField;
    RSColorCristal: TStringField;
    RSDiabetes: TBooleanField;
    RSHipertension: TBooleanField;
    RSToxoplasmosis: TBooleanField;
    RSCirugiasOculares: TBooleanField;
    RSCliente: TStringField;
    dxDBEdit1: TdxDBEdit;
    RShora: TDateTimeField;
    RSReferencia: TStringField;
    TabSheet2: TTabSheet;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    Label1: TLabel;
    dxDBEdit4: TdxDBEdit;
    RSidEmpleado: TIntegerField;
    RSusuario: TStringField;
    RSObservaciones: TStringField;
    RSDetidEvaluacion: TGuidField;
    RSDetidEvaluacionDet: TGuidField;
    GridIButton: TwwIButton;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit7: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label18: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Label19: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label20: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Label22: TLabel;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    rsReceta: TADODataSet;
    dsReceta: TwwDataSource;
    rsRecetaidEvaluacion: TGuidField;
    rsRecetaidEvaluacionDet: TGuidField;
    rsRecetadianostico: TStringField;
    RSdianostico: TStringField;
    RSDetESPERAOD: TStringField;
    RSDetCILOD: TStringField;
    RSDetEJEOD: TStringField;
    RSDetADDOD: TStringField;
    RSDetDPOD: TStringField;
    RSDetALTOD: TStringField;
    RSDetESPERAOI: TStringField;
    RSDetCILOI: TStringField;
    RSDetEJEOI: TStringField;
    RSDetADDOI: TStringField;
    RSDetDPOI: TStringField;
    RSDetALTOI: TStringField;
    RSESPERAOD: TStringField;
    RSCILOD: TStringField;
    RSEJEOD: TStringField;
    RSADDOD: TStringField;
    RSDPOD: TStringField;
    RSALTOD: TStringField;
    RSESPERAOI: TStringField;
    RSCILOI: TStringField;
    RSEJEOI: TStringField;
    RSADDOI: TStringField;
    RSDPOI: TStringField;
    RSALTOI: TStringField;
    rsRecetaESPERAOD: TStringField;
    rsRecetaCILOD: TStringField;
    rsRecetaEJEOD: TStringField;
    rsRecetaADDOD: TStringField;
    rsRecetaDPOD: TStringField;
    rsRecetaALTOD: TStringField;
    rsRecetaESPERAOI: TStringField;
    rsRecetaCILOI: TStringField;
    rsRecetaEJEOI: TStringField;
    rsRecetaADDOI: TStringField;
    rsRecetaDPOI: TStringField;
    rsRecetaALTOI: TStringField;
    Label27: TLabel;
    RSfechaproxima: TDateTimeField;
    dxDBDateEdit1: TdxDBDateEdit;
    Label28: TLabel;
    dxDBEdit7: TdxDBEdit;
    RSemail: TStringField;
    Label26: TLabel;
    dxDBLookupEdit1: TdxDBLookupEdit;
    Label29: TLabel;
    Label2: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    dxDBTimeEdit1: TdxDBTimeEdit;
    procedure FormCreate(Sender: TObject);
    procedure RSNewRecord(DataSet: TDataSet);
    procedure RSAfterScroll(DataSet: TDataSet);
    procedure ClientesExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure FindClienteClick(Sender: TObject);
    procedure GridCellChanged(Sender: TObject);
    procedure RSidClienteValidate(Sender: TField);
    procedure FormDestroy(Sender: TObject);
    procedure dxDBEdit6DblClick(Sender: TObject);
    procedure AobservacionExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RSDetNewRecord(DataSet: TDataSet);
    procedure rsRecetaNewRecord(DataSet: TDataSet);
    //procedure DS2DataChange(Sender: TObject; Field: TField);
  private
    //Fotos : String;
    CondicionAnterior: string;
    FLoading: boolean;
    FDescuento: double;
    AUTDESCLIM: integer;
    DescAutorizado: Boolean;
    DescAutLimite: Boolean;
    FITBIS: double;
    CLIENTECONTADO: integer;
    CAMBIOCONDICION: string;
    FSubtotal: double;
    Moneda: integer;
    rpt: string;
    DEFAULT_NOTA: string;
    fDescuentoXCantidad: Boolean;
    VerLineTotalExt: Boolean;
    procedure CalcTotal;
    procedure CalcITBIS;
    procedure ActualizarTotales;
    function MostrarCliente(idCliente: Integer): integer;
    function LocateProducto(idProducto: string): boolean;
    function TieneCredito(idCliente: Integer; MasMonto: Double; IdCondicion: string): Boolean;
    function GetProduct: string;
    procedure DescuentoCalc;
    procedure CalcLineTotal;
    function DescuentoXCantidad(IdProducto: string; Precio: Double; Cantidad: Double): Double;
    function EsCondicionContado(idCond: string): Boolean;

    //function TieneCreditoShow(idCliente: Integer): Boolean;
  protected
    { Private declarations }
    procedure UserAutoCodigo; override;
    procedure browsebotonstate; override;
    procedure editbotonstate; override;
    procedure newbotonstate; override;

  public
    procedure Getproductoframe(const idProd: string);
    { Public declarations }
  end;

var
  OpticaEvaluacion: TOpticaEvaluacion;

implementation

uses Udata, UUtiles, uBusqueda, CotizacionFind, uCliente, ueMails7,
  uProductoDetalle, uFacturaDetEspec,
  uBusquedaRangoDX, uProductoFindDX, EvaluacionFind;


{$R *.dfm}

procedure TOpticaEvaluacion.FormCreate(Sender: TObject);
//var
  //rpt: string;
begin

  FLoading := false;
  Grid.RedrawGrid();
  MasterField := 'idEvaluacion';
  DetailField := 'idEvaluacion';
  inherited;
  Modulo := 'Evaluacion';
  LogField := 'idEvaluacion';
  TipoDoc := 'Evaluacion';
  ImageidField := 'idEvaluacion';
  CampodeCierre := 'FECHA'; //nombre del campo de fecha para validar el cierre de operaciones

  BusqAutoFit := False;
  BusqMaxColSize := 225;
  OcultarC1 := True; //oculta la columna 1 en la busqueda
  spName := 'FindEvaluacion';
  Busqfield := 'idEvaluacion';
  //tfBusqueda := tBusquedaRangoDX;
  tfBusqueda := TBusqueda;
  Empleado.Open;
  //if not (ds2.dataset.active) then ds2.dataset.open;

end;


procedure TOpticaEvaluacion.Getproductoframe(const idProd: string);
begin

end;


function TOpticaEvaluacion.MostrarCliente(idCliente: Integer): integer;
begin
  Result := 0; // todo bien
  if idCliente <> 0 then
  begin
      //if (rsEstacionAct.Parameters[1].Value <> EstacionID) then
    begin
      ClienteAct.Parameters[1].Value := idCliente;
      if ClienteAct.Active then ClienteAct.requery() else ClienteAct.Open;
    end
  end
  else
  begin
    ClienteAct.close; //para que no muestre nada
  end;

  if (not (ClienteAct.active)) or (ClienteAct.IsEmpty) then
    Result := -1 // No Existe el codigo de cliente
  else
    if not (ClienteActActivo.value) then
      Result := 1 //esta inactivo pero si existe el cliente
end;

procedure TOpticaEvaluacion.UserAutoCodigo;
begin

end;

procedure TOpticaEvaluacion.newbotonstate;
begin
  inherited;
  FindCliente.enabled := true;

end;

procedure TOpticaEvaluacion.editbotonstate;
begin
  inherited;
  FindCliente.enabled := true;

end;

procedure TOpticaEvaluacion.browsebotonstate;
begin
  inherited;
  FindCliente.enabled := false;

end;

procedure TOpticaEvaluacion.CalcTotal();

begin

end;


procedure TOpticaEvaluacion.ActualizarTotales;
begin

end;

function TOpticaEvaluacion.LocateProducto(idProducto: string): boolean;
begin

end;

procedure TOpticaEvaluacion.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  if not rsdet.IsEmpty then rsdet.close;


  rsfecha.Value := dm.DBFecha();
  rshora.Value := dm.DBFechaHora();

  //rsidCompania.Value := dm.CompaniaActual();
  RSUsuario.Value := dm.UsuarioActual;
  rsidEvaluacion.AsGuid := dm.NewGuid;





end;

procedure TOpticaEvaluacion.RSAfterScroll(DataSet: TDataSet);
begin
  inherited;
  MostrarCliente(RSidCliente.AsInteger);



end;

procedure TOpticaEvaluacion.DescuentoCalc();

begin


end;

procedure TOpticaEvaluacion.CalcLineTotal();
begin

end;


procedure TOpticaEvaluacion.CalcITBIS();
begin

end;



function TOpticaEvaluacion.TieneCredito(idCliente: Integer; MasMonto: Double; IdCondicion: string): Boolean;

begin

end;


procedure TOpticaEvaluacion.ClientesExecute(Sender: TObject);
var
  x: variant;
begin
  inherited;
  x := fbuscar(TBusqueda, 'idCliente', false, 'FindCliente');
  if x <> Null then
  begin
    RSidCliente.Value := x;
  end;
end;

procedure TOpticaEvaluacion.AGuardarExecute(Sender: TObject);
begin
  HandleTrans := false; // las transacciones no se manejaran automaticamente si no lo pone false
  HandleGuardarState := false; // el estado de los botones y de la aplicacion al guardar
                                // no se manejaran automaticamente si se pone false
  dm.Coneccion.BeginTrans;
  try
    try
      //calcTotal;
      //ActualizarTotales();
      inherited;
      //BatchUpdateCancel(rsEspec, True);
    except
      dm.Coneccion.RollbackTrans;
      raise;
    end;
    dm.Coneccion.CommitTrans;

    browsebotonstate;
    ds.AutoEdit := false;
    appestado := appBrowse;
  finally
    HandleTrans := true; // las transacciones no se manejaran automaticamente
    HandleGuardarState := true; // el estado de los botones y de la aplicacion al guardar
                               // no se manejaran automaticamente
  end;
end;

procedure TOpticaEvaluacion.FindClienteClick(Sender: TObject);
var
  x: variant;
begin
  inherited;
  x := fbuscar(TBusqueda, 'idCliente', false, 'FindCliente');
  if x <> Null then
  begin
    RSidCliente.Value := x;
  end;
end;

procedure TOpticaEvaluacion.GridCellChanged(Sender: TObject);
begin
  inherited;
  Grid.RedrawGrid;
end;

procedure TOpticaEvaluacion.RSidClienteValidate(Sender: TField);
var
  x: integer;
begin
  inherited;



  x := MostrarCliente(sender.AsInteger);

  if x = -1 then raise Exception.create('Este cliente no existe');
  if x = 1 then raise exception.Create('Este cliente esta inactivo');


  rsCliente.Value := ClienteActCliente.AsString;
  if (ClienteActidEmpleado.isnull) or (ClienteActidEmpleado.AsString = '') then
    rsidEmpleado.Clear
  else
    rsidEmpleado.Value := ClienteActidEmpleado.value;

  //rsContacto.value := ClienteActContacto.value;
  //rsDireccion.value := ClienteActDireccion.value;
  //rsSector.value := ClienteActSector.value;
  //rsCiudad.value := ClienteActCiudad.value;
  //rsTelefono.value := ClienteActTelefono.value;
  //rsfax.value := ClienteActFax.value;
  //rseMail.value := ClienteActeMail.value;
   //rsClienteRNC.Value :=  ClienteActRNC_Cedula.Value;


end;


procedure TOpticaEvaluacion.FormDestroy(Sender: TObject);
begin
  inherited;
  Empleado.close;

end;

function TOpticaEvaluacion.GetProduct(): string;

begin

end;

procedure TOpticaEvaluacion.dxDBEdit6DblClick(Sender: TObject);
begin
  inherited;
  if not (rsidcliente.isnull) then
    Modalshow(TCliente, ShowFind, rsidCliente.Value, '', true)
  else
    Modalshow(TCliente, showInsert, rsidCliente.Value, '', true);
end;

function TOpticaEvaluacion.EsCondicionContado(idCond: string): Boolean;

begin

end;

procedure TOpticaEvaluacion.AobservacionExecute(Sender: TObject);
//var
 // s: string;
begin
 // inherited;
 // if rs.IsEmpty then abort;
 // s := rsobservacion.AsString;
 // if inputquery('Observaciones', 'Escriba sus Observaciones', s) then begin
   // RS.Edit;
   // rsobservacion.Value := s;
   // RS.Post;
   // BatchUpdateCancel(RS, True);
 // end;
end;

function TOpticaEvaluacion.DescuentoXCantidad(IdProducto: string; Precio, Cantidad: Double): Double;

begin

end;

procedure TOpticaEvaluacion.Button1Click(Sender: TObject);
var
  x: variant;
begin
  if RS.State = dsbrowse then
    Exit;

  inherited;
  x := fbuscar(TBusqueda, 'Nota', false, 'spfrNotasFacturas');
  
end;

procedure TOpticaEvaluacion.RSDetNewRecord(DataSet: TDataSet);
begin
  inherited;
    //rsdetidEvaluacion.Value:= rsidEvaluacion.Value;
     rsdetidEvaluacionDet.AsGuid := dm.NewGuid;



end;

procedure TOpticaEvaluacion.rsRecetaNewRecord(DataSet: TDataSet);
begin
  inherited;
     rsdetidEvaluacion.Value:= rsidEvaluacion.Value;
     rsRecetaidEvaluaciondet.AsGuid := dm.NewGuid;

end;

end.procedure TOpticaEvaluacion.DS2DataChange(Sender: TObject; Field: TField);
begin
  inherited;

end;




unit uInvReq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformmant2, StdCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, DB,
  ADODB, ActnList, ImgList, Wwdatsrc, Grids, Wwdbigrd, Wwdbgrid,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxExEdtr, dxDBEdtr,
  wwdblook, Wwdbdlg, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, cxControls,
  cxContainer, cxEdit, cxCheckBox, cxDBEdit, ppParameter;

type
  TInvReq = class(Tfformmant2)
    dxDBEdit1: TdxDBEdit;
    Label1: TLabel;
    dxDBEdit2: TdxDBEdit;
    Label2: TLabel;
    dxDBEdit3: TdxDBEdit;
    Label3: TLabel;
    dxDBEdit4: TdxDBEdit;
    Label4: TLabel;
    dxDBEdit5: TdxDBEdit;
    RSDetidProducto: TStringField;
    RSDetProducto: TStringField;
    RSDetCantidad: TBCDField;
    Label5: TLabel;
    dxDBEdit7: TdxDBEdit;
    ProductoAct: TADODataSet;
    ProductoActidProducto: TStringField;
    ProductoActProducto: TStringField;
    ProductoActExistencia: TFloatField;
    ProductoActCostoPromedio: TBCDField;
    ProductoActPrecioContado: TBCDField;
    ProductoActPrecioCredito: TBCDField;
    ProductoActInactivo: TBooleanField;
    ProductoActporciento: TFloatField;
    ProductoActidUnidad: TStringField;
    dsProductoAct: TDataSource;
    Label8: TLabel;
    Label9: TLabel;
    dxDBEdit8: TdxDBEdit;
    AGetProduct: TAction;
    bPrint: TwwNavButton;
    RPTInvReq: TADODataSet;
    InvReqRPT: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppShape3: TppShape;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel16: TppLabel;
    ppDBText21: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppLine4: TppLine;
    ppLabel1: TppLabel;
    ppDBText7: TppDBText;
    ppLabel7: TppLabel;
    ppDBText17: TppDBText;
    ppDBText8: TppDBText;
    ppLabel2: TppLabel;
    ppLabel8: TppLabel;
    ppDBText6: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppLabel9: TppLabel;
    ppLine2: TppLine;
    ppLabel10: TppLabel;
    ppLine3: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppDBText9: TppDBText;
    ppDBText18: TppDBText;
    RSidInvReq: TGuidField;
    RSInvReq: TStringField;
    RSFecha: TDateTimeField;
    RSDepartamento: TStringField;
    RSSolicitante: TStringField;
    RSReferencia: TStringField;
    RSInvReqStatus: TStringField;
    RSAutorizado: TBooleanField;
    RSAutorizadoPor: TStringField;
    RSNota: TStringField;
    dxDBEdit9: TdxDBEdit;
    dxDBPickEdit1: TdxDBPickEdit;
    RSDetidInvReqDet: TGuidField;
    RSDetidInvReq: TGuidField;
    RSDetNotas: TStringField;
    RSDetInvReqDet: TIntegerField;
    dxDBCheckEdit1: TdxDBCheckEdit;
    RPTInvReqidInvReq: TGuidField;
    RPTInvReqInvReq: TStringField;
    RPTInvReqFecha: TDateTimeField;
    RPTInvReqAutorizado: TBooleanField;
    RPTInvReqReferencia: TStringField;
    RPTInvReqOrdTrab: TStringField;
    RPTInvReqSolicitante: TStringField;
    RPTInvReqAutorizadoPor: TStringField;
    RPTInvReqNota: TStringField;
    RPTInvReqInvReqStatus: TStringField;
    RPTInvReqidInvReqDet: TGuidField;
    RPTInvReqDetInvReqDet: TIntegerField;
    RPTInvReqDetidProducto: TStringField;
    RPTInvReqDetProducto: TStringField;
    RPTInvReqDetCantidad: TBCDField;
    RPTInvReqcoCompania: TStringField;
    RPTInvReqcoDireccion: TStringField;
    RPTInvReqcoTelefono: TStringField;
    RPTInvReqcoFax: TStringField;
    RPTInvReqcoRNC: TStringField;
    dsRPTInvReq: TDataSource;
    ppDBText13: TppDBText;
    RSUsuario: TStringField;
    RSDetLinea: TIntegerField;
    RSDetidUnidad: TStringField;
    RPTInvReqDetidUnidad: TStringField;
    ppDBText14: TppDBText;
    ppLabel3: TppLabel;
    ppLine5: TppLine;
    ppLabel4: TppLabel;
    ppDBText15: TppDBText;
    RPTInvReqDepartamento: TStringField;
    plRPTInvReq: TppDBPipeline;
    ADOStoredProc1: TADOStoredProc;
    RSDetIdCentroCosto: TGuidField;
    RSDetCentroCosto: TStringField;
    RSDetCantidadEntregada: TBCDField;
    AGetCentroCosto: TAction;
    Label7: TLabel;
    dxDBEdit10: TdxDBEdit;
    CentroCostoAct: TADODataSet;
    CentroCostoActidCentroCosto: TGuidField;
    CentroCostoActCentroCosto: TStringField;
    CentroCostoActCentroCostoDesc: TStringField;
    CentroCostoActActivo: TBooleanField;
    CentroCostoActTipo: TStringField;
    CentroCostoActReferencia: TStringField;
    CentroCostoActidCentroCostoParent: TGuidField;
    CentroCostoActOrden: TIntegerField;
    CentroCostoActNivel: TIntegerField;
    CentroCostoActStatus: TStringField;
    CentroCostoActNota: TStringField;
    Label10: TLabel;
    dxDBEdit11: TdxDBEdit;
    RSEntregado: TBooleanField;
    RSFechaRequerido: TDateTimeField;
    cxDBCheckBox1: TcxDBCheckBox;
    ppLabel6: TppLabel;
    Label6: TLabel;
    RSidSuplidor: TIntegerField;
    RSConduce: TStringField;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit14: TdxDBEdit;
    cxDBButtonEdit1: TdxDBButtonEdit;
    RSSuplidor: TStringField;
    SuplidorAct: TADODataSet;
    SuplidorActidSuplidor: TAutoIncField;
    SuplidorActNombre: TStringField;
    SuplidorActEstatus: TBooleanField;
    procedure FormCreate(Sender: TObject);
    procedure RSDetCalcFields(DataSet: TDataSet);
    procedure RSDetValorValidate(Sender: TField);
    procedure RSNewRecord(DataSet: TDataSet);
    procedure RSDetNewRecord(DataSet: TDataSet);
    procedure GridColExit(Sender: TObject);
    procedure RSDetBeforePost(DataSet: TDataSet);
    procedure RSDetCantidadValidate(Sender: TField);
    procedure RSDetidProductoValidate(Sender: TField);
    procedure GridDblClick(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AGetProductExecute(Sender: TObject);
    procedure AprintExecute(Sender: TObject);
    procedure AGetCentroCostoExecute(Sender: TObject);
    procedure RSDetIdCentroCostoValidate(Sender: TField);
    procedure cxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure RSidSuplidorValidate(Sender: TField);
    Procedure buscarSuplidor();
  private
    //Fotos : String;
    function LocateProducto(idProducto: string): boolean;
    function GetProduct: string;
    function LocateCentroCosto(idCentroCosto,
      CentroCosto: string): boolean;
    { Private declarations }
  public
    procedure DoShowstate; override;
    { Public declarations }
  protected
    procedure UserAutoCodigo; override;
    procedure browsebotonstate; override;
    procedure editbotonstate; override;
    procedure newbotonstate; override;
  end;

var
  InvReq: TInvReq;

implementation

uses Udata, UUtiles, uBusqueda, uProductoFindDX, InvReqFind, uInvReqInv,
   uFullTextSearch;

{$R *.dfm}


procedure TInvReq.FormCreate(Sender: TObject);
begin
  MasterField := 'idInvReq';
  DetailField := 'idInvReq';
  inherited;
  LogField := 'InvReq';
  TipoDoc := 'INVREQ';
  ImageidField := 'idInvReq';
  CampodeCierre := 'FECHA'; //nombre del campo de fecha para validar el cierre de operaciones
  spName := '';
  Busqfield := 'idInvReq';
  tfBusqueda := TFindInvReq;
  OcultarC1 := false;       //oculta la columna 1 en la busqueda
  if not(ds2.dataset.active) then ds2.dataset.open ;
 // Fotos := dm.GetDefaultStr('ProductosConFoto');
end;


procedure TInvReq.newbotonstate;
begin
  inherited;
  AGetProduct.Enabled := true;
  AGetCentroCosto.Enabled := true;
end;

procedure TInvReq.editbotonstate;
begin
  inherited;
  AGetProduct.Enabled := true;
  AGetCentroCosto.Enabled := true;
end;

procedure TInvReq.browsebotonstate;
begin
  inherited;
  AGetProduct.Enabled := false;
  AGetCentroCosto.Enabled := false;
end;


procedure TInvReq.UserAutoCodigo;
begin
  if rsInvReq.IsNull then rsInvReq.Value := dm.GetNextCounterStr ('REQUISICIONALM');
end;


procedure TInvReq.RSDetCalcFields(DataSet: TDataSet);
begin
  inherited;
  if not(RSDetidProducto.IsNull) then
     RSDetProducto.Value := ProductoActProducto.asstring;
end;

procedure TInvReq.RSDetValorValidate(Sender: TField);
begin
  inherited;
  if sender.Value < 0 then
     Raise exception.Create('El valor no debe ser menor que cero');

end;

procedure TInvReq.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  RSidInvReq.AsGuid := dm.NewGuid;
  RSFecha.Value := dm.DBFecha;
  RSFechaRequerido.Value := rsFecha.value;
  rsEntregado.value := false;
  RSUsuario.Value := dm.UsuarioActual;
  rsAutorizado.Value := False;
  rsInvReqStatus.Value := 'Requerido';
end;

procedure TInvReq.RSDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  RSDetidInvReqDet.AsGuid := dm.NewGuid;
  RSDetCantidad.value := 1;
  rsdetlinea.Value := rsdet.RecordCount;
  rsdetCantidadEntregada.Value := 0;
end;

procedure TInvReq.GridColExit(Sender: TObject);
begin
  inherited;
  grid.RedrawGrid;
end;

procedure TInvReq.RSDetBeforePost(DataSet: TDataSet);
begin
  inherited;
  if rsdetidproducto.IsNull then
    raise exception.Create('Debe seleccionar un producto');
end;

procedure TInvReq.RSDetCantidadValidate(Sender: TField);
begin
  inherited;
  if sender.Value <= 0 then
     Raise exception.Create('La cantidad no debe ser cero');
end;

Function TInvReq.LocateProducto(idProducto : string): boolean;
begin
  if (ProductoAct.active) and (ProductoActidProducto.value = idProducto) then
  begin
    Result := true;
    exit;
  end
  else
  begin
    ProductoAct.Parameters[1].value := idProducto;
    ProductoAct.Parameters[2].value := Null;
    ProductoAct.Parameters[3].value := Null;
    ProductoAct.Parameters[4].value := Null;
    productoAct.close;
    productoAct.Open;
  end;
  Result := not(ProductoAct.isempty);
end;


procedure TInvReq.RSDetidProductoValidate(Sender: TField);
begin
  inherited;
  if LocateProducto(sender.value) then
  begin
    rsdetProducto.value := ProductoActProducto.AsString;
    rsdetidUnidad.value := ProductoActidUnidad.Value;
  end
  else
     raise exception.create('Producto invalido');
end;

procedure TInvReq.DoShowstate;
begin
  inherited;
end;

procedure TInvReq.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_add then begin
     if AGetProduct.Enabled then
       AGetProduct.Execute;
  end;
end;

procedure TInvReq.AGetProductExecute(Sender: TObject);
var
  idProd : variant;
begin
  inherited;
  idProd := GetProduct();
  if idProd <> null then begin
    if not(rsdet.State in dsEditmodes) then rsdet.Edit;
      rsdetidProducto.Value := idProd;
  end;
end;

function TInvReq.GetProduct() : string;
var
  idprodres : variant;
begin
  inherited;
  //if Fotos = '1' then
  //  idprodres := fbuscar(TfindProductoFoto,'idProducto')
  //else
    idprodres := fbuscar(TProductofindDX,'idProducto');

  if idprodres = Null then
    result := ''
  else
    result := idprodres;

end;

procedure TInvReq.GridDblClick(Sender: TObject);
begin
  inherited;
  if not (appEstado in [appinsert, appedit]) then
    abort;

  if grid.SelectedField.Name = 'RSDetidProducto' then
    if AGetProduct.Enabled then
       AGetProduct.Execute;

  if grid.SelectedField.Name = 'RSDetCentroCosto' then
    if AGetCentroCosto.Enabled then
       AGetCentroCosto.Execute;
end;

procedure TInvReq.AprintExecute(Sender: TObject);
begin
  inherited;
  rptInvReq.Close;
  rptInvReq.Parameters[1].value := rsidInvReq.Value;
  rptInvReq.Open;
  Imprimir(InvReqRPT);
end;

procedure TInvReq.AGetCentroCostoExecute(Sender: TObject);
var
  id : variant;
begin
  inherited;
  id := TFullTextSearch.Buscar('idCentroCosto',True, 'costCentroCostoFind');
  if id <> null then begin
    if not(rsdet.State in dsEditmodes) then rsdet.Edit;
      rsdetidCentroCosto.Value := id;
  end;
end;


Function TInvReq.LocateCentroCosto(idCentroCosto, CentroCosto : string): boolean;
begin
  if (idCentroCosto <> '') then begin
    if (CentroCostoAct.active) and (CentroCostoActidCentroCosto.value = idCentroCosto) then begin
      Result := true;
      exit;
    end else begin
      CentroCostoAct.Parameters[1].value := idCentroCosto;
      CentroCostoAct.Parameters[2].value := Null;
    end;
  end else begin
    if CentroCosto <> '' then begin
      if (CentroCostoAct.active) and (CentroCostoActCentroCosto.value = CentroCosto) then begin
        Result := true;
        exit;
      end else begin
        CentroCostoAct.Parameters[1].value := Null;
        CentroCostoAct.Parameters[2].value := CentroCosto;
      end;
    end;
  end;

  CentroCostoAct.close;
  CentroCostoAct.Open;
  Result := (CentroCostoAct.RecordCount = 1);
end;


procedure TInvReq.RSDetIdCentroCostoValidate(Sender: TField);
begin
  inherited;

  if sender.AsString <> '' then begin
    if not(LocateCentroCosto(sender.value,'')) then
      raise exception.create('El centro costo seleccionado no existe')
  end else begin
    if not(rsdetCentroCosto.isnull) then rsdetCentroCosto.Clear;
    exit;
  end;

 if not(CentroCostoActActivo.Value) then
   Raise exception.create('El Centro de Costo seleccionado esta inactivo');

 if rsdetCentroCosto.Value <> CentroCostoActCentroCosto.value then
    rsdetCentroCosto.Value := CentroCostoActCentroCosto.value;
end;

procedure TInvReq.cxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  x : variant;
begin
  inherited;
   x := fbuscar(TBusqueda,'idSuplidor',false,'FindSuplidor');
   if x <> Null then begin
     rsidsuplidor.value := x;
   end;
end;

Procedure TInvReq.buscarSuplidor();
begin
  if not(rsidSuplidor.IsNull) then begin
    SuplidorAct.Close;
    SuplidorAct.parameters[1].value := rsidSuplidor.value;
    SuplidorAct.Open;
    if SuplidorAct.isempty then begin
      raise exception.create('Este suplidor NO Existe');
    end;

    if (not(SuplidorActEstatus.value)) then begin
      raise exception.create('Este suplidor esta inactivo y no debe tener transacciones')
    end;

    rssuplidor.value := SuplidorActNombre.value;

  end else begin
    rssuplidor.value := '';
  end;

end;


procedure TInvReq.RSidSuplidorValidate(Sender: TField);
begin
  inherited;
    BuscarSuplidor
end;

end.




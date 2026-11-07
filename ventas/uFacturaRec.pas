unit uFacturaRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformmant2, DB, dxDBELib, StdCtrls, dxCntner, dxEditor, dxEdLib,
  ADODB, ActnList, ImgList, Wwdatsrc, Grids, Wwdbigrd, Wwdbgrid,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxExEdtr, dxDBEdtr,
  ComCtrls, ppDB, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppStrtch, ppMemo, jpeg,
  ppParameter, math, myChkBox, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TFacturaRec = class(Tfformmant2)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cod: TdxDBEdit;
    Label5: TLabel;
    dxDBEdit2: TdxDBEdit;
    Label6: TLabel;
    dxDBEdit3: TdxDBEdit;
    Label7: TLabel;
    Credito: TdxDBCheckEdit;
    ClienteAct: TADODataSet;
    dsEstacionAct: TDataSource;
    Label9: TLabel;
    FindCliente: TButton;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    ProductoAct: TADODataSet;
    dsProductoAct: TDataSource;
    SPTieneCredito: TADOCommand;
    SPCreditoAutorizacion: TADOCommand;
    Clientes: TAction;
    bAnular: TwwNavButton;
    AnularFact: TADOCommand;
    dxDBEdit1: TdxDBEdit;
    RSidCliente: TIntegerField;
    RSCliente: TStringField;
    RSDireccion: TStringField;
    RSTelefono: TStringField;
    RSidEmpleado: TIntegerField;
    RSFecha: TDateTimeField;
    RSHora: TDateTimeField;
    RSReferencia: TStringField;
    RSCancelado: TBooleanField;
    RSCredito: TBooleanField;
    RSidCompania: TIntegerField;
    RSSubTotal: TBCDField;
    RSItbis: TBCDField;
    RSDescuento: TBCDField;
    RSTotal: TBCDField;
    RSNota: TStringField;
    RSUsuario: TStringField;
    RSDetidProducto: TStringField;
    RSDetProducto: TStringField;
    RSDetCantidad: TFloatField;
    RSDetPrecio: TBCDField;
    RSDetidUnidad: TStringField;
    RSDetDescuento: TBCDField;
    RSDetItbis: TBCDField;
    ClienteActidCliente: TIntegerField;
    ClienteActCliente: TStringField;
    ClienteActContacto: TStringField;
    ClienteActLimiteCredito: TBCDField;
    ClienteActActivo: TBooleanField;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    Empleado: TADODataSet;
    dsEmpleado: TDataSource;
    dxDBEdit11: TdxDBEdit;
    RSDetLineTotal: TBCDField;
    ACotizacion: TAction;
    BdeCotizacion: TwwNavButton;
    ClienteActidEmpleado: TIntegerField;
    Label10: TLabel;
    dxDBEdit5: TdxDBEdit;
    RSContacto: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label8: TLabel;
    lkEmpleado: TdxDBLookupEdit;
    TabSheet2: TTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    dxDBEdit12: TdxDBEdit;
    dxDBEdit13: TdxDBEdit;
    dxDBEdit14: TdxDBEdit;
    dxDBEdit15: TdxDBEdit;
    RSSector: TStringField;
    RSCiudad: TStringField;
    ClienteActDireccion: TStringField;
    ClienteActSector: TStringField;
    ClienteActCiudad: TStringField;
    ClienteActTelefono: TStringField;
    ClienteActNoPagaItbis: TBooleanField;
    Cotizacion2Fact: TADODataSet;
    Cotizacion2FactidCotizacion: TGuidField;
    Cotizacion2FactidCotizacionStatus: TStringField;
    Cotizacion2FactidCliente: TIntegerField;
    Cotizacion2FactCliente: TStringField;
    Cotizacion2FactContacto: TStringField;
    Cotizacion2FactDireccion: TStringField;
    Cotizacion2FactSector: TStringField;
    Cotizacion2FactCiudad: TStringField;
    Cotizacion2FactTelefono: TStringField;
    Cotizacion2FactidEmpleado: TIntegerField;
    Cotizacion2FactFecha: TDateTimeField;
    Cotizacion2FactHora: TDateTimeField;
    Cotizacion2FactCancelado: TBooleanField;
    Cotizacion2FactCredito: TBooleanField;
    Cotizacion2FactidCompania: TIntegerField;
    Cotizacion2FactSubTotal: TBCDField;
    Cotizacion2FactItbis: TBCDField;
    Cotizacion2FactDescuento: TBCDField;
    Cotizacion2FactNota: TStringField;
    Cotizacion2FactUsuario: TStringField;
    Cotizacion2FactTotal: TBCDField;
    Cotizacion2FactidCotizacionDet: TGuidField;
    Cotizacion2FactidProducto: TStringField;
    Cotizacion2FactProducto: TStringField;
    Cotizacion2FactCantidad: TFloatField;
    Cotizacion2FactPrecio: TBCDField;
    Cotizacion2FactidUnidad: TStringField;
    Cotizacion2FactDescDet: TBCDField;
    Cotizacion2FactItbisDet: TBCDField;
    Cotizacion2FactLineTotal: TBCDField;
    RSFactura: TStringField;
    Cotizacion2FactCotizacion: TStringField;
    Label11: TLabel;
    dxDBEdit16: TdxDBEdit;
    RSCotizacion: TStringField;
    RSidCotizacion: TGuidField;
    RSidClienteObra: TStringField;
    Cotizacion2FactidClienteObra: TStringField;
    Conduce2Factura: TAction;
    BConduce2Factura: TwwNavButton;
    AGetProduct: TAction;
    bPrint: TwwNavButton;
    desc: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
    RSPagaItbis: TBooleanField;
    PagaItbis: TdxDBCheckEdit;
    an: TCheckBox;
    RSidOrdComp: TGuidField;
    RSOrdComp: TStringField;
    OrdComp2Fact: TADODataSet;
    OrdComp2FactidOrdComp: TGuidField;
    OrdComp2FactOrdComp: TStringField;
    OrdComp2FactidOrdCompStatus: TStringField;
    OrdComp2FactidCliente: TIntegerField;
    OrdComp2FactCliente: TStringField;
    OrdComp2FactContacto: TStringField;
    OrdComp2FactDireccion: TStringField;
    OrdComp2FactSector: TStringField;
    OrdComp2FactCiudad: TStringField;
    OrdComp2FactTelefono: TStringField;
    OrdComp2FactidEmpleado: TIntegerField;
    OrdComp2FactFecha: TDateTimeField;
    OrdComp2FactHora: TDateTimeField;
    OrdComp2FactCancelado: TBooleanField;
    OrdComp2FactCredito: TBooleanField;
    OrdComp2FactidCompania: TIntegerField;
    OrdComp2FactSubTotal: TBCDField;
    OrdComp2FactItbis: TBCDField;
    OrdComp2FactDescuento: TBCDField;
    OrdComp2FactNota: TStringField;
    OrdComp2FactUsuario: TStringField;
    OrdComp2FactTotal: TBCDField;
    OrdComp2FactidClienteObra: TStringField;
    OrdComp2FactidOrdCompDet: TGuidField;
    OrdComp2FactidProducto: TStringField;
    OrdComp2FactProducto: TStringField;
    OrdComp2FactCantidad: TFloatField;
    OrdComp2FactPrecio: TBCDField;
    OrdComp2FactidUnidad: TStringField;
    OrdComp2FactDescDet: TBCDField;
    OrdComp2FactItbisDet: TBCDField;
    OrdComp2FactLineTotal: TBCDField;
    OrdComp2FactidCotizacion: TGuidField;
    OrdComp2FactCotizacion: TStringField;
    AOrdComp2Factura: TAction;
    BdeOrdComp: TwwNavButton;
    ClienteActDescuento: TFloatField;
    RSFax: TStringField;
    RSeMail: TStringField;
    ClienteActFax: TStringField;
    ClienteActeMail: TStringField;
    Label19: TLabel;
    dxDBEdit17: TdxDBEdit;
    Label20: TLabel;
    dxDBEdit18: TdxDBEdit;
    SendFax: TAction;
    SendMail: TAction;
    bFax: TwwNavButton;
    bMail: TwwNavButton;
    RSPorcDesc: TFloatField;
    Cotizacion2FactPorcDesc: TFloatField;
    OrdComp2FactPorcDesc: TFloatField;
    RSCondicion: TIntegerField;
    Label18: TLabel;
    ClienteActidListaPrecio: TStringField;
    RSDetLinea: TIntegerField;
    ClienteActCondicion: TIntegerField;
    OrdComp2Factcondicion: TIntegerField;
    Cotizacion2FactCondicion: TIntegerField;
    ProductoActidProducto: TStringField;
    ProductoActProducto: TStringField;
    ProductoActAutoDescuento: TBooleanField;
    ProductoActExistencia: TBCDField;
    ProductoActCostoPromedio: TBCDField;
    ProductoActPrecioContado: TBCDField;
    ProductoActPrecioCredito: TBCDField;
    ProductoActInactivo: TBooleanField;
    ProductoActporciento: TFloatField;
    ProductoActidUnidad: TStringField;
    ProductoActDescuento: TFloatField;
    ProductoActExistenciaNeg: TBooleanField;
    ProductoActidListaPrecio: TStringField;
    RSFechaCancelado: TDateTimeField;
    RSDetidCargo: TGuidField;
    CargosAS2Fact: TADODataSet;
    CargosAS2FactidCliente: TIntegerField;
    CargosAS2FactidAutoServ: TIntegerField;
    CargosAS2FactContado: TBooleanField;
    CargosAS2FactidCargo: TGuidField;
    CargosAS2FactidProducto: TStringField;
    CargosAS2FactProducto: TStringField;
    CargosAS2FactMontoRD: TBCDField;
    CargosAS2FactCantidad: TBCDField;
    CargosAS2FactDescuento: TBCDField;
    RSidfrFactura: TGuidField;
    RSFechaInicio: TDateTimeField;
    RSFechaFin: TDateTimeField;
    RSDiaProceso: TWordField;
    RSDetidfrFacturaDet: TGuidField;
    RSDetidfrFactura: TGuidField;
    TabSheet5: TTabSheet;
    Label21: TLabel;
    dxDBEdit20: TdxDBEdit;
    Label22: TLabel;
    dxDBEdit21: TdxDBEdit;
    Label23: TLabel;
    dxDBEdit22: TdxDBEdit;
    Button1: TButton;
    ProductoActMinimo: TFloatField;
    ProductoActReorden: TFloatField;
    ProductoActCambiarPrecio: TBooleanField;
    ProductoActidPartida: TStringField;
    Label17: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    RSidMoneda: TIntegerField;
    ProductoActidMoneda: TIntegerField;
    Label28: TLabel;
    dxDBLookupEdit6: TdxDBLookupEdit;
    qryCondicion: TADOQuery;
    qryCondicionidCondicion: TStringField;
    qryCondicionCondicion: TStringField;
    qryCondicionCredito: TBooleanField;
    qryCondicionDias: TIntegerField;
    qryCondicionPrecioContado: TBooleanField;
    qryCondicionNoCreditoCheck: TBooleanField;
    dsCondicion: TDataSource;
    RSidCondicion: TStringField;
    dxDBEdit23: TdxDBEdit;
    ClienteActidCuenta: TStringField;
    ClienteActidAuxiliar: TStringField;
    ClienteActRNC_Cedula: TStringField;
    ClienteActidCondicion: TStringField;
    RSClienteRNC: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure RSDetAfterPost(DataSet: TDataSet);
    procedure RSDetNewRecord(DataSet: TDataSet);
    procedure RSDetDescuentoValidate(Sender: TField);
    procedure RSNewRecord(DataSet: TDataSet);
    procedure RSAfterScroll(DataSet: TDataSet);
    procedure RSDetPrecioValidate(Sender: TField);
    procedure RSDetCantidadValidate(Sender: TField);
    procedure ClientesExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure FindClienteClick(Sender: TObject);
    procedure AAnularExecute(Sender: TObject);
    procedure GridCellChanged(Sender: TObject);
    procedure RSidClienteValidate(Sender: TField);
    procedure RSDetidProductoValidate(Sender: TField);
    procedure FormDestroy(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ACotizacionExecute(Sender: TObject);
    procedure CreditoClick(Sender: TObject);
    procedure RSCotizacionValidate(Sender: TField);
    procedure GridDblClick(Sender: TObject);
    procedure AGetProductExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBEdit16DblClick(Sender: TObject);
    procedure dxDBEdit6DblClick(Sender: TObject);
    procedure PagaItbisClick(Sender: TObject);
    procedure RSPagaItbisValidate(Sender: TField);
    procedure RSOrdCompValidate(Sender: TField);
    procedure dxDBEdit4DblClick(Sender: TObject);
    procedure AOrdComp2FacturaExecute(Sender: TObject);
    procedure RSPorcDescValidate(Sender: TField);
    procedure RSDescuentoValidate(Sender: TField);
    procedure RSCondicionValidate(Sender: TField);
    procedure Button1Click(Sender: TObject);
    procedure RSidMonedaValidate(Sender: TField);
    procedure RSidCondicionValidate(Sender: TField);
  private
    FLoading  : boolean;
    FDescuento: double;
    FITBIS    : double;
    FSubtotal : double;
    procedure CalcTotal;
    procedure CalcITBIS;
    Procedure ActualizarTotales;
    Function MostrarCliente(idCliente : Integer): integer;
    function LocateProducto(idProducto : string):boolean;
//    function TieneCredito(idCliente : Integer): Boolean;
//    function NoTieneCredito() : Boolean;
    procedure CargarCotizacion;
    function GetProduct: string;
    procedure CargarOrdComp;
    procedure CheckExistencia;
    procedure CargarDatosAutoServ(const xas: integer);
    procedure InsertarNormal(idCargo, idProducto, Producto: string;
      MontoRD, Cantidad, Descuento: double);
  protected
    { Private declarations }
    Moneda  : integer;
    NivelAut25  : integer;
    NivelAut45  : integer;
    AUTDESCLIM  : integer;
    NivelAut60  : integer;
    NivelAutLim : integer;
    AUT25 : boolean;
    AUT45 : boolean;
    AUT60 : boolean;
    CLIENTECONTADO : integer;
    LIMITECRE : boolean;
    procedure UserAutoCodigo; override;
    procedure browsebotonstate; override;
    procedure editbotonstate; override;
    procedure newbotonstate; override;

  public
    { Public declarations }
      procedure DoShowstate; override;
  end;

var
  FacturaRec: TFacturaRec;

implementation

uses Udata, UUtiles, FacturaRecFind, uBusqueda, CotizacionFind,
  uCotizacion, uCliente, uOrdComp, OrdCompFind, ueMails7,
  uProductoFindDX, uformx;

{$R *.dfm}


procedure TFacturaRec.FormCreate(Sender: TObject);
begin
  qryCondicion.Open;
  AUTDESCLIM := dm.GetDefault('NIVELAUTODESCLIM');
  if AUT25 then NivelAut45  := dm.getdefault('NIVELAUTOCRED25');
  if AUT45 then NivelAut45  := dm.getdefault('NIVELAUTOCRED45');
  if AUT60 then NivelAut60  := dm.getdefault('NIVELAUTOCRED60');
  if LIMITECRE then NivelAutLim := dm.getdefault('NIVELAUTOLIMCRED');

  CLIENTECONTADO := dm.GetDefault('CLIENTEDEFECTO');
  FLoading := false;
//  ds2.DataSet := mRSDet;
  MasterField := 'idfrFactura';
  DetailField := 'idfrFactura';
  inherited;
  LogField := 'Factura';
  ImageidField := 'idFactura';
  TipoDoc := 'FACTURAREC';
  ProductoAct.open;
  CampodeCierre := 'FECHA'; //nombre del campo de fecha para validar el cierre de operaciones
  try
    Moneda := dm.GetDefault('MONEDA_ACTIVA');
  except
    Moneda := 1;
  end;
  spName := 'FindFacturaFR';
  Busqfield := 'idfrFactura';
  tfBusqueda := TBusqueda; //indFacturaRec;

  OcultarC1 := True;       //oculta la columna 1 en la busqueda
  if not(ds2.dataset.active) then ds2.dataset.open ;
  FDescuento := 0.00;
  FITBIS     := 0.00;
  FSubtotal  := 0.00;
  Empleado.Open;

end;

procedure TFacturaRec.DoShowstate;
var
  xas: Integer;
begin

  xas := -1;
  if (xValue <> null) and (xField = 'as') then begin
    xas := savestrtoint(xvalue);
    xValue := '';
    xField := '';
  end;

  inherited;

  if xas > 0 then
    CargarDatosAutoServ(xas);
end;

procedure TFacturaRec.CargarDatosAutoServ(const xas : integer);
begin
  CargosAS2Fact.Close;
  CargosAS2Fact.parameters[1].value := xas;
  CargosAS2Fact.Open;

  if CargosAS2Fact.isempty then
    raise exception.create('La Orden de Auto Servicio no tiene datos o ya se facturo');

  CargosAS2Fact.First;
  //Asignar datos del header
  rscredito.value := not(CargosAS2FactContado.value);
  rsidCliente.value := CargosAS2FactidCliente.value;

  While Not(CargosAS2Fact.eof) do begin
       InsertarNormal(CargosAS2FactidCargo.Value,
                      CargosAS2FactidProducto.Value,
                      CargosAS2FactProducto.Value,
                      CargosAS2FactMontoRD.Value,
                      CargosAS2FactCantidad.Value,
                      CargosAS2FactDescuento.Value);
    CargosAS2Fact.next;
  end; //while

end;

Procedure TFacturaRec.InsertarNormal(idCargo, idProducto, Producto : string; MontoRD, Cantidad, Descuento : double);
begin
  if appestado = appinsert then begin
    If Not rsDet.Locate('IdCargo', idCargo, []) Then begin
      rsDet.Insert;
      rsDetidCargo.Value  := idCargo;
      rsDetidProducto.Value   := idProducto;
      rsDetProducto.Value := Producto;
      rsDetPrecio.Value       := MontoRD;
      rsDetCantidad.Value    := Cantidad;
      rsDetDescuento.Value   := Descuento;
      rsDet.Post;
    End;
  end;

end;


Function TFacturaRec.MostrarCliente(idCliente : Integer): integer;
Begin
   Result := 0;  // todo bien
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

   if (not(ClienteAct.active)) or (ClienteAct.IsEmpty) then
      Result := -1  // No Existe el codigo de cliente
   else
      if not(ClienteActActivo.value) then
         Result := 1   //esta inactivo pero si existe el cliente
end;

procedure TFacturaRec.UserAutoCodigo;
begin
  rsFactura.Value := dm.GetNextCounterSTR ('FACTURA_REC');
end;

procedure TFacturaRec.newbotonstate;
begin
  inherited;
  FindCliente.enabled := true;
  //Cod.ReadOnly :=true;
  AAnular.Enabled := false;
  ACotizacion.Enabled := false;
  AOrdComp2Factura.Enabled := false;
  Conduce2Factura.Enabled := true;
  AGetProduct.Enabled := true;
  APrint.Enabled := False;
  sendfax.Enabled := false;
  Sendmail.Enabled := false;

end;

procedure TFacturaRec.editbotonstate;
begin
  inherited;
  FindCliente.enabled := true;
//  Cod.ReadOnly :=true;
  AAnular.Enabled := false;
  ACotizacion.Enabled := false;
  AOrdComp2Factura.Enabled := false;
  Conduce2Factura.Enabled := false;
  AGetProduct.Enabled := true;
  APrint.Enabled := False;
  sendfax.Enabled := (not(ds.dataset.IsEmpty)) and (dm.TienePermisoShow(pImprimir,Permisos));
  Sendmail.Enabled := (not(ds.dataset.IsEmpty)) and (dm.TienePermisoShow(pImprimir,Permisos));

end;

procedure TFacturaRec.browsebotonstate;
begin
  inherited;
  FindCliente.enabled := false;
//  Cod.ReadOnly := true;
  AAnular.Enabled := not(rsidfrFactura.IsNull);
  ACotizacion.Enabled := true;
  AOrdComp2Factura.Enabled := true;
  Conduce2Factura.Enabled := false;
  AGetProduct.Enabled := false;
  APrint.Enabled := true; //verificar si tiene permiso para imprimir
  // verificar fecha ultimo cierre para status boton editar

  sendfax.Enabled := (not(ds.dataset.IsEmpty)) and (dm.TienePermisoShow(pImprimir,Permisos));
  Sendmail.Enabled := (not(ds.dataset.IsEmpty)) and (dm.TienePermisoShow(pImprimir,Permisos));

end;

procedure TFacturaRec.CalcTotal();
Var
  bm : string;
begin
  FDescuento:= 0.00;
  FITBIS    := 0.00;
  FSubTotal := 0.00;
  inherited;
  RSDet.DisableControls;
  With RSDet Do
  Begin
    bm := BookMark;
    First;
    While Not Eof Do
    Begin
      FDescuento:= FDescuento + rsDetDescuento.ascurrency;
      FITBIS    := FITBIS + rsDetITBIS.ascurrency;
      FSubTotal := FSubTotal + rsDetLineTotal.ascurrency;
      Next;
    End;
    Bookmark := bm;

  End;
  RSDet.EnableControls;
end;

function TFacturaRec.GetProduct() : string;
begin
  inherited;
    result := fbuscar(TProductofindDX,'idProducto');
end;

procedure TFacturaRec.RSDetAfterPost(DataSet: TDataSet);
begin
  inherited;
  CalcTotal();
  ActualizarTotales();
end;

procedure TFacturaRec.ActualizarTotales;
begin
  if (appestado in [appedit, appinsert]) then
  begin
     if not(rs.state in dsEditModes) then rs.Edit;

     rsTotal.Value    := 0;
     rsDescuento.Value:= 0;
     rsSubTotal.Value := 0;
     rsItbis.Value    := 0;

     rsTotal.Value    := FSubTotal - FDescuento + FITBIS;
     rsDescuento.Value:= FDescuento;
     rsSubTotal.Value := FSubTotal;
     rsItbis.Value    := FITBIS;
  end;
end;

Function TFacturaRec.LocateProducto(idProducto : string): boolean;
begin
  if (ProductoAct.active) and
     (ProductoActidProducto.value = idProducto) and
     (ProductoActidMoneda.value = rsidMoneda.value) and
     (ProductoActidListaPrecio.value = ClienteActidListaPrecio.value) then
  begin
    Result := true;
    exit;
  end
  else
  begin
    ProductoAct.Parameters[1].value := idProducto;
    if ClienteActidListaPrecio.isnull then
      ProductoAct.Parameters[2].Value := Null
    else
      ProductoAct.Parameters[2].Value := ClienteActidListaPrecio.value;
    ProductoAct.Parameters[3].Value := Null;
    ProductoAct.Parameters[4].Value := rsidMoneda.value;
    productoAct.Close;
    productoAct.Open;
  end;
  Result := not(ProductoAct.isempty);
end;

procedure TFacturaRec.RSDetNewRecord(DataSet: TDataSet);
begin
  inherited;

  rsdetCantidad.Value := 1.00;
  rsdetDescuento.value:= 0.00;
  rsdetITBIS.Value    := 0.00;
  rsdetPrecio.Value   := 0.00;
  rsdetidfrFacturaDet.AsGuid := dm.NewGuid;
  rsdetlinea.Value := rsdet.RecordCount;

end;

procedure TFacturaRec.RSDetDescuentoValidate(Sender: TField);
begin
  inherited;
  if sender.AsCurrency > (rsdetcantidad.AsFloat * rsdetprecio.AsCurrency) then
     raise exception.Create ('El descuento no puede ser mayor que el total');

  if sender.AsCurrency < 0  then
     raise exception.Create ('El descuento no puede ser negativo');

  if (sender.AsCurrency > 0) and (not dm.TienePermiso(PAprobar, Permisos, 'Descuentos', rsidcliente.AsString)) then
    raise exception.Create('No tiene autorizacion para aplicar el descuento');

  if (not(rsdetidproducto.isnull)) and  (LocateProducto(rsdetidproducto.Value)) then
  begin
    if (sender.AsCurrency / (rsdetcantidad.AsFloat * rsdetprecio.AsCurrency)) > (ProductoActDescuento.AsFloat/100) then
      if not(dm.Autorizar(AUTDESCLIM,'Cli:'+rsidCliente.AsString,'Descunto por encima del Maximo', 'Autorizacion descuento sobre Maximo')) then
        raise exception.create('Autorizacion Invalida, ESC para cancelar') ;
  end;


  CalcITBIS();
end;

procedure TFacturaRec.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  if not rsdet.IsEmpty then rsdet.close;
  rsidMoneda.Value := Moneda;
  rsPagaitbis.Value := true;
  rscredito.Value := false;
  rsidCliente.Value := CLIENTECONTADO;
  rsidfrfactura.AsGuid := dm.NewGuid;
  rscredito.Value := false;
  rsfecha.Value := dm.DBFecha ();
  rsTotal.value := 0.00;
  rsSubTotal.value := 0.00;
  rsPorcDesc.Value := 0;
  rsDescuento.Value := 0.00;
  rsItbis.Value := 0.00;
  rsCancelado.value := false;
  rsidCompania.Value := dm.CompaniaActual();
  RSUsuario.Value := dm.UsuarioActual;
  rsCondicion.Value := 0;
  rsFechaInicio.Value := date();
  RSDiaProceso.Value := 30;
  RSidCondicion.value := 'CONTADO';

end;

procedure TFacturaRec.RSAfterScroll(DataSet: TDataSet);
begin
  inherited;
  MostrarCliente(RSidCliente.AsInteger);
  // CalcTotal();

end;

procedure TFacturaRec.RSDetPrecioValidate(Sender: TField);
begin
  inherited;
  if sender.value < 0 then
    raise exception.create('El Precio no puede ser menor que cero (0)');

  if (rsPorcdesc.value > 0) and (ProductoActAutoDescuento.AsBoolean) and
     (rsdetDescuento.value <> (rsPorcdesc.value/100)* (rsDetPrecio.ascurrency * rsDetCantidad.asfloat)) then
     rsdetDescuento.value:= (rsPorcdesc.value/100)* (rsDetPrecio.ascurrency * rsDetCantidad.asfloat)
  else if rsdetDescuento.value <> 0.00 then
     rsdetDescuento.value:= 0.00;

  CalcITBIS();
end;

procedure TFacturaRec.RSDetCantidadValidate(Sender: TField);
begin
  inherited;
  if sender.value <= 0 then
    raise exception.create('Debe especificar una cantidad positiva');

  if (rsPorcdesc.value > 0) and (not(rsdetidproducto.isnull)) and (ProductoActAutoDescuento.AsBoolean) and
     (rsdetDescuento.value <> ((rsPorcdesc.value)/100)* (rsDetPrecio.ascurrency * rsDetCantidad.asfloat)) then
     rsdetDescuento.value:= ((rsPorcdesc.value)/100)* (rsDetPrecio.ascurrency * rsDetCantidad.asfloat)
  else if rsdetDescuento.value <> 0.00 then
     rsdetDescuento.value:= 0.00;

  CheckExistencia;

  CalcITBIS();
end;

procedure TFacturaRec.CalcITBIS();
begin
  rsdetITBIS.AsCurrency := 0.00;
  rsdetLineTotal.AsCurrency := 0.00;
  if (rsDetPrecio.ascurrency > 0) and (rsDetCantidad.asfloat > 0) and (not(rsdetidProducto.IsNull)) then
  begin
     rsdetLineTotal.AsCurrency := (rsDetPrecio.ascurrency * rsDetCantidad.asfloat);
     if LocateProducto(rsdetidProducto.AsString) and (ProductoActPorciento.AsFloat > 0) and (rsPagaItbis.AsBoolean) then
        rsdetITBIS.AsCurrency := RoundTo(((rsDetPrecio.ascurrency * rsDetCantidad.asfloat) - rsDetDescuento.ascurrency) * (ProductoActPorciento.AsFloat),-2)
  end;
end;

{
Function TFacturaRec.TieneCredito(idCliente : Integer) : Boolean;
var
  TC : Integer;
begin
//  result := true;
  spTieneCredito.parameters[1].value := idCliente;
  spTieneCredito.Execute;

  TC := spTieneCredito.Parameters[2].value;

     If TC = 1 Then begin
        result := True
     end else If (NivelAutLim > 0) and (TC = 0) Then begin
        result := dm.Autorizar(NivelAutLim, rsidCliente.asstring, 'Autorizacion de Credito Cliente Sobre Limite','LIMITE CRED: NO. DE AUTORIZACION')
     end else if (NivelAut25 > 0) and (TC = -2) Then begin
        result := dm.Autorizar(NivelAut25, rsidCliente.asstring, 'Autorizacion de Credito Facturas llegando al vencimiento','Vencimiento: NO. DE AUTORIZACION')
     end else if (NivelAut45 > 0) and (TC = 45) Then begin
        result := dm.Autorizar(NivelAut45, rsidCliente.asstring, 'Autorizacion de Credito de 45 Dias','45 Dias: NO. DE AUTORIZACION')
     end else if (NivelAut60 > 0) and (TC = 60) Then begin
        result := dm.Autorizar(NivelAut60, rsidCliente.asstring, 'Autorizacion de Credito de 60 Dias','60 Dias: NO. DE AUTORIZACION')
     end else if TC = -1 Then begin
         result := NoTieneCredito();
     end else begin
        result := true;
     end;

End;
 }

//function TFacturaRec.NoTieneCredito() : Boolean;
//begin
//   ShowMessage('El cliente no tiene Limite de Credito asignado');
//   Result := False;
//end;



procedure TFacturaRec.ClientesExecute(Sender: TObject);
var
  x : variant;
begin
  inherited;
  x := fbuscar(TBusqueda,'idCliente',false,'FindCliente');
  if x <> Null then
  begin
    RSidCliente.Value := x;
  end;
end;

procedure TFacturaRec.AGuardarExecute(Sender: TObject);
begin                 
  HandleTrans := false;       // las transacciones no se manejaran automaticamente si no lo pone false
  HandleGuardarState := false;  // el estado de los botones y de la aplicacion al guardar
                               // no se manejaran automaticamente si se pone false
  calcTotal;
  ActualizarTotales();
  inherited;
  browsebotonstate;
  ds.AutoEdit := false;
  //if (appestado = appinsert) and (APrint.Enabled) then Aprint.Execute;
  appestado := appBrowse;

  if XCloseonSave then
    Close();

  if an.Checked then
    ANuevo.Execute;
end;

procedure TFacturaRec.FindClienteClick(Sender: TObject);
var
  x : variant;
begin
  inherited;
  x := fbuscar(TBusqueda,'idCliente',false,'FindCliente');
  if x <> Null then
  begin
    RSidCliente.Value := x;
  end;
end;

procedure TFacturaRec.AAnularExecute(Sender: TObject);
begin
  inherited;
  if not(RSCancelado.AsBoolean) then
  begin
    AnularFact.Parameters[1].Value := RSidfrFactura.Value;
    AnularFact.Execute;
    if AnularFact.Parameters[2].Value then
    begin
       ShowMessage('La factura ha sido anulada');
    end
    else
    begin
       Raise exception.create('No se pudo anular la factura / verifique si tiene pagos aplicados');
    end;
  end;
end;

procedure TFacturaRec.GridCellChanged(Sender: TObject);
begin
  inherited;
  Grid.RedrawGrid;
end;

procedure TFacturaRec.RSidClienteValidate(Sender: TField);
var
  x : integer;
begin
  inherited;

  if sender.IsNull then begin
    rsCliente.Clear;
    rsContacto.Clear;
    rsDireccion.clear;
    rsSector.clear;
    rsCiudad.clear;
    rsTelefono.clear;
    rsfax.clear;
    rseMail.clear;
    rsClienteRNC.clear ;
    rsidEmpleado.Clear;
    rsidclienteobra.clear;
    exit;
  end;

  x := MostrarCliente(sender.AsInteger);

  if x = -1 then raise Exception.create('Este cliente no existe');
  if x =  1 then raise exception.Create('Este cliente esta inactivo');

     // si se encuentra la condicion del cliente en la tabla de condiciones
     if qrycondicion.locate('idCondicion', ClienteActidcondicion.value,[]) then begin
       // si es de credito la condicion y no dice que no chequee el credito
       //if (qrycondicionCredito.Value) and (not(qrycondicionNoCreditoCheck.Value)) then begin
         // si es credito verificar si el cliente tiene credito
         //if (not(TieneCredito(rsidCliente.AsInteger))) then begin
          // Showmessage('Credito NO Autorizado, solo se permite de contado');
          // rsidCondicion.value := 'CONTADO';
         //end else begin
          // fLoading := true;
           rsidCondicion.value := ClienteActidCondicion.value;
          // fLoading := false;
         //end;
       //end;
     end else begin      // si NO se encuentra la condicion del cliente en la tabla de condiciones
       rsidCondicion.value := 'CONTADO';
     end;
     rsCliente.Value := ClienteActCliente.AsString;

     if (ClienteActidEmpleado.isnull) or (ClienteActidEmpleado.AsString = '') then
       rsidEmpleado.Clear
     else
       rsidEmpleado.Value := ClienteActidEmpleado.value;

     if ClienteActDescuento.AsFloat > 0 then
       rsporcdesc.value := ClienteActDescuento.value
     else
       desc.Clear;

//     rsidClienteObra.Clear;
//     ClienteObra.Parameters[1].Value := rsidCliente.Value;
//     if ClienteObra.Active then ClienteObra.Requery() else ClienteObra.Open;

     if rsdet.IsEmpty then begin
       rsPagaItbis.Value := not(ClienteActNoPagaItbis.asboolean);
     end else begin if rsPagaitbis.Value <> not(ClienteActNoPagaItbis.asboolean) then
       ShowMessage('Las condicion de ITBIS del cliente no se pueden actualuzar si tiene articulos');
     end;


  rsContacto.value   :=  ClienteActContacto.value;
  rsDireccion.value  :=  ClienteActDireccion.value;
  rsSector.value     :=  ClienteActSector.value;
  rsCiudad.value     :=  ClienteActCiudad.value;
  rsTelefono.value   :=  ClienteActTelefono.value;
  rsfax.value        :=  ClienteActFax.value;
  rseMail.value      :=  ClienteActeMail.value;
  rsClienteRNC.Value :=  ClienteActRNC_Cedula.Value;
end;

procedure TFacturaRec.RSDetidProductoValidate(Sender: TField);
begin
  inherited;
  if LocateProducto(sender.value) then
  begin
     if rsCredito.value then
        rsdetprecio.value  := ProductoActPrecioCredito.AsCurrency
     else
        rsdetprecio.value  := ProductoActPrecioContado.AsCurrency ;

      rsdetProducto.value := ProductoActProducto.AsString;
      rsdetidUnidad.Value := ProductoActidUnidad.Value;
      CheckExistencia;
  end
  else
     raise exception.create('Producto invalido');
end;

procedure TFacturaRec.CheckExistencia();
begin
  if (not rsdetidProducto.IsNull)
      and LocateProducto(rsdetidProducto.value)
      and (not rsdetcantidad.isnull)
      and (rsdetcantidad.Value > 0) then begin
      if (Not ProductoActExistenciaNeg.Value) and (rsdetCantidad.Value > ProductoActExistencia.Value) then
         raise exception.create('La existencia del producto es menor que la requerida')
  end;
end;


procedure TFacturaRec.FormDestroy(Sender: TObject);
begin
  inherited;
  Empleado.close;
end;

procedure TFacturaRec.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  x : string;
begin
  inherited;
  if appestado in [appedit, appinsert] then
  begin
    if (grid.SelectedField.FieldName = 'idProducto') and (Key = VK_DECIMAL) then
    begin
       x := fBuscar(TBusqueda, 'idProducto',false,'FindProducto');
       key := 0;
       if x <> null then
       begin
          if not(rsDet.State in dseditmodes) then rsDet.Edit;
          rsdetidProducto.Value := x;
       end;
    end;
  end;
end;
procedure TFacturaRec.ACotizacionExecute(Sender: TObject);
begin
  inherited;
  CargarCotizacion();
end;

Procedure TFacturaRec.CargarCotizacion();
var
  c : Variant;
begin
  c := fBuscar(TFindCotizacion, 'idCotizacion',false);
  if not(c = Null) then
  begin
    Cotizacion2Fact.Parameters[1].Value := c;
    if Cotizacion2Fact.active then Cotizacion2Fact.requery() else Cotizacion2Fact.Open;
    if not(Cotizacion2Fact.IsEmpty) then
    begin
      Anuevo.Execute;
      rsCredito.Value   := Cotizacion2FactCredito.Value;
      rsidCliente.Value := Cotizacion2FactidCliente.Value;
      rsCliente.Value   := Cotizacion2FactCliente.Value;
      rsContacto.Value  := Cotizacion2FactContacto.Value;
      rsDireccion.Value := Cotizacion2FactDireccion.Value;
      rsSector.Value    := Cotizacion2FactSector.Value;
      rsCiudad.Value    := Cotizacion2FactCiudad.Value;
      rsTelefono.Value  := Cotizacion2FactTelefono.Value;
      rsidEmpleado.value:= Cotizacion2FactidEmpleado.Value;
      rsCotizacion.value  := Cotizacion2FactCotizacion.Value;
      //rsidCotizacion.Value:= Cotizacion2FactidCotizacion.Value;
      rsidClienteObra.Value := Cotizacion2FactidClienteObra.value;
      rsPorcDesc.Value := Cotizacion2FactPorcDesc.Value ;
      rsCondicion.value := Cotizacion2FactCondicion.value;

      while not(Cotizacion2Fact.Eof) do begin
        rsDet.Append;
        rsDetidProducto.Value:= Cotizacion2FactidProducto.Value;
        rsDetProducto.Value  := Cotizacion2FactProducto.Value;
        rsDetCantidad.Value  := Cotizacion2FactCantidad.Value;
        rsDetPrecio.Value    := Cotizacion2FactPrecio.Value;
        rsDetItbis.Value     := Cotizacion2FactItbisDet.Value;
        rsDetidUnidad.Value  := Cotizacion2FactidUnidad.Value;
        rsDetDescuento.Value := Cotizacion2FactDescDet.Value;
        rsDet.Post;
        Cotizacion2Fact.next;
      end;
    end;
    Cotizacion2Fact.Close;
  end;
end;

Procedure TFacturaRec.CargarOrdComp();
var
  c : Variant;
begin
  c := fBuscar(TFindOrdComp, 'idOrdComp',false);
  if not(c = Null) then
  begin
    OrdComp2Fact.Parameters[1].Value := c;
    if OrdComp2Fact.active then OrdComp2Fact.requery() else OrdComp2Fact.Open;
    if not(OrdComp2Fact.IsEmpty) then
    begin
      Anuevo.Execute;
      rsCredito.Value   := OrdComp2FactCredito.Value;
      rsidCliente.Value := OrdComp2FactidCliente.Value;
      rsCliente.Value   := OrdComp2FactCliente.Value;
      rsContacto.Value  := OrdComp2FactContacto.Value;
      rsDireccion.Value := OrdComp2FactDireccion.Value;
      rsSector.Value    := OrdComp2FactSector.Value;
      rsCiudad.Value    := OrdComp2FactCiudad.Value;
      rsTelefono.Value  := OrdComp2FactTelefono.Value;
      rsidEmpleado.value:= OrdComp2FactidEmpleado.Value;
      rsOrdComp.value  := OrdComp2FactOrdComp.Value;
      rsCondicion.value := OrdComp2FactCondicion.value;
      //rsidOrdComp.Value:= OrdComp2FactidCotizacion.Value;
      rsCotizacion.value  := OrdComp2FactCotizacion.Value;
      //rsidCotizacion.Value:= OrdComp2FactidCotizacion.Value;
      rsidClienteObra.Value := OrdComp2FactidClienteObra.value;
      rsPorcDesc.Value := OrdComp2FactPorcDesc.Value;

      while not(OrdComp2Fact.Eof) do begin
        rsDet.Append;
        rsDetidProducto.Value:= OrdComp2FactidProducto.Value;
        rsDetProducto.Value  := OrdComp2FactProducto.Value;
        rsDetCantidad.Value  := OrdComp2FactCantidad.Value;
        rsDetPrecio.Value    := OrdComp2FactPrecio.Value;
        rsDetItbis.Value     := OrdComp2FactItbisDet.Value;
        rsDetidUnidad.Value  := OrdComp2FactidUnidad.Value;
        rsDetDescuento.Value := OrdComp2FactDescDet.Value;
        rsDet.Post;
        OrdComp2Fact.next;
      end;
    end;
    OrdComp2Fact.Close;
  end;



end;

procedure TFacturaRec.CreditoClick(Sender: TObject);
begin
  inherited;
  if rsCredito.AsBoolean <> Credito.Checked then
     rsCredito.AsBoolean := Credito.Checked;
end;

procedure TFacturaRec.RSCotizacionValidate(Sender: TField);
var
  h : variant;
begin
  inherited;
  rsidCotizacion.Clear;
  if sender.AsString <> '' then
    h := ReturnVariant('Cotizacion','idCotizacion','Cotizacion = ''' + Sender.AsString + '''')
  else
    exit;

  if (h = null) then
    Raise exception.Create('Esta Cotizacion no existe')
  else
    rsidCotizacion.Value := H;

end;


procedure TFacturaRec.GridDblClick(Sender: TObject);
begin
  inherited;
  if grid.SelectedField.Name = 'RSDetidProducto' then
    if AGetProduct.Enabled then
       AGetProduct.Execute;
end;

procedure TFacturaRec.AGetProductExecute(Sender: TObject);
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


procedure TFacturaRec.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_add then begin
     if AGetProduct.Enabled then
       AGetProduct.Execute;
  end;

end;

procedure TFacturaRec.dxDBEdit16DblClick(Sender: TObject);
begin
  inherited;
 if not(rsidCotizacion.isnull) then
    Modalshow(TCotizacion,ShowFind,rsidCotizacion.Value, '',true);
end;

procedure TFacturaRec.dxDBEdit6DblClick(Sender: TObject);
begin
  inherited;
 if not(rsidcliente.isnull) then
    Modalshow(TCliente, ShowFind, rsidCliente.Value, '',true)
 else
   Modalshow(TCliente, showInsert, rsidCliente.Value, '',true)

end;

procedure TFacturaRec.PagaItbisClick(Sender: TObject);
begin
  inherited;
  if rsPagaItbis.AsBoolean <> PagaItbis.Checked then
     rsPagaItbis.AsBoolean := PagaItbis.Checked;
     
end;

procedure TFacturaRec.RSPagaItbisValidate(Sender: TField);
begin
  inherited;
  if not rsdet.IsEmpty then
    raise exception.Create('No puede cambiar el itbis si ya tiene articulos, use ESC para cancelar el cambio');
end;

procedure TFacturaRec.RSOrdCompValidate(Sender: TField);
var
  h : variant;
begin
  inherited;
  rsidOrdComp.Clear;
  if sender.AsString <> '' then
    h := ReturnVariant('OrdComp','idOrdComp','OrdComp = ''' + Sender.AsString + '''')
  else
    exit;

  if (h = null) then
    Raise exception.Create('Esta Orden de Compra no existe')
  else
    rsidOrdComp.Value := H;


end;

procedure TFacturaRec.dxDBEdit4DblClick(Sender: TObject);
begin
  inherited;
 if not(rsidOrdComp.isnull) then
    Modalshow(TOrdComp,ShowFind,rsidOrdComp.Value, '',true);
end;

procedure TFacturaRec.AOrdComp2FacturaExecute(Sender: TObject);
begin
  inherited;
  CargarOrdComp();

  calcTotal;
  ActualizarTotales();

end;

procedure TFacturaRec.RSPorcDescValidate(Sender: TField);
begin
  inherited;
  if rsdet.Active then begin
    rsdet.First;
    while not rsdet.Eof do begin
      rsdet.Edit;
      try
        rsdetdescuento.Value := ((rsdetprecio.Value * rsdetcantidad.Value) * (rsporcdesc.Value /100));
      except
        rsdetdescuento.Value := 0;
      end;
      rsdet.Post;
      rsdet.Next;
    end;
  end;
end;

procedure TFacturaRec.RSDescuentoValidate(Sender: TField);
begin
  inherited;
  if rsdescuento.Value < 0 then
    raise exception.Create('El descuento no puede ser negativo');

  if (rsdescuento.Value > 0) and (not dm.TienePermiso(PAprobar, Permisos, 'Descuentos', rsidcliente.AsString)) then
    raise exception.Create('No tiene autorizacion para aplicar el descuento');
end;

procedure TFacturaRec.RSCondicionValidate(Sender: TField);
begin
  inherited;
//  if (not(rscredito.Value)) and (rscondicion.Value > 0)  then
//    raise exception.create('Facturas de contado solo pueden tener condicion de cero (0) dias,  Presione Escape para abortar');
end;

procedure TFacturaRec.Button1Click(Sender: TObject);
begin
  inherited;
  if (rs.State in dsEditModes) then
    rsFechaFin.Clear();
end;

procedure TFacturaRec.RSidMonedaValidate(Sender: TField);
begin
  inherited;
  if not(rsdet.IsEmpty) then
    raise exception.Create('No puede cambiar la moneda con productos, cancele y elija la moneda antes que los productos');
end;

procedure TFacturaRec.RSidCondicionValidate(Sender: TField);
begin
  inherited;
//  if not(rsdet.IsEmpty) then
//    raise exception.Create('No debe cambiar la caracteristica de credito si ya tiene productos pues podria haber diferencia en los precios');

  if not(qryCondicion.locate('idCondicion', sender.Value, [])) then
    raise exception.Create('No existe la condicion especificada');

  if qryCondicioncredito.value then begin
      if (not(rsidcliente.IsNull)) and (rsidCliente.Value = CLIENTECONTADO) then begin
         rsidcliente.Clear;
      end;
//        if fLoading = false then begin
//          if (not(rsidcliente.IsNull)) and (not(TieneCredito(rsidCliente.asinteger))) then begin
//            raise exception.Create('El cliente no tiene credito o el credito no ha sido autorizado');
//        end;
//      end;
  end;

  if rscredito.Value <> qryCondicioncredito.value then
    rscredito.Value   := qryCondicioncredito.value;
  if rscondicion.Value <> qryCondiciondias.value then
    rscondicion.Value := qryCondiciondias.value;


end;

end.

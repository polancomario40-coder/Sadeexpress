unit uOrdComp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformmant2, DB, dxDBELib, StdCtrls, dxCntner, dxEditor, dxEdLib,
  ADODB, ActnList, ImgList, Wwdatsrc, Grids, Wwdbigrd, Wwdbgrid,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxExEdtr, dxDBEdtr,
  ComCtrls, math, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxLookAndFeelPainters, cxButtons, Menus, DBCtrls, cxCheckBox, cxDBEdit,
  cxCalendar, cxSpinEdit, cxTimeEdit, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxPC, cxButtonEdit, cxCheckListBox;

type
  TOrdComp = class(Tfformmant2)
    ClienteAct: TADODataSet;
    dsEstacionAct: TDataSource;
    ProductoAct: TADODataSet;
    dsProductoAct: TDataSource;
    SPTieneCredito: TADOCommand;
    SPCreditoAutorizacion: TADOCommand;
    Clientes: TAction;
    bAnular: TwwNavButton;
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
    RSDetidUnidad: TStringField;
    RSDetDescuento: TBCDField;
    RSDetItbis: TBCDField;
    ClienteActidCliente: TIntegerField;
    ClienteActCliente: TStringField;
    ClienteActContacto: TStringField;
    ClienteActLimiteCredito: TBCDField;
    ClienteActActivo: TBooleanField;
    ProductoActidProducto: TStringField;
    ProductoActProducto: TStringField;
    ProductoActExistencia: TFloatField;
    ProductoActCostoPromedio: TBCDField;
    ProductoActPrecioContado: TBCDField;
    ProductoActPrecioCredito: TBCDField;
    ProductoActInactivo: TBooleanField;
    ProductoActporciento: TFloatField;
    Empleado: TADODataSet;
    dsEmpleado: TDataSource;
    RSDetLineTotal: TBCDField;
    ProductoActidUnidad: TStringField;
    OrdCompStatus: TADODataSet;
    dsOrdCompStatus: TDataSource;
    RSidOrdComp: TGuidField;
    RSidOrdCompStatus: TStringField;
    RSDetidOrdCompDet: TGuidField;
    RSDetidOrdComp: TGuidField;
    RSContacto: TStringField;
    ClienteActidEmpleado: TIntegerField;
    RSSector: TStringField;
    RSCiudad: TStringField;
    ClienteActDireccion: TStringField;
    ClienteActSector: TStringField;
    ClienteActCiudad: TStringField;
    ClienteActTelefono: TStringField;
    ClienteActNoPagaItbis: TBooleanField;
    ACotizacion: TAction;
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
    bCotizacion: TwwNavButton;
    RSidCotizacion: TGuidField;
    RSCotizacion: TStringField;
    RSOrdComp: TStringField;
    Cotizacion2FactCotizacion: TStringField;
    ClienteObra: TADODataSet;
    ClienteObraidClienteObra: TStringField;
    ClienteObraidCliente: TIntegerField;
    ClienteObraDireccionObra: TStringField;
    ClienteObraSectorObra: TStringField;
    ClienteObraCiudadObra: TStringField;
    ClienteObraTelefonoObra: TStringField;
    ClienteObraFaxObra: TStringField;
    ClienteObraCelularObra: TStringField;
    ClienteObraContactoObra: TStringField;
    dsClienteObra: TDataSource;
    RSidClienteObra: TStringField;
    Cotizacion2FactidClienteObra: TStringField;
    AGetProduct: TAction;
    RSPagaItbis: TBooleanField;
    RSElemento: TStringField;
    ClienteActDescuento: TFloatField;
    RSFax: TStringField;
    RSeMail: TStringField;
    ClienteActFax: TStringField;
    ClienteActeMail: TStringField;
    ProductoActDescuento: TFloatField;
    RSPorcDesc: TFloatField;
    Cotizacion2FactPorcDesc: TFloatField;
    ClienteActidListaPrecio: TStringField;
    ProductoActExistenciaNeg: TBooleanField;
    ProductoActidListaPrecio: TStringField;
    RSDetLinea: TIntegerField;
    RSCondicion: TIntegerField;
    ClienteActCondicion: TIntegerField;
    Cotizacion2FactCondicion: TIntegerField;
    ProductoActAutoDescuento: TBooleanField;
    RSidMoneda: TIntegerField;
    Cotizacion2FactidMoneda: TIntegerField;
    ProductoActMinimo: TFloatField;
    ProductoActReorden: TFloatField;
    ProductoActCambiarPrecio: TBooleanField;
    ProductoActidPartida: TStringField;
    ProductoActidMoneda: TIntegerField;
    RSDetPrecio: TBCDField;
    AGenRequisicion: TAction;
    RSidCondicion: TStringField;
    qryCondicion: TADOQuery;
    qryCondicionidCondicion: TStringField;
    qryCondicionCondicion: TStringField;
    qryCondicionCredito: TBooleanField;
    qryCondicionDias: TIntegerField;
    qryCondicionPrecioContado: TBooleanField;
    dsCondicion: TDataSource;
    ClienteActidCondicion: TStringField;
    Cotizacion2FactCotizacionstatus: TStringField;
    Cotizacion2Factfacturable: TBooleanField;
    qryCondicionNoCreditoCheck: TBooleanField;
    Cotizacion2FactidCondicion: TStringField;
    Cotizacion2Factpagaitbis: TBooleanField;
    Cotizacion2Factreferencia: TStringField;
    Cotizacion2FactProcesable: TBooleanField;
    AFacturaDetEspec: TAction;
    AProductoDet: TAction;
    PopupMenu1: TPopupMenu;
    ProductoDet1: TMenuItem;
    EspecificacionesTecnicasdelProducto1: TMenuItem;
    RSObservacion: TStringField;
    rsEspec: TADODataSet;
    rsEspecidFacturaDet: TGuidField;
    rsEspecidFactura: TGuidField;
    rsEspecEspecificacion: TStringField;
    rsEspecFechaEspec: TDateTimeField;
    AObservacion: TAction;
    GetProductoEspec: TADODataSet;
    GetProductoEspecEspecificacion: TStringField;
    GetFacturaDetEspec: TADODataSet;
    GetProductoEspecFechaEspec: TDateTimeField;
    GetFacturaDetEspecEspecificacion: TStringField;
    GetFacturaDetEspecFechaEspec: TDateTimeField;
    DBText1: TDBText;
    ClienteActNotas: TStringField;
    dsClienteAct: TDataSource;
    RSNotaReferencia: TStringField;
    spDescuentoXCantidad: TADOStoredProc;
    AClienteObra: TAction;
    cAnular: TADOCommand;
    RSFechaEntrega: TDateTimeField;
    rsDetAnotacion: TADODataSet;
    rsDetAnotacionidAnotacionDocumento: TGuidField;
    rsDetAnotacionGuidDocumento: TGuidField;
    rsDetAnotacionidAnotacion: TStringField;
    rsDetAnotacionAnotacion: TStringField;
    rsDetAnotacionComentario: TStringField;
    dsAnotaciones: TDataSource;
    rsAnotaciones: TADODataSet;
    rsAnotacionesidAnotacion: TStringField;
    rsAnotacionesTipo: TStringField;
    rsAnotacionesAnotacion: TStringField;
    rsAnotacionesPorDefecto: TBooleanField;
    dsDetAnotacion: TDataSource;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label20: TLabel;
    Label16: TLabel;
    Label28: TLabel;
    Label23: TLabel;
    cod: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    FindCliente: TButton;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit11: TdxDBEdit;
    lStatus: TdxDBLookupEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit20: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    LCondicion: TdxDBLookupEdit;
    dxDBEdit18: TdxDBEdit;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    Credito: TdxDBCheckEdit;
    Label22: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    PagaItbis: TdxDBCheckEdit;
    dxDBCheckEdit2: TdxDBCheckEdit;
    cxButton1: TcxButton;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    desc: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBMemo2: TdxDBMemo;
    cxButton2: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1idProducto: TcxGridDBColumn;
    cxGrid1DBTableView1Producto: TcxGridDBColumn;
    cxGrid1DBTableView1Cantidad: TcxGridDBColumn;
    cxGrid1DBTableView1Precio: TcxGridDBColumn;
    cxGrid1DBTableView1idUnidad: TcxGridDBColumn;
    cxGrid1DBTableView1Descuento: TcxGridDBColumn;
    cxGrid1DBTableView1Itbis: TcxGridDBColumn;
    cxGrid1DBTableView1LineTotal: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cAnotaciones: TcxCheckListBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label8: TLabel;
    lkEmpleado: TdxDBLookupEdit;
    dxDBMemo1: TdxDBMemo;
    TabSheet2: TTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    dxDBEdit12: TdxDBEdit;
    dxDBEdit13: TdxDBEdit;
    dxDBEdit14: TdxDBEdit;
    dxDBEdit15: TdxDBEdit;
    dxDBEdit16: TdxDBEdit;
    dxDBEdit17: TdxDBEdit;
    TabSheet3: TTabSheet;
    Label17: TLabel;
    dxDBLookupEdit2: TdxDBLookupEdit;
    cxButton3: TcxButton;
    TabSheet4: TTabSheet;
    dxDBMemo3: TdxDBMemo;
    tsNotaReferencia: TTabSheet;
    dxDBMemo4: TdxDBMemo;
    RSidAlmacen: TStringField;
    RScomputer: TStringField;
    RSidDoctor: TIntegerField;
    dxDBLookupEdit5: TdxDBLookupEdit;
    Label21: TLabel;
    ProductoActMaximo: TFloatField;
    ProductoActCalcExistencia: TBooleanField;
    ProductoActMonedaProducto: TIntegerField;
    ProductoActPrecioContProd: TBCDField;
    ProductoActPrecioCredProd: TBCDField;
    ProductoActDescuentoPermitido: TFloatField;
    ProductoActDescuentoVence: TDateTimeField;
    ProductoActDescNivel1: TFloatField;
    ProductoActDescNivel2: TFloatField;
    ProductoActDescNivel3: TFloatField;
    ProductoActGrupo: TStringField;
    ProductoActParaVender: TBooleanField;
    TabSheet5: TTabSheet;
    dxDBLookupEdit3: TdxDBLookupEdit;
    Label25: TLabel;
    Almacen: TADODataSet;
    AlmacenAlmacen: TStringField;
    AlmacenidAlmacen: TStringField;
    dsAlmacen: TDataSource;
    DescuProdSucursal: TADODataSet;
    DescuProdSucursalidSucursal: TStringField;
    DescuProdSucursalidProducto: TStringField;
    DescuProdSucursalDescuentoPermitido: TBCDField;
    DescuProdSucursalDescuentoVence: TDateTimeField;

    procedure FormCreate(Sender: TObject);
    procedure RSDetAfterPost(DataSet: TDataSet);
    procedure RSDetNewRecord(DataSet: TDataSet);
    procedure RSDetDescuentoValidate(Sender: TField);
    procedure RSNewRecord(DataSet: TDataSet);
    procedure RSAfterScroll(DataSet: TDataSet);
    procedure RSDetPrecioValidate(Sender: TField);
    procedure RSDetCantidadValidate(Sender: TField);
    procedure CreditoValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure codEnter(Sender: TObject);
    procedure codExit(Sender: TObject);
    procedure ClientesExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure FindClienteClick(Sender: TObject);
    procedure RSFechaValidate(Sender: TField);
    procedure RSidClienteValidate(Sender: TField);
    procedure RSDetidProductoValidate(Sender: TField);
    procedure PagaItbisValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure ACotizacionExecute(Sender: TObject);
    procedure RSCotizacionValidate(Sender: TField);
    procedure AGetProductExecute(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBEdit20DblClick(Sender: TObject);
    procedure dxDBEdit6DblClick(Sender: TObject);
    procedure RSPagaItbisValidate(Sender: TField);
    procedure PagaItbisClick(Sender: TObject);
    procedure RSPorcDescValidate(Sender: TField);
    procedure RSDescuentoValidate(Sender: TField);
    procedure CreditoChange(Sender: TObject);
    procedure RSDetBeforePost(DataSet: TDataSet);
    procedure RSidMonedaValidate(Sender: TField);
    procedure AGenRequisicionExecute(Sender: TObject);
    procedure RSidCondicionValidate(Sender: TField);
    procedure RSPagaItbisChange(Sender: TField);
    procedure AFacturaDetEspecExecute(Sender: TObject);
    procedure AProductoDetExecute(Sender: TObject);
    procedure rsEspecNewRecord(DataSet: TDataSet);
    procedure ACancelarExecute(Sender: TObject);
    procedure AObservacionExecute(Sender: TObject);
    procedure ANuevoExecute(Sender: TObject);
    procedure ALocalizarExecute(Sender: TObject);
    procedure AClienteObraExecute(Sender: TObject);
    procedure AAnularExecute(Sender: TObject);
    procedure cxGrid1DBTableView1idProductoPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1Enter(Sender: TObject);
    procedure cxGrid1Exit(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure RSDetAfterScroll(DataSet: TDataSet);
    procedure RSDetBeforeScroll(DataSet: TDataSet);
    procedure cAnotacionesClickCheck(Sender: TObject; AIndex: Integer;
      APrevState, ANewState: TcxCheckBoxState);
    procedure CheckExistencia;
    procedure ABorrarExecute(Sender: TObject);
  private
    //Fotos : String;
    ALMACENDEFAULT: string;
    COMPUTER : string;
    FLoading  : boolean;
    FDescuento: double;
    FITBIS    : double;
    FSubtotal : double;
    //fCreditoAutorizado : Boolean;
    fDescuentoXCantidad : Boolean;
    Procedure ValidarDescuento;
    procedure CalcTotal;
    procedure CalcITBIS;
    Procedure ActualizarTotales;
    Function MostrarCliente(idCliente : Integer): integer;
    function LocateProducto(idProducto : string):boolean;
    function TieneCredito(idCliente : Integer; MasMonto : Double; idCondicion : string) : Boolean;
    //function NoTieneCredito() : Boolean;
    procedure CargarCotizacion;
    function GetProduct: string;
    procedure DescuentoCalc;
//    function TieneCreditoShow(idCliente: Integer): Boolean;
    procedure CalcLineTotal;
    function GenRequisicion: string;
    Function DescuentoXCantidad(IdProducto : String; Precio : Double; Cantidad : Double) : Double;
    procedure ActualizarCheckBoxes;
  protected
    { Private declarations }
    SUMARITBIS: Integer;
    CENTROCOSTOVENTA : string;
    CAMBIOCONDICION : string;
    //PEDIDONOVALCREDITO : string;
    IDCENTROCOSTOVENTA : variant;
    //NivelAut25  : integer;
    AUTDESCLIM  : integer;
    //NivelAut45  : integer;
    //NivelAut60  : integer;
    //NivelAutLim : integer;
    //CLIENTECONTADO : integer;
    Moneda : integer;
    importing : boolean;
    //LIMITECONTRAENTREGA : variant;
    DescAutorizado: Integer;//Boolean; DescAutorizado: 
    DescAutLimite: Boolean;
    ListaAnotaciones: TStringList;
    procedure UserAutoCodigo; override;
    procedure browsebotonstate; override;
    procedure editbotonstate; override;
    procedure newbotonstate; override;

  public
    { Public declarations }
    procedure EnviarNotificacionPedidoEmail(const nuevo: Boolean);
  end;

Const
  NOAUTORIZADO = 'NoAutorizado';
  AUTORIZADO = 'Autorizado';

var
  OrdComp: TOrdComp;

implementation

uses Udata, UUtiles, uBusqueda, OrdCompFind, CotizacionFind,
  uCotizacion, uCliente, uProductoFindDX, 
  uInvReqInv, uProductoDetalle, uFacturaDetEspec, uBusquedaRangoDX,
  uClienteObra, uClienteDireccion, ueMails7, StrUtils;

{$R *.dfm}


procedure TOrdComp.FormCreate(Sender: TObject);
var
  ci: TcxCheckListBoxItem;
begin
  segName := 'OrdComp';
  importing := false;
  //fCreditoAutorizado := False;
  DescAutorizado := 0 ; //False;
  CENTROCOSTOVENTA := '';
  IDCENTROCOSTOVENTA := NULL;
  CAMBIOCONDICION := dm.GetDefaultStr('CAMBIO_CONDICION');
  SUMARITBIS := dm.GetDefault('SUMARITBIS');



//  PEDIDONOVALCREDITO := dm.GetDefaultStr('PEDIDO_NOVALCRED');
  //LIMITECONTRAENTREGA := dm.GetDefault('LIM.CONTRA.ENT');
  //if LIMITECONTRAENTREGA = NULL then LIMITECONTRAENTREGA := 999999999.99;



  rsAnotaciones.Close();
  rsAnotaciones.Parameters[1].Value := 'CONDUCE';
  rsAnotaciones.Open();
  Almacen.Open;
  ListaAnotaciones := TStringList.Create();
  cAnotaciones.Items.Clear();

  while not rsAnotaciones.Eof do begin
    ci := cAnotaciones.Items.Add();
    ci.Text := rsAnotacionesAnotacion.Value;
    ci.Checked := False;
    ListaAnotaciones.AddObject(rsAnotacionesIdAnotacion.Value, ci);
    rsAnotaciones.Next();
  end;

  Try
    fDescuentoXCantidad := dm.GetDefault('svDescXCantidad')
  Except
    fDescuentoXCantidad := False;
  End;

  //AUTDESCLIM := dm.GetDefault('NIVELAUTODESCLIM');
  //NivelAut25  := dm.getdefault('NIVELAUTOCRED25');
  //NivelAut45  := dm.getdefault('NIVELAUTOCRED45');
  //NivelAut60  := dm.getdefault('NIVELAUTOCRED60');
  //NivelAutLim := dm.getdefault('NIVELAUTOLIMCRED');
  try
    Moneda := dm.GetDefault('MONEDA_ACTIVA');
  except
    Moneda := 1;
  end;
//  CLIENTECONTADO := dm.GetDefault('CLIENTECONTADO');
  FLoading := false;
//  ds2.DataSet := mRSDet;
  MasterField := 'idOrdComp';
  DetailField := 'idOrdComp';
  inherited;
  Modulo := 'Venta';
  LogField := 'OrdComp';
  TipoDoc := 'ORDCOMPRA';
  ImageidField := 'idOrdComp';
 // Fotos := dm.GetDefaultStr('ProductosConFoto');
  ProductoAct.open;

  BusqAutoFit := False;
  BusqMaxColSize := 225;
  OcultarC1 := True;       //oculta la columna 1 en la busqueda
  spName := 'FindOrdComp';

  Busqfield := 'idOrdComp';
  tfBusqueda := tBusquedaRangoDX;
  if not(ds2.dataset.active) then ds2.dataset.open ;
  FDescuento := 0.00;
  FITBIS     := 0.00;
  FSubtotal  := 0.00;
  Empleado.Open;
  OrdCompStatus.Open;
  qryCondicion.Open();
//  ClienteObra.Parameters[1].Value := null;
//  if ClienteObra.Active then ClienteObra.Requery() else ClienteObra.Open;
  computer := ComputerName();
  ALMACENDEFAULT := dm.GetPCSetting('ALMACENDEFAULT');
  if ALMACENDEFAULT = '' then
    ALMACENDEFAULT := dm.GetDefaultStr('ALMACENDEFAULT');
  end;



Function TOrdComp.MostrarCliente(idCliente : Integer): integer;
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

procedure TOrdComp.UserAutoCodigo;
begin
  rsOrdComp.Value := dm.GetNextCounterSTR ('ORDENCOMPRA');
end;

procedure TOrdComp.newbotonstate;
begin
  inherited;

  cAnotaciones.Enabled := True;
  uutiles.CxGridReadOnly(False, cxGrid1);

  FindCliente.enabled := true;
  Cod.ReadOnly :=true;
  AAnular.Enabled := false;
  ACotizacion.Enabled := false;
  AGetProduct.Enabled := true;
  //desc.Enabled := true;
  AObservacion.Enabled := false;
  lcondicion.Enabled := dm.Tienepermiso(pAprobar, Permisos);
  lStatus.Enabled := lcondicion.Enabled;
end;

procedure TOrdComp.editbotonstate;
begin
  inherited;
  cAnotaciones.Enabled := True;
  uutiles.CxGridReadOnly(False, cxGrid1);

  FindCliente.enabled := true;
  Cod.ReadOnly :=true;
  AAnular.Enabled := false;
  ACotizacion.Enabled := false;
  AGetProduct.Enabled := true;
  //desc.Enabled := false;
  AObservacion.Enabled := false;
  lcondicion.Enabled := dm.Tienepermiso(pAprobar, Permisos);
  lStatus.Enabled := lcondicion.Enabled;
end;

procedure TOrdComp.browsebotonstate;
begin
  inherited;
  cAnotaciones.Enabled := false;

  uutiles.CxGridReadOnly(True, cxGrid1);
  FindCliente.enabled := false;
  Cod.ReadOnly := true;
  AAnular.Enabled := not(rsidOrdComp.IsNull);
  // verificar fecha ultimo cierre para status boton editar
  ACotizacion.Enabled := true;
  AGetProduct.Enabled := false;
  //desc.Enabled := false;
  AObservacion.Enabled := not(rs.IsEmpty);
end;

procedure TOrdComp.CalcTotal();
Var
  bm : string;
begin
  inherited;
  RSDet.DisableControls;
  With RSDet Do
  Begin

    FDescuento:= 0.00;
    FITBIS    := 0.00;
    FSubTotal := 0.00;

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


procedure TOrdComp.RSDetAfterPost(DataSet: TDataSet);
begin
  inherited;
  CalcTotal();
  ActualizarTotales();
end;

procedure TOrdComp.ActualizarTotales;
begin
  if (appestado in [appedit, appinsert]) then
  begin
     if not(rs.state in dsEditModes) then rs.Edit;
//     rsTotal.Value    := FSubTotal - FDescuento + FITBIS;
     rsTotal.Value := (FSubTotal + FITBIS)-FDescuento;
     rsDescuento.Value:= FDescuento;
     rsSubTotal.Value := FSubTotal;
     rsItbis.Value    := FITBIS;
  end;
end;

Function TOrdComp.LocateProducto(idProducto : string): boolean;
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
    //ProductoAct.Parameters[3].value := Null;
    ProductoAct.Parameters[3].value := rsidAlmacen.value;
    ProductoAct.Parameters[4].value := rsidmoneda.value;
    productoAct.close;
    productoAct.Open;
  end;
  Result := not(ProductoAct.isempty);
end;

procedure TOrdComp.RSDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  floading := true;
  rsdetCantidad.Value := 1.00;
  rsdetDescuento.value:= 0.00;
  rsdetITBIS.Value    := 0.00;
  rsdetPrecio.Value   := 0.00;
  rsdetidOrdCompDet.AsGuid := dm.NewGuid;
  rsdetlinea.Value := rsdet.RecordCount;
  floading := false;
end;

procedure TOrdComp.RSDetDescuentoValidate(Sender: TField);
begin
  inherited;
  if importing then exit;

  if sender.value = 0 then
  begin
    CalcITBIS();
    CalcLineTotal();
    exit;
  end;

  if (sender.AsCurrency > 0) and (sender.AsCurrency >= (rsdetcantidad.AsFloat * rsdetprecio.AsCurrency)) then
    raise exception.Create('El descuento no puede ser mayor o igual que el total');

  if sender.AsCurrency < 0 then raise exception.Create('El descuento no puede ser negativo');

  ValidarDescuento();

  CalcITBIS();

  CalcLineTotal();
end;

Procedure TOrdComp.ValidarDescuento;
var
  descto: Single;
  Nivel: Integer;
begin
  DescuProdSucursal.Close;
  DescuProdSucursal.Parameters[1].Value:=RSDetidProducto.Value;
  DescuProdSucursal.Parameters[2].Value:= RSidAlmacen.Value;
  DescuProdSucursal.Open;


  descto := (rsdetDescuento.value / (rsdetcantidad.value * rsdetprecio.value)) * 100.00;

  if not LocateProducto(rsDetIdProducto.Value) then
    raise Exception.Create('Este producto no existe');

  if (descto <= ClienteActDescuento.Value) and (ProductoActAutoDescuento.Value) then
    Exit;

  if (descto <= ProductoActDescuentoPermitido.Value) and (ProductoActDescuentoVence.AsDateTime > dm.DBFecha()) then
    Exit;

  if (descto <= DescuProdSucursalDescuentoPermitido.Value) and (DescuProdSucursalDescuentoVence.AsDateTime > dm.DBFecha()) then
    Exit;


  if descto < ProductoActDescNivel1.Value then begin;
    Nivel := 1;
//    Lim := ProductoActDescNivel1.Value;
  end else if descto < ProductoActDescNivel2.Value then begin
    Nivel := 2;
//    Lim := ProductoActDescNivel2.Value;
  end else if descto < ProductoActDescNivel3.Value then begin
    Nivel := 3;
//    Lim := ProductoActDescNivel3.Value;
  end else if descto < ProductoActDescuento.Value then begin
    Nivel := 4;
//    Lim := ProductoActDescuento.Value;
  end else begin
    Nivel := 5;
//    Lim := 100.00;
  end;

  if (DescAutorizado = 0) or (DescAutorizado < Nivel) then begin
    if dm.Autorizar(Nivel, 'Cliente:' + rsidCliente.AsString, 'Descuento Nivel ' + IntToStr(Nivel) + ' para ' + ProductoActProducto.Value, 'Autorizacion descuento sobre Maximo Permitido') then
      DescAutorizado := Nivel
    else
      raise Exception.Create('Autorizacion Invalida, ESC para cancelar');
  end;
end;

procedure TOrdComp.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  //fCreditoAutorizado := False;
  if not rsdet.IsEmpty then rsdet.close;
  rsPagaitbis.Value := true;
  rsidOrdComp.AsGuid := dm.NewGuid;
  rsCondicion.Value := 0;
  rscredito.Value := false;
 // rsidCondicion.value := 'CONTADO';
  rsfecha.Value := dm.DBFecha ();
  rsHora.Value := dm.DBFechaHora ();
  rsTotal.value := 0.00;
  rsSubTotal.value := 0.00;
  rsPorcDesc.Value := 0;
  rsDescuento.Value := 0.00;
  rsItbis.Value := 0.00;
  rsCancelado.value := false;
  rsidCompania.Value := dm.CompaniaActual();
  RSUsuario.Value := dm.UsuarioActual;
  rsidOrdCompStatus.Value := dm.getDefault('OrdCompDefStatus');
  rsidMoneda.Value := Moneda;
  RsidAlmacen.value :=ALMACENDEFAULT;
  RsComputer.Value := computer;
//  try
//    rsidCliente.Value := CLIENTECONTADO;
//  except
//    raise exception.create('Verifique que exista un cliente de contado y que su codigo este configurado en el parametro "CLIENTEDEFECTO"');
//  end;
end;

procedure TOrdComp.RSAfterScroll(DataSet: TDataSet);
begin
  rsDetAnotacion.Close();
  rsEspec.Close;
  ClienteAct.Close();
  ClienteObra.Close();

  inherited;
  if not rsIdOrdComp.IsNull then begin
    rsDetAnotacion.Parameters[1].Value := RSidOrdComp.Value;
    rsDetAnotacion.Open();


    MostrarCliente(RSidCliente.AsInteger);

    if rsidOrdComp.IsNull then rsEspec.Parameters[1].Value := NULL else rsEspec.Parameters[1].Value := rsidOrdComp.Value;
    rsEspec.open;

    ClienteObra.Parameters[1].Value := rsIdCliente.Value;
    ClienteObra.Open();
  end;
end;

procedure TOrdComp.RSDetPrecioValidate(Sender: TField);
begin
  inherited;
  if (not(floading)) and (not(importing)) then begin
    if (not(productoActcambiarprecio.value)) and (not(dm.Tienepermiso(PAprobar,Permisos, 'Cambio de Precio Producto '+productoActidproducto.value ,'Prod: '+productoActidproducto.value))) then
      raise exception.create('El precio de este producto esta bloqueado para no ser cambiado y usted no esta autorizado');
  end;

  if sender.value < 0 then
    raise exception.create('El Precio no puede ser menor que cero (0)');

  If fDescuentoXCantidad Then
    rsDetDescuento.Value := DescuentoXCantidad(rsDetIdProducto.Value, Sender.Value, rsDetCantidad.Value);


  DescuentoCalc();
  CalcITBIS();
  CalcLineTotal();
end;

procedure TOrdComp.RSDetCantidadValidate(Sender: TField);
begin
  inherited;
  if sender.value <= 0 then
    raise exception.create('La Cantidad no puede ser menor que cero (0)');

  If fDescuentoXCantidad Then
    rsDetDescuento.Value := DescuentoXCantidad(rsDetIdProducto.Value, rsDetPrecio.Value, Sender.Value);

  CheckExistencia;
  DescuentoCalc();
  CalcITBIS();
  CalcLineTotal();
end;

procedure TOrdComp.DescuentoCalc();
var
  desc : currency;
begin

  if (rsdetcantidad.value = 0) or (rsdetprecio.value = 0) or (rsdetidproducto.isnull) then begin
    rsdetDescuento.value:= 0.0;
    exit;
  end;

  LocateProducto(rsdetidProducto.value);
  if not(ProductoActAutoDescuento.Value) then begin
    desc := 0.00
  end else begin
    if ((rsporcdesc.Value /100) <= (ProductoActDescuento.AsFloat/100)) then
      desc := ((rsdetprecio.Value * rsdetcantidad.Value) * (rsporcdesc.Value /100))
    else
      desc := (rsdetcantidad.value * rsdetprecio.value) * (ProductoActDescuento.AsFloat/100);
  end;
  If Not fDescuentoXCantidad Then
    if (rsdetDescuento.value <> desc) then rsdetDescuento.value:= desc;
end;


procedure TOrdComp.CalcLineTotal();
begin
  {rsdetLineTotal.AsCurrency := 0.00;
  if (rsDetPrecio.ascurrency > 0) and (rsDetCantidad.asfloat > 0) and (not(rsdetidProducto.IsNull)) then
  begin
     rsdetLineTotal.AsCurrency := (rsDetPrecio.ascurrency * rsDetCantidad.asfloat)-rsdetITBIS.AsCurrency;
  end; }

  rsdetLineTotal.AsCurrency := 0.00;
  if (rsDetPrecio.ascurrency > 0) and (rsDetCantidad.asfloat > 0) and (not(rsdetidProducto.IsNull)) then
  begin
    if (SUMARITBIS=1) then
      rsdetLineTotal.AsCurrency := (rsDetPrecio.ascurrency * rsDetCantidad.asfloat)
    else
     rsdetLineTotal.AsCurrency := (rsDetPrecio.ascurrency * rsDetCantidad.asfloat)-rsdetITBIS.AsCurrency;
  end;

end;


procedure TOrdComp.CalcITBIS();
begin
  {rsdetITBIS.AsCurrency := 0.00;
  if (rsDetPrecio.ascurrency > 0) and (rsDetCantidad.asfloat > 0) and (not(rsdetidProducto.IsNull)) then
  begin
     if LocateProducto(rsdetidProducto.AsString) and (ProductoActPorciento.AsFloat > 0) and (rsPagaItbis.AsBoolean) then
       // rsdetITBIS.AsCurrency := RoundTo(((rsDetPrecio.ascurrency * rsDetCantidad.asfloat) - rsDetDescuento.ascurrency) * (ProductoActPorciento.AsFloat),-2)
          rsdetITBIS.AsCurrency := RoundTo(((rsDetPrecio.ascurrency * rsDetCantidad.asfloat) - rsDetDescuento.ascurrency)-(((rsDetPrecio.ascurrency * rsDetCantidad.asfloat) - rsDetDescuento.ascurrency) / (1+ProductoActPorciento.AsFloat)), -2)
  end;}

  rsdetITBIS.AsCurrency := 0.00;
  if (rsDetPrecio.ascurrency > 0) and (rsDetCantidad.asfloat > 0) and (not(rsdetidProducto.IsNull)) then
  begin
     if LocateProducto(rsdetidProducto.AsString) and (ProductoActPorciento.AsFloat > 0) and (rsPagaItbis.AsBoolean) then
       if (SUMARITBIS=1) then
        rsdetITBIS.AsCurrency := RoundTo(((rsDetPrecio.ascurrency * rsDetCantidad.asfloat) - rsDetDescuento.ascurrency) * (ProductoActPorciento.AsFloat),-2)
       else
        rsdetITBIS.AsCurrency := RoundTo(((rsDetPrecio.ascurrency * rsDetCantidad.asfloat) - rsDetDescuento.ascurrency)-(((rsDetPrecio.ascurrency * rsDetCantidad.asfloat) - rsDetDescuento.ascurrency) / (1+ProductoActPorciento.AsFloat)), -2)
  end;

end;


procedure TOrdComp.CreditoValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  inherited;
   if rsCredito.AsBoolean <> Credito.Checked then
     rsCredito.AsBoolean := Credito.Checked;
end;


Function TOrdComp.TieneCredito(idCliente : Integer; MasMonto : Double; idCondicion : string) : Boolean;
var
  TC     : Integer;
begin
  result := True;
  //fCreditoAutorizado := Result;

  if (qrycondicion.locate('idCondicion', idCondicion,[])) then
  if (qrycondicionNoCreditoCheck.Value) then begin
      // poner un status que no este autorizado y que dependa de cobros autorizarlo
     rsidordcompstatus.value := AUTORIZADO;
     rsobservacion.value := 'Requiere confimacion de pago por cobros';
     exit;
  end;

  spTieneCredito.Parameters.parambyname('@idCliente').value := idCliente;
  spTieneCredito.Parameters.parambyname('@MasMonto').value := MasMonto;
  spTieneCredito.Execute;

  TC := spTieneCredito.Parameters.parambyname('@TieneCredito').Value;

     If TC = 1 Then begin
        rsidordcompstatus.value := AUTORIZADO;
        rsobservacion.value := 'Autorizado Automaticamente';
     end else if (TC = 0) Then begin
        rsidordcompstatus.value := AUTORIZADO;
        rsobservacion.value := 'Cliente sobre su limite de credito';
     end else if (TC = -2) Then begin
        rsidordcompstatus.value := AUTORIZADO;
        rsobservacion.value := 'Facturas a punto de vencimiento';
     end else if (TC = 15) Then begin
        rsidordcompstatus.value := AUTORIZADO;
        rsobservacion.value := 'Facturas vencidas entre 1 y 15 dias';
     end else if (TC = 30) Then begin
        rsidordcompstatus.value := NOAUTORIZADO;
        rsobservacion.value := 'Facturas vencidas entre 16 y 30 dias';
     end else if (TC = 45) Then begin
        rsidordcompstatus.value := NOAUTORIZADO;
        rsobservacion.value := 'Facturas vencidas entre 31 y 45 dias';
     end else if (TC = 60) Then begin
        rsidordcompstatus.value := NOAUTORIZADO;
        rsobservacion.value := 'Facturas vencidas a mas de 45 dias';
     end else if TC = -1 Then begin
        rsidordcompstatus.value := AUTORIZADO;
        rsobservacion.value := 'Cliente No tiene Credito Asignado';
     end else begin
        rsidordcompstatus.value := AUTORIZADO;
        rsobservacion.value := 'Necesita Evaluacion de Cobros';
     end;


end;



procedure TOrdComp.codEnter(Sender: TObject);
begin
  inherited;
 { if appestado = appbrowse then
  begin
     ds.AutoEdit := true;
     ds.DataSet.DisableControls;
  end;
  }
end;

procedure TOrdComp.codExit(Sender: TObject);
begin
{var
  b : variant;
begin
  inherited;
  if appestado = appbrowse then
  begin
    with rsFacturaID do
    begin
       if OldValue <> Value then
       begin
         b := value;
         Ds.DataSet.cancel;
         // en caso de que el codigo que se digita no es la clave se hace un lookup
         // en este caso no es necesario pues pagoid es la clave que se busca
         // pero se usa para validar la existencia del registro
         b := returnValue('Pago','UPagoID','Pagoid = '+ INTTOSTR(b));
         if b <> '' then  //indica que si existe
         begin
           TAdoDataSet(Ds.DataSet).Parameters[1].Value  := b;
           TAdoDataSet(DS.DataSet).requery();
         end;
       end;
    end;
    ds.AutoEdit := false;
    ds.DataSet.EnableControls;
  end;}
end;

procedure TOrdComp.ClientesExecute(Sender: TObject);
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

procedure TOrdComp.AGuardarExecute(Sender: TObject);
var
 nuevo: Boolean;
begin
  nuevo := appestado = appInsert;
  HandleTrans := false;       // las transacciones no se manejaran automaticamente si no lo pone false
  HandleGuardarState := false;  // el estado de los botones y de la aplicacion al guardar
                                // no se manejaran automaticamente si se pone false
  dm.Coneccion.BeginTrans;
  try
    try
      CheckExistencia;
      calcTotal;
      ActualizarTotales();
      RsidAlmacen.value :=ALMACENDEFAULT;
      RsComputer.Value := computer;
      inherited;
      BatchUpdateCancel(rsEspec, true);
      if not(rsidCotizacion.isnull) then
        dm.Coneccion.Execute('Update Cotizacion Set idCotizacionStatus = ''Aprobado'', fechaAprobado = getdate() where idCotizacion ='''+rsidCotizacion.Value+'''');

      rsDetAnotacion.UpdateBatch(arAll);

    except
      dm.Coneccion.RollbackTrans;
      raise;
    end;
    dm.Coneccion.CommitTrans;

    browsebotonstate;
    ds.AutoEdit := false;
    appestado := appBrowse;
  finally
    HandleTrans := true;       // las transacciones no se manejaran automaticamente
    HandleGuardarState := true;  // el estado de los botones y de la aplicacion al guardar
                               // no se manejaran automaticamente
  end;
  if dm.GetDefaultStr('NOTIFICAR_PEDIDO') = '1' then
    EnviarNotificacionPedidoEmail(nuevo);
end;

procedure TOrdComp.FindClienteClick(Sender: TObject);
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

procedure TOrdComp.RSFechaValidate(Sender: TField);
begin
  inherited;
//  if sender.AsDateTime <= DataM.FechaCierre Then
//    Raise exception.Create('Esta fecha ha sido cerrada');
end;

procedure TOrdComp.RSidClienteValidate(Sender: TField);
var
  x : integer;
begin
  inherited;


  if not Importing then begin
    if (CAMBIOCONDICION<>'1') and (not(rsdet.IsEmpty)) then
      raise exception.Create('No debe cambiar el cliente si ya tiene productos pues podria haber diferencia en los precios');
  end;

  if sender.IsNull then begin
    rsCliente.Clear;
    rsContacto.Clear;
    rsDireccion.clear;
    rsSector.clear;
    rsCiudad.clear;
    rsTelefono.clear;
    rsfax.clear;
    rseMail.clear;
    exit;
  end;

  x := MostrarCliente(sender.AsInteger);

  if x = -1 then raise Exception.create('Este cliente no existe');
  if x =  1 then raise exception.Create('Este cliente esta inactivo');

   if not(importing) then begin
      TieneCredito(rsidCliente.AsInteger, rsTotal.AsFloat, ClienteActidcondicion.value);
      fLoading := true;
      rsidCondicion.value := ClienteActidCondicion.value;
      fLoading := false;

      rsCliente.Value := ClienteActCliente.AsString;

      if (ClienteActidEmpleado.isnull) or (ClienteActidEmpleado.AsString = '') then
        rsidEmpleado.Clear
      else
        rsidEmpleado.Value := ClienteActidEmpleado.value;

      if ClienteActDescuento.AsFloat > 0 then
        rsporcdesc.value := ClienteActDescuento.value
      else
        desc.Clear;

      rsidClienteObra.Clear;
      ClienteObra.Parameters[1].Value := rsidCliente.Value;
      if ClienteObra.Active then ClienteObra.Requery() else ClienteObra.Open;

      if rsdet.IsEmpty then begin
        rsPagaItbis.Value := not(ClienteActNoPagaItbis.asboolean);
      end else begin if rsPagaitbis.Value <> not(ClienteActNoPagaItbis.asboolean) then
        ShowMessage('Las condicion de ITBIS del cliente no se pueden actualuzar si tiene articulos');
      end;


   end; // fin si no esta importando


   rsContacto.value   :=  ClienteActContacto.value;
   rsDireccion.value  :=  ClienteActDireccion.value;
   rsSector.value     :=  ClienteActSector.value;
   rsCiudad.value     :=  ClienteActCiudad.value;
   rsTelefono.value   :=  ClienteActTelefono.value;
   rsfax.value        :=  ClienteActFax.value;
   rseMail.value      :=  ClienteActeMail.value;
   //rsClienteRNC.Value :=  ClienteActRNC_Cedula.Value;

end;

procedure TOrdComp.RSDetidProductoValidate(Sender: TField);
begin
  inherited;
  if rsidcliente.IsNull then
    raise exception.Create('Debe seleccionar un cliente antes de agregar productos');
  if LocateProducto(sender.value) then
  begin
    floading := true;
    if qryCondicion.locate('idCondicion', rsidCondicion.value,[]) then begin
      if qryCondicionPrecioContado.value then
        rsdetprecio.value := ProductoActPrecioContado.AsCurrency
      else
        rsdetprecio.value := ProductoActPrecioCredito.AsCurrency;
    end else begin
      if rsCredito.value then
        rsdetprecio.value := ProductoActPrecioCredito.AsCurrency
      else
        rsdetprecio.value := ProductoActPrecioContado.AsCurrency ;
    end;
    rsdetProducto.value := ProductoActProducto.AsString;
    rsdetidUnidad.Value := ProductoActidUnidad.Value;
    floading := false;
   CheckExistencia;
  end
  else
     raise exception.create('Producto invalido');
end;

procedure TOrdComp.PagaItbisValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  inherited;
  accept := rsdet.IsEmpty ;
  ErrorText := 'No puede cambiar si ya tiene articulos en la factura';
end;

procedure TOrdComp.FormDestroy(Sender: TObject);
begin
  inherited;
  Empleado.close;
  OrdCompStatus.Close;
end;

procedure TOrdComp.ACotizacionExecute(Sender: TObject);
begin
  inherited;
  CargarCotizacion();
end;

Procedure TOrdComp.CargarCotizacion();
var
  c : Variant;
begin
  c := fBuscar(TFindCotizacion, 'idCotizacion',false);
  if not(c = Null) then
  begin
    Cotizacion2Fact.close;
    Cotizacion2Fact.Parameters[1].Value := c;
    Cotizacion2Fact.Open;

    try
      if not(Cotizacion2FactProcesable.Value) then
        raise exception.create('La Cotizacion tiene un status no Procesable ['+Cotizacion2FactCotizacionStatus.asstring+']');
      try
        if not(Cotizacion2Fact.IsEmpty) then begin
          Anuevo.Execute;
          importing := true;
            rsidCliente.Value   := Cotizacion2FactidCliente.Value;
            rsidCotizacion.value  := Cotizacion2FactidCotizacion.Value;
            rsCotizacion.Value  := Cotizacion2FactCotizacion.Value;
          importing := false;
          rsidCondicion.value := Cotizacion2FactidCondicion.value;
          rsCliente.Value     := Cotizacion2FactCliente.Value;
          rsidMoneda.value  := Cotizacion2FactidMoneda.value;
          rsContacto.Value    := Cotizacion2FactContacto.Value;
          rsDireccion.Value   := Cotizacion2FactDireccion.Value;
          rsSector.Value      := Cotizacion2FactSector.Value;
          rsCiudad.Value      := Cotizacion2FactCiudad.Value;
          rsTelefono.Value    := Cotizacion2FactTelefono.Value;
          rsidEmpleado.value  := Cotizacion2FactidEmpleado.Value;
          rspagaitbis.Value   := Cotizacion2FactPagaitbis.Value;
          rsreferencia.Value  := Cotizacion2Factreferencia.Value;
          if Cotizacion2FactidClienteObra.isnull then
            rsidClienteObra.clear
          else
            rsidClienteObra.Value := Cotizacion2FactidClienteObra.value;
          rsPorcDesc.Value := Cotizacion2FactPorcDesc.Value ;
          //rsCredito.Value     := Cotizacion2FactCredito.Value;
          //rsCondicion.value := Cotizacion2FactCondicion.value;
          importing :=  true;
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
            //-----------------------------------------
             GetFacturaDetEspec.Close;
             GetFacturaDetEspec.Parameters[1].Value := Cotizacion2FactidCotizacionDet.Value;
             GetFacturaDetEspec.Open;
             if not(GetFacturaDetEspec.IsEmpty) then begin
               rsEspec.Append;
               rsEspecEspecificacion.Value := GetFacturaDetEspecEspecificacion.value;
               rsEspecFechaEspec.Value := GetFacturaDetEspecFechaEspec.value;
               rsEspec.Post;
             end;
             GetFacturaDetEspec.Close;
            //------------------------------------------
            Cotizacion2Fact.next;
          end;
          importing := False;
        end;
      except on e: Exception do begin
           ACancelar.Execute;
           Raise exception.create('Error importando la cotizacion : ' +#10+#13+ e.Message);
      end; end;
    finally
      Cotizacion2Fact.Close;
    end;
  end;
end;

procedure TOrdComp.RSCotizacionValidate(Sender: TField);
var
  h : variant;
begin
  inherited;
  if importing then exit;

  rsidCotizacion.Clear;
  if sender.AsString <> '' then
    h := ReturnVariant('Cotizacion','idCotizacion','Cotizacion = ''' + Sender.AsString + '''')
  else
    exit;

  if (h = null) then
    Raise exception.Create('Esta Cotizacion no existe')
  else
    rsidCotizacion.Value := h;
end;

procedure TOrdComp.AGetProductExecute(Sender: TObject);
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

function TOrdComp.GetProduct() : string;
var
  idprodres : variant;
begin
  inherited;

  //if Fotos = '1' then
  //  idprodres := fbuscar(TfindProductoFoto,'idProducto')
  //else
  idprodres := TProductoFindDX.Buscar('idProducto',dm.PCSettings['INVPORDEFECTO'], True);

   if idprodres = Null then
    result := ''
  else
    result := idprodres;
end;

procedure TOrdComp.GridDblClick(Sender: TObject);
begin
  inherited;
  if grid.SelectedField.Name = 'RSDetidProducto' then
    if AGetProduct.Enabled then
       AGetProduct.Execute;
end;

procedure TOrdComp.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_add then begin
     if AGetProduct.Enabled then
       AGetProduct.Execute;
  end;
end;

procedure TOrdComp.dxDBEdit20DblClick(Sender: TObject);
begin
  inherited;
 if not(rsidCotizacion.isnull) then
    Modalshow(TCotizacion,ShowFind,rsidCotizacion.Value, '',true);
end;

procedure TOrdComp.dxDBEdit6DblClick(Sender: TObject);
begin
  inherited;
 if not(rsidcliente.isnull) then
    Modalshow(TCliente, ShowFind, rsidCliente.Value, '',true);
end;

procedure TOrdComp.RSPagaItbisValidate(Sender: TField);
begin
  inherited;
//  if not rsdet.IsEmpty then
//    raise exception.Create('No puede cambiar el itbis si ya tiene articulos, use ESC para cancelar el cambio');
end;

procedure TOrdComp.PagaItbisClick(Sender: TObject);
begin
  inherited;
  if rsPagaItbis.AsBoolean <> PagaItbis.Checked then
     rsPagaItbis.AsBoolean := PagaItbis.Checked;
end;

procedure TOrdComp.RSPorcDescValidate(Sender: TField);
var
  cargando: boolean;
begin
  inherited;
  if importing then exit;

//  if (rsPorcDesc.AsFloat > 0) and (rsPorcDesc.AsFloat > ClienteActDescuento.value) then begin
//    if not DescAutorizado then DescAutorizado := dm.TienePermiso(PAprobar, Permisos, 'Descuentos para el cliente :'+rsidcliente.AsString, 'Client: ' +rsidcliente.AsString);
//    if not DescAutorizado then raise Exception.Create('No tiene autorizacion para aplicar el descuento');
//  end;

  if not (rsdet.active) then
    Exit;

  cargando := floading;
  floading := true;
  rsdet.First;
  while not rsdet.Eof do begin
    rsdet.Edit;
    try
      DescuentoCalc();
    except
      rsdetdescuento.Value := 0;
    end;
    rsdet.Post;
    rsdet.Next;
  end;

  floading := cargando;
end;

procedure TOrdComp.RSDescuentoValidate(Sender: TField);
begin
  inherited;
  if rsdescuento.Value < 0 then
    raise exception.Create('El descuento no puede ser negativo');

end;

procedure TOrdComp.CreditoChange(Sender: TObject);
begin
  inherited;
  if rsCredito.AsBoolean <> Credito.Checked then
     rsCredito.AsBoolean := Credito.Checked;
end;

procedure TOrdComp.RSDetBeforePost(DataSet: TDataSet);
begin
  inherited;
  if rsdetidProducto.isnull then
    raise exception.create('Debe seleccionar un codigo de producto');

  if rsdetCantidad.value <= 0 then
    raise exception.create('La Cantidad no puede ser cero');

  if rsdetPrecio.value <= 0 then
    raise exception.create('El Precio del producto no puede ser cero');

end;

procedure TOrdComp.RSidMonedaValidate(Sender: TField);
begin
  inherited;
  if not(rsdet.IsEmpty) then
    raise exception.Create('No puede cambiar la moneda con productos, cancele y elija la moneda antes que los productos');
end;

procedure TOrdComp.AGenRequisicionExecute(Sender: TObject);
begin
  inherited;
  GenRequisicion();
end;

function TOrdComp.GenRequisicion(): string;
Var
  Req : tInvReqInv;
begin
  inherited;

  Req := tInvReqInv.Create;
  try
    try
      Req.Departamento := 'Ventas';
      Req.Solicitante := rsCliente.Value;
      req.Referencia := rsOrdComp.Value;
      req.Usuario := rsusuario.Value;
      Req.InvDataSet := rsDet;
      req.idReferencia := rsidOrdComp.value;
      if not(Req.Execute) then
        raise exception.Create('Error al Generar la Requisicion de Almacen');
    except
      Raise;
    end;
  finally
    Req.Free;
  end;
end;


procedure TOrdComp.RSidCondicionValidate(Sender: TField);
begin
  inherited;
  if (CAMBIOCONDICION<>'1') and (not(rsdet.IsEmpty)) then
    raise exception.Create('No debe cambiar la caracteristica de credito si ya tiene productos pues podria haber diferencia en los precios');

  if not(qryCondicion.locate('idCondicion', sender.Value, [])) then
    raise exception.Create('No existe la condicion especificada');

  if not(fLoading) then begin
    if (not(rsidcliente.IsNull)) then
       TieneCredito(rsidCliente.asinteger, rstotal.asfloat, sender.Value);
  end;


  if rscredito.Value <> qryCondicioncredito.value then
    rscredito.Value   := qryCondicioncredito.value;
  if rscondicion.Value <> qryCondiciondias.value then
    rscondicion.Value := qryCondiciondias.value;

end;

procedure TOrdComp.RSPagaItbisChange(Sender: TField);
begin
  inherited;
  if not(rsdet.IsEmpty) then begin
    rsdet.First;
    while not(rsdet.Eof) do begin
      rsdet.edit;
      DescuentoCalc();
      CalcITBIS();
      CalcLineTotal();
      rsdet.post;
      rsdet.Next
    end;
  end;
end;

procedure TOrdComp.AFacturaDetEspecExecute(Sender: TObject);
begin
  inherited;
  if rsdetidOrdCompdet.isnull  then abort;

  FacturaDetEspec := TFacturaDetEspec.Create(Application);
  try
    FacturaDetEspec.DS.DataSet := rsEspec;
    FacturaDetEspec.DS.AutoEdit := (appEstado = AppEdit) or (appEstado = AppInsert);
    if not(rsEspec.Locate('idFacturaDet',rsdetidOrdCompDet.Value,[])) then begin
      rsEspec.Append;
      GetProductoEspec.Close;
      GetProductoEspec.Parameters[1].Value := rsdetidProducto.Value;
      GetProductoEspec.Open;
      if not(GetProductoEspecEspecificacion.IsNull) then begin
        rsEspecEspecificacion.Value := GetProductoEspecEspecificacion.value;
        rsEspecFechaEspec.Value := GetProductoEspecFechaEspec.value;
      end;
      GetProductoEspec.Close;
    end;
    FacturaDetEspec.ShowModal;
  finally
    FacturaDetEspec.Free;
  end;
end;

procedure TOrdComp.AProductoDetExecute(Sender: TObject);
begin
  inherited;
  if not rsdetidproducto.isnull then
    ModalShow(TProductoDetalle, Showfind, rsdetidproducto.value,'');
end;

procedure TOrdComp.rsEspecNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsEspecidFactura.Value := rsidordcomp.value;
  rsEspecidFacturaDet.Value := rsdetidOrdCompDet.value;
end;

procedure TOrdComp.ACancelarExecute(Sender: TObject);
begin
  inherited;
  BatchUpdateCancel(rsEspec, false);

  if rsDetAnotacion.Active then
    rsDetAnotacion.CancelBatch(arAll);
end;

procedure TOrdComp.AObservacionExecute(Sender: TObject);
var
  s : string;
begin
  inherited;
  if rs.IsEmpty then abort;
  s := rsobservacion.AsString;
  if inputquery('Observaciones', 'Escriba sus Observaciones',s) then begin
    RS.Edit;
    rsobservacion.Value := s;
    RS.Post;
    BatchUpdateCancel(RS, True);
  end;
end;

procedure TOrdComp.ANuevoExecute(Sender: TObject);
begin
  inherited;
  DescAutLimite := false;
end;

procedure TOrdComp.ALocalizarExecute(Sender: TObject);
begin
  inherited;
  //fCreditoAutorizado := False;
end;

function TOrdComp.DescuentoXCantidad(IdProducto: String; Precio, Cantidad: Double): Double;
Var
  Porciento : Double;
begin
  With spDescuentoXCantidad, Parameters Do
  Begin
    ParamByName('@IdProducto').Value := IdProducto;
    ParamByName('@Cantidad').Value := Cantidad;
    ExecProc;
    Porciento := ParamByName('@Descuento').Value;
    Result := (Precio * (Porciento / 100));
  End;
end;

procedure TOrdComp.AClienteObraExecute(Sender: TObject);
var
  id: string;
begin
  inherited;
//  id := ModalShowResult(TClienteObra, showfind, rsidcliente.value, 'idCliente', True,'idClienteObra');
  id := MostrarDireccionesCliente(rsIdCliente.AsInteger);
  ClienteObra.close;
  ClienteObra.Open;
  if (id <> '') and (appEstado <> appBrowse) then
    RSidClienteObra.Value := id;
end;

procedure TOrdComp.AAnularExecute(Sender: TObject);
begin
  inherited;
  if not rsCancelado.Value then begin
    if not Confirmar('Esta seguro de anular este pedido?') then
      exit;

    with cAnular do begin
      Parameters[1].Value := rsIdordComp.Value;
      Parameters[2].Value := dm.UsuarioActual;
      parameters[3].Value := 'Pedido cancelado';
      Execute();
      if Parameters[0].Value = 0 then
        ShowMessage('El pedido fue anulado');
    end;
  end;
end;

procedure TOrdComp.EnviarNotificacionPedidoEmail(const nuevo: Boolean);
var
  msg: TStringList;
  aEmail, s: string;
  lines: string;
  j: Integer;
begin
  if not Empleado.Locate('idempleado',RSidEmpleado.value,[]) then
    Exit;

  aEmail := Empleado.FieldByname('Email').Asstring;
  if aEmail = '' then
    Exit;

  msg := TStringList.Create();
  msg.LoadFromFile('EMAIL_NOTIF_PEDIDO.txt');
  for j := 0 to msg.Count - 1 do
    s := s + msg[j];

  rsDet.First();
  while not rsDet.Eof do begin
    lines := lines + Format('<tr><td>%s</td><td>%s</td></tr>',[formatFloat('###,###,##0.00',rsdetCantidad.Value),rsDetProducto.Value]);
    rsDet.Next();
  end;

  s := AnsiReplaceStr(s,'<CLIENTE>',RSCliente.Value);
  s := AnsiReplaceStr(s,'<NUMERO>',RSOrdComp.Value);

  if nuevo then
    s := AnsiReplaceStr(s,'<ESTADO>','REGISTRADO')
  else
    s := AnsiReplaceStr(s,'<ESTADO>','EDITADO');
    
  s := AnsiReplaceStr(s,'<ENTREGA>',FormatDateTime('dd/mm/yyyy',rsfechaEntrega.Value));
  s := AnsiReplaceStr(s,'<USUARIO>',dm.UsuarioActual);
  s := AnsiReplaceStr(s,'<FECHAHORA>',FormatDateTime('dd/mm/yyyy hh:nn AM/PM',dm.DBFechaHora));
  s := AnsiReplaceStr(s,'<PRODUCTOS>',lines);

  SendOutlookMail(aEmail,'Notificacion de pedido',s,'',False,False);

  {
  Application.CreateForm(TeMail, eMail);
  try
     if email.MailSend(aEmail, 'Notificacion de pedido',s,'','HTM',True) <> 0 then
       raise Exception.Create('Error enviando notificacion por email');
  finally
    email.Release();
  end;
  }
end;

procedure TOrdComp.cxGrid1DBTableView1idProductoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if appEstado <> appBrowse then begin
    if AGetProduct.Enabled then
     AGetProduct.Execute;
  end;
end;

procedure TOrdComp.cxGrid1Enter(Sender: TObject);
begin
  inherited;
  if appEstado <> appBrowse then begin
    if RSDet.RecordCount = 0 then
      rsDet.Append();
      
    Enter2Tab := False;
  end;
end;

procedure TOrdComp.cxGrid1Exit(Sender: TObject);
begin
  inherited;
  Enter2Tab := True;
end;

procedure TOrdComp.cxButton4Click(Sender: TObject);
begin
  inherited;
  if appEstado <> appBrowse then begin
    if not rsDetAnotacion.Locate('idAnotacion',rsAnotacionesidAnotacion.Value,[]) then begin
       rsDetAnotacion.Append();
       rsDetAnotacionIdAnotacion.Value := rsAnotacionesIdAnotacion.Value;
       rsDetAnotacionAnotacion.Value := rsAnotacionesAnotacion.Value;
       rsDetAnotacionGuidDocumento.Value := RSDetidOrdCompDet.Value;
      rsDetAnotacionidAnotacionDocumento.AsGuid := dm.NewGuid();
    end;
  end;
end;

procedure TOrdComp.ActualizarCheckBoxes;
var
  i: Integer;
begin
  FLoading := True;
  try
    for i := 0 to cAnotaciones.Items.Count - 1 do
      cAnotaciones.Items[i].Checked := False;

    if not rsDetAnotacion.Active then
      Exit;
    for i := 0 to ListaAnotaciones.Count - 1 do begin
      if rsDetAnotacion.Locate('GuidDocumento;idAnotacion',varArrayOf([RSDetidOrdCompDet.Value,ListaAnotaciones[i]]),[]) then
        (ListaAnotaciones.Objects[i] as TcxCheckListBoxItem).Checked := True;
    end;
  finally
    Floading := False;
  end;
end;

procedure TOrdComp.RSDetAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if (ListaAnotaciones <> nil) then
    ActualizarCheckBoxes();
end;

procedure TOrdComp.RSDetBeforeScroll(DataSet: TDataSet);
begin
  inherited;
//  if appEstado <> appBrowse then  // falta un bombillito para saber si cambio algo
//    ActualizarAnotacionesDetalle();
end;

procedure TOrdComp.cAnotacionesClickCheck(Sender: TObject; AIndex: Integer;
  APrevState, ANewState: TcxCheckBoxState);
var
  id: string;
  ci: TcxCheckListBoxItem;
begin
  inherited;
  if (AIndex >= 0) and (AIndex < ListaAnotaciones.Count) then begin
    id := (ListaAnotaciones[AIndex]);
    ci := ListaAnotaciones.Objects[AIndex] as TcxCheckListBoxItem;
    if ANewState = cbsChecked then begin
      if not rsDetAnotacion.Locate('idAnotacion;GuidDocumento',VarArrayOf([id, rsDetIdOrdCompDet.Value]),[]) then begin
         rsDetAnotacion.Append();
         rsDetAnotacionIdAnotacion.Value := id;
         rsDetAnotacionAnotacion.Value := ci.Text;
         rsDetAnotacionGuidDocumento.Value := RSDetidOrdCompDet.Value;
         rsDetAnotacionidAnotacionDocumento.AsGuid := dm.NewGuid();
         rsDetAnotacion.Post();
      end;
    end
    else begin
      if rsDetAnotacion.Locate('idAnotacion;GuidDocumento',VarArrayOf([id, rsDetIdOrdCompDet.Value]),[]) then
         rsDetAnotacion.Delete();
    end;
  end;
end;

procedure TOrdComp.ABorrarExecute(Sender: TObject);
begin
  rsDetAnotacion.First();
  while not rsDetAnotacion.Eof do
    rsDetAnotacion.Delete();

  cAnotaciones.EditValue := 0;
  inherited;

  if rsAnotaciones.UpdateStatus <> usUnmodified then 
    rsAnotaciones.UpdateBatch();

end;

procedure TOrdComp.CheckExistencia();
begin
  if (dm.GetDefaultStr('VAL_INV_FACT') = '0') or importing then
    Exit;
  if (not rsdetidProducto.IsNull)
    and LocateProducto(rsdetidProducto.value)
    and (not rsdetcantidad.isnull)
    and (rsdetcantidad.Value > 0)
    //and (not (nopromov.Checked))
    then begin
    if (ProductoActCalcExistencia.AsBoolean) and ((not ProductoActExistenciaNeg.Value) and (rsdetCantidad.Value > ProductoActExistencia.Value)) then
      raise exception.create('La existencia del producto es menor que la requerida  ' + rsDetProducto.Value)
  end;
end;


end.

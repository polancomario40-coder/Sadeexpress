unit uCotizacion;

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
  ppRichTx, ppDesignLayer;

type
  TCotizacion = class(Tfformmant2)
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
    ClienteAct: TADODataSet;
    dsEstacionAct: TDataSource;
    Label9: TLabel;
    FindCliente: TButton;
    dxDBEdit6: TdxDBEdit;
    dxDBCheckEdit2: TdxDBCheckEdit;
    dxDBEdit7: TdxDBEdit;
    ProductoAct: TADODataSet;
    dsProductoAct: TDataSource;
    SPTieneCredito: TADOCommand;
    SPCreditoAutorizacion: TADOCommand;
    Clientes: TAction;
    bAnular: TwwNavButton;
    Anulable: TADOCommand;
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
    ClienteActLimiteCredito: TBCDField;
    ClienteActActivo: TBooleanField;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
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
    dxDBEdit11: TdxDBEdit;
    RSDetLineTotal: TBCDField;
    ProductoActidUnidad: TStringField;
    RSidCotizacion: TGuidField;
    RSSolicitadoPor: TStringField;
    RSidCotizacionStatus: TStringField;
    RSDetidCotizacionDet: TGuidField;
    RSDetidCotizacion: TGuidField;
    dxDBLookupEdit1: TdxDBLookupEdit;
    Label10: TLabel;
    CotizacionStatus: TADODataSet;
    dsCotizacionStatus: TDataSource;
    dxDBDateEdit1: TdxDBDateEdit;
    Label11: TLabel;
    RSContacto: TStringField;
    RSValidoHasta: TDateTimeField;
    Label12: TLabel;
    dxDBEdit5: TdxDBEdit;
    ClienteActContacto: TStringField;
    ClienteActidEmpleado: TIntegerField;
    ClienteActDireccion: TStringField;
    ClienteActSector: TStringField;
    ClienteActCiudad: TStringField;
    ClienteActTelefono: TStringField;
    ClienteActNoPagaItbis: TBooleanField;
    RSSector: TStringField;
    RSCiudad: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label8: TLabel;
    lkEmpleado: TdxDBLookupEdit;
    TabSheet2: TTabSheet;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    dxDBEdit12: TdxDBEdit;
    dxDBEdit13: TdxDBEdit;
    dxDBEdit14: TdxDBEdit;
    dxDBEdit15: TdxDBEdit;
    RSCotizacion: TStringField;
    RSidClienteObra: TStringField;
    TabSheet3: TTabSheet;
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
    Label17: TLabel;
    dxDBLookupEdit2: TdxDBLookupEdit;
    dsClienteObra: TDataSource;
    AGetProduct: TAction;
    rptCotizacion: TADODataSet;
    dsRptcotizacion: TDataSource;
    CotizacionRPT: TppReport;
    bPrint: TwwNavButton;
    dxDBMemo1: TdxDBMemo;
    rptCotizacionidCotizacion: TGuidField;
    rptCotizacionCotizacion: TStringField;
    rptCotizacionidCotizacionStatus: TStringField;
    rptCotizacionCotizacionStatus: TStringField;
    rptCotizacionCliente: TStringField;
    rptCotizacionContacto: TStringField;
    rptCotizacionDireccion: TStringField;
    rptCotizacionSector: TStringField;
    rptCotizacionCiudad: TStringField;
    rptCotizacionTelefono: TStringField;
    rptCotizacionSolicitadoPor: TStringField;
    rptCotizacionEmpleado: TStringField;
    rptCotizacionFecha: TDateTimeField;
    rptCotizacionReferencia: TStringField;
    rptCotizacionCancelado: TBooleanField;
    rptCotizacionCredito: TBooleanField;
    rptCotizacionCondicion: TStringField;
    rptCotizacionSubTotal: TBCDField;
    rptCotizacionItbis: TBCDField;
    rptCotizacionDescuento: TBCDField;
    rptCotizacionTotal: TBCDField;
    rptCotizacionNota: TStringField;
    rptCotizacionValidoHasta: TDateTimeField;
    rptCotizacionidClienteObra: TStringField;
    rptCotizacionidCotizacionDet: TGuidField;
    rptCotizacionDetidProducto: TStringField;
    rptCotizacionDetProducto: TStringField;
    rptCotizacionDetCantidad: TFloatField;
    rptCotizacionDetPrecio: TBCDField;
    rptCotizacionDetDescuento: TBCDField;
    rptCotizacionDetITBIS: TBCDField;
    rptCotizacionDetLineTotal: TBCDField;
    desc: TdxDBEdit;
    PagaItbis: TdxDBCheckEdit;
    RSPagaItbis: TBooleanField;
    Label18: TLabel;
    dxDBEdit4: TdxDBEdit;
    RSElemento: TStringField;
    ClienteActDescuento: TFloatField;
    SendFax: TAction;
    bFax: TwwNavButton;
    bMail: TwwNavButton;
    SendMail: TAction;
    ClienteActFax: TStringField;
    ClienteActeMail: TStringField;
    RSFax: TStringField;
    RSeMail: TStringField;
    Label19: TLabel;
    dxDBEdit16: TdxDBEdit;
    Label20: TLabel;
    dxDBEdit17: TdxDBEdit;
    ProductoActDescuento: TFloatField;
    RSPorcDesc: TFloatField;
    ClienteActidListaPrecio: TStringField;
    ProductoActExistenciaNeg: TBooleanField;
    ProductoActidListaPrecio: TStringField;
    RSDetLinea: TIntegerField;
    ClienteActCondicion: TIntegerField;
    RSCondicion: TIntegerField;
    ProductoActAutoDescuento: TBooleanField;
    RSidMoneda: TIntegerField;
    Label22: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    ProductoActMinimo: TFloatField;
    ProductoActReorden: TFloatField;
    ProductoActCambiarPrecio: TBooleanField;
    ProductoActidPartida: TStringField;
    ProductoActidMoneda: TIntegerField;
    ClienteActidCuenta: TStringField;
    ClienteActidAuxiliar: TStringField;
    AProductoDet: TAction;
    PopupMenu1: TPopupMenu;
    ProductoDet1: TMenuItem;
    RSDetPrecio: TBCDField;
    RSDetIdReferencia: TGuidField;
    Label23: TLabel;
    dxDBEdit18: TdxDBEdit;
    RSFechaAprobado: TDateTimeField;
    RSidCondicion: TStringField;
    Label28: TLabel;
    dxDBLookupEdit6: TdxDBLookupEdit;
    qryCondicion: TADOQuery;
    qryCondicionidCondicion: TStringField;
    qryCondicionCondicion: TStringField;
    qryCondicionCredito: TBooleanField;
    qryCondicionDias: TIntegerField;
    qryCondicionPrecioContado: TBooleanField;
    dsCondicion: TDataSource;
    ClienteActidCondicion: TStringField;
    Label24: TLabel;
    dxDBEdit19: TdxDBEdit;
    RSFechaEnviado: TDateTimeField;
    qryCondicionNoCreditoCheck: TBooleanField;
    ARecepcion: TAction;
    AFacturaDetEspec: TAction;
    EspecificacionesTecnicasdelProducto1: TMenuItem;
    RSObservacion: TStringField;
    rsEspec: TADODataSet;
    rsEspecidFacturaDet: TGuidField;
    rsEspecidFactura: TGuidField;
    rsEspecEspecificacion: TStringField;
    rsEspecFechaEspec: TDateTimeField;
    rptCotizacionEspecificacion: TStringField;
    Aobservacion: TAction;
    dxDBMemo2: TdxDBMemo;
    cxButton1: TcxButton;
    GetProductoEspec: TADODataSet;
    GetProductoEspecEspecificacion: TStringField;
    GetProductoEspecFechaEspec: TDateTimeField;
    rptCotizacionidmoneda: TIntegerField;
    rptCotizacionmoneda: TStringField;
    dxDBEdit20: TdxDBEdit;
    DBText1: TDBText;
    ClienteActNotas: TStringField;
    TabSheet4: TTabSheet;
    dxDBMemo3: TdxDBMemo;
    dsClienteAct: TDataSource;
    tsNotaReferencia: TTabSheet;
    dxDBMemo4: TdxDBMemo;
    RSNotaReferencia: TStringField;
    rptCotizacionFax: TStringField;
    rptCotizacionLinea: TIntegerField;
    rptCotizacionNumeroSuplidor: TStringField;
    rptCotizacionIdUnidad: TStringField;
    spDescuentoXCantidad: TADOStoredProc;
    RSDetDias: TIntegerField;
    RSDetPrecioDia: TBCDField;
    rptCotizacionDias: TIntegerField;
    rptCotizacionPrecioDia: TBCDField;
    rptCotizacionDetPorcDescuento: TBCDField;
    rptCotizacionDetNeto: TBCDField;
    rptCotizacionPrecioNeto: TBCDField;
    RSDetDescuentoAdd: TBCDField;
    rptCotizacionDetDescuentoAdd: TBCDField;
    rptCotizacionDetPorcDescuentoAdd: TBCDField;
    rptCotizacioncoCompania: TStringField;
    rptCotizacioncoDireccion: TStringField;
    rptCotizacioncoTelefono: TStringField;
    rptCotizacioncoFax: TStringField;
    rptCotizacioncoRNC: TStringField;
    plrptCotizacion: TppDBPipeline;
    frBuscadorProds1: TfrBuscadorProds;
    rptCotizacionNetLineTotal: TBCDField;
    rptCotizacionUsuario: TStringField;
    RSDetLineTotalExt: TCurrencyField;
    rptCotizacioncoEmail: TStringField;
    rptCotizacionEmail: TStringField;
    ppHeaderBand3: TppHeaderBand;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppDBText41: TppDBText;
    ppLabel55: TppLabel;
    ppLine17: TppLine;
    ppDBText53: TppDBText;
    ppLabel56: TppLabel;
    ppDBText54: TppDBText;
    ppLabel57: TppLabel;
    ppDBText55: TppDBText;
    ppLabel58: TppLabel;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppLine21: TppLine;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppDBText56: TppDBText;
    ppDBText1: TppDBText;
    ppDetailBand3: TppDetailBand;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBMemo4: TppDBMemo;
    ppDBMemo6: TppDBMemo;
    ppFooterBand3: TppFooterBand;
    ppLine26: TppLine;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppDBText60: TppDBText;
    ppLine27: TppLine;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppDBText63: TppDBText;
    ppLabel70: TppLabel;
    ppDBText64: TppDBText;
    ppLabel71: TppLabel;
    ppDBText65: TppDBText;
    ppLabel72: TppLabel;
    ppDBText66: TppDBText;
    ppLabel73: TppLabel;
    ppDBText67: TppDBText;
    ppLine28: TppLine;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppShape2: TppShape;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine1: TppLine;
    Button1: TButton;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel2: TppLabel;
    ppDBText8: TppDBText;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel26: TppLabel;
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
    procedure AGetProductExecute(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure AprintExecute(Sender: TObject);
    procedure dxDBEdit6DblClick(Sender: TObject);
    procedure PagaItbisClick(Sender: TObject);
    procedure RSPagaItbisValidate(Sender: TField);
    procedure SendFaxExecute(Sender: TObject);
    procedure SendMailExecute(Sender: TObject);
    procedure RSPorcDescValidate(Sender: TField);
    procedure RSDetBeforePost(DataSet: TDataSet);
    procedure RSidMonedaValidate(Sender: TField);
    procedure AProductoDetExecute(Sender: TObject);
    procedure RSidCotizacionStatusValidate(Sender: TField);
    procedure RSidCondicionValidate(Sender: TField);
    procedure RSPagaItbisChange(Sender: TField);
    procedure AFacturaDetEspecExecute(Sender: TObject);
    procedure rsEspecNewRecord(DataSet: TDataSet);
    procedure ACancelarExecute(Sender: TObject);
    procedure AobservacionExecute(Sender: TObject);
    procedure ANuevoExecute(Sender: TObject);
    procedure RSDescuentoValidate(Sender: TField);
    procedure RSDetDiasValidate(Sender: TField);
    procedure RSDetPrecioDiaValidate(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure RSDetDescuentoAddValidate(Sender: TField);
    procedure RSDetCalcFields(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
  private
    //Fotos : String;
     SUMARITBIS: Integer;
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
  Cotizacion: TCotizacion;

implementation

uses Udata, UUtiles, uBusqueda, CotizacionFind, uCliente, ueMails7,
  uProductoDetalle, uFacturaDetEspec,
  uBusquedaRangoDX, uProductoFindDX;


{$R *.dfm}

procedure TCotizacion.FormCreate(Sender: TObject);
var
  rpt: string;
begin
  if dm.GetDefaultStr('VER_DESC_2') <> '1' then
    Grid.Selected.Delete(6);


  VerLineTotalExt := (dm.GetDefaultStr('VER_IMPORTE_EXT') = '1');

  Grid.RedrawGrid();
  DescAutorizado := false;
  CLIENTECONTADO := dm.GetDefault('CLIENTEDEFECTO');
  SUMARITBIS := dm.GetDefault('SUMARITBIS');
  FLoading := false;
//  ds2.DataSet := mRSDet;
  MasterField := 'idCotizacion';
  DetailField := 'idCotizacion';
  inherited;
  Modulo := 'Venta';
  LogField := 'Cotizacion';
  TipoDoc := 'COTIZACION';
  ImageidField := 'idCotizacion';
  //Fotos := dm.GetDefaultStr('ProductosConFoto');

  try
    fDescuentoXCantidad := dm.GetDefault('svDescXCantidad')
  except
    fDescuentoXCantidad := False;
  end;

  DEFAULT_NOTA := dm.GetDefaultstr('NOTA_COTIZACION');
  if DEFAULT_NOTA <> '' then
    DEFAULT_NOTA := ansiReplaceStr(DEFAULT_NOTA, '//', #13);

  CAMBIOCONDICION := dm.GetDefaultStr('CAMBIO_CONDICION');
  AUTDESCLIM := dm.GetDefault('NIVELAUTODESCLIM');
  ProductoAct.open;
  CampodeCierre := 'FECHA'; //nombre del campo de fecha para validar el cierre de operaciones

  BusqAutoFit := False;
  BusqMaxColSize := 225;
  OcultarC1 := True; //oculta la columna 1 en la busqueda

  spName := 'FindCotizacion';
  Busqfield := 'idCotizacion';
//  tfBusqueda := TFindCotizacion;
  tfBusqueda := tBusquedaRangoDX;

  if not (ds2.dataset.active) then ds2.dataset.open;
  FDescuento := 0.00;
  FITBIS := 0.00;
  FSubtotal := 0.00;
  Empleado.Open;
  try
    Moneda := dm.GetDefault('MONEDA_ACTIVA');
  except
    Moneda := 1;
  end;
  CotizacionStatus.Open;
  qryCondicion.Open();

  rpt := dm.GetDefaultstr('FMT_COTIZACION');
  if rpt <> '' then begin
    if FileExists(rpt) then begin
      cotizacionrpt.Template.FileName := rpt;
      cotizacionrpt.Template.LoadFromFile();
    end;
  end;
  frBuscadorProds1.OnSelectItem := Getproductoframe;
//  ClienteObra.Parameters[1].Value := null;
//  if ClienteObra.Active then ClienteObra.Requery() else ClienteObra.Open;
end;


procedure TCotizacion.Getproductoframe(const idProd: string);
begin
  if appestado <> appBrowse then begin

    if rsdet.Locate('idProducto', idprod, []) then begin
      try
        rsdet.edit;
        rsdetcantidad.value := rsdetcantidad.value + 1;
        rsdet.Post;
      except
        on e: Exception do begin
          ShowMessage('Error con el articulo elegido' + #13 + e.Message);
          rsdet.Cancel;
        end;
      end;

    end else begin
      try
        rsdet.append;
        rsdetidproducto.Value := idProd;
        rsdet.Post;
      except
        on e: Exception do begin
          ShowMessage('Error con el articulo elegido' + #13 + e.Message);
          rsdet.Cancel;
        end;
      end;
    end;
  end;
end;


function TCotizacion.MostrarCliente(idCliente: Integer): integer;
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

procedure TCotizacion.UserAutoCodigo;
begin
  rsCotizacion.Value := dm.GetNextCounterSTR('COTIZACION');
end;

procedure TCotizacion.newbotonstate;
begin
  inherited;
  FindCliente.enabled := true;
  Cod.ReadOnly := true;
  AAnular.Enabled := false;
  AGetProduct.Enabled := true;
  //desc.Enabled := true;
  sendfax.Enabled := false;
  Sendmail.Enabled := false;
  AObservacion.Enabled := false;
end;

procedure TCotizacion.editbotonstate;
begin
  inherited;
  FindCliente.enabled := true;
  Cod.ReadOnly := true;
  AAnular.Enabled := false;
  AGetProduct.Enabled := true;
  //desc.Enabled := false;
  sendfax.Enabled := (not (ds.dataset.IsEmpty)) and (dm.TienePermisoShow(pImprimir, Permisos));
  Sendmail.Enabled := (not (ds.dataset.IsEmpty)) and (dm.TienePermisoShow(pImprimir, Permisos));
  AObservacion.Enabled := false;
end;

procedure TCotizacion.browsebotonstate;
begin
  inherited;
  FindCliente.enabled := false;
  Cod.ReadOnly := true;
  AAnular.Enabled := not (rsidCotizacion.IsNull);
  AGetProduct.Enabled := false;
  //desc.Enabled := false;
  sendfax.Enabled := (not (ds.dataset.IsEmpty)) and (dm.TienePermisoShow(pImprimir, Permisos));
  Sendmail.Enabled := (not (ds.dataset.IsEmpty)) and (dm.TienePermisoShow(pImprimir, Permisos));
  // verificar fecha ultimo cierre para status boton editar
  AObservacion.Enabled := not (rs.IsEmpty);
end;

procedure TCotizacion.CalcTotal();
var
  bm: string;
begin
  inherited;
  RSDet.DisableControls;
  with RSDet do
  begin
    bm := BookMark;
    First;

    FDescuento := 0.00;
    FITBIS := 0.00;
    FSubTotal := 0.00;

    while not Eof do
    begin
      FDescuento := FDescuento + rsDetDescuento.ascurrency + rsDetDescuentoAdd.AsCurrency;
      FITBIS := FITBIS + rsDetITBIS.ascurrency;
      FSubTotal := FSubTotal + rsDetLineTotal.ascurrency;
      Next;
    end;
    Bookmark := bm;

  end;
  RSDet.EnableControls;
end;


procedure TCotizacion.RSDetAfterPost(DataSet: TDataSet);
begin
  inherited;
  CalcTotal();
  ActualizarTotales();
end;



procedure TCotizacion.ActualizarTotales;
begin
  if (appestado in [appedit, appinsert]) then
  begin
    if not (rs.state in dsEditModes) then rs.Edit;
    //rsTotal.Value := FSubTotal - FDescuento + FITBIS;
    //rsDescuento.Value := FDescuento;
    //rsSubTotal.Value := FSubTotal;
    //rsItbis.Value := FITBIS;


    rsTotal.Value := (FSubTotal + FITBIS)-FDescuento;
    rsDescuento.Value := FDescuento;
    rsSubTotal.Value := FSubTotal ;//- FITBIS;
    rsItbis.Value := FITBIS;
  end;
end;

function TCotizacion.LocateProducto(idProducto: string): boolean;
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
    ProductoAct.Parameters[3].value := Null;
    ProductoAct.Parameters[4].value := rsidMoneda.value;
    productoAct.close;
    productoAct.Open;
  end;
  Result := not (ProductoAct.isempty);
end;

procedure TCotizacion.RSDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  FLoading := true;
  rsdetCantidad.Value := 1.00;
  rsdetDescuento.value := 0.00;
  rsdetITBIS.Value := 0.00;
//  rsdetPrecio.Value   := 0.00;
  rsdetPrecioDia.Value := 0.00;
  rsDetDias.Value := 1;
  rsdetidCotizacionDet.AsGuid := dm.NewGuid;
  rsdetlinea.Value := rsdet.RecordCount;
  FLoading := false;
end;

procedure TCotizacion.RSDetDescuentoValidate(Sender: TField);
begin
  inherited;

  if sender.value = 0 then
  begin
    CalcITBIS();
    exit;
  end;

  if (sender.AsCurrency > 0) and (sender.AsCurrency >= (rsdetcantidad.AsFloat * rsdetprecio.AsCurrency)) then
    raise exception.Create('El descuento no puede ser mayor o igual que el total');

  if sender.AsCurrency < 0 then raise exception.Create('El descuento no puede ser negativo');

  if not fDescuentoXCantidad then
  begin
    if (rsdetDescuento.value > 0) and ((rsdetcantidad.value * rsdetprecio.value) > 0) and (((rsdetDescuento.value / (rsdetcantidad.value * rsdetprecio.value)) * 100) > ClienteActDescuento.value) then begin
      if (not (DescAutorizado)) then DescAutorizado := dm.TienePermiso(PAprobar, Permisos, 'Descuentos para el Cliente:' + rsidcliente.AsString, 'Cliente: ' + rsidcliente.AsString);
      if ((sender.AsCurrency > 0) and (not DescAutorizado)) then raise exception.Create('No tiene autorizacion para aplicar el descuento');
    end;

    if (not (rsdetidproducto.isnull)) and (LocateProducto(rsdetidproducto.Value)) and (rsdetPrecio.Value > 0) then begin
      if (not (ProductoActAutoDescuento.value)) or ((sender.AsCurrency / (rsdetcantidad.AsFloat * rsdetprecio.AsCurrency)) > (ProductoActDescuento.AsFloat / 100)) then begin
        if (not (DescAutLimite)) then DescAutLimite := dm.Autorizar(AUTDESCLIM, 'Cliente: ' + rsidCliente.AsString, 'Desc. sobre limite producto: ' + ProductoActProducto.Value, 'Desc. sobre Maximo Producto: ' + ProductoActProducto.Value);
        if (not (DescAutLimite)) then raise exception.create('Autorizacion Invalida, ESC para cancelar');
      end;
    end;
  end;

  CalcITBIS();
  CalcLineTotal();
end;

procedure TCotizacion.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  if not rsdet.IsEmpty then rsdet.close;
  rsPagaitbis.Value := true;
  rsidCotizacion.AsGuid := dm.NewGuid;
  rsCondicion.value := 0;
  rscredito.Value := false;
  CondicionAnterior := '';
  rsidCondicion.value := 'CONTADO';
  rsfecha.Value := dm.DBFecha();
  rshora.Value := dm.DBFechaHora();
  rsTotal.value := 0.00;
  rsSubTotal.value := 0.00;
  rsPorcDesc.Value := 0;
  rsDescuento.Value := 0.00;
  rsItbis.Value := 0.00;
  RSPorcDesc.Value := 0.00;
  rsCancelado.value := false;
  //rsidCompania.Value := dm.CompaniaActual();
  RSUsuario.Value := dm.UsuarioActual;
  rsidCotizacionStatus.Value := 'Nuevo';
  rsnota.Value := DEFAULT_NOTA;
  rsidMoneda.Value := Moneda;
  try
    rsidCliente.Value := CLIENTECONTADO;
  except
    raise exception.create('Verifique que exista un cliente de contado y que su codigo este configurado en el parametro "CLIENTEDEFECTO"');
  end;
end;

procedure TCotizacion.RSAfterScroll(DataSet: TDataSet);
begin
  inherited;
  MostrarCliente(RSidCliente.AsInteger);

  rsEspec.Close;
  if rsidCotizacion.IsNull then rsEspec.Parameters[1].Value := NULL else rsEspec.Parameters[1].Value := rsidCotizacion.Value;
  rsEspec.open;

end;

procedure TCotizacion.RSDetPrecioValidate(Sender: TField);
begin
  inherited;
  if (not (floading)) then begin
    if (not (productoActcambiarprecio.value)) and (not (dm.Tienepermiso(PAprobar, Permisos, 'Cambio de Precio Producto ' + productoActidproducto.value, 'Prod: ' + productoActidproducto.value))) then
      raise exception.create('El precio de este producto esta bloqueado para no ser cambiado y usted no esta autorizado');
  end;

  if sender.value < 0 then
    raise exception.create('El Precio no puede ser menor que cero (0)');

  if fDescuentoXCantidad then
    rsDetDescuento.Value := DescuentoXCantidad(rsDetIdProducto.Value, Sender.Value, rsDetCantidad.Value);



  DescuentoCalc();
  CalcITBIS();
  CalcLineTotal();
end;

procedure TCotizacion.RSDetCantidadValidate(Sender: TField);
begin
  inherited;
  if sender.value < 0 then
    raise exception.create('La Cantidad no puede ser menor que cero (0)');

  if fDescuentoXCantidad then
    rsDetDescuento.Value := DescuentoXCantidad(rsDetIdProducto.Value, rsDetPrecio.Value, Sender.Value);



  DescuentoCalc();
  CalcITBIS();
  CalcLineTotal();


end;

procedure TCotizacion.DescuentoCalc();
var
  desc: currency;
begin

  if (rsdetcantidad.value = 0) or (rsdetprecio.value = 0) or (rsdetidproducto.isnull) then begin
    rsdetDescuento.value := 0.0;
    exit;
  end;

  LocateProducto(rsdetidProducto.value);
  if not (ProductoActAutoDescuento.Value) then begin
    desc := 0.00
  end else begin
    if ((rsporcdesc.Value / 100) <= (ProductoActDescuento.AsFloat / 100)) then
      desc := ((rsdetprecio.Value * rsdetcantidad.Value) * (rsporcdesc.Value / 100))
    else
      desc := (rsdetcantidad.value * rsdetprecio.value) * (ProductoActDescuento.AsFloat / 100);
  end;
  if not fDescuentoXCantidad then
    if (rsdetDescuento.value <> desc) then rsdetDescuento.value := desc;
end;

procedure TCotizacion.CalcLineTotal();
begin
  {rsdetLineTotal.AsCurrency := 0.00;
  if (rsDetPrecio.ascurrency > 0) and (rsDetCantidad.asfloat > 0) and (not (rsdetidProducto.IsNull)) then
  begin
    //rsdetLineTotal.AsCurrency := (rsDetPrecio.ascurrency * rsDetCantidad.asfloat);
    rsdetLineTotal.AsCurrency := (rsDetPrecio.ascurrency * rsDetCantidad.asfloat)-rsdetITBIS.AsCurrency;
  end;    }
  rsdetLineTotal.AsCurrency := 0.00;
  if (rsDetPrecio.ascurrency > 0) and (rsDetCantidad.asfloat > 0) and (not (rsdetidProducto.IsNull)) then
  begin
    if (SUMARITBIS=1) then
    rsdetLineTotal.AsCurrency := (rsDetPrecio.ascurrency * rsDetCantidad.asfloat)
    else
    rsdetLineTotal.AsCurrency := (rsDetPrecio.ascurrency * rsDetCantidad.asfloat)-rsdetITBIS.AsCurrency;
  end;
end;


procedure TCotizacion.CalcITBIS();
begin
  {rsdetITBIS.AsCurrency := 0.00;
  if (rsDetPrecio.ascurrency > 0) and (rsDetCantidad.asfloat > 0) and (not (rsdetidProducto.IsNull)) then
  begin
    if LocateProducto(rsdetidProducto.AsString) and (ProductoActPorciento.AsFloat > 0) and (rsPagaItbis.AsBoolean) then
      //rsdetITBIS.AsCurrency := RoundTo(((rsDetPrecio.ascurrency * rsDetCantidad.asfloat) - (rsDetDescuento.ascurrency + rsDetDescuentoAdd.AsCurrency)) * (ProductoActPorciento.AsFloat), -2)
     rsdetITBIS.AsCurrency := RoundTo(((rsDetPrecio.ascurrency * rsDetCantidad.asfloat) - rsDetDescuento.ascurrency)-(((rsDetPrecio.ascurrency * rsDetCantidad.asfloat) - rsDetDescuento.ascurrency) / (1+ProductoActPorciento.AsFloat)), -2)
  end;}

  rsdetITBIS.AsCurrency := 0.00;
  if (rsDetPrecio.ascurrency > 0) and (rsDetCantidad.asfloat > 0) and (not (rsdetidProducto.IsNull)) then
  begin
    if LocateProducto(rsdetidProducto.AsString) and (ProductoActPorciento.AsFloat > 0) and (rsPagaItbis.AsBoolean) then
    if (SUMARITBIS=1) then
      rsdetITBIS.AsCurrency := RoundTo(((rsDetPrecio.ascurrency * rsDetCantidad.asfloat) - (rsDetDescuento.ascurrency + rsDetDescuentoAdd.AsCurrency)) * (ProductoActPorciento.AsFloat), -2)
    else
     rsdetITBIS.AsCurrency := RoundTo(((rsDetPrecio.ascurrency * rsDetCantidad.asfloat) - rsDetDescuento.ascurrency)-(((rsDetPrecio.ascurrency * rsDetCantidad.asfloat) - rsDetDescuento.ascurrency) / (1+ProductoActPorciento.AsFloat)), -2)
  end;
end;



function TCotizacion.TieneCredito(idCliente: Integer; MasMonto: Double; IdCondicion: string): Boolean;

var
  TC: Integer;
begin

  if (qrycondicion.locate('idCondicion', IdCondicion, [])) and (qrycondicionNoCreditoCheck.Value) then begin
    result := True;
    exit;
  end;

  spTieneCredito.parameters.ParamByName('@IdCliente').Value := idCliente;
  spTieneCredito.parameters.ParamByName('@MasMonto').Value := MasMonto;


  spTieneCredito.Execute;
  TC := spTieneCredito.Parameters.ParamByName('@TieneCredito').Value;

  if TC = 1 then begin
    result := True
  end else if (TC = 0) then begin
    Showmessage('El Cliente esta por encima de su limite de credito, Puede Cotizar pero no facturar');
    result := true;
  end else if (TC = -2) then begin
    Showmessage('El Cliente tiene factura proximas a vencer, Puede Cotizar pero necesita autorizacion para facturar');
    result := true;
  end else if (TC = 45) then begin
    Showmessage('El Cliente tiene factura a mas de 45 dias, Puede Cotizar pero necesita autorizacion para facturar');
    result := true;
  end else if (TC = 60) then begin
    Showmessage('El Cliente tiene factura a mas de 60 dias, Puede Cotizar pero necesita autorizacion para facturar');
    result := true;
  end else if TC = -1 then begin
    Showmessage('El Cliente NO tiene credito, Solo puede cotizar al contado');
    result := false;
  end else begin
    result := true;
  end;
end;


procedure TCotizacion.ClientesExecute(Sender: TObject);
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

procedure TCotizacion.AGuardarExecute(Sender: TObject);
begin
  HandleTrans := false; // las transacciones no se manejaran automaticamente si no lo pone false
  HandleGuardarState := false; // el estado de los botones y de la aplicacion al guardar
                                // no se manejaran automaticamente si se pone false
  dm.Coneccion.BeginTrans;
  try
    try
      calcTotal;
      ActualizarTotales();
      inherited;
      BatchUpdateCancel(rsEspec, True);
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

procedure TCotizacion.FindClienteClick(Sender: TObject);
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

procedure TCotizacion.AAnularExecute(Sender: TObject);
begin
  inherited;
  if not (RSCancelado.AsBoolean) then
  begin
    if not Confirmar('Esta seguro de anular esta cotizacion?') then
      exit;

    Anulable.Parameters[1].Value := RSidCotizacion.Value;
    Anulable.Execute;
    if Anulable.Parameters[2].Value = true then
    begin
      try
        AEditar.Execute;
        RS.Edit;
        RSCancelado.Value := true;
        RS.Post;
        AGuardar.Execute;
      except
        ShowMessage('Error al anular la factura, Verifique y reintente');
        exit;
      end;
      ShowMessage('La factura se ha anulado');
    end
    else
    begin
      ShowMessage('La factura tiene pagos aplicados y no se puede anular');
    end;
  end;
end;

procedure TCotizacion.GridCellChanged(Sender: TObject);
begin
  inherited;
  Grid.RedrawGrid;
end;

procedure TCotizacion.RSidClienteValidate(Sender: TField);
var
  x: integer;
begin
  inherited;

  CondicionAnterior := '';

  if (CAMBIOCONDICION <> '1') and (not (rsdet.IsEmpty)) then
    raise exception.Create('No debe cambiar el cliente si ya tiene productos pues podria haber diferencia en los precios');

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
  if x = 1 then raise exception.Create('Este cliente esta inactivo');

  // si se encuentra la condicion del cliente en la tabla de condiciones
  if qrycondicion.locate('idCondicion', ClienteActidcondicion.value, []) then begin
    // si es de credito la condicion y no dice que no chequee el credito
    if (qrycondicionCredito.Value) and (not (qrycondicionNoCreditoCheck.Value)) then begin
      // si es credito verificar si el cliente tiene credito
      if (not (TieneCredito(rsidCliente.Value, rsTotal.Value, ClienteActidcondicion.Value))) then begin
        Showmessage('Nota: En el momento el Cliente No tiene Credito Autorizado');
        //rsidCondicion.value := 'CONTADO';
      end else begin
        fLoading := true;
        rsidCondicion.value := ClienteActidCondicion.value;
        fLoading := false;
        CondicionAnterior := rsIdCondicion.Value;
      end;
    end;
  end else begin // si NO se encuentra la condicion del cliente en la tabla de condiciones
    rsidCondicion.value := 'CONTADO';
  end;

  rsCliente.Value := ClienteActCliente.AsString;
  if (ClienteActidEmpleado.isnull) or (ClienteActidEmpleado.AsString = '') then
    rsidEmpleado.Clear
  else
    rsidEmpleado.Value := ClienteActidEmpleado.value;

  rsContacto.value := ClienteActContacto.value;
  rsDireccion.value := ClienteActDireccion.value;
  rsSector.value := ClienteActSector.value;
  rsCiudad.value := ClienteActCiudad.value;
  rsTelefono.value := ClienteActTelefono.value;
  rsfax.value := ClienteActFax.value;
  rseMail.value := ClienteActeMail.value;
   //rsClienteRNC.Value :=  ClienteActRNC_Cedula.Value;

  if ClienteActDescuento.AsFloat > 0 then
    rsporcdesc.value := ClienteActDescuento.value
  else
    desc.Clear;

  if rsdet.IsEmpty then begin
    rsPagaItbis.Value := not (ClienteActNoPagaItbis.asboolean);
  end else begin
    if rsPagaitbis.Value <> not (ClienteActNoPagaItbis.asboolean) then
      ShowMessage('Las condicion de ITBIS del cliente no se pueden actualuzar si tiene articulos');
  end;

  rsidClienteObra.Clear;
  ClienteObra.Parameters[1].Value := rsidCliente.Value;
  if ClienteObra.Active then ClienteObra.Requery() else ClienteObra.Open;

end;


procedure TCotizacion.RSDetidProductoValidate(Sender: TField);
begin
  inherited;
  if LocateProducto(sender.value) then
  begin
    FLoading := true;
    if qryCondicion.locate('idCondicion', rsidCondicion.value, []) then begin
      if qryCondicionPrecioContado.value then
        rsdetprecioDia.value := ProductoActPrecioContado.AsCurrency //rsdetprecio.value := ProductoActPrecioContado.AsCurrency
      else
        rsdetprecioDia.value := ProductoActPrecioCredito.AsCurrency; //rsdetprecio.value := ProductoActPrecioCredito.AsCurrency;
    end else begin
      if rsCredito.value then
        rsdetprecioDia.value := ProductoActPrecioCredito.AsCurrency //rsdetprecio.value := ProductoActPrecioCredito.AsCurrency
      else
        rsdetprecioDia.value := ProductoActPrecioContado.AsCurrency; //rsdetprecio.value := ProductoActPrecioContado.AsCurrency ;
    end;


    rsdetProducto.value := ProductoActProducto.AsString;
    rsdetidUnidad.Value := ProductoActidUnidad.Value;
    FLoading := false;
  end
  else
    raise exception.create('Producto invalido');
end;

procedure TCotizacion.FormDestroy(Sender: TObject);
begin
  inherited;
  Empleado.close;
  CotizacionStatus.Close;
end;

procedure TCotizacion.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_add then begin
    if AGetProduct.Enabled then
      AGetProduct.Execute;
  end;
end;

procedure TCotizacion.AGetProductExecute(Sender: TObject);
var
  idProd: variant;
begin
  inherited;
  if RSidCliente.AsInteger = 0 then
    raise Exception.Create('Seleccione un cliente antes de incluir productos');

  idProd := GetProduct();
  if idProd <> null then begin
    if not (rsdet.State in dsEditmodes) then rsdet.Edit;
    rsdetidProducto.Value := idProd;
  end;
end;

function TCotizacion.GetProduct(): string;
var
  idprodres: variant;
begin
  inherited;
  ///if Fotos = '1' then
  //  idprodres := fbuscar(TfindProductoFoto,'idProducto')
  //else
  idprodres := TProductoFindDX.Buscar('idProducto', dm.PCSettings['INVPORDEFECTO'], True);

  if idprodres = Null then
    result := ''
  else
    result := idprodres;

end;

procedure TCotizacion.GridDblClick(Sender: TObject);
var
  str: string;
  d: Single;
begin
  inherited;
  if appEstado = appbrowse then
    Exit;

  if grid.SelectedField.Name = 'RSDetidProducto' then begin
    if AGetProduct.Enabled then
      AGetProduct.Execute;
  end
  else if grid.SelectedField.Name = 'RSDetDescuento' then begin
    if rsDetlinetotal.Value > 0 then
      d := rsDetDescuento.AsCurrency / rsDetLineTotal.asCurrency * 100.00
    else
      d := 0;
    str := InputBox('Calcular % de descuento', 'Descuento:', FormatFloat('##0.00', d));

    if str <> '' then begin
      d := StrToFloatDef(str, 0);
      if not (rsDet.State in dsEditModes) then
        rsDet.Edit();

      rsDetDescuento.Value := RSDetLineTotal.Value * (d / 100.00);
    end;
  end
  else if grid.SelectedField.Name = 'RSDetDescuentoAdd' then begin
    if rsDetlinetotal.Value > 0 then
      d := (rsDetDescuentoAdd.AsCurrency / (rsDetLineTotal.asCurrency - rsDetDescuento.Value)) * 100.00
    else
      d := 0;
    str := InputBox('Calcular % de descuento adicional', 'Descuento adicional:', FormatFloat('##0.00', d));

    if str <> '' then begin
      d := StrToFloatDef(str, 0);
      if not (rsDet.State in dsEditModes) then
        rsDet.Edit();

      rsDetDescuentoAdd.Value := (RSDetLineTotal.Value - rsDetDescuento.Value) * (d / 100.00);
    end;
  end;
end;

procedure TCotizacion.AprintExecute(Sender: TObject);
begin
  rpt := dm.GetDefaultstr('FMT_COTIZACION');
  if rpt <> '' then begin
    if FileExists(rpt) then begin
      cotizacionrpt.Template.FileName := rpt;
      cotizacionrpt.Template.LoadFromFile();
    end;
  end;

  inherited;
  rptCotizacion.Close;
  rptCotizacion.Parameters[1].value := rsidCotizacion.Value;
  rptCotizacion.Open;
  CotizacionRpt.Print;
end;

procedure TCotizacion.dxDBEdit6DblClick(Sender: TObject);
begin
  inherited;
  if not (rsidcliente.isnull) then
    Modalshow(TCliente, ShowFind, rsidCliente.Value, '', true)
  else
    Modalshow(TCliente, showInsert, rsidCliente.Value, '', true);
end;

procedure TCotizacion.PagaItbisClick(Sender: TObject);
begin
  inherited;
  if rsPagaItbis.AsBoolean <> PagaItbis.Checked then
    rsPagaItbis.AsBoolean := PagaItbis.Checked;
end;

procedure TCotizacion.RSPagaItbisValidate(Sender: TField);
begin
  inherited;
//  if not rsdet.IsEmpty then
  //  raise exception.Create('No puede cambiar el itbis si ya tiene articulos, use ESC para cancelar el cambio');

end;

procedure TCotizacion.SendFaxExecute(Sender: TObject);
var
  Myfile: string;
  destino: string;
begin
  inherited;
  destino := rsFax.asstring;
  if not (inputquery('Confirmar Numero de Fax', 'Confimacion', destino)) then abort;

  MyFile := GetTempFolder() + 'Cotiz' + rsCotizacion.AsString + '.pdf';
  try
    rptCotizacion.Close;
    rptCotizacion.Parameters[1].value := rsidCotizacion.Value;
    rptCotizacion.Open;
    deletefile(MyFile);
    cotizacionRPT.DeviceType := 'PDF';
    CotizacionRPT.ShowPrintDialog := false;
    CotizacionRPT.ShowPrintDialog := false;
    CotizacionRPT.TextFileName := MyFile;
    CotizacionRpt.Print;
    if not SetFaxFiles(MyFile, rsCliente.value, dm.ConfiguracionCompania.Value, destino, '') then
      raise exception.Create('Error al enviar el fax, verifique');

    RS.Edit;
    rsidCotizacionStatus.value := 'Enviado';
    RS.Post;
    BatchUpdateCancel(RS, True);
  finally
    CotizacionRPT.ShowPrintDialog := true;
    CotizacionRPT.ShowPrintDialog := true;
    cotizacionRPT.DeviceType := 'Printer';
  end;
end;

procedure TCotizacion.SendMailExecute(Sender: TObject);
var
  Myfile: string;
  destino: string;
  rpt: string;
begin
  destino := rsemail.value;
  if not (inputquery('Confirmar Direccion', 'Confimacion', destino)) then abort;

  inherited;
  MyFile := GetTempFolder() + 'Cotiz' + rsCotizacion.AsString + '.pdf';
  try

    rpt := dm.GetDefaultstr('FMT_COTIZACION');
    if rpt <> '' then begin
      if FileExists(rpt) then begin
        cotizacionrpt.Template.FileName := rpt;
        cotizacionrpt.Template.LoadFromFile();
      end;
    end;

    application.Createform(TeMail, eMail);
    rptCotizacion.Close;
    rptCotizacion.Parameters[1].value := rsidCotizacion.Value;
    rptCotizacion.Open;
    deletefile(MyFile);
    cotizacionRPT.DeviceType := 'PDF';
    CotizacionRPT.ShowPrintDialog := false;
    CotizacionRPT.ShowPrintDialog := false;
    CotizacionRPT.TextFileName := MyFile;
    CotizacionRpt.Print;
    if eMail.MailSend(destino, 'Cotizacion : ' + rsCliente.AsString, 'Su cotizacion ha sido enviada como adjunto a este correo', MyFile, 'TXT') <> 0 then
      raise exception.Create('Error al enviar el eMail, verifique');

    RS.Edit;
    rsidCotizacionStatus.value := 'Enviado';
    RS.Post;
    BatchUpdateCancel(RS, True);
  finally
    CotizacionRPT.ShowPrintDialog := true;
    CotizacionRPT.ShowPrintDialog := true;
    cotizacionRPT.DeviceType := 'Printer';
    email.Release;
  end;
end;

procedure TCotizacion.RSPorcDescValidate(Sender: TField);
var
  cargando: boolean;
begin
  inherited;

  if (rsPorcDesc.AsFloat > 0) and (rsPorcDesc.AsFloat > ClienteActDescuento.value) then begin
    if not DescAutorizado then DescAutorizado := dm.TienePermiso(PAprobar, Permisos, 'Descuentos para el cliente :' + rsidcliente.AsString, 'Client: ' + rsidcliente.AsString);
    if not DescAutorizado then raise Exception.Create('No tiene autorizacion para aplicar el descuento');
  end;

  if not (rsdet.active) then exit;
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


procedure TCotizacion.RSDetBeforePost(DataSet: TDataSet);
begin
  inherited;
  if rsdetidProducto.isnull then
    raise exception.create('Debe seleccionar un codigo de producto');

  if rsdetCantidad.value <= 0 then
    raise exception.create('La Cantidad no puede ser cero');

  if rsdetPrecio.value <= 0 then
    raise exception.create('El Precio del producto no puede ser cero');

end;

procedure TCotizacion.RSidMonedaValidate(Sender: TField);
begin
  inherited;
  if not (rsdet.IsEmpty) then
    raise exception.Create('No puede cambiar la moneda con productos, cancele y elija la moneda antes que los productos');
end;

procedure TCotizacion.AProductoDetExecute(Sender: TObject);
begin
  inherited;
  if not rsdetidproducto.isnull then
    ModalShow(TProductoDetalle, Showfind, rsdetidproducto.value, '');
end;

procedure TCotizacion.RSidCotizacionStatusValidate(Sender: TField);
begin
  inherited;
  if sender.value = 'Aprobado' then
    rsfechaaprobado.value := dm.DBFecha;
  if sender.value = 'Enviado' then
    rsfechaEnviado.value := dm.DBFecha;
end;

function TCotizacion.EsCondicionContado(idCond: string): Boolean;
var
  bm: string;
begin
  bm := qryCondicion.BookMark;
  if qryCondicion.Locate('idCondicion', idCond, []) then
    Result := qryCondicionPrecioContado.Value
  else
    Result := False;

  qryCondicion.BookMark := bm;
end;

procedure TCotizacion.RSidCondicionValidate(Sender: TField);
var
  condAnteriorContado: Boolean;

begin
  inherited;
  if (CAMBIOCONDICION <> '1') and (not (rsdet.IsEmpty)) then
    raise exception.Create('No debe cambiar la caracteristica de credito si ya tiene productos pues podria haber diferencia en los precios');

  condAnteriorContado := EsCondicionContado(CondicionAnterior);

  qryCondicion.locate('idCondicion', sender.Value, []);

  if qryCondicioncredito.value then begin
    if (not (rsidcliente.IsNull)) and (rsidCliente.Value = CLIENTECONTADO) then begin
      rsidcliente.Clear;
    end;
    if fLoading = false then begin
      if (not (rsidcliente.IsNull)) and (not (TieneCredito(rsidCliente.Value, rsTotal.Value, Sender.Value))) then begin
        raise exception.Create('El cliente no tiene credito o el credito no ha sido autorizado');
      end;
    end;
  end;

  if not fLoading then begin
    if (condAnteriorContado <> qryCondicionPrecioContado.Value) and (not rsDet.IsEmpty) then begin
      if not (uutiles.Confirmar('La condicion seleccionada requiere de precios diferentes, si continua se cambiaran los precios a los adecuados')) then begin
        abort;
      end
      else begin
        // actualizar precios
        rsdet.First;
        while not rsdet.eof do begin
          if not (rsdet.state in dseditmodes) then rsdet.edit;
          rsdetidproducto.value := rsdetidproducto.value;
          rsdet.Post;
          rsdet.next;
        end;
      end;
    end;
  end;

  if rscredito.Value <> qryCondicioncredito.value then
    rscredito.Value := qryCondicioncredito.value;
  if rscondicion.Value <> qryCondiciondias.value then
    rscondicion.Value := qryCondiciondias.value;

  CondicionAnterior := rsIdCondicion.Value;

end;

procedure TCotizacion.RSPagaItbisChange(Sender: TField);
begin
  inherited;
  if not (rsdet.IsEmpty) then begin
    rsdet.First;
    while not (rsdet.Eof) do begin
      rsdet.edit;

      DescuentoCalc();
      CalcITBIS();
      CalcLineTotal();
      rsdet.post;
      rsdet.Next
    end;
  end;
end;

procedure TCotizacion.AFacturaDetEspecExecute(Sender: TObject);
begin
  inherited;
  if rsdetidCotizaciondet.isnull then abort;

  FacturaDetEspec := TFacturaDetEspec.Create(Application);
  try
    FacturaDetEspec.DS.DataSet := rsEspec;
    FacturaDetEspec.DS.AutoEdit := (appEstado = AppEdit) or (appEstado = AppInsert);
    if not (rsEspec.Locate('idFacturaDet', rsdetidCotizacionDet.Value, [])) then begin
      rsEspec.Append;
      GetProductoEspec.Close;
      GetProductoEspec.Parameters[1].Value := rsdetidProducto.Value;
      GetProductoEspec.Open;
      if not (GetProductoEspecEspecificacion.IsNull) then begin
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

procedure TCotizacion.rsEspecNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsEspecidFactura.Value := rsidCotizacion.value;
  rsEspecidFacturaDet.Value := rsdetidCotizacionDet.value;
end;

procedure TCotizacion.ACancelarExecute(Sender: TObject);
begin
  inherited;
  BatchUpdateCancel(rsEspec, false);
end;

procedure TCotizacion.AobservacionExecute(Sender: TObject);
var
  s: string;
begin
  inherited;
  if rs.IsEmpty then abort;
  s := rsobservacion.AsString;
  if inputquery('Observaciones', 'Escriba sus Observaciones', s) then begin
    RS.Edit;
    rsobservacion.Value := s;
    RS.Post;
    BatchUpdateCancel(RS, True);
  end;
end;

procedure TCotizacion.ANuevoExecute(Sender: TObject);
begin
  inherited;
  DescAutLimite := false;
end;

procedure TCotizacion.RSDescuentoValidate(Sender: TField);
begin
  inherited;
  if rsdescuento.Value < 0 then
    raise exception.Create('El descuento no puede ser negativo');

end;

function TCotizacion.DescuentoXCantidad(IdProducto: string; Precio, Cantidad: Double): Double;
var
  Porciento: Double;
begin
  with spDescuentoXCantidad, Parameters do
  begin
    ParamByName('@IdProducto').Value := IdProducto;
    ParamByName('@Cantidad').Value := Cantidad;
    ExecProc;
    Porciento := ParamByName('@Descuento').Value;
    Result := (Precio * (Porciento / 100));
  end;
end;

procedure TCotizacion.RSDetDiasValidate(Sender: TField);
begin
  inherited;
  rsDetPrecio.Value := rsDetDias.Value * rsDetPrecioDia.Value;
end;

procedure TCotizacion.RSDetPrecioDiaValidate(Sender: TField);
begin
  inherited;
  rsDetPrecio.Value := rsDetDias.Value * rsDetPrecioDia.Value;
end;

procedure TCotizacion.FormShow(Sender: TObject);
begin
  inherited;
 // if dm.GetDefaultStr('FACTURAR_DIAS') <> '1' then
 //   Grid.Fields[3].Visible := False;
end;

procedure TCotizacion.RSDetDescuentoAddValidate(Sender: TField);
begin
  inherited;

  if (sender.AsCurrency > 0) and (sender.AsCurrency >= (rsdetcantidad.AsFloat * rsdetprecio.AsCurrency)) then
    raise exception.Create('El descuento no puede ser mayor o igual que el total');

  if sender.AsCurrency < 0 then raise exception.Create('El descuento no puede ser negativo');

  CalcITBIS();
  CalcLineTotal();
end;

procedure TCotizacion.RSDetCalcFields(DataSet: TDataSet);
begin
  inherited;
  if VerLineTotalExt then
    //RSDetLineTotalExt.Value := rsDetLineTotal.AsCurrency + rsDetItbis.AsFloat
    RSDetLineTotalExt.Value := rsDetLineTotal.AsCurrency //- rsDetItbis.AsFloat
  else
    //RSDetLineTotalExt.Value := rsDetLineTotal.AsCurrency;
    RSDetLineTotalExt.Value := rsDetLineTotal.AsCurrency; //- rsDetItbis.AsFloat;
end;

procedure TCotizacion.Button1Click(Sender: TObject);
var
  x: variant;
begin
  if RS.State = dsbrowse then
    Exit;

  inherited;
  x := fbuscar(TBusqueda, 'Nota', false, 'spfrNotasFacturas');
  if x <> Null then
  begin
    if ((RSNota.IsNull) or (Trim(RSNota.Value) = '')) then
      RSNota.Value := x
    else
      RSNota.Value := RSNota.Value + #13 + #10 + x;
  end;
end;

end.


unit uProMov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformmant2, StdCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, DB,
  ADODB, ActnList, ImgList, Wwdatsrc, Grids, Wwdbigrd, Wwdbgrid,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxExEdtr, dxDBEdtr,
  wwdblook, Wwdbdlg, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppParameter,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxDBEdit, Menus, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView,
  cxClasses, cxGridLevel, cxGrid, cxDBLookupComboBox, cxDropDownEdit, cxPC,
  Mask, DBCtrls, cxCurrencyEdit, cxLookupEdit, cxDBLookupEdit;

type
  TProMov = class(Tfformmant2)
    dxDBEdit1: TdxDBEdit;
    Label1: TLabel;
    dxDBEdit2: TdxDBEdit;
    Label2: TLabel;
    dxDBEdit3: TdxDBEdit;
    Label3: TLabel;
    dxDBEdit4: TdxDBEdit;
    Label4: TLabel;
    dxDBEdit5: TdxDBEdit;
    ProMovTipo: TADODataSet;
    RSidProMov: TGuidField;
    RSidProMovTipo: TIntegerField;
    RSFecha: TDateTimeField;
    RSSalida: TBooleanField;
    RSidCompania: TIntegerField;
    RSNota: TStringField;
    RSUsuario: TStringField;
    RSEntregadoPor: TStringField;
    RSRecibidoPor: TStringField;
    RSDetidProMovDet: TGuidField;
    RSDetidProMov: TGuidField;
    RSDetidProducto: TStringField;
    RSDetProducto: TStringField;
    RSDetCantidad: TBCDField;
    RSDetCosto: TBCDField;
    RSDetReferencia: TStringField;
    dsProMovTipo: TDataSource;
    dxDBLookupEdit1: TdxDBLookupEdit;
    Label5: TLabel;
    Label6: TLabel;
    dxDBEdit6: TdxDBEdit;
    Label7: TLabel;
    dxDBEdit7: TdxDBEdit;
    salida: TdxDBCheckEdit;
    RSProMov: TStringField;
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
    RSDetidUnidad: TStringField;
    RSDetProMovDet: TStringField;
    RSidAlmacen: TStringField;
    Almacen: TADODataSet;
    dsAlmacen: TDataSource;
    Label8: TLabel;
    dxDBLookupEdit2: TdxDBLookupEdit;
    RSConcepto: TStringField;
    Label9: TLabel;
    RSidConduce: TGuidField;
    RSReferencia: TStringField;
    AGetProduct: TAction;
    bPrint: TwwNavButton;
    rptProMov: TADODataSet;
    dsRptProMov: TDataSource;
    plrptProMov: TppDBPipeline;
    RSPosteado: TBooleanField;
    dxDBCheckEdit1: TdxDBCheckEdit;
    RSDetPosteado: TBooleanField;
    Label12: TLabel;
    RSPosteadoFecha: TDateTimeField;
    ProMovRPT: TppReport;
    RSDetLinea: TIntegerField;
    rptProMovidProMov: TGuidField;
    rptProMovProMovTipo: TStringField;
    rptProMovProMov: TStringField;
    rptProMovFecha: TDateTimeField;
    rptProMovSalida: TBooleanField;
    rptProMovMovimiento: TStringField;
    rptProMovReferencia: TStringField;
    rptProMovOrdComp: TStringField;
    rptProMovEntregadoPor: TStringField;
    rptProMovRecibidoPor: TStringField;
    rptProMovidAlmacen: TStringField;
    rptProMovAlmacen: TStringField;
    rptProMovConcepto: TStringField;
    rptProMovNota: TStringField;
    rptProMovConduce: TStringField;
    rptProMovidProMovDet: TGuidField;
    rptProMovDetProMovDet: TStringField;
    rptProMovDetidProducto: TStringField;
    rptProMovDetProducto: TStringField;
    rptProMovDetCantidad: TBCDField;
    rptProMovDetCosto: TBCDField;
    rptProMovcoCompania: TStringField;
    rptProMovcoDireccion: TStringField;
    rptProMovcoTelefono: TStringField;
    rptProMovcoFax: TStringField;
    rptProMovcoRNC: TStringField;
    AGetCentroCosto: TAction;
    rptProMovProdReferencia: TStringField;
    rptProMovDetReferencia: TStringField;
    ProductoActAutoDescuento: TBooleanField;
    ProductoActDescuento: TFloatField;
    ProductoActExistenciaNeg: TBooleanField;
    ProductoActidListaPrecio: TStringField;
    RSDetidCentroCosto: TGuidField;
    RSDetidPartida: TStringField;
    ProductoActidPartida: TStringField;
    Label13: TLabel;
    luDestino: TdxDBLookupEdit;
    cGenEntrada: TADOCommand;
    RSidAlmacenDestino: TStringField;
    Memo1: TMemo;
    ProductoActMinimo: TFloatField;
    ProductoActReorden: TFloatField;
    Label14: TLabel;
    UltimoCierre: TADODataSet;
    Label15: TLabel;
    dxDBEdit12: TdxDBEdit;
    dsUltimoCierre: TDataSource;
    rptProMovOrigenDestino: TStringField;
    rptProMovDetidUnidad: TStringField;
    dxDBEdit11: TdxDBEdit;
    Label16: TLabel;
    dxDBEdit14: TdxDBEdit;
    RSidSuplidor: TIntegerField;
    RSSuplidor: TStringField;
    SuplidorAct: TADODataSet;
    SuplidorActidSuplidor: TAutoIncField;
    SuplidorActNombre: TStringField;
    SuplidorActEstatus: TBooleanField;
    cxDBButtonEdit1: TdxDBButtonEdit;
    invGetReqDet: TADODataSet;
    ARequisicion: TAction;
    invGetReqDetidInvReq: TGuidField;
    invGetReqDetInvReq: TStringField;
    invGetReqDetFecha: TDateTimeField;
    invGetReqDetDepartamento: TStringField;
    invGetReqDetSolicitante: TStringField;
    invGetReqDetReferencia: TStringField;
    invGetReqDetInvReqStatus: TStringField;
    invGetReqDetAutorizado: TBooleanField;
    invGetReqDetAutorizadoPor: TStringField;
    invGetReqDetNota: TStringField;
    invGetReqDetUsuario: TStringField;
    invGetReqDetDetidInvReq: TGuidField;
    invGetReqDetDetidProducto: TStringField;
    invGetReqDetDetProducto: TStringField;
    invGetReqDetDetCantidad: TBCDField;
    invGetReqDetDetidUnidad: TStringField;
    bRequisicion: TwwNavButton;
    dxDBMemo1: TdxDBMemo;
    dxDBCheckEdit2: TdxDBCheckEdit;
    RSidOrdenTrab: TGuidField;
    RSOrdenTrab: TStringField;
    RSidReferencia: TGuidField;
    RSDevolucion: TBooleanField;
    PopupMenu1: TPopupMenu;
    VerProductoDetalle1: TMenuItem;
    GenCodif: TADOCommand;
    spUnidadesSegunBase: TADOStoredProc;
    dsUnidadesSegunBase: TDataSource;
    qryUnidades: TADOQuery;
    dsUnidades: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid: TcxGridDBBandedTableView;
    cxGrididProducto: TcxGridDBBandedColumn;
    cxGridProducto: TcxGridDBBandedColumn;
    cxGridCantidad: TcxGridDBBandedColumn;
    cxGrididUnidad: TcxGridDBBandedColumn;
    cxGridCosto: TcxGridDBBandedColumn;
    cxGridReferencia: TcxGridDBBandedColumn;
    cxGridProMovDet: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    RSContabilizar: TBooleanField;
    RSCompFiscal: TStringField;
    RSidClaseGasto: TStringField;
    RSidOrdenCompra: TGuidField;
    RSOCNumero: TStringField;
    RSFactura: TStringField;
    RSTotalITBIS: TBCDField;
    rsClaseGasto: TADODataSet;
    rsClaseGastoidClasegasto: TStringField;
    rsClaseGastoClaseGasto: TStringField;
    Label21: TLabel;
    luClase: TcxDBLookupComboBox;
    Label22: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label23: TLabel;
    edRef: TcxDBTextEdit;
    Label24: TLabel;
    edValor: TcxDBCurrencyEdit;
    Label17: TLabel;
    dsClase: TDataSource;
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
    ppLabel16: TppLabel;
    ppDBText21: TppDBText;
    ppLine4: TppLine;
    ppLabel1: TppLabel;
    ppDBText7: TppDBText;
    ppDBText17: TppDBText;
    ppDBText8: TppDBText;
    ppLabel2: TppLabel;
    ppLabel8: TppLabel;
    ppDBText6: TppDBText;
    ppDBText18: TppDBText;
    ppDBText22: TppDBText;
    ppLine5: TppLine;
    ppLabel13: TppLabel;
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
    ppSystemVariable1: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppDBText9: TppDBText;
    ppLabel3: TppLabel;
    ppDBText14: TppDBText;
    rptProMovMarca: TStringField;
    rsMovsXRef: TADODataSet;
    rsMovsXRefidPromov: TGuidField;
    ProMovTipoidProMovTipo: TIntegerField;
    ProMovTipoProMovTipo: TStringField;
    ProMovTipoSalida: TBooleanField;
    ProMovTipoUProMovTipoID: TGuidField;
    ProMovTipoidCuenta: TStringField;
    ProMovTipoContador: TStringField;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText19: TppDBText;
    ppLabel5: TppLabel;
    rptProMovSuplidor: TStringField;
    ProductoActCalcExistencia: TBooleanField;
    rsPartidas: TADODataSet;
    rsPartidasidPartida: TStringField;
    rsPartidasPartida: TStringField;
    dsPar: TDataSource;
    cxGridPartida: TcxGridDBBandedColumn;
    UltimoCierreDiaCierre: TDateTimeField;
    UltimoCierreCerradoEn: TDateTimeField;
    dxDBEdit8: TdxDBEdit;
    Label10: TLabel;
    RSHora: TDateTimeField;
    BC: TcxTextEdit;
    CmdleerBC: TADOCommand;
    Button1: TButton;
    RSDetidInvReq: TGuidField;
    RSDetautorizado: TBooleanField;
    cxGridAutorizado: TcxGridDBBandedColumn;
    GenReqSup2Promov: TADOCommand;
    invGetReqDetConduce: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure RSDetValorValidate(Sender: TField);
    procedure RSNewRecord(DataSet: TDataSet);
    procedure RSDetNewRecord(DataSet: TDataSet);
    procedure RSDetBeforePost(DataSet: TDataSet);
    procedure RSDetProMovTipoidValidate(Sender: TField);
    procedure FormDestroy(Sender: TObject);
    procedure RSDetCantidadValidate(Sender: TField);
    procedure RSDetidProductoValidate(Sender: TField);
    procedure AGetProductExecute(Sender: TObject);
    procedure AprintExecute(Sender: TObject);
    procedure AGetCentroCostoExecute(Sender: TObject);
    procedure wwDBLookupCombo1NotInList(Sender: TObject;
      LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure wwDBLookupCombo1DblClick(Sender: TObject);
    procedure RSDetReferenciaValidate(Sender: TField);
    procedure RSDetidCentroCostoValidate(Sender: TField);
    procedure AGuardarExecute(Sender: TObject);
    procedure RSidAlmacenValidate(Sender: TField);
    procedure RSidAlmacenDestinoValidate(Sender: TField);
    procedure RSFechaValidate(Sender: TField);
    procedure RSidSuplidorValidate(Sender: TField);
    procedure cxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure ARequisicionExecute(Sender: TObject);
    procedure VerProductoDetalle1Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1idProductoPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1DBBandedTableView1ReferenciaPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1Enter(Sender: TObject);
    procedure cxGrid1Exit(Sender: TObject);
    procedure RSDetAfterScroll(DataSet: TDataSet);
    procedure RSidProMovTipoValidate(Sender: TField);
    procedure RSSalidaValidate(Sender: TField);
    procedure RSAfterScroll(DataSet: TDataSet);
    procedure cxTextEdit1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure BCPropertiesEditValueChanged(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxGridDblClick(Sender: TObject);
    procedure RSSuplidorChange(Sender: TField);
  private
    FORMATRPT : String;
    PRINTERRPT: string;
    FLoading: Boolean;
    ALMACENDEFAULT : String;
    PrintPreview : string;
    Def_Tipo_MovInv : Integer;
    IdCentroCostoDefault : Variant;
    IdPartidaDefault : String;
    function LocateProducto(idProducto: string): boolean;
    function GetProduct: variant;
    procedure CheckExistencia;
    //function LocateCentroCosto(idCentroCosto, CentroCosto : string): boolean;
    procedure BuscarUltimoCierre();
    Procedure buscarSuplidor();
//    Function UnidadValidad (IdProducto : String; IdUnidad : String) : Boolean;
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

procedure ImprimirSalidasFactura(const idFactura: Variant);

var
  ProMov: TProMov;
 
implementation

uses ProMovFind, Udata, UUtiles, uBusqueda, InvReqFind,
  uProductoFindDX, uProducto, uBusquedaDX, uFullTextSearch, uInvReq;

{$R *.dfm}


procedure TProMov.FormCreate(Sender: TObject);
begin
  FLoading := false;

  FORMATRPT := dm.GetDefaultStr('FMT_RPT_MOV_INV');
  if (FORMATRPT <> '') and (fileexists(FORMATRPT)) then begin
    ProMovRpt.Template.FileName := FORMATRPT;
    ProMovRpt.Template.LoadFromFile;
  end;

  PRINTERRPT := dm.GetDefaultStr('PRINTER_MOV_INV');
  if PRINTERRPT <> '' then
    ProMovRpt.PrinterSetup.PrinterName := PRINTERRPT
  else
    ProMovRpt.PrinterSetup.PrinterName := 'Default';

  PrintPreview := dm.GetDefaultstr('VERPORPANTALLA');

  if (PrintPreview = '1') then begin
    ProMovRpt.DeviceType := 'Screen';
    ProMovRpt.ShowPrintDialog := True;
  end
  else begin
    ProMovRpt.DeviceType := 'Printer';
    ProMovRpt.ShowPrintDialog := False;
  end;

  ALMACENDEFAULT := dm.GetPCSetting('ALMACENDEFAULT');
  if ALMACENDEFAULT = '' then
    ALMACENDEFAULT := dm.GetDefaultStr('ALMACENDEFAULT');
    
  IdCentroCostoDefault := ReturnValue('CentroCosto', 'IdCentroCosto', 'CentroCosto = ' + QuotedStr(dm.GetDefaultStr('CENTROCOSTOVENTA')));
  IdPartidaDefault := dm.GetDefaultStr('PartidaGeneral');
  try
    Def_Tipo_MovInv := dm.GetDefault('Def_Tipo_MovInv');
  except
    raise exception.create('El Tipo de Mov de Almacen por defecto no ha sido configurado');
  end;

  rsPartidas.Open();

  almacen.open;
  promovtipo.open;
  qryUnidades.Open();
  MasterField := 'idProMov';
  DetailField := 'idProMov';
  inherited;
  Modulo := 'Inventario';
  LogField := 'ProMov';
  ImageidField := 'idProMov';
  TipoDoc := 'MOVALM';
  CampodeCierre := 'FECHA'; //nombre del campo de fecha para validar el cierre de operaciones
  spName := '';
  Busqfield := 'idProMov';
  tfBusqueda := TFindProMov;
  OcultarC1 := false;       //oculta la columna 1 en la busqueda
  if not(ds2.dataset.active) then ds2.dataset.open ;
  ProMovTipo.Open;
  rsClaseGasto.Open();
end;


procedure TProMov.newbotonstate;
begin
  inherited;
  salida.enabled := true;
  AGetProduct.Enabled := true;
  AGetCentroCosto.Enabled := true;
  luDestino.Enabled := True;
  aRequisicion.Enabled := false;
  cxGridReadOnly(false, cxGrid);
end;

procedure TProMov.editbotonstate;
begin
  inherited;
  salida.enabled := false;
  AGetProduct.Enabled := true;
  AGetCentroCosto.Enabled := true;
  luDestino.Enabled := True;
  aRequisicion.Enabled := aNuevo.Enabled;
  Aeditar.Enabled := (Aeditar.enabled and (not(rsposteado.Value)));
  cxGridReadOnly(false, cxGrid);
end;

procedure TProMov.browsebotonstate;
begin
  inherited;
  salida.enabled := true;
  AGetProduct.Enabled := false;
  AGetCentroCosto.Enabled := false;
  luDestino.Enabled := False;
  aRequisicion.Enabled := true;
  cxGridReadOnly(true, cxGrid);

  if not(rsidAlmacen.isnull) then begin
    BuscarUltimoCierre();
    if not(ultimocierreDiacierre.isnull) then begin
      if not(rsfecha.asdatetime > ultimocierreDiacierre.AsDateTime) then aEditar.Enabled := false;
      if not(rsfecha.asdatetime > ultimocierreDiacierre.AsDateTime) then aBorrar.Enabled := false;
    end;
  end;
end;

procedure TProMov.UserAutoCodigo;
var
  num: string;
begin
  if rsProMov.IsNull then begin
    Almacen.Locate('idAlmacen',rsIdAlmacen.Value,[]);

    if RSSalida.Value and (Almacen.FieldByName('ContadorSalidas').AsString <> '') then
      num := dm.GetNextCounterStr(Almacen.FieldByName('ContadorSalidas').AsString)
    else if (not rsSalida.Value) and (Almacen.FieldByName('ContadorEntradas').AsString <> '') then
      num := dm.GetNextCounterStr(Almacen.FieldByName('ContadorEntradas').AsString)
    else
      num := dm.GetNextCounterStr ('MOVIMIENTOALM');

    rsProMov.Value := num;
  end;
end;

procedure TProMov.RSDetValorValidate(Sender: TField);
begin
  inherited;
  if sender.Value < 0 then
     Raise exception.Create('El valor no debe ser menor que cero');

end;

procedure TProMov.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  RSidProMov.AsGuid := dm.NewGuid;
  rsidAlmacen.Value := ALMACENDEFAULT;
  //necesita el almacen antes que la fecha para verificar el ultimo cierre
  RSFecha.Value := dm.DBFecha;
  rsHora.Value := dm.DBFechaHora;
  RSidCompania.Value := dm.CompaniaActual();
  RSUsuario.Value := dm.UsuarioActual;
  rsSalida.Value := true;
  rsidProMovTipo.Value := Def_Tipo_MovInv;
  rsPosteado.Value := false;
  rsDevolucion.value := false;
end;

procedure TProMov.RSDetNewRecord(DataSet: TDataSet);
var
  unidad: string;
begin
  inherited;
  RSDetidProMovDet.AsGuid := dm.NewGuid;
  RSDetCantidad.value := 1;
  RSDetCosto.value := 0;
  RSDetPosteado.Value := false;
  unidad :=  dm.GetDefaultStr('Def.UNIDAD.Prod');
  if unidad <> '' then
    rsdetidunidad.Value := dm.GetDefaultStr('Def.UNIDAD.Prod');
  rsdetlinea.Value := rsdet.RecordCount;
  If (RSSalida.Value) And (IdCentroCostoDefault <> '') And (RSidAlmacenDestino.AsVariant = Null) Then
   begin
    RSDetidCentroCosto.Value := IdCentroCostoDefault;
    RsDetidPartida.Value := IdPartidaDefault;
   end;
end;

procedure TProMov.RSDetBeforePost(DataSet: TDataSet);
begin
  inherited;
  if rsdetidproducto.IsNull then
    raise exception.Create('Debe seleccionar un codigo de producto');

//  if ((rsSalida.Value) and (rsdetidCentroCosto.IsNull) And (RSidAlmacenDestino.IsNull)) then
 //   raise exception.Create('Debe seleccionar un centro de costo valido en las salidas de almacen');
end;

procedure TProMov.RSDetProMovTipoidValidate(Sender: TField);
begin
  inherited;
  if not(ProMovTipo.Locate('ProMovTipoID',Sender.Value,[])) then
     raise exception.Create('Tipo de movimiento incorrecto');
end;

procedure TProMov.FormDestroy(Sender: TObject);
begin
  inherited;
  ProMovTipo.Close;
end;

procedure TProMov.RSDetCantidadValidate(Sender: TField);
begin
  inherited;
  if rsdetcantidad.value <= 0 then
     Raise exception.Create('La cantidad no debe ser cero');

// poner el costo temporalmente
  if (rsSalida.AsBoolean) and (LocateProducto(rsDetidProducto.AsString)) then
  begin
    CheckExistencia();
  end;
end;

procedure TProMov.CheckExistencia();
begin
  if (not rsdetidProducto.IsNull)
      and LocateProducto(rsdetidProducto.value)
      and (not rsdetcantidad.isnull)
      and (rsdetcantidad.Value > 0) then begin
      if (ProductoActcalcExistencia.Value) and (Not ProductoActExistenciaNeg.Value) and (rsdetCantidad.Value > ProductoActExistencia.Value) then
         raise exception.create('La existencia del producto es menor que la requerida')
  end;

  rsDetCosto.Value := rsDetCantidad.AsFloat * ProductoActCostoPromedio.AsCurrency;
  if (ProductoActMinimo.value >= 0) and ((ProductoActExistencia.Value-rsdetCantidad.Value) <= ProductoActMinimo.value) then begin
    if not(memo1.Lines.IndexOf('['+ProductoActidProducto.value+'] SE ENCUENTRA EN MINIMO CRITICO')>=0) then
      Memo1.Lines.Add('['+ProductoActidProducto.value+'] SE ENCUENTRA EN MINIMO CRITICO')
  end else begin
    if (ProductoActMinimo.value >= 0) and ((ProductoActExistencia.Value-rsdetCantidad.Value) <= ProductoActReorden.value) then
      if not(memo1.Lines.IndexOf('['+ProductoActidProducto.value+'] SE ENCUENTRA EN NIVEL DE REORDEN')>=0) then
      Memo1.Lines.Add('['+ProductoActidProducto.value+'] SE ENCUENTRA EN NIVEL DE REORDEN');
  end;
end;


Function TProMov.LocateProducto(idProducto : string): boolean;
begin
  if rsidAlmacen.IsNull then
    raise exception.create('Debe seleccionar el almacen antes de ingresar los productos');

  if (ProductoAct.active) and (ProductoActidProducto.value = idProducto) then
  begin
    Result := true;
    exit;
  end
  else
  begin
    ProductoAct.Parameters[1].value := idProducto;
    ProductoAct.Parameters[2].value := Null;
    ProductoAct.Parameters[3].value := rsidAlmacen.value;
    ProductoAct.Parameters[4].value := Null;
    productoAct.Close;
    productoAct.Open;
  end;
  Result := not(ProductoAct.isempty);
end;

{Function TProMov.LocateCentroCosto(idCentroCosto, CentroCosto : string): boolean;
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
 }

procedure TProMov.RSDetidProductoValidate(Sender: TField);
begin
  inherited;
  if LocateProducto(sender.value) then
  begin
    rsdetCosto.value    := 0;
    rsdetProducto.value := ProductoActProducto.AsString;
    rsdetidUnidad.Value := ProductoActidUnidad.Value;
    rsdetidPartida.Value := ProductoActidPartida.Value;
  end
  else
     raise exception.create('Producto invalido');

  if rsSalida.AsBoolean then
    CheckExistencia();

end;

procedure TProMov.DoShowstate;
begin
  inherited;
  {
  If (ShowState = showInsert) and (not(rsidOrdComp.IsNull)) and (not(rsidConduce.IsNull)) and (appestado = appInsert) then
  begin
    PromovGetDetConduce.Parameters[1].Value := rsidConduce.value;
    if PromovGetDetConduce.active then PromovGetDetConduce.requery() else PromovGetDetConduce.Open;
    if not(PromovGetDetConduce.IsEmpty) then
    begin
       while not(PromovGetDetConduce.eof) do
       begin
         rsdet.Append;
         rsdetidProducto.Value := PromovGetDetConduceidProducto.Value;
         rsdetCantidad.Value   := PromovGetDetConduceCantidad.Value;
         rsdetProducto.Value   := PromovGetDetConduceProducto.Value;
         rsdetidUnidad.Value   := PromovGetDetConduceidUnidad.Value;
         PromovGetDetConduce.Next;
       end;
    end;
    PromovGetDetConduce.Close;
  end;
  }
end;

procedure TProMov.AGetProductExecute(Sender: TObject);
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

function TProMov.GetProduct() : variant;
var
  idprodres : variant;
begin
  inherited;

  idprodres := fbuscar(TProductoFindDX,'idProducto');

  if idprodres = Null then
    result := ''
  else
    result := idprodres;

end;



procedure TProMov.AprintExecute(Sender: TObject);
begin
  inherited;
  rptProMov.Close;
  rptProMov.Parameters[1].value := rsidProMov.Value;
  rptProMov.Open;
  ProMovRPT.Print;
end;

procedure TProMov.AGetCentroCostoExecute(Sender: TObject);
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


procedure TProMov.wwDBLookupCombo1NotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
  inherited;
   accept := false;

end;

procedure TProMov.wwDBLookupCombo1DblClick(Sender: TObject);
begin
  inherited;
    if AGetCentroCosto.Enabled then
       AGetCentroCosto.Execute;

end;

procedure TProMov.RSDetReferenciaValidate(Sender: TField);
var
  desc : string;
  idcc : variant;
begin
  inherited;
  if not floading then begin
    if Sender.AsString = '' then
      rsDetidCentroCosto.Clear()
    else begin
      dm.validarcentrocosto(sender.Value, desc, idcc);
      if rsdetidCentroCosto.Value <> idcc then
        rsdetidCentroCosto.Value := idcc;
    end;
  end;
end;


procedure TProMov.RSDetidCentroCostoValidate(Sender: TField);
var
  desc, cc : string;
begin
  inherited;
  if rsDetIdCentroCosto.IsNull then
    Exit;

  dm.ValidarCentroCosto(sender.value, desc, CC, true);
 floading := true;
 if rsdetReferencia.Value <> cc then
    rsdetReferencia.Value := cc;
 floading := false;
end;

procedure TProMov.AGuardarExecute(Sender: TObject);
begin

if not(rsFactura.IsNull) then begin
  rsDet.First;
  while not(rsDet.eof) do  begin
   if  (rsDetAutorizado.value=True )  then begin
    with GenReqSup2Promov do begin
      Parameters[1].Value := rsDetidInvReq.Value;
      rsDetreferencia.Value;
      Execute();
    end ;
   end   else raise exception.create('Todos los producto deben estar Autorizado')  ;
  rsDet.Next;
 end;
 end;

  inherited;

  // la codificacion contable y de gastos debe generarse al hacer el cierre de inventarios
  if (RSSalida.AsBoolean) and (not(RSidAlmacenDestino.IsNull)) then begin
    with cGenEntrada do begin
      Parameters[1].Value := RSidProMov.Value;
      Parameters[2].Value := rsIdAlmacenDestino.Value;
      Execute();
    end;
  end;


end;
//id, idcent, desc, part, doc, ref, tipo, nota, uni : string; fec : tdatetime; cant, gast : double
procedure TProMov.RSidAlmacenValidate(Sender: TField);
begin
  inherited;
  if not(rsdet.IsEmpty) then
    raise exception.create('No puede cambiar el almacen despues de tener productos seleccionados');

  if sender.IsNull then
    raise exception.create('Debe seleccionar un almacen');

  BuscarUltimoCierre();
end;

procedure TProMov.BuscarUltimoCierre();
begin
  inherited;
//  if rsidAlmacen.isnull  then
//    raise exception.create('El almacen debe ser seleccionado');

//  if UltimoCierre.parameters[1].value <> rsidalmacen.value then begin
    UltimoCierre.Close;
//    UltimoCierre.parameters[1].value := rsidAlmacen.value;
    UltimoCierre.Open;
//  end;
end;

procedure TProMov.RSidAlmacenDestinoValidate(Sender: TField);
begin
  inherited;
  if rsidAlmacenDestino.Value = rsidAlmacen.Value then
    raise exception.Create('No puede hacer una transferencia al mismo almacen');

  If rsidAlmacenDestino.Value <> Null Then
  With rsDet Do
  Begin
    If Not IsEmpty Then
    Begin
      If (State In dsEditModes) Then
        rsDet.Cancel;
{      If RSSalida.Value Then
        rsSalida.Value := False;}
      First;
      While Not Eof Do
      Begin
        Edit;
        RSDetidCentroCosto.Clear;
        Post;
        Next;
      End;
    End;
  End;
end;

procedure TProMov.RSFechaValidate(Sender: TField);
begin
  inherited;
  if (not(sender.isnull)) and (not(UltimoCierreDiaCierre.isnull)) then
    if sender.value <= UltimoCierreDiaCierre.value then
      raise exception.create('No puede ingresar un movimiento de almacen para un periodo cerrado');

end;

Procedure TProMov.buscarSuplidor();
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

procedure TProMov.RSidSuplidorValidate(Sender: TField);
begin
  inherited;
  BuscarSuplidor
end;

procedure TProMov.cxDBButtonEdit1ButtonClick(Sender: TObject;
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

procedure TProMov.ARequisicionExecute(Sender: TObject);
var
  x : variant;
begin
  inherited;
  InvGetReqDet.close;
  x := fbuscar(TFindInvReq, 'idInvReq');
  if x <> Null then begin
    //buscar los datos para crear la nueva salidad de almacen
    InvGetReqDet.Parameters[1].value := x;
    InvGetReqDet.Open;
    If not(InvGetReqDet.IsEmpty)  then  begin
       aNuevo.Execute;  // nuevo record
       rsSalida.value := false;
       rsreferencia.Value := InvGetReqDetInvReq.Value;
       rsConcepto.value := 'Requisicion Numero ' + InvGetReqDetInvReq.Value + ' Solicitado por ' + InvGetReqDetsolicitante.value;
       while not(InvGetReqDet.eof) do  begin
           rsdet.Append;
           rsdetidProducto.Value := InvGetReqDetDetidProducto.Value;
           rsdetCantidad.Value   := InvGetReqDetDetCantidad.Value;
           rsdetProducto.Value   := InvGetReqDetDetProducto.Value;
           rsdetidUnidad.Value   := InvGetReqDetDetidUnidad.Value;
           InvGetReqDet.Next;
       end;
    end;
    InvGetReqDet.Close;
  end;
end;


procedure TProMov.VerProductoDetalle1Click(Sender: TObject);
begin
  inherited;
  if not(rsdetidproducto.isnull) then
    Modalshow(TProducto, showfind, rsdetidproducto.value, 'idproducto', true);
end;

procedure TProMov.cxGrid1DBBandedTableView1idProductoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if not (appEstado in [appinsert, appedit]) then
    abort;

  if AGetProduct.Enabled then
    AGetProduct.Execute;

end;

procedure TProMov.cxGrid1DBBandedTableView1ReferenciaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if not (appEstado in [appinsert, appedit]) then
    abort;

  if AGetCentroCosto.Enabled then
    AGetCentroCosto.Execute;
end;

procedure TProMov.cxGrid1Enter(Sender: TObject);
begin
  inherited;
  if appestado <> appbrowse then
    if rsdet.IsEmpty then
      rsdet.Append;

  Enter2Tab := False;
end;

procedure TProMov.cxGrid1Exit(Sender: TObject);
begin
  inherited;
  Enter2Tab := True;
end;

procedure TProMov.RSDetAfterScroll(DataSet: TDataSet);
begin
  inherited;
//  FillUnits(rsDetIdProducto.Value);
end;

{
function TProMov.UnidadValidad(IdProducto, IdUnidad: String): Boolean;
begin
  With spUnidadesSegunBase, Parameters Do
  Begin
    Close();
    ParamByName('@IdProducto').Value := IdProducto;
    Open();
    If IsEmpty Then
      Result := False
    Else
      Result := Locate('IdUnidad', IdUnidad, []);
  End;

end;
}
procedure ImprimirSalidasFactura(const idFactura: Variant);
begin
  with TProMov.Create(Application) do begin
    try
      with rsMovsXRef do begin
        Close();
        Parameters[0].Value := idFactura;
        Open();

        ProMovRpt.DeviceType := 'Printer';
        ProMovRpt.ShowPrintDialog := False;
        while not Eof do begin
          rptProMov.Close;
          rptProMov.Parameters[1].value := rsMovsXRefidProMov.Value;
          rptProMov.Open;
          ProMovRPT.Print;
          Next();
        end;
      end;
    finally
      Release();
    end;
  end;
end;

procedure TProMov.RSidProMovTipoValidate(Sender: TField);
begin
  inherited;
  if ProMovTipo.Locate('idPromovTipo',RSidProMovTipo.Value,[]) then begin
    if RSSalida.Value <> PromovTipoSalida.Value then
      rsSalida.Value := PromovTipoSalida.Value;
  end;
end;

procedure TProMov.RSSalidaValidate(Sender: TField);
begin
  inherited;
  cxGridReferencia.Visible := rsSalida.Value;
  cxGridPartida.visible := rsSalida.Value ;
end;

procedure TProMov.RSAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if RS.Active then
    cxGridReferencia.Visible := RSSalida.Value;
    cxGridPartida.visible := rsSalida.Value ;
end;

procedure TProMov.cxTextEdit1PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;

   if BC.Text ='' then exit;


   if LocateProducto(Bc.Text)= false then raise Exception.create('Este Producto no Existe') ;

   if rsdet.locate('idProducto',BC.text,[]) then
   begin
        rsdet.Edit;
        rsdetCantidad.Value := rsdetCantidad.Value + 1 ;
   end
   else
   begin
     rsdet.append;
     rsdetidProducto.Value := Bc.Text;
   end;
   rsdet.post;
  
   Bc.SetFocus;

  
end;

procedure TProMov.BCPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  Bc.Text :='';

end;

procedure TProMov.Button1Click(Sender: TObject);
 begin
  inherited;
    if not(rsFactura.IsNull) then begin
    InvGetReqDet.close;
    InvGetReqDet.Parameters[2].value := rsidSuplidor.Value;
    InvGetReqDet.Open;
    If not(InvGetReqDet.IsEmpty) and (rsDet.IsEmpty)  then  begin
       aNuevo.Execute;  // nuevo record
       rsSalida.value := false;
       rsidProMovTipo.Value := 8;
       //rsreferencia.Value := InvGetReqDetInvReq.Value;
       //rsConcepto.value := 'Requisicion Numero ' + InvGetReqDetInvReq.Value + ' Solicitado por ' + InvGetReqDetsolicitante.value;
       while not(InvGetReqDet.eof) do  begin
           rsdet.Append;
           rsdetidProducto.Value := InvGetReqDetDetidProducto.Value;
           rsdetCantidad.Value   := InvGetReqDetDetCantidad.Value;
           rsdetProducto.Value   := InvGetReqDetDetProducto.Value;
           rsdetidUnidad.Value   := InvGetReqDetDetidUnidad.Value;
           rsdetidInvReq.Value   := InvGetReqDetidInvReq.Value;
           rsdetAutorizado.Value := InvGetReqDetAutorizado.Value;
           rsdetPromovDet.Value  := 'Req: '+InvGetReqDetInvReq.Value+' Cond: '+InvGetReqDetConduce.Value;
           InvGetReqDet.Next;
       end;
    end;
    InvGetReqDet.Close;
  end
  else showmessage('Debe agregar los datos del Suplidor y la CXP ');
  end ;

procedure TProMov.cxGridDblClick(Sender: TObject);
begin
  inherited;
      Modalshow(TInvReq, showfind, rsdetidInvReq.value, 'idInvReq', true);
      
end;

procedure TProMov.RSSuplidorChange(Sender: TField);
begin
  inherited;
   rsDet.Requery();
end;

end.




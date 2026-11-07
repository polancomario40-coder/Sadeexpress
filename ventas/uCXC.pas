unit uCXC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformmant1, DB, ADODB, ActnList, ImgList, Wwdatsrc,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, StdCtrls, dxExEdtr,
  dxEdLib, dxDBELib, dxCntner, dxEditor, dxDBEdtr, kbmMemTable, dxDBTLCl,
  dxGrClms, dxDBCtrl, dxDBGrid, dxTL, ComCtrls, ppProd, ppClass, ppReport, cxMemo,
  ppDB, ppComm, ppRelatv, ppDBPipe, ppCtrls, ppPrnabl, ppVar, ppBands,
  ppCache, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,Math,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxButtonEdit, cxCurrencyEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxClasses,
  cxGridLevel, cxGrid, uCodifCtas, ppParameter, cxCalendar, cxDBEdit,
  ppDesignLayer;

const
  COUNTER_NDB = 'ND';
  COUNTER_NCR = 'NC';

type
  TCXC = class(Tfformmant1)
    RSidCxc: TGuidField;
    RSCxc: TStringField;
    RSidCliente: TIntegerField;
    RSidTipoDocumento: TStringField;
    RSidDocumento: TStringField;
    RSValor: TBCDField;
    RSFecha: TDateTimeField;
    RSConcepto: TStringField;
    RSidCxcTipo: TIntegerField;
    RSesCredito: TBooleanField;
    RSCancelado: TBooleanField;
    tabInfoECF: TTabSheet;
    LabelEcfStatus1: TLabel;
    LabelCodSeguridad1: TLabel;
    edEcfStatus1: TcxDBTextEdit;
    edCodSeguridad1: TcxDBTextEdit;
    mmoUltError1: TcxDBMemo;
    dsEcfStatus: TDataSource;
    btnRefrescarECF: TButton;
    bSendECF: TButton;
    RSReferencia: TGuidField;
    ClienteAct: TADODataSet;
    ClienteActidCliente: TIntegerField;
    ClienteActCliente: TStringField;
    ClienteActContacto: TStringField;
    ClienteActLimiteCredito: TBCDField;
    ClienteActActivo: TBooleanField;
    ClienteActidEmpleado: TIntegerField;
    ClienteActDireccion: TStringField;
    ClienteActSector: TStringField;
    ClienteActCiudad: TStringField;
    ClienteActTelefono: TStringField;
    ClienteActNoPagaItbis: TBooleanField;
    dxDBEdit1: TdxDBEdit;
    RSCliente: TStringField;
    RSUsuario: TStringField;
    Tipos: TADODataSet;
    TiposidCxcTipo: TIntegerField;
    TiposCxcTipo: TStringField;
    TiposesCredito: TBooleanField;
    TiposCC: TStringField;
    dsTipos: TwwDataSource;
    rsDet: TADODataSet;
    rsDetidCXCDet: TGuidField;
    rsDetidCXC: TGuidField;
    rsDetidCXCDebito: TGuidField;
    rsDetAplicado: TBCDField;
    rsDetAplicadoOtros: TBCDField;
    rsDetDocumento: TStringField;
    rsDetidTipoDocumento: TStringField;
    rsDetFechaDoc: TDateTimeField;
    rsDetTotalDoc: TBCDField;
    rsDetBalance: TBCDField;
    mDet: TkbmMemTable;
    dsDet: TDataSource;
    cGuardarDet: TADOCommand;
    rsDetFechaAplicado: TDateTimeField;
    Detalle: TPageControl;
    documentos: TTabSheet;
    Creditos: TTabSheet;
    grDetalle: TdxDBGrid;
    grDetalleDocumento: TdxDBGridMaskColumn;
    grDetalleFechaDoc: TdxDBGridDateColumn;
    grDetalleidTipoDocumento: TdxDBGridMaskColumn;
    grDetalleTotalDoc: TdxDBGridCurrencyColumn;
    grDetalleBalance: TdxDBGridCurrencyColumn;
    Label10: TLabel;
    dxDBEdit3: TdxDBEdit;
    Label4: TLabel;
    edTotalApp: TdxCurrencyEdit;
    Label7: TLabel;
    edTotalPend: TdxCurrencyEdit;
    dxDBGrid1: TdxDBGrid;
    rsDetCreditos: TADODataSet;
    rsDetCreditosTipo: TStringField;
    rsDetCreditosDocumento: TStringField;
    rsDetCreditosMontoAplicado: TBCDField;
    rsDetCreditosFechaAplicado: TDateTimeField;
    dsdetcreditos: TDataSource;
    rsDetCreditosidCxcDet: TGuidField;
    dxDBGrid1Tipo: TdxDBGridMaskColumn;
    dxDBGrid1Documento: TdxDBGridMaskColumn;
    dxDBGrid1MontoAplicado: TdxDBGridCurrencyColumn;
    dxDBGrid1FechaAplicado: TdxDBGridDateColumn;
    dxDBGrid1idCxcDet: TdxDBGridColumn;
    RSDescuento: TBCDField;
    RSTotal: TBCDField;
    rsDetDescuento: TBCDField;
    grDetalleFechaAplicado: TdxDBGridDateColumn;
    RSCondicion: TIntegerField;
    RSVencimiento: TDateTimeField;
    RPTCxc: TADODataSet;
    dsRPTCxc: TDataSource;
    CxcRPT: TppReport;
    RPTCxcidCxc: TGuidField;
    RPTCxcCxc: TStringField;
    RPTCxcidCliente: TIntegerField;
    RPTCxcidTipoDocumento: TStringField;
    RPTCxcValor: TBCDField;
    RPTCxcFecha: TDateTimeField;
    RPTCxcConcepto: TStringField;
    RPTCxcidCxcTipo: TIntegerField;
    RPTCxcesCredito: TBooleanField;
    RPTCxcCancelado: TBooleanField;
    RPTCxcReferencia: TGuidField;
    RPTCxcCliente: TStringField;
    RPTCxcUsuario: TStringField;
    RPTCxcidDocumento: TStringField;
    RPTCxcDescuento: TBCDField;
    RPTCxcTotal: TBCDField;
    RPTCxcCondicion: TIntegerField;
    RPTCxcVencimiento: TDateTimeField;
    RPTCxcidCxcDet: TGuidField;
    RPTCxcAplicadoValor: TBCDField;
    RPTCxcAplicacionFecha: TDateTimeField;
    RPTCxcAplicadoDescuento: TBCDField;
    RPTCxcAplicadoTotal: TBCDField;
    RPTCxcDebitoidCxc: TGuidField;
    RPTCxcDebitoCxc: TStringField;
    RPTCxcDebitoidTipoDoc: TStringField;
    RPTCxcDebitoValor: TBCDField;
    RPTCxcDebitoFecha: TDateTimeField;
    RPTCxcDebitoConcepto: TStringField;
    RPTCxccompania: TStringField;
    RPTCxcdireccion: TStringField;
    RPTCxctelefono: TStringField;
    RPTCxcfax: TStringField;
    RPTCxcrnc: TStringField;
    plRPTCxc: TppDBPipeline;
    bimprimir: TwwNavButton;
    RSidMoneda: TIntegerField;
    bAnular: TwwNavButton;
    AnularCxc: TADOCommand;
    HeaderPanel: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label21: TLabel;
    cod: TdxDBEdit;
    dxDBEdit2: TcxDBDateEdit;
    Credito: TdxDBCheckEdit;
    FindCliente: TButton;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit11: TdxDBEdit;
    Tipo: TdxDBLookupEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
    dxDBCurrencyEdit1: TdxDBCurrencyEdit;
    dxDBCurrencyEdit2: TdxDBCurrencyEdit;
    dxDBCurrencyEdit3: TdxDBCurrencyEdit;
    dxDBPickEdit1: TdxDBPickEdit;
    Vencimiento: TdxDBDateEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxDBCheckEdit1: TdxDBCheckEdit;
    Label26: TLabel;
    dxDBEdit21: TdxDBEdit;
    Label16: TLabel;
    cxDBButtonEdit1: TcxDBButtonEdit;
    cxDBTextEdit1: TcxTextEdit;
    RSFechaCancelado: TDateTimeField;
    RSCompFiscal: TStringField;
    Label14: TLabel;
    dxDBEdit5: TdxDBEdit;
    rsDetidMoneda: TIntegerField;
    rsDetTipo: TWordField;
    mDetidCXCDet: TGuidField;
    mDetidCXC: TGuidField;
    mDetidCXCDebito: TGuidField;
    mDetAplicado: TBCDField;
    mDetAplicadoOtros: TBCDField;
    mDetDocumento: TStringField;
    mDetidTipoDocumento: TStringField;
    mDetidMoneda: TIntegerField;
    mDetFechaDoc: TDateTimeField;
    mDetTotalDoc: TBCDField;
    mDetFechaAplicado: TDateTimeField;
    mDetTipo: TWordField;
    mDetDescuento: TBCDField;
    mDetBalance: TBCDField;
    rsDetMoneda: TStringField;
    mDetMoneda: TStringField;
    grDetalleMoneda: TdxDBGridColumn;
    RPTCxcCompFiscal: TStringField;
    RPTCxcCxcTipo: TStringField;
    rsCtasCliente: TADODataSet;
    rsCtasClienteidCuentaCredito: TStringField;
    rsCtasClienteidCuentaContado: TStringField;
    ClienteActDescuento: TFloatField;
    ClienteActFax: TStringField;
    ClienteActeMail: TStringField;
    ClienteActidListaPrecio: TStringField;
    ClienteActCondicion: TIntegerField;
    ClienteActidCuenta: TStringField;
    ClienteActidAuxiliar: TStringField;
    ClienteActRNC_Cedula: TStringField;
    ClienteActidCondicion: TStringField;
    ClienteActNotas: TStringField;
    ClienteActIdMoneda: TIntegerField;
    TiposInterno: TBooleanField;
    TabSheet2: TTabSheet;
    frCodifCtas1: TfrCodifCtas;
    RPTCxcMoneda: TStringField;
    RPTCxcMonedaFact: TStringField;
    dxDBLookupEdit2: TdxDBLookupEdit;
    Label15: TLabel;
    dsClienteObra: TDataSource;
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
    RSidClienteObra: TStringField;
    mDetClienteObra: TStringField;
    rsDetidClienteObra: TStringField;
    rsDetClienteObra: TStringField;
    mDetidClienteObra: TStringField;
    grDetalleClienteObra: TdxDBGridColumn;
    ppTitleBand1: TppTitleBand;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLine3: TppLine;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel1: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLine4: TppLine;
    ppLabel7: TppLabel;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    hh: TppHeaderBand;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    dd: TppDetailBand;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText26: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    ppSystemVariable2: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLabel8: TppLabel;
    ppLine5: TppLine;
    ppLabel9: TppLabel;
    ppDBText27: TppDBText;
    RPTCxcDebitoNCF: TStringField;
    grDetalleColumn11: TdxDBGridCurrencyColumn;
    grDetalleColumn12: TdxDBGridCurrencyColumn;
    grDetalleColumn13: TdxDBGridColumn;
    RSTasa: TFloatField;
    rsDetTasa: TFloatField;
    mDetTasa: TFloatField;
    RScomputer: TStringField;
    RPTCxcSUCURSARDireccion: TStringField;
    RPTCxcSUCURSARLTelefono: TStringField;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    dsBalance: TDataSource;
    rsDatosEstado: TADODataSet;
    rsDatosEstadoBalance: TBCDField;
    rsDatosEstadoFecUltCargo: TDateTimeField;
    rsDatosEstadoRefUltCargo: TStringField;
    rsDatosEstadoTipoUltCargo: TStringField;
    rsDatosEstadoMtoUltCargo: TBCDField;
    rsDatosEstadoFecUltPago: TDateTimeField;
    rsDatosEstadoRefUltPago: TStringField;
    rsDatosEstadoMtoUltPago: TBCDField;
    rsDatosEstadoPorDist: TBCDField;
    rsDatosEstadoidCliente: TIntegerField;
    rsDatosEstadoAbono: TBCDField;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppLabel21: TppLabel;
    ppLabel20: TppLabel;
    RPTCxcBalance: TFloatField;
    RPTCxcitbi: TBCDField;
    RPTCxcCompFiscalAplica: TStringField;
    RPTCxcQrUrl: TStringField;
    RPTCxcCodigoSeguridadEcf: TStringField;
    RPTCxcFechaFirmaDigital: TDateTimeField;
    RPTCxcncfModificado: TStringField;
    procedure FindClienteClick(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure RSidClienteValidate(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure RSNewRecord(DataSet: TDataSet);
    procedure RSesCreditoValidate(Sender: TField);
    procedure CreditoClick(Sender: TObject);
    procedure RSAfterScroll(DataSet: TDataSet);
    procedure mDetAfterPost(DataSet: TDataSet);
    procedure RSValorValidate(Sender: TField);
    procedure AGuardarExecute(Sender: TObject);
    procedure mDetBeforeEdit(DataSet: TDataSet);
    procedure mDetAplicadoValidate(Sender: TField);
    procedure dxDBEdit6DblClick(Sender: TObject);
    procedure mDetDescuentoValidate(Sender: TField);
    procedure rsCuentaDetBeforeInsert(DataSet: TDataSet);
    procedure AprintExecute(Sender: TObject);
    procedure AAnularExecute(Sender: TObject);
    procedure RSidMonedaValidate(Sender: TField);
    procedure RSFechaValidate(Sender: TField);
    procedure mDetFechaAplicadoValidate(Sender: TField);
    procedure ACancelarExecute(Sender: TObject);
    procedure ALocalizarExecute(Sender: TObject);
    procedure RPTCxcCalcFields(DataSet: TDataSet);
    procedure SendEcf(Silencioso: Boolean);
    procedure bSendECFClick(Sender: TObject);
    procedure btnRefrescarECFClick(Sender: TObject);
  private
    FTotalAplicado: Currency;
    FTotalPendiente: Currency;
    FLoading: Boolean;
    FAplicadoAnt: Currency;
    procedure CalcularTotal;
    procedure SetAplicado(const Value: Currency);
    procedure SetPendiente(const Value: Currency);
    procedure MostrarDetalle(const Mostrar: Boolean);
    procedure CxcTiposList(const esCredito, Fijo: boolean);
    procedure ActualizarTasa;
    procedure ValidarAplicacion;
    procedure GenerarCodificacion;
    function BuscarCtaCliente(const idCliente, idMoneda: Integer): string;
    procedure SetCodificacion;
  private
    function MostrarCliente(idCliente: Integer): integer;
    { Private declarations }
    procedure CargarDetalle;
    procedure GuardarDetalle;
    procedure CargarCuentas;
    procedure GuardarCuentas;
    property TotalAplicado: Currency read FTotalAplicado write SetAplicado;
    property TotalPendiente: Currency read FTotalPendiente write SetPendiente;

  public
    { Public declarations }
    procedure UserAutoCodigo; override;
    procedure browsebotonstate; override;
    procedure editbotonstate; override;
    procedure newbotonstate; override;
  end;

var
  CXC: TCXC;
  COMPUTER : string;

implementation

uses Udata, udgiidm, uBusqueda, uCliente, UUtiles, CxCFind, FacturaFind;

{$R *.dfm}

procedure TCXC.FindClienteClick(Sender: TObject);
var
  x : variant;
begin
  inherited;
  x := fbuscar(TBusqueda,'idCliente',false,'FindCliente');
  if x <> Null then
  begin
    RSidCliente.Value := x;
  end;
  ClienteObra.Parameters[1].Value := rsidCliente.Value;
     ClienteObra.Close ;
     ClienteObra.Open;
end;

Function TCXC.MostrarCliente(idCliente : Integer): integer;
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


procedure TCXC.RSidClienteValidate(Sender: TField);
var
  x : integer;
begin
  inherited;
    if sender.IsNull then
    begin
       exit;
    end;
    x := MostrarCliente(sender.AsInteger);

    if x = -1 then
    begin
       raise Exception.create('Este cliente no existe');
       //rsCliente.Clear;
    end
    else begin
      rsCliente.Value := ClienteActCliente.AsString;
      if ClienteActIdMoneda.AsInteger > 0 then
        RSidMoneda.Value := ClienteActIdMoneda.Value;
    end;
    CargarDetalle();
    GenerarCodificacion();
end;

procedure TCXC.GenerarCodificacion();
var
  debcre : integer;
  credeb : integer;
begin
  inherited;

  frCodifCtas1.BorrarAutomaticas;

  SetCodificacion();

  if (rsidCliente.IsNull)  or (rsValor.IsNull) or (rsidmoneda.isnull) or (rsValor.ascurrency = 0) then
    exit;

  if rsescredito.value then begin
    debcre := 2;
    credeb := 1;
  end else begin
    debcre := 1;
    credeb := 2;
  end;

  frCodifCtas1.AgregarLinea(BuscarCtaCliente(rsidCliente.Value,rsIdMoneda.Value), '', debcre, rsvalor.value, true);


  if (Tipos.Locate('idCxcTipo', rsidCxcTipo.Value,[])) and (not(TiposCC.value = '')) then begin
    frCodifCtas1.AgregarLinea(TiposCC.Value, '', credeb, rsvalor.value, true);
  end;
end;

procedure TCXC.SetCodificacion();
begin
  frCodifCtas1.idMoneda := rsidmoneda.value;
  frCodifCtas1.tasa := rstasa.value;
  frCodifCtas1.Referencia := rscxc.value;
  frCodifCtas1.TipoDocumento := rsidTipoDocumento.value;
  frCodifCtas1.Tipo := 'COSTO';
  frCodifCtas1.Fecha := rsFecha.value;
end;


function TCXC.BuscarCtaCliente(const idCliente,
  idMoneda: Integer): string;
begin
  Result := '';

  with rsCtasCliente do begin
    Close();
    Parameters[1].Value := idCliente;
    Parameters[2].Value := idMoneda;
    Open();
    if not Eof then
      Result := rsCtasClienteIdCuentaCredito.Value;
  end;
end;




procedure TCXC.FormCreate(Sender: TObject);
begin
  inherited;
  computer := ComputerName();
  grDetalleClienteObra.Visible := dm.GetDefaultStr('USAR_SUBCLIENTES') = '1';

  Modulo := 'Venta';
  LogField := 'CxC';
  TipoDoc := 'CXC';
  ImageidField := 'idCxC';
  //CampodeCierre := ''; //nombre del campo de fecha para validar el cierre de operaciones
  spName := '';
  Busqfield := 'idCXC';
  tfBusqueda := TFindCxc;
  OcultarC1 := false;       //oculta la columna 1 en la busqueda

  if not(Tipos.Active)
    then Tipos.open ;
  FLoading := False;
  FAplicadoAnt := 0;
  ClienteObra.Parameters[1].Value := null;
  if ClienteObra.Active then ClienteObra.Requery() else ClienteObra.Open;
  if bSendECF = nil then
  begin
    bSendECF := TButton.Create(Self);
    bSendECF.Name := 'bSendECF';
    bSendECF.Parent := tabInfoECF;
    bSendECF.Left := 16;
    bSendECF.Top := 150;
    bSendECF.Width := 120;
    bSendECF.Height := 25;
    bSendECF.Caption := 'Enviar ECF';
    bSendECF.TabOrder := 4;
    bSendECF.OnClick := bSendECFClick;
  end;
end;

procedure TCXC.browsebotonstate;
begin
  inherited;
  // no tomar en cuenta fecha de cierre para el status del boton editar
  //AEditar.enabled := (not(ds.dataset.IsEmpty) and  (dm.TienePermisoShow(pEditar, permisos)));
  Credito.Enabled := False;
//  grDetalle.Enabled := true;

  frCodifCtas1.isReadOnly :=true;
  HeaderPanel.Enabled := true;
end;

procedure TCXC.editbotonstate;
begin
  inherited;
  frCodifCtas1.isReadOnly := false;
  Credito.Enabled := False;
  //grDetalle.Enabled := True;

  if (rsidtipodocumento.Value = 'ND') or (rsidtipodocumento.Value = 'NC') then
    Tipo.Enabled := true
  else
    Tipo.Enabled := false;

//  if ((CampodeCierre <> '') and (not(rs.FieldByName(CampodeCierre).isnull)) and (rs.FieldByName(CampodeCierre).Value <= dm.Cierre)) then
  if rsFecha.Value <= dm.Cierre(Modulo) then
    HeaderPanel.Enabled := false
  else
    HeaderPanel.Enabled := dm.Tienepermiso(pAprobar, Permisos);
end;

procedure TCXC.newbotonstate;
begin
  inherited;
  frCodifCtas1.isReadOnly := false;
  HeaderPanel.Enabled := true;
  Credito.Enabled := True;
  //grDetalle.Enabled := True;

end;

procedure TCXC.UserAutoCodigo;
 var sec : TSecuenciaNCF;
begin
  inherited;
  
  if rsCXC.IsNull then begin
    if rsEsCredito.AsBoolean then begin
      rsCXC.AsString := dm.GetNextCounterStr(COUNTER_NCR);
    end else begin
      rsCXC.AsString := dm.GetNextCounterStr(COUNTER_NDB);
    end;
  end;

  if (RSCompFiscal.IsNull) or (RSCompFiscal.AsString = '') then begin
    sec.Cancelado := True;
    if rsEsCredito.AsBoolean then begin
      if (Tipos.Locate('idCxcTipo', rsidCxcTipo.Value,[])) and (not(Tiposinterno.AsBoolean)) then begin
        if (dmDGII <> nil) and dmDGII.UsarEcfs then
           sec := dm.GetCompFiscal(ComputerName(),'34')
        else
           sec := dm.GetCompFiscal(ComputerName(),'04');
      end;
    end else begin
      if (Tipos.Locate('idCxcTipo', rsidCxcTipo.Value,[])) and (not(Tiposinterno.AsBoolean)) then begin
        if (dmDGII <> nil) and dmDGII.UsarEcfs then
           sec := dm.GetCompFiscal(ComputerName(),'33')
        else
           sec := dm.GetCompFiscal(ComputerName(),'03');
      end;
    end;

    if sec.Cancelado = False then
      rsCompFiscal.Value := sec.secuencia
    else
      if not Tiposinterno.AsBoolean then
        raise Exception.Create('No se genero la secuencia de comprobantes fiscales, verifique que tenga disponible..');
  end;
end;

procedure TCXC.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsidMoneda.value := dm.GetDefault('MONEDA_ACTIVA');
  rsEsCredito.Value := True;
  rsFecha.Value := dm.DBFecha();
  rsUsuario.Value := dm.UsuarioActual;
  rsIdCXC.AsGuid := dm.NewGuid();
  rsCancelado.AsBoolean := False;
end;

procedure TCXC.RSesCreditoValidate(Sender: TField);
begin
  inherited;
  if rsEsCredito.AsBoolean then begin
    MostrarDetalle(True);
    rsIdTipoDocumento.AsString := 'NC';
  end
  else begin
    MostrarDetalle(False);
    rsIdTipoDocumento.AsString := 'ND';
  end;

  CxcTiposList(rsescredito.Value, (not(rsidtipodocumento.value ='NC') and not(rsidtipodocumento.value ='ND')) );

  if Tipos.Locate('EsCredito', rsEsCredito.AsBoolean, []) then
    RSidCxcTipo.Value := TiposidCxcTipo.Value;

  GenerarCodificacion();  
end;

procedure TCXC.CalcularTotal;
var
  bm: string;
  st: Currency;
  desc : Currency;
begin
  st := 0;
  desc := 0;
  with mDet do begin
    DisableControls();
    bm := BookMark;
    try
      First();
      while not eof do begin
        st := st + SimpleRoundTo((mDetAplicado.AsCurrency * mDetTasa.value),-2);
        desc := desc + SimpleRoundTo((mDetDescuento.AsCurrency * mDetTasa.value),-2);
        Next();
      end;
    finally
      BookMark := bm;
      EnableControls();
    end;
  end;
  TotalAplicado := st;
  if (appestado = appInsert) or (appestado = appedit) then
  begin
    if not(rs.State in dseditmodes) then rs.edit;
    rsDescuento.Value := desc;
  end;

end;

procedure TCXC.GuardarDetalle;
begin
  if (mdet.Active) then begin
    with mDet do begin
      First();
      DisableControls();
      try
        while not eof do begin
          if (mDetAplicado.AsCurrency > 0) or (not mDetidCXCDet.IsNull) then begin
            if mDetIdCXCDet.IsNull then
              cGuardarDet.Parameters[1].Value := NULL
            else
              cGuardarDet.Parameters[1].Value := mDetidCXCDet.Value;

            cGuardarDet.Parameters[2].Value := rsIdCXC.Value;
            cGuardarDet.Parameters[3].Value := mDetIdCXCDebito.Value;
            cGuardarDet.Parameters[4].Value := mDetAplicado.AsCurrency;

            if mDetFechaAplicado.IsNull then begin
               edit();
               mDetFechaAplicado.Value := dm.DBFecha;
               post();
            end;

            cGuardarDet.Parameters[5].Value := mDetFechaAplicado.Value;
            cGuardarDet.Parameters[6].Value := mDetDescuento.AsCurrency;
            cGuardarDet.Parameters[7].Value := mDetTasa.AsCurrency;

            cGuardarDet.Execute();

            edit();
            if cGuardarDet.Parameters[1].Value = NULL then
              mDetIdCXCDet.Clear()
            else
              mDetIdCXCDet.Value := cGuardarDet.Parameters[1].Value;
            Post();

          end;
          Next();
        end;
      finally
        EnableControls();
      end;
    end;
  end;
  
end;

procedure TCXC.MostrarDetalle(const Mostrar: Boolean);
begin
  if (detalle.ActivePage = detalle.Pages[0]) or (detalle.ActivePage = detalle.Pages[1]) or (detalle.ActivePage = nil) then
  begin
    if Mostrar then begin
      detalle.ActivePage := detalle.Pages[0]
    end
    else begin
      detalle.ActivePage := detalle.Pages[1]
    end;
  end;
end;

procedure TCXC.CreditoClick(Sender: TObject);
begin
  inherited;
  SelectNext(ActiveControl, True, True);
end;

procedure TCXC.CargarDetalle;
begin

  frCodifCtas1.GUIDDocumento := rsidCxC.value;

  try
    FLoading := True;
    if rsEsCredito.AsBoolean then begin
      rsDetCreditos.Close;
      with mDet do begin
        Close();
        Open();
        rsDet.Close();
        rsDet.Parameters[1].Value := RSidCxc.Value;
        rsDet.Parameters[2].Value := RSidCliente.asInteger;
        rsDet.Open();
        LoadFromDataset(rsDet,[mtcpoAppend]);
      end;
      CalcularTotal();
    end
    else
    begin
      mDet.Close;
      rsDet.Close;
      with rsDetCreditos do begin
        rsDetCreditos.Close();
        if RSidCxc.isnull then
          rsDetCreditos.Parameters[1].Value := Null
        else
          rsDetCreditos.Parameters[1].Value := RSidCxc.Value;
        rsDetCreditos.Open();
      end;
    end;
  finally
    FLoading := False;
  end;

end;

procedure TCXC.RSAfterScroll(DataSet: TDataSet);
begin
  inherited;
  try
    if dm.rsEcfStatus.Active then dm.rsEcfStatus.Close;
    dm.rsEcfStatus.Parameters[1].Value := RSidCxc.Value;
    dm.rsEcfStatus.Parameters[2].Value := RSidDocumento.Value;
    dm.rsEcfStatus.Open;
  except
  end;
  CxcTiposList(rsescredito.Value, (not(rsidtipodocumento.value ='NC') and not(rsidtipodocumento.value ='ND')) );
  if (rs.State in [dsBrowse]) then
    rs.Refresh;
  CargarDetalle();
  CargarCuentas();

  if not rs.IsEmpty then
    MostrarDetalle(rsEsCredito.AsBoolean);
end;

procedure TCXC.CxcTiposList(const esCredito, Fijo: boolean);
begin
  Tipos.Parameters[1].Value := escredito;
  Tipos.Parameters[2].Value := fijo;
  if Tipos.Active then Tipos.Requery() else Tipos.Open;
end;

procedure TCXC.SetAplicado(const Value: Currency);
begin
  FTotalAplicado := Value;
  edTotalApp.Value := Value;
  TotalPendiente := SimpleRoundTo((rsValor.AsCurrency * rstasa.value) - Value,-2);
end;

procedure TCXC.SetPendiente(const Value: Currency);
begin
  FTotalPendiente := Value;
  edTotalPend.Value := Value;
end;

procedure TCXC.mDetAfterPost(DataSet: TDataSet);
begin
  inherited;
  FAplicadoAnt := 0;
  if not FLoading then
    CalcularTotal();
end;

procedure TCXC.RSValorValidate(Sender: TField);
begin
  inherited;
  ActualizarTasa();
  ValidarAplicacion();
  GenerarCodificacion();
end;

procedure  TCXC.ActualizarTasa();
begin
  // que tome la fecha en el sp para no hacer dos llamadas
  if (rsValor.value > 0) and (not(rsidmoneda.IsNull)) and (not(rsfecha.isnull)) then
    rsTasa.value := dm.TasaActual(rsidmoneda.value, rsFecha.value)
  else
    rsTasa.value := 0;
end;

procedure TCXC.ValidarAplicacion();
begin

  // tomar en cuenta la tasa de cambio y la moneda
  if simpleRoundTo((rsValor.AsCurrency * rsTasa.value),-2) < TotalAplicado then
    raise Exception.Create('Error de aplicacion: El valor aplicado (' + FormatCurr('#,##0.00', TotalAplicado) +
                           ') es mayor que el total del documento (' + FormatCurr('#,##0.00', rsValor.AsCurrency * rsTasa.value) + ')');

  TotalPendiente := simpleRoundTo(((rsValor.AsCurrency * rstasa.value) - TotalAplicado),-2);
end;


procedure TCXC.SendEcf(Silencioso: Boolean);
var
  cCambStatusEcf: TADOCommand;
begin
  if (dmDGII = nil) or (not dmDGII.UsarEcfs) or (not dmDGII.PuedeEnviarEcfs) then Exit;

  if not ((Length(rsCompFiscal.AsString) >= 1) and (rsCompFiscal.AsString[1] = 'E')) then Exit;

  cCambStatusEcf := TADOCommand.Create(nil);
  try
    cCambStatusEcf.Connection := dm.Coneccion;
    cCambStatusEcf.CommandText := 'ecf_cxc_send';
    cCambStatusEcf.CommandType := cmdStoredProc;
    cCambStatusEcf.Parameters.Refresh;
    cCambStatusEcf.Parameters.ParamByName('@id').Value := rsidCxc.Value;
    try
      cCambStatusEcf.Execute;
        if cCambStatusEcf.Parameters[0].Value = -1 then
        begin
          if not Silencioso then MessageDlg('Este documento ya fue enviado al sistema ECF y no puede enviarse dos veces.', mtWarning, [mbOK], 0);
          Exit;
        end;
        if (not Silencioso) then
          MessageDlg('Enviado a ECF Worker exitosamente.', mtInformation, [mbOK], 0);
    except
      on E: Exception do
      begin
        if not Silencioso then
          MessageDlg('Error al enviar a ECF: ' + E.Message, mtError, [mbOK], 0);
      end;
    end;
  finally
    cCambStatusEcf.Free;
  end;
end;

procedure TCXC.AGuardarExecute(Sender: TObject);
  procedure UpdateNcfModificado;
  var
    cmdUpdateNCF: TADOCommand;
    sNcfModificado: String;
    sTipoNcfModificado: String;
    dtFechaNcfModificado: TDateTime;
    Q: TADOQuery;
    bm: string;
  begin
    if (rsidtipodocumento.Value <> 'NC') then Exit;

    sNcfModificado := ''; dtFechaNcfModificado := 0;
    if mdet.Active then
    begin
      bm := mDet.Bookmark;
      mDet.DisableControls;
      try
        mDet.First;
        while not mDet.Eof do
        begin
          if mDetAplicado.AsCurrency > 0 then
          begin
            if not mDetidCXCDebito.IsNull then
            begin
              Q := TADOQuery.Create(nil);
              try
                Q.Connection := dm.Coneccion;
                Q.SQL.Text := 'SELECT TOP 1 CompFiscal, Fecha FROM Factura WHERE idFactura = ' + QuotedStr(mDetidCXCDebito.AsString) + 
                              ' UNION ALL SELECT TOP 1 CompFiscal, Fecha FROM Cxc WHERE idCxc = ' + QuotedStr(mDetidCXCDebito.AsString);
                Q.Open;
                if not Q.IsEmpty then
                begin
                  sNcfModificado := Q.FieldByName('CompFiscal').AsString;
                  dtFechaNcfModificado := Q.FieldByName('Fecha').AsDateTime;
                  if Length(sNcfModificado) >= 3 then
                    sTipoNcfModificado := Copy(sNcfModificado, 2, 2)
                  else
                    sTipoNcfModificado := '';
                end;
                Q.Close;
              finally
                Q.Free;
              end;

              if sNcfModificado <> '' then
                 break;
            end;
          end;
          mDet.Next;
        end;
      finally
        if bm <> '' then
          mDet.Bookmark := bm;
        mDet.EnableControls;
      end;
    end;

    if (sNcfModificado = '') and (not RSReferencia.IsNull) and (RSReferencia.AsString <> '') then
    begin
      Q := TADOQuery.Create(nil);
      try
        Q.Connection := dm.Coneccion;
        Q.SQL.Text := 'SELECT TOP 1 CompFiscal, Fecha FROM Factura WHERE idFactura = ' + QuotedStr(RSReferencia.AsString) + 
                      ' UNION ALL SELECT TOP 1 CompFiscal, Fecha FROM Cxc WHERE idCxc = ' + QuotedStr(RSReferencia.AsString);
        Q.Open;
        if not Q.IsEmpty then
        begin
          sNcfModificado := Q.FieldByName('CompFiscal').AsString;
          dtFechaNcfModificado := Q.FieldByName('Fecha').AsDateTime;
          if Length(sNcfModificado) >= 3 then
            sTipoNcfModificado := Copy(sNcfModificado, 2, 2)
          else
            sTipoNcfModificado := '';
        end;
        Q.Close;
      finally
        Q.Free;
      end;
    end;

    if sNcfModificado <> '' then
    begin
      cmdUpdateNCF := TADOCommand.Create(nil);
      try
        cmdUpdateNCF.Connection := dm.Coneccion;
        cmdUpdateNCF.CommandText := 'UPDATE Cxc SET NcfModificado = :ncf, TipoNcfModificado = :tipo, FechaNcfModificado = :fecha WHERE idCxc = :idcxc';
        cmdUpdateNCF.Parameters.ParamByName('ncf').Value := sNcfModificado;
        cmdUpdateNCF.Parameters.ParamByName('tipo').Value := sTipoNcfModificado;
        cmdUpdateNCF.Parameters.ParamByName('fecha').Value := dtFechaNcfModificado;
        cmdUpdateNCF.Parameters.ParamByName('idcxc').Value := rsidCxc.Value;
        cmdUpdateNCF.Execute;
      finally
        cmdUpdateNCF.Free;
      end;
    end;
  end;
begin

  rsComputer.Value := computer;

  if appestado = appinsert then begin
    if rsfecha.value <= dm.Cierre(Modulo) then
      raise exception.create('La fecha del documento ha sido cerrada, verificar con contabilidad');
  end;

  if (not(dm.PermitirDescuadre)) and ((frCodifCtas1.TotalDB + frCodifCtas1.TotalCR) = 0) then
     raise exception.create('Debe codificar los recibos contablemente');


  if (not(dm.PermitirDescuadre)) and  (frCodifCtas1.TotalDB <> frCodifCtas1.TotalCR)then
     raise exception.create('Error, El débito y crédito deben cuadrar, verificar codificación');

  if mDet.State in dsEditModes then
    mDet.Post();
  CalcularTotal();

  if TotalPendiente < 0 then
    raise exception.create('Error de Aplicacion, El valor aplicado (' + FormatCurr('#,##0.00', TotalAplicado) +
                           ') es mayor que el total del documento (' + FormatCurr('#,##0.00', rsValor.AsCurrency * rsTasa.value) + ')');

   if (appestado = appInsert) then
     CrearLog('Insercion')
   else
     CrearLog('Edicion');

  inherited;

  UpdateNcfModificado;
  if (appestado = appInsert) and (dmDGII <> nil) and dmDGII.AutoEnviarEcfs then
  begin
    SendEcf(True);
  end;

  GuardarDetalle();
  SetCodificacion();
  GuardarCuentas();
end;


procedure TCXC.mDetBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  FAplicadoAnt := mDetAplicado.AsCurrency * mdetTasa.value;
end;

procedure TCXC.mDetAplicadoValidate(Sender: TField);
var
  Total: Currency;
begin
  inherited;
  if FLoading then
    Exit;

  if (not(mdetfechaaplicado.IsNull)) and (mdetfechaaplicado.value <= dm.cierre(Modulo)) then
      raise exception.create('No puede cambiar una aplicacion con fecha cerrada');


  if mDetAplicado.IsNull then
    mDetAplicado.value := dm.dbfecha;

  if mDetAplicado.value < 0 then
    raise exception.Create('El valor aplicado es invalido');

  if (mDetAplicado.value = 0) and (mDetDescuento.AsCurrency > 0) then
    raise exception.Create('Debe borar el descuento antes de la aplicacion');

  if (mDetAplicado.AsCurrency + mDetAplicadoOtros.AsCurrency + mDetDescuento.ascurrency > mDetTotalDoc.AsCurrency)
     and (mDetAplicado.AsCurrency > 0) then
    raise Exception.Create('El valor aplicado es mayor que el total de este documento');

  Total := simpleRoundTo(TotalAplicado - FAplicadoAnt + (mDetAplicado.AsCurrency * mdettasa.value),-2);

  if Total > simpleRoundTo((rsValor.AsCurrency * rsTasa.value), -2) then
    raise Exception.Create('Error de aplicacion: El valor aplicado (' + FormatCurr('#,##0.00', Total) +
                           ') es mayor que el total del documento (' + FormatCurr('#,##0.00', rsValor.AsCurrency * rsTasa.value) + ')');
end;

procedure TCXC.dxDBEdit6DblClick(Sender: TObject);
begin
  inherited;
 if not(rsidcliente.isnull) then
    Modalshow(TCliente, ShowFind, rsidCliente.Value, '',true);
end;

procedure TCXC.mDetDescuentoValidate(Sender: TField);
begin
  inherited;
  if FLoading then
    Exit;

  if (not(mdetfechaaplicado.IsNull)) and (mdetfechaaplicado.value <= dm.cierre(Modulo)) then
      raise exception.create('No puede cambiar una aplicacion con fech3a cerrada');


  if not(mDetDescuento.AsCurrency >= 0) then
    raise exception.Create('El valor del descuento es invalido');

  if rsidTipoDocumento.Value  = 'NC' then
    raise exception.Create('Las NC no pueden tener descuentos');

  if mDetAplicado.AsCurrency + mDetAplicadoOtros.AsCurrency + mDetDescuento.ascurrency > mDetTotalDoc.AsCurrency then
    showmessage('El valor aplicado es mayor que el total de este documento');
end;

procedure TCXC.CargarCuentas;
begin
  frCodifCtas1.GUIDDocumento := rsidcxc.Value;
end;

procedure TCXC.GuardarCuentas;
begin
  frCodifCtas1.GuardarCodificacion;

end;

procedure TCXC.rsCuentaDetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if (rsidTipoDocumento.AsString <> 'ND') and (rsidTipoDocumento.AsString <> 'NC') then
    raise exception.Create('La codificacion contable es solo para ND / NC');
end;

procedure TCXC.AprintExecute(Sender: TObject);
var
  fmt: string;
begin
  inherited;
  if (rsidcxc.IsNull) then
    abort;
    
  with rsDatosEstado do begin
    Close();
    Parameters[1].Value := rsIdCliente.AsInteger;
    Parameters[2].Value := dm.FechaHoy;
    Parameters[3].Value := NULL;
    Open();
    end  ;

  fmt := dm.GetDefaultStr('FMT_CXC');
  if (fmt <> '') and (FileExists(fmt)) then begin
    cxcRPT.Template.FileName := fmt;
    cxcRPT.Template.LoadFromFile();
  end;

  RPTCxc.close;
  RPTCxc.Parameters[1].Value := rsidCxc.Value ;
  RPTCxc.Open;

  dd.Visible := rsescredito.Value;
  hh.Visible := rsescredito.Value;

  Imprimir(CxcRPT);
  RPTCxc.close;
end;


procedure TCXC.AAnularExecute(Sender: TObject);
begin
  inherited;
  if rsidCxcTipo.value < 0 then
    raise exception.create('Las Facturas y los Recibos se deben Anular en sus respectivas pantallas');

  if not(RSCancelado.AsBoolean) then
  begin
    AnularCxc.Parameters[1].Value := RSidCxc.Value;
    AnularCxc.Execute;
    if AnularCxc.Parameters[2].Value then
    begin
       ShowMessage('La Transaccion ha sido anulada');
    end
    else
    begin
       Raise exception.create('No se pudo anular la transaccion / verifique si tiene aplicaciones');
    end;
  end;
end;

procedure TCXC.RSidMonedaValidate(Sender: TField);
begin
  inherited;
  ActualizarTasa();
  GenerarCodificacion();
end;

procedure TCXC.RSFechaValidate(Sender: TField);
begin
  inherited;
  dm.ValidarFechaCierre(rsFecha.Value, Modulo);
  ActualizarTasa();
end;


procedure TCXC.mDetFechaAplicadoValidate(Sender: TField);
begin
  inherited;
  if FLoading then
    Exit;

  if (not(mdetfechaaplicado.isnull)) and (mdetfechaaplicado.value <= dm.cierre(Modulo)) then begin
//     mdetfechaaplicado.Clear;
//     raise exception.create('La fecha de aplicacion seleccionada ya ha sido cerrada, seleccione una fecha valida o deje el campo vacio');
     ShowMessage('La fecha de aplicacion seleccionada ya ha sido cerrada, seleccione una fecha valida o deje el campo vacio');
     Sender.Clear;
  end;
  If (Not Sender.IsNull) Then
  Begin
    If ((Sender.Value < RSFecha.Value) Or (Sender.Value < mDetFechaDoc.Value)) Then
    Begin
  //    Sender.Clear;
  //    Raise Exception.Create('La fecha de aplicación debe ser mayor que la fecha del header y el documento');
      ShowMessage('La fecha de aplicación debe ser mayor o igual que la fecha del header y el documento');
      Sender.Clear;
  //    Abort;
    End;
  End;
end;

procedure TCXC.ACancelarExecute(Sender: TObject);
begin
  inherited;
  frCodifCtas1.BorrarAutomaticas;
end;

procedure TCXC.ALocalizarExecute(Sender: TObject);
begin
  inherited;

     ClienteObra.Parameters[1].Value := rsidCliente.Value;
     ClienteObra.Close ;
     ClienteObra.Open;

  end;

procedure TCXC.RPTCxcCalcFields(DataSet: TDataSet);
begin
  inherited;
   RPTCXCBalance.Value:=rsDatosEstadoBalance.value;
end;

procedure TCXC.bSendECFClick(Sender: TObject);
var
  savedPage: TTabSheet;
begin
  savedPage := Detalle.ActivePage;
  if (AppEstado = appInsert) or (AppEstado = appEdit) then
  begin
    AGuardar.Execute;
  end;

  if not Confirmar('Esta seguro de enviar este ECF? luego aceptado, el documento no podra ser editado') then
    Exit;

  SendEcf(False);
  Localizar(RSidCxc.value);
  if (savedPage <> nil) and (Detalle.ActivePage <> savedPage) then
    Detalle.ActivePage := savedPage;
end;

procedure TCXC.btnRefrescarECFClick(Sender: TObject);
var
  savedPage: TTabSheet;
begin
  savedPage := Detalle.ActivePage;
  Localizar(RSidCxc.value);
  if (savedPage <> nil) and (Detalle.ActivePage <> savedPage) then
    Detalle.ActivePage := savedPage;
end;

procedure TCXC.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  x                 : variant;
  QFactura          : TADOQuery;
begin
  inherited;
  x := fBuscar(TFindFactura, 'idFactura', false);
  if x <> Null then
  begin
    QFactura := TADOQuery.Create(nil);
    try
      QFactura.Connection := dm.Coneccion;
      QFactura.SQL.Text := 'SELECT idFactura, Factura, CompFiscal, Cancelado, Fecha, idCliente FROM Factura WHERE idFactura = :id';
      QFactura.Parameters.ParamByName('id').Value := x;
      QFactura.Open;

      if QFactura.RecordCount > 0 then
      begin
        if QFactura.FieldByName('Cancelado').AsBoolean then
        begin
          QFactura.Close;
          raise Exception.Create('Esta factura esta cancelada y no podra seleccionarse..');
        end;

        if not (RS.State in [dsEdit, dsInsert]) then
          RS.Edit;

        RSReferencia.Value := QFactura.FieldByName('idFactura').Value;
        RSidCliente.Value := QFactura.FieldByName('idCliente').AsInteger;
        RSidDocumento.Value := QFactura.FieldByName('Factura').AsString;
        
        // Auto-fill NCF from selected invoice
        cxDBTextEdit1.Text := QFactura.FieldByName('CompFiscal').AsString;
      end;
      QFactura.Close;
    finally
      QFactura.Free;
    end;
  end;
end;

end.


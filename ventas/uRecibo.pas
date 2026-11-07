unit uRecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformmant2, DB, ADODB, ActnList, ImgList, Wwdatsrc, Grids,
  Wwdbigrd, Wwdbgrid, wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel,
  StdCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, dxDBEdtr,
  ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd,
  ppReport, ppComm, ppRelatv, ppDBPipe, wwdblook, ppStrtch, ppMemo, Buttons,
  jpeg, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxTL, uformmant1,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLookAndFeelPainters,
  cxButtons, cxCheckBox, kbmMemTable, math, ppParameter, uCodifCtas,
  cxCalendar, cxDBEdit, ppDesignLayer;

type
  TRecibo = class(Tfformmant1)
    cod: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    dxDBEdit3: TdxDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    Label7: TLabel;
    Label10: TLabel;
    dxDBCheckEdit1: TdxDBCheckEdit;
    PagoForma: TADODataSet;
    dsPagoForma: TDataSource;
    Imprimir: TwwNavButton;
    RptRecibo: TADODataSet;
    dsRptRecibo: TDataSource;
    plRptRecibo: TppDBPipeline;
    ReciboRPT: TppReport;
    bAnular: TwwNavButton;
    dxDBEdit1: TdxDBEdit;
    RSidRecibo: TGuidField;
    RSidCliente: TIntegerField;
    RSCliente: TStringField;
    RSesCxc: TBooleanField;
    RSidEmpleado: TIntegerField;
    RSFecha: TDateTimeField;
    RSHora: TDateTimeField;
    RSValor: TBCDField;
    RSReferencia: TIntegerField;
    RSCancelado: TBooleanField;
    RSConcepto: TStringField;
    RSNota: TStringField;
    RSidCompania: TIntegerField;
    RSUsuario: TStringField;
    dxDBCheckEdit2: TdxDBCheckEdit;
    Label9: TLabel;
    FindCliente: TButton;
    dxDBEdit8: TdxDBEdit;
    Empleado: TADODataSet;
    dsEmpleado: TDataSource;
    lkEmpleado: TdxDBLookupEdit;
    ClienteAct: TADODataSet;
    ClienteActidCliente: TIntegerField;
    ClienteActCliente: TStringField;
    ClienteActContacto: TStringField;
    ClienteActLimiteCredito: TBCDField;
    ClienteActActivo: TBooleanField;
    dsEstacionAct: TDataSource;
    Recibo2Cxc: TADOCommand;
    RSRecibo: TStringField;
    RptReciboidRecibo: TGuidField;
    RptReciboRecibo: TStringField;
    RptReciboidCliente: TIntegerField;
    RptReciboCliente: TStringField;
    RptReciboesCxc: TBooleanField;
    RptReciboidEmpleado: TIntegerField;
    RptReciboFecha: TDateTimeField;
    RptReciboValor: TBCDField;
    RptReciboReferencia: TIntegerField;
    RptReciboCancelado: TBooleanField;
    RptReciboConcepto: TStringField;
    RptReciboNota: TStringField;
    RptReciboUsuario: TStringField;
    RptReciboEmpleado: TStringField;
    RptReciboCompania: TStringField;
    RptReciboTelefono: TStringField;
    RptReciboFax: TStringField;
    RptReciboRNC: TStringField;
    RptReciboDireccion: TStringField;
    CxCAplicar: TAction;
    RSidPagoForma: TStringField;
    PagoFormaidPagoForma: TStringField;
    Label6: TLabel;
    dxDBLookupEdit1: TdxDBLookupEdit;
    AnularRec: TADOCommand;
    ReciboTipo: TADODataSet;
    RSidReciboTipo: TStringField;
    dxDBLookupEdit2: TdxDBLookupEdit;
    dsReciboTipo: TDataSource;
    Label8: TLabel;
    ReciboTipoidReciboTipo: TStringField;
    ReciboTipoReciboTipo: TStringField;
    ReciboTipoCC: TStringField;
    ReciboTipoesCxC: TBooleanField;
    dxDBEdit9: TdxDBEdit;
    RSFechaCancelado: TDateTimeField;
    RSidMoneda: TIntegerField;
    Label21: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    ClienteActidEmpleado: TIntegerField;
    ClienteActDireccion: TStringField;
    ClienteActSector: TStringField;
    ClienteActCiudad: TStringField;
    ClienteActTelefono: TStringField;
    ClienteActNoPagaItbis: TBooleanField;
    ClienteActDescuento: TFloatField;
    ClienteActFax: TStringField;
    ClienteActeMail: TStringField;
    ClienteActidListaPrecio: TStringField;
    ClienteActCondicion: TIntegerField;
    ClienteActidCuenta: TStringField;
    ClienteActidAuxiliar: TStringField;
    Label11: TLabel;
    dxDBEdit10: TdxDBEdit;
    RSidReferencia: TGuidField;
    RSTasa: TBCDField;
    PagoFormaesTarjeta: TBooleanField;
    PagoFormaComision: TFloatField;
    PagoFormaCC: TStringField;
    PagoFormaCtaComision: TStringField;
    RptRecibocValor: TStringField;
    RptReciboidMoneda: TIntegerField;
    RptReciboMoneda: TStringField;
    dxDBEdit11: TdxDBEdit;
    RSRetencion: TBCDField;
    RSTotalNeto: TBCDField;
    Label13: TLabel;
    dxDBEdit12: TdxDBEdit;
    ARetencion: TAction;
    TipoRetencion: TADODataSet;
    TipoRetencionTipoRetencion: TAutoIncField;
    TipoRetencionTipoEntidad: TIntegerField;
    TipoRetencionDescripcion: TStringField;
    TipoRetencionidCuenta: TStringField;
    TipoRetencionPorcentaje: TBCDField;
    TipoRetencionPorDefecto: TBooleanField;
    Retencion: TcxCheckBox;
    Label12: TLabel;
    RSTotalRet: TCurrencyField;
    PagoFormaCtaImpuesto: TStringField;
    PagoFormaPorcImpuesto: TFloatField;
    dxDBEdit13: TdxDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    RSNumeroChk: TStringField;
    RSBanco: TStringField;
    RSChkDevuelto: TBooleanField;
    RSFechaDevuelto: TDateTimeField;
    dxDBCheckEdit3: TdxDBCheckEdit;
    Vencimiento: TdxDBDateEdit;
    Label16: TLabel;
    qryBancos: TADOQuery;
    dsBancos: TDataSource;
    dxDBMRUEdit1: TdxDBMRUEdit;
    qryBancosBanco: TStringField;
    rsCtasCliente: TADODataSet;
    rsCtasClienteidCuentaCredito: TStringField;
    rsCtasClienteidCuentaContado: TStringField;
    BorrarTransCxc: TADOStoredProc;
    spTieneAplicacion: TADOStoredProc;
    dxDBMemo1: TdxDBMemo;
    dxDBMemo2: TdxDBMemo;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel1: TppLabel;
    ppDBText7: TppDBText;
    ppLabel2: TppLabel;
    ppDBText8: TppDBText;
    ppLabel7: TppLabel;
    ppDBText17: TppDBText;
    ppLabel16: TppLabel;
    ppDBText21: TppDBText;
    ppLabel34: TppLabel;
    ppLabel3: TppLabel;
    ppDBText6: TppDBText;
    ppLabel8: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLine2: TppLine;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLabel10: TppLabel;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppDBMemo2: TppDBMemo;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    Panel1: TPanel;
    frCodifCtas1: TfrCodifCtas;
    cxButton1: TcxButton;
    Label17: TLabel;
    RptReciboIdReciboTipo: TStringField;
    RptReciboIdPagoForma: TStringField;
    RptReciboTasa: TBCDField;
    RptReciboRetencion: TBCDField;
    RptReciboTotalNeto: TBCDField;
    RSFechaProforma: TDateTimeField;
    cxDBDateEdit1: TcxDBDateEdit;
    Label18: TLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    dxDBEdit4: TdxDBEdit;
    Label19: TLabel;
    RSCompFiscal: TStringField;
    RSTipoNCF: TStringField;
    RSEmpresa: TStringField;
    RSRNCEmpresa: TStringField;
    ClienteActTipoNCFEmp: TStringField;
    Label20: TLabel;
    rsSucursal: TADODataSet;
    rsSucursalidCentroCosto: TGuidField;
    rsSucursalCentroCosto: TStringField;
    dsSucursal: TwwDataSource;
    RSidSucursal: TGuidField;
    dxDBLookupEdit3: TdxDBLookupEdit;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
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
    dsBalance: TDataSource;
    RptRecibocAbono: TFloatField;
    RptRecibocbalance: TFloatField;
    ppDBText11: TppDBText;
    ppLabel18: TppLabel;
    ppDBText12: TppDBText;
    ppLabel19: TppLabel;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLabel21: TppLabel;
    ppLabel20: TppLabel;
    RScomputer: TStringField;
    RptReciboSUCURSARDireccion: TStringField;
    RptReciboSUCURSARLTelefono: TStringField;
    ppLabel22: TppLabel;
    ppDBText15: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure RSNewRecord(DataSet: TDataSet);
    procedure RSCantidadValidate(Sender: TField);
    procedure AprintExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure AAnularExecute(Sender: TObject);
    procedure RSFechaValidate(Sender: TField);
    procedure FindClienteClick(Sender: TObject);
    procedure RSidClienteValidate(Sender: TField);
    procedure lpagoformaNotInList(Sender: TObject;
      LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure dxDBEdit8DblClick(Sender: TObject);
    procedure RSidReciboTipoValidate(Sender: TField);
    procedure RSValorChange(Sender: TField);
    procedure RSAfterScroll(DataSet: TDataSet);
    procedure ACancelarExecute(Sender: TObject);
    procedure RSesCxcValidate(Sender: TField);
    procedure RSValorValidate(Sender: TField);
    procedure RSBeforePost(DataSet: TDataSet);
    procedure RSidMonedaValidate(Sender: TField);
    procedure RSidPagoFormaValidate(Sender: TField);
    procedure RptReciboCalcFields(DataSet: TDataSet);
    procedure RetencionClick(Sender: TObject);
    procedure RSCalcFields(DataSet: TDataSet);
    procedure RSTasaValidate(Sender: TField);
    procedure cxButton1Click(Sender: TObject);
    procedure RSTotalRetValidate(Sender: TField);
    procedure RSidReciboValidate(Sender: TField);
    procedure AEditarExecute(Sender: TObject);
  private
    CajaRecibo : String;
    ALMACENDEFAULT: string;
    COMPUTER : string;
    function MostrarCliente(idCliente: Integer): integer;
    procedure GenerarCodificacion;
    procedure CargarCodificacion;
    procedure SetTasa;
    procedure CalcRetencion;
    Procedure FillMruBanco;
    Function TieneAplicacion(IdDocumento : Variant) : Boolean;
    procedure SetCodificacion;
  protected
    DetailField : string;
    idTipoRetencion : variant;
    procedure browsebotonstate; override;
    procedure editbotonstate; override;
    procedure newbotonstate; override;
    procedure UserAutoCodigo; override;

    function BuscarCtaCliente(const idCliente: Integer; const idMoneda: Integer): string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Recibo: TRecibo;

implementation

uses Udata, UUtiles, ReciboFind, uBusqueda, uCliente, uCXC;

{$R *.dfm}

procedure TRecibo.FormCreate(Sender: TObject);
begin
//  FLoading := false;
  computer := ComputerName();
  MasterField := 'idRecibo';
  DetailField := 'idRecibo';
  inherited;
  //rsdet.open;
  Modulo := 'Venta';
  LogField := 'Recibo';
  TipoDoc := 'RC';
  ImageidField := 'idRecibo';
  CampodeCierre := 'Fecha'; //nombre del campo de fecha para validar el cierre de operaciones
  PagoForma.Open; //Tabla para lookup
  Empleado.Open;
  ReciboTipo.Open;
  rsSucursal.Open;
  spName := '';
  Busqfield := 'idRecibo';
  tfBusqueda := TFindRecibo;
  OcultarC1 := false;       //oculta la columna 1 en la busqueda
  ALMACENDEFAULT := dm.GetPCSetting('ALMACENDEFAULT');
  if ALMACENDEFAULT = '' then
    ALMACENDEFAULT := dm.GetDefaultStr('ALMACENDEFAULT');
  TipoRetencion.Close;
  idTipoRetencion := dm.GetDefault('TIPO_RETEN_COBRO');
  TipoRetencion.Parameters[0].Value := idTipoRetencion;
  TipoRetencion.Open;
  qryBancos.Open();
  FillMruBanco;
  CajaRecibo := dm.GetDefaultstr('CajaRecibo_Auto');
end;

procedure TRecibo.UserAutoCodigo;
 var sec : TSecuenciaNCF;
begin
  if rsRecibo.isnull then
    rsRecibo.Value := dm.GetNextCounterStr('RECIBO');

  if (ClienteActTipoNCFEmp.AsString <> '') and (RSCompFiscal.AsString = '') then
  begin
       sec := dm.GetCompFiscal(ComputerName(),'RC');//sec := dm.GetCompFiscal('RC',rsidcliente.value);
      if sec.Cancelado = False then
        rsCompFiscal.Value := sec.secuencia
      else
        raise Exception.Create('No se genero la secuencia de comprobantes fiscales, verifique que tenga disponible..');
  end;
end;

procedure TRecibo.newbotonstate;
begin
  inherited;
  CxCAplicar.Enabled := false;
    frCodifCtas1.isReadOnly := false;
  cod.Enabled := true;
end;

procedure TRecibo.editbotonstate;
begin
  inherited;
  CxCAplicar.Enabled := false;
    frCodifCtas1.isReadOnly := false;
 cod.Enabled := false;
end;

procedure TRecibo.browsebotonstate;
begin
  inherited;
  CxCAplicar.Enabled := true;
  frCodifCtas1.isReadOnly := true;
  cod.Enabled := false;
end;






procedure TRecibo.AGuardarExecute(Sender: TObject);
begin

  rsComputer.Value := computer;
  SelectFirst;

  
  if (rsidempleado.Value =0)  then
     Raise exception.Create('llenar campo Entregado');

  ChkCamposRequeridos(RS);



  if (CampodeCierre <> '') and (rs.FieldByName(CampodeCierre).Value <= dm.Cierre(Modulo)) then
     Raise exception.Create('La fecha del documento ha sido cerrada');

  if (not(dm.PermitirDescuadre)) and ((frCodifCtas1.TotalDB + frCodifCtas1.TotalCR) = 0) then
     raise exception.create('Debe codificar los recibos contablemente');


  if (not(dm.PermitirDescuadre)) and  (frCodifCtas1.TotalDB <> frCodifCtas1.TotalCR)then
     raise exception.create('Error, El débito y crédito deben cuadrar, verificar codificación');

  if rsFechaProforma.IsNull then
    raise Exception.Create('La fecha de la proforma no puede quedar vacia');

  if rsFechaProforma.Value > rsFecha.Value then
    raise Exception.Create('La fecha proforma no peude ser posterior al registro del pago');

  try
    if handletrans then dm.Coneccion.BeginTrans;
  except
  end;


  // aqui hace lo mismo que se debe hacer en tformmant1
  Try
    if (appestado = appInsert)  then begin
      if not (ds.state in [dsedit, dsinsert]) then ds.edit;
      UserAutoCodigo;
      ds.dataset.post;
    end else begin
      if ds.state in [dsinsert, dsedit] then
        DS.DataSet.Post;
    end;
    BatchUpdateCancel(ds.dataset, True);
  except
    on e: Exception do begin
      if handletrans then dm.Coneccion.RollbackTrans;
      raise exception.create('Error al guardar los datos de cabecera' + #13 + e.Message);
    end;
  end;

  try
    SetCodificacion();
    frCodifCtas1.GuardarCodificacion;
  except
    on e: Exception do begin
       if handletrans then dm.Coneccion.RollbackTrans;
       raise exception.create('Error al guardar los datos de codificacion contable' + #13 + e.Message);
    end;
  end;

  try
     //if (appestado = appInsert) and (rsesCxc.Value) then begin
     if (rsesCxc.Value) then begin
       Recibo2Cxc.Parameters[1].Value := rsidRecibo.Value;
       Recibo2Cxc.Execute;
       if Recibo2Cxc.Parameters[0].Value <> 0 then Raise Exception.Create('Error al crear el movimiento de Cxc');
     end
     Else
     Begin
       With BorrarTransCxc, Parameters Do
       Begin
         ParamByName('@IdRecibo').Value := RSidRecibo.Value;
         ExecProc;
       End;
     End
  except
    if handletrans then dm.Coneccion.RollbackTrans;
     raise;
  end;

  if handletrans then dm.Coneccion.CommitTrans;

  if HandleGuardarState then begin
    appestado := appBrowse;
    DS.AutoEdit := false;
    Browsebotonstate;
    ds.DataSet.Refresh;
    cxButton1.Enabled := True;
  end;

  if (appestado = appInsert) then
     CrearLog('Insercion')
  else
     CrearLog('Edicion');

  if (CajaRecibo = '1') then AbrirCaja();

   If XResultField <> '' then
     XResultado := RS.FieldValues[XResultField]
   Else
     XResultado := Null;


  if xcloseonsave then asalir.Execute;


//  inherited;

end;

procedure TRecibo.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  RSUsuario.Value := dm.UsuarioActual;
  rsidRecibo.AsGuid := dm.NewGuid;
  rsFecha.Value := dm.DBFecha;
  rsCancelado.Value := false;
  RSidCompania.Value := 1; //dm.CompaniaActual();
  RSConcepto.Value := 'Pago';
  rsesCxc.Value := true;
  rsidMoneda.value := dm.GetDefault('MONEDA_ACTIVA');
  rsCancelado.Value := false;
  rsRetencion.Value := 0.00;
  rsChkDevuelto.Value := False;
  dm.GetDefault('DefFormaPago',rsidPagoForma);
  dm.GetDefault('DefTipoRecibo',rsidReciboTipo);
  FillMruBanco;
   if ALMACENDEFAULT <> '' then rsidSucursal.value := ALMACENDEFAULT;
end;

procedure TRecibo.RSCantidadValidate(Sender: TField);
begin
  inherited;
  if sender.Value <= 0 then
     raise exception.create('El valor del recibo es incorrecto');
end;

procedure TRecibo.AprintExecute(Sender: TObject);
var
  fmt: string;
begin
  inherited;
  if (RSidRecibo.IsNull) then
    abort;

    with rsDatosEstado do begin
    Close();
    Parameters[1].Value := rsIdCliente.AsInteger;
    Parameters[2].Value := dm.FechaHoy;
    Parameters[3].Value := NULL;
    Open();
    end  ;
      
  RptRecibo.Close;
  RptRecibo.Parameters[1].value := RSidRecibo.Value ;
  RptRecibo.Open;

  fmt := dm.GetDefaultStr('FMT_RECIBO');
  if fmt = '' then
    fmt := 'Recibo.rtm';

  If FileExists(fmt) Then
  Begin
    ReciboRpt.Template.FileName := fmt;
    ReciboRpt.Template.LoadFromFile;
  End;

  ReciboRpt.Print;

  RptRecibo.Close;
end;

procedure TRecibo.FormDestroy(Sender: TObject);
begin
  inherited;
  PagoForma.Close; //Tabla para lookup
  Empleado.Close;
end;

procedure TRecibo.AAnularExecute(Sender: TObject);
begin
  inherited;
  if not(RSCancelado.AsBoolean) then
  begin
    AnularRec.Parameters[1].Value := RSidRecibo.Value;
    AnularRec.Execute;
    if AnularRec.Parameters[2].Value then
       showMessage('El recibo ha sido anulado')
    else
       raise exception.create('No se pudo anular el recibo / verifique si ha sido aplicado');
  end;
end;

procedure TRecibo.RSFechaValidate(Sender: TField);
begin
  inherited;
  dm.ValidarFechaCierre(rsFecha.Value, Modulo);
  
  SetTasa();
  if rsFechaProforma.IsNull then
    rsFechaProforma.Value := rsfecha.Value;
end;

procedure TRecibo.FindClienteClick(Sender: TObject);
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

Function TRecibo.MostrarCliente(idCliente : Integer): integer;
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


procedure TRecibo.RSidClienteValidate(Sender: TField);
var
  x : integer;
begin
  inherited;
    x := MostrarCliente(sender.AsInteger);

    if x = -1 then
    begin
       raise Exception.create('Este cliente no existe');
       rsCliente.Clear;
    end
    else begin
      rsCliente.Value := ClienteActCliente.AsString;
      if x = 1 then
         raise exception.Create ('Este cliente esta inactivo')
    end;
    Generarcodificacion();
end;
procedure TRecibo.lpagoformaNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
  inherited;
  Accept := false;
end;

procedure TRecibo.dxDBEdit8DblClick(Sender: TObject);
begin
  inherited;
  if not(rsidcliente.isnull) then
    Modalshow(TCliente, ShowFind, rsidCliente.Value, '',true);
end;

procedure TRecibo.RSidReciboTipoValidate(Sender: TField);
begin
  inherited;
  rsescxc.Value := ReciboTipo.Lookup('idReciboTipo',sender.Value,'esCxc');
  try
    if (rsidCliente.IsNull) and (not(rsescxc.Value)) then
      rsidcliente.Value := dm.getdefault('CTEOTROSINGRESOS');
  except
  end;
  Generarcodificacion();
end;

procedure TRecibo.SetCodificacion();
begin
  frCodifCtas1.idMoneda := rsidmoneda.value;
  frCodifCtas1.tasa := rstasa.value;
  frCodifCtas1.Referencia := rsrecibo.value;
  frCodifCtas1.TipoDocumento := TipoDoc;
  frCodifCtas1.Tipo := 'INGRESO';
  frCodifCtas1.Fecha := rsFecha.value;
end;

procedure TRecibo.GenerarCodificacion();
var
  Ingreso : string;
  com: Currency;
  imps: Currency;
begin
  inherited;
  //***********************
  frCodifCtas1.BorrarTodas;
  //************************
  SetCodificacion();

  if rsidCliente.IsNull  or rsidReciboTipo.IsNull  then exit;

  if not(Pagoforma.Locate('idPagoForma', rsidPagoForma.Value, [])) then
    raise exception.create('La forma de pago es invalida');

  if (rsValor.ascurrency > 0) then begin //and (not(rsescxc.value))

    if PagoFormaComision.AsFloat = 0.00 then begin
      //********************************
      frCodifCtas1.AgregarLinea(PagoFormacc.value, '', 1, rsValor.value, true);
      //*********************************

      if rsRetencion.value > 0 then begin
        //********************************
        frCodifCtas1.AgregarLinea(TipoRetencionidCuenta.Value, '', 1, rsRetencion.value, true);
        //*********************************
      end;

    end else begin
      //********************************
      com := simpleRoundTo((rsValor.Value * (PagoFormaComision.Value/100.00)),-2);
      imps := SimpleRoundTo((rsValor.Value * (PagoFormaPorcImpuesto.AsFloat / 100.00)),-2);
      frCodifCtas1.AgregarLinea(PagoFormacc.value, '', 1, (rsValor.ascurrency - (com + imps)), true);
      //*********************************

      //********************************
      frCodifCtas1.AgregarLinea(PagoFormactaComision.value, '', 1, com, true);
      //*********************************

      if PagoFormaPorcImpuesto.AsFloat > 0.00 then begin
        //********************************
        frCodifCtas1.AgregarLinea(PagoFormaCtaImpuesto.value, '', 1, imps, true);
        //*********************************
      end;
    end;

//Parcho cuando el le dan buscar y luego editan el recibo
    ClienteAct.Close();
    ClienteAct.Parameters.ParamByName('@IdCliente').Value := rsIdCliente.Value;
    ClienteAct.Open();
//*****************
    if (not(rsescxc.value)) then begin
      Ingreso := ReciboTipo.Lookup('idReciboTipo',rsidrecibotipo.value,'CC');

    end else begin
      //rsdetidcuenta.Value := ClienteActidCuenta.Value;
      Ingreso := BuscarCtaCliente(rsidCliente.Value,rsIdMoneda.Value);
      if Ingreso = '' then
        Ingreso := ClienteActidCuenta.Value;
    end;
    //********************************
     frCodifCtas1.AgregarLinea(Ingreso, '', 2, rsValor.Value + rsRetencion.Value, false);
    //*********************************
  end;

end;



procedure TRecibo.RSValorChange(Sender: TField);
begin
  inherited;
  Generarcodificacion();
end;

procedure TRecibo.RSAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if rsRetencion.Value >0 then Retencion.Checked := true;
  CargarCodificacion;
end;

procedure TRecibo.CargarCodificacion;
begin
  inherited;
//***************************
  frCodifCtas1.GUIDDocumento := rsidRecibo.value;
//***************************

end;

procedure TRecibo.ACancelarExecute(Sender: TObject);
begin
  inherited;
  SelectFirst;
  frCodifCtas1.BorrarAutomaticas;
  cxButton1.Enabled := True;
end;

procedure TRecibo.RSesCxcValidate(Sender: TField);
begin
  inherited;
  If AppEstado = appEdit Then
    If Not Sender.Value Then
      If TieneAplicacion(RSidRecibo.Value) Then
        Raise Exception.Create('No se puede borrar la transaccion de cxc: Este recibo tiene documentos aplicados');

  Generarcodificacion();
end;

procedure TRecibo.RSValorValidate(Sender: TField);
begin
  inherited;
  if rsvalor.Value < 0 then
    raise exception.Create('El valor no puede ser menor que cero');

  CalcRetencion();

 // SetTasa();
end;

procedure TRecibo.SetTasa;
begin
  inherited;
  if (not(rsfecha.IsNull)) and (rsvalor.Value > 0) and (not(rsidmoneda.IsNull)) then
    rsTasa.value := dm.tasaActual(rsidmoneda.Value, rsFecha.value)
  else
    rsTasa.value := 1.0;
end;

procedure TRecibo.RSBeforePost(DataSet: TDataSet);
begin
  inherited;
  if rsvalor.Value <= 0 then raise exception.create('El valor del recibo no es valido');
end;

procedure TRecibo.RSidMonedaValidate(Sender: TField);
begin
  inherited;
  SetTasa();
  GenerarCodificacion();
end;

procedure TRecibo.RSidPagoFormaValidate(Sender: TField);
begin
  inherited;
  GenerarCodificacion();
end;

procedure TRecibo.RptReciboCalcFields(DataSet: TDataSet);
begin
  inherited;
  RPTRecibocValor.AsString := MonToLit(RPTReciboValor.asCurrency,0);
  RPTRecibocAbono.Value:=rsDatosEstadoAbono.value;
  RPTRecibocBalance.Value:=rsDatosEstadoBalance.value;


end;


procedure TRecibo.RetencionClick(Sender: TObject);
begin
  inherited;
  CalcRetencion();
  GenerarCodificacion();
end;

procedure TRecibo.CalcRetencion();
begin
 if rs.State in dseditmodes then
  if (Retencion.checked) and (TipoRetencionPorcentaje.AsFloat >0) and (rsValor.ascurrency > 0) then
    rsRetencion.value := SimpleRoundTo(TipoRetencionPorcentaje.asFloat * rsValor.asCurrency, -2)
  else
    rsRetencion.Value := 0.00;

end;

procedure TRecibo.RSCalcFields(DataSet: TDataSet);
begin
  inherited;
  rsTotalRet.Value := rsValor.AsCurrency  + rsRetencion.AsCurrency ;
end;

procedure TRecibo.RSTasaValidate(Sender: TField);
begin
  inherited;
  GenerarCodificacion();
end;

procedure TRecibo.FillMruBanco;
begin
  With qryBancos Do
  Begin
    Close();
    Open();
    First;
    dxDBMRUEdit1.Items.Clear;
    While Not Eof Do
    Begin
      dxDBMRUEdit1.Items.Add(qryBancosBanco.Value);
      Next;
    End;
  End;
end;

function TRecibo.BuscarCtaCliente(const idCliente,
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

function TRecibo.TieneAplicacion(IdDocumento: Variant): Boolean;
begin
  With spTieneAplicacion, Parameters Do
  Begin
    ParamByName('@IdCxc').Value := IdDocumento;
    ExecProc;
    Result := ParamByName('@DocAplicado').Value;
  End;
end;

procedure TRecibo.cxButton1Click(Sender: TObject);
begin
  inherited;
  if rsescxc.AsBoolean then
    ModalShow(TCxC,ShowEdit,rsidrecibo.Value,'idcxc',False)
  else
    Showmessage('Solo los recibos de CxC se pueden aplicar')  ;
end;

procedure TRecibo.RSTotalRetValidate(Sender: TField);
begin
  inherited;
  GenerarCodificacion();
end;

procedure TRecibo.RSidReciboValidate(Sender: TField);
begin
  inherited;
  frCodifCtas1.GUIDDocumento := rsIdRecibo.Value;
end;

procedure TRecibo.AEditarExecute(Sender: TObject);
begin
  inherited;
cxButton1.Enabled := False;
end;

end.

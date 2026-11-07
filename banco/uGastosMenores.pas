unit uGastosMenores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClassMD, cxLookAndFeelPainters, DB, ADODB, ImgList,
  ActnList, Wwdatsrc, StdCtrls, cxButtons, Gradient, cxDBEdit, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxCurrencyEdit, cxButtonEdit, cxDBLookupComboBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxLookupEdit, cxDBLookupEdit,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls,
  ppPrnabl, ppBands, ppCache, ppStrtch, ppMemo, ppParameter;

type
  TGastosMenores = class(TMantClassMD)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    tvDetalle: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    tvDetalleValor: TcxGridDBColumn;
    tvDetalleidCuenta: TcxGridDBColumn;
    tvDetalleDBColumn1: TcxGridDBColumn;
    luCta: TcxDBLookupComboBox;
    Label4: TLabel;
    dsBcos: TwwDataSource;
    RSGUIDDocumento: TGuidField;
    RSFecha: TDateTimeField;
    RSidCuentaBanco: TIntegerField;
    RSCompFiscal: TStringField;
    RSDetidDetalle: TGuidField;
    RSDetGUIDDocumento: TGuidField;
    RSDetidCuenta: TStringField;
    RSDetLineaNum: TAutoIncField;
    RSDetDescripcion: TStringField;
    RSDetImporte: TBCDField;
    rsRPT: TADODataSet;
    rsRPTGUIDDocumento: TGuidField;
    rsRPTFecha: TDateTimeField;
    rsRPTidCuentaBanco: TIntegerField;
    rsRPTCompFiscal: TStringField;
    rsRPTidCuenta: TStringField;
    rsRPTDescripcion: TStringField;
    rsRPTImporte: TBCDField;
    dsRPT: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    Report: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppLabel5: TppLabel;
    ppLine2: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppShape4: TppShape;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppShape5: TppShape;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppShape6: TppShape;
    ppSummaryBand1: TppSummaryBand;
    rsBancos: TADODataSet;
    rsBancosidCuentaBanco: TAutoIncField;
    rsBancosNombre: TStringField;
    rsBancosidMoneda: TIntegerField;
    rsBancosTipoCuenta: TStringField;
    rsBancosUltimoCheque: TIntegerField;
    rsBancosidCuentaMayor: TStringField;
    rsBancosNumCuenta: TStringField;
    ppDBMemo1: TppDBMemo;
    lTotal: TLabel;
    Label5: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    RSidClaseGasto: TStringField;
    rsClase: TADODataSet;
    dsClase: TwwDataSource;
    rsClaseidClasegasto: TStringField;
    rsClaseClaseGasto: TStringField;
    tvDetalleDBColumn2: TcxGridDBColumn;
    tvDetalleDBColumn3: TcxGridDBColumn;
    rsCCAct: TADODataSet;
    rsCCActidCentroCosto: TGuidField;
    rsCCActCentroCosto: TStringField;
    rsCCActCentroCostoDesc: TStringField;
    rsCCActActivo: TBooleanField;
    rsCCActTipo: TStringField;
    rsCCActReferencia: TStringField;
    rsCCActidCentroCostoParent: TGuidField;
    rsCCActOrden: TIntegerField;
    rsCCActNivel: TIntegerField;
    rsCCActStatus: TStringField;
    cGetCuentaPorCC: TADOCommand;
    RSDetidcentrocosto: TGuidField;
    RSDetcentrocosto: TStringField;
    RSDetidpartida: TStringField;
    RSDetReferencia: TStringField;
    tvDetalleDBColumn4: TcxGridDBColumn;
    RSDetidMoneda: TIntegerField;
    RSDetidPagoForma: TIntegerField;
    tvDetalleDBColumn5: TcxGridDBColumn;
    dsFormaPago: TwwDataSource;
    rsFormaPago: TADODataSet;
    rsFormaPagoidPagoForma: TIntegerField;
    rsFormaPagoPagoForma: TStringField;
    RSusuario: TStringField;
    LabelEcfStatus: TLabel;
    edEcfStatus: TcxDBTextEdit;
    btnRefrescarECF: TcxButton;
    LabelCodSeg: TLabel;
    edCodSeg: TcxDBTextEdit;
    bSendECF: TcxButton;
    cCambStatusEcf: TADOCommand;
    RSStatusEcf: TStringField;
    RSCodigoSeguridadEcf: TStringField;
    RSUltError: TStringField;
    RSTrackId: TStringField;
    RSFechaFirmaDigital: TDateTimeField;
    RSPendValidacion: TBooleanField;
    RSPendEnvioEcf: TBooleanField;
    RSFechaVenceNCF: TDateTimeField;
    RSTipoNcf: TStringField;
    procedure bSendECFClick(Sender: TObject);
    procedure btnRefrescarECFClick(Sender: TObject);
    procedure cxGrid1DBTableView1idCuentaPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure RSDetidCuentaValidate(Sender: TField);
    procedure RSNewRecord(DataSet: TDataSet);
    procedure RSDetNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1Enter(Sender: TObject);
    procedure cxGrid1Exit(Sender: TObject);
    procedure RSBeforePost(DataSet: TDataSet);
    procedure AGuardarExecute(Sender: TObject);
    procedure RSDetAfterPost(DataSet: TDataSet);
    procedure tvDetalleDBColumn2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure RSDetidpartidaValidate(Sender: TField);
    procedure RSDetcentrocostoValidate(Sender: TField);
    procedure RSDetidcentrocostoValidate(Sender: TField);
  private
    { Private declarations }
    ValidarCCPorCta: Boolean;
    ALMACENDEFAULT: string;
    CAJA_GASTOS: Integer;
    _loading: Boolean;
    function CalcTotalImporte: Currency;
    function GetCuentaPorCC(const idCC: Variant;
      const idPartida: string): string;
    function ValidarCentroCostoCuenta(const cta: string; idcc: Variant;
      const idpartida: string): Boolean;
  protected
    function Localizar(const id: variant): boolean; override;
    procedure doPrint; override;
    procedure browsebotonstate; override;
  public
    { Public declarations }
    procedure SendEcf(const Silencioso: Boolean = False);
  end;

var
  GastosMenores     : TGastosMenores;

implementation

uses Udata, UUtiles, uBuscarAuxiliar, uBuscarCuentaMayor,
  uMantClass, uBusqueda, uBusquedaDX, uBusquedaRangoDX, uBuscarCC,
  uFullTextSearch, udgiidm;

{$R *.dfm}

procedure TGastosMenores.cxGrid1DBTableView1idCuentaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  idCta             : string;
begin
  inherited;
  if appEstado <> appBrowse then begin
    idCta := BuscarCtaDetalle();
    if idCta <> '' then begin
      if not (rsdet.State in dsEditModes) then
        rs.Edit();

      rsDetIdCuenta.Asstring := idCta;
      tvDetalle.Columns[2].Focused := True;
    end;
  end;
end;

procedure TGastosMenores.RSDetidCuentaValidate(Sender: TField);
var
  desc              : string;
  msg               : string;
  aux               : boolean;
begin
  inherited;
  if dm.ValidarCuentaEx(rsDetIdCuenta.AsString, desc, msg, aux) then
    rsDetDescripcion.Value := desc
  else
    raise exception.create(msg);
end;

function TGastosMenores.Localizar(const id: variant): boolean;
begin
  AbrirMDDataSet(id);
  Result := not rs.Eof;
  lTotal.Caption := FormatFloat('###,###,##0.00', CalcTotalImporte());
end;

procedure TGastosMenores.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  RSUsuario.Value := dm.UsuarioActual;
  rsGUIDDocumento.asGuid := dm.NewGuid();
  rsIdCuentabanco.Value := CAJA_GASTOS;
  rsFecha.Value := dm.FechaHoy;
  rsidClaseGasto.Value := '02';
  lTotal.Caption := '0.00';


end;

procedure TGastosMenores.RSDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  RSDetidDetalle.AsGuid := dm.NewGuid();
  rsDetGUIDDocumento.Value := rsGUIDDocumento.Value;
  rsDetidPagoForma.Value:= 1;
  rsDetidMoneda.Value:=1;
  if ALMACENDEFAULT <> '' then rsDetCentroCosto.value := ALMACENDEFAULT;
end;

procedure TGastosMenores.FormCreate(Sender: TObject);
var
  CTA               : Variant;
begin
  inherited;
  _loading := False;
  Modulo := 'CxP';
  rsBancos.Open();

  CTA := dm.GetDefault('CAJA_GASTOS');
  ValidarCCPorCta := dm.GetDefaultStr('VALIDAR_CC_CXP') <> '0';

  if CTA <> null then
    CAJA_GASTOS := CTA;

  BusqField := 'GUIDDocumento';
  spName := 'bcoGastosMenoresRangoFind';
  OcultarC1 := True;
  TFBusqueda := TBusquedaRangoDX;

  //tvDetalleIdAuxiliar.Visible := dm.UsarAuxiliares;
  lTotal.Caption := '';
  rsClase.Open();
  rsFormaPago.Open;
  ALMACENDEFAULT := dm.GetPCSetting('ALMACENDEFAULT');
  if ALMACENDEFAULT = '' then
    ALMACENDEFAULT := dm.GetDefaultStr('ALMACENDEFAULT');

  if not dm.rsPartidas.Active then
    dm.rsPartidas.Open();
end;

procedure TGastosMenores.cxGrid1Enter(Sender: TObject);
begin
  inherited;
  if appEstado <> appBrowse then begin
    Enter2Tab := False;
    if rsDet.isEmpty then
      rsDet.Append();
  end;
end;

procedure TGastosMenores.cxGrid1Exit(Sender: TObject);
begin
  inherited;
  Enter2Tab := True;
end;

procedure TGastosMenores.RSBeforePost(DataSet: TDataSet);
var
  sec: TSecuenciaNCF;
begin
  inherited;
  if rsIdCuentabanco.AsInteger = 0 then
    raise Exception.Create('Debe especificar la cuenta de caja');

  if rsCompfiscal.IsNull or (Trim(rsCompfiscal.AsString) = '') then begin
    sec := dm.GetCompFiscal(ComputerName(), 'GM');
    if not sec.Cancelado and (sec.secuencia <> '') then
    begin
      rsCompfiscal.Value := sec.secuencia;
      if RS.FindField('FechaVenceNCF') <> nil then
        RSFechaVenceNCF.Value := sec.VencimientoNCF;
      if RS.FindField('TipoNcf') <> nil then
        RSTipoNcf.Value := Copy(sec.secuencia, 2, 2);
    end
    else
      raise Exception.Create('No se pudo generar la secuencia de Comprobante Fiscal para Gastos Menores');
  end;
end;

procedure TGastosMenores.doPrint;
begin
  inherited;
  with rsRPT do begin
    Close();
    Parameters[1].Value := RSGuiddocumento.Value;
    Open();
  end;

  ImprimirReporte(Report);
end;

procedure TGastosMenores.AGuardarExecute(Sender: TObject);
var
  isInsert: Boolean;
begin
  if rsFecha.Value <= dm.cierre(Modulo) then
    raise exception.create('La fecha de la transaccion ha sido cerrada');

  if ValidarCCPorCta then begin
    with RSDet do begin
      DisableControls();
      try
        First();
        while not Eof do begin
          if not ValidarCentroCostoCuenta(RSDetidCuenta.Value, RSDetidcentrocosto.Value, RSDetidpartida.Value) then
            raise Exception.Create('El centro de costo y la partida no pueden estar vacios para ninguna cuenta de costo o gasto');
          Next();
        end;
        First();
      finally
        EnableControls();
      end;
    end;
  end;
  
  isInsert := (appestado = appInsert);
  if isInsert then
     CrearLog('Insercion')
  else
     CrearLog('Edicion');

  inherited;

  if isInsert and (dmDGII <> nil) and dmDGII.AutoEnviarEcfs and (Copy(RSCompFiscal.Value, 1, 1) = 'E') then
  begin
    SendEcf(True);
  end;
end;

function TGastosMenores.CalcTotalImporte: Currency;
var
  t                 : Currency;
  bm                : string;
begin
  t := 0;
  with rsDet do begin
    bm := Bookmark;
    DisableControls();
    try
      First();
      while not eof do begin
        t := t + RSDetImporte.Value;
        Next();
      end;
    finally
      BookMark := bm;
      EnableControls();
    end;
  end;
  Result := t;
end;

procedure TGastosMenores.RSDetAfterPost(DataSet: TDataSet);
begin
  inherited;
  lTotal.Caption := FormatFloat('###,###,##0.00', CalcTotalImporte());
end;

procedure TGastosMenores.tvDetalleDBColumn2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i                 : Variant;
begin
  if appEstado = appBrowse then
    Exit;

  if RS.Active then begin
    //i := BuscarCentroCosto();
    i := TFullTextSearch.Buscar('idCentroCosto', True, 'costControCostoFind', False);
    if i <> null then begin
      with rsCCAct do begin
        Close();
        Parameters[1].Value := i;
        Parameters[2].Value := NULL;
        Open();
        if Eof then
          raise Exception.Create('Este centro de costo no existe');
      end;
      if not (RSDet.State in dsEditModes) then
        RSDet.Edit();
      RSDetidcentrocosto.Value := i;
      RSDetcentrocosto.Value := rsCCActCentroCosto.Value;
    end;
  end;
end;

function TGastosMenores.GetCuentaPorCC(const idCC: Variant;
  const idPartida: string): string;
begin
  with cGetCuentaPorCC do begin
    Parameters[1].Value := idCC;
    Parameters[2].Value := idPartida;
    Execute();
    if Parameters[3].Value = NULL then
      Result := ''
    else
      Result := Parameters[3].Value;
  end;
end;

procedure TGastosMenores.RSDetidpartidaValidate(Sender: TField);
var
  str               : string;
begin
  if RSDetidCentroCosto.IsNull or (RSDetidpartida.AsString = '') or (RSDetidCuenta.AsString <> '') then
    Exit;

  str := GetCuentaPorCC(RSDetidcentrocosto.Value, RSDetidpartida.AsString);
  if str <> '' then
    RSDetidCuenta.Value := str;
end;

function TGastosMenores.ValidarCentroCostoCuenta(const cta: string; idcc: Variant; const idpartida: string): Boolean;
begin
  Result := True;

  if cta = '' then
    Result := False;

  if ValidarCCPorCta then begin
    if cta[1] in ['5', '6', '7', '8', '9'] then begin
      if (idcc = Null) or (idcc = '') then // or (idPartida = '') then
        Result := False;
    end;
  end;
end;

procedure TGastosMenores.RSDetcentrocostoValidate(Sender: TField);
var
  descr: string;
  idcc: Variant;
begin
  inherited;

  if _loading then
    Exit;
    
  _loading := True;

  try
    if rsDetCentroCosto.Asstring = '' then
      rsDetIdCentroCosto.Clear()
    else begin
      dm.ValidarCentroCosto(rsDetCentroCosto.Value,descr, idcc);
      rsDetIdCentroCosto.Value := idcc;
    end;
  finally
    _loading := False;
  end;
end;

procedure TGastosMenores.RSDetidcentrocostoValidate(Sender: TField);
var
  descr: string;
  cc: string;
begin
  inherited;

  if _loading then
    Exit;

  _loading := True;
  try
    dm.ValidarCentroCosto(rsDetidCentroCosto.Value,descr, cc);
    rsDetCentroCosto.Value := cc;
  finally
    _loading := False;
  end;
end;

procedure TGastosMenores.SendEcf(const Silencioso: Boolean = False);
begin
  if (Copy(RSCompFiscal.Value, 1, 1) <> 'E') then
    Exit;

  if (Trim(RSStatusEcf.AsString) <> 'PENDIENTE') and
     (Trim(RSStatusEcf.AsString) <> '') and
     (Trim(RSStatusEcf.AsString) <> 'ERROR') then
  begin
    if not Silencioso then ShowMessage('El estado del comprobante no permite el envio (' + RSStatusEcf.AsString + ').');
    Exit;
  end;

  if not Silencioso then
    if not Confirmar('Esta seguro de enviar este ECF? luego de enviado, el documento no podra ser editado') then
      Exit;

  with cCambStatusEcf do begin
    Parameters[1].Value := RSGUIDDocumento.Value;
    Execute();
    if Parameters[0].Value = -1 then
    begin
      if not Silencioso then ShowMessage('Este documento ya fue enviado al sistema ECF y no puede enviarse dos veces.');
      Exit;
    end;
  end;

  Localizar(RSGUIDDocumento.Value);

  if not Silencioso then
    ShowMessage('El ECF ha sido enviado al sistema de procesamiento'#13#10'En instantes podra ver el resultado pulsando Refrescar.');
end;

procedure TGastosMenores.bSendECFClick(Sender: TObject);
begin
  SendEcf(False);
end;

procedure TGastosMenores.btnRefrescarECFClick(Sender: TObject);
var
  st, err: string;
begin
  Localizar(RSGUIDDocumento.Value);
  if RS.Active and not RS.IsEmpty then
  begin
    st := Trim(RSStatusEcf.AsString);
    if (st = 'ERROR') or (st = 'RECHAZADO') then
    begin
      err := '';
      if RS.FindField('UltError') <> nil then
        err := RSUltError.AsString;
      if (Pos('135', err) > 0) or (Pos('rango', LowerCase(err)) > 0) then
        ShowMessage('DGII (Ambiente de Pruebas) - ' + st + ':' + #13#10#13#10 +
                    err + #13#10#13#10 +
                    'NOTA: Este rechazo proviene del servidor de la DGII (no de SADE).' + #13#10 +
                    'Indica que para este RNC no se ha solicitado el rango de secuencias de prueba ' +
                    'para Gastos Menores (E43) en la Oficina Virtual de la DGII.')
      else if err <> '' then
        ShowMessage('DGII (Ambiente de Pruebas) - ' + st + ':' + #13#10#13#10 + err)
      else
        ShowMessage('DGII (Ambiente de Pruebas) - ' + st);
    end
    else if (st = 'ACEPTADO') or (st = 'VALIDADO') then
    begin
      ShowMessage('DGII (Ambiente de Pruebas) - ' + st + ':' + #13#10#13#10 +
                  'Codigo Seguridad: ' + RSCodigoSeguridadEcf.AsString);
    end
    else if (st = 'ENVIADO') or (st = 'PENDIENTE') then
    begin
      ShowMessage('Estado: ' + st + #13#10#13#10 +
                  'El documento fue transmitido y esta pendiente de validacion en la DGII.' + #13#10 +
                  'Vuelva a presionar Refrescar en unos segundos.');
    end;
  end;
end;
procedure TGastosMenores.browsebotonstate;
var
  esEcf: Boolean;
  st: string;
begin
  inherited browsebotonState();
  esEcf := (Copy(RSCompFiscal.Value, 1, 1) = 'E');
  st := Trim(RSStatusEcf.AsString);

  if Assigned(bSendECF) then
  begin
    bSendECF.Enabled := (appEstado = appBrowse) and
                        RS.Active and (not RS.IsEmpty) and
                        esEcf and
                        ((st = 'PENDIENTE') or (st = 'ERROR') or (st = ''));
  end;

  if Assigned(btEditar) and RS.Active and (not RS.IsEmpty) then
  begin
    if esEcf and ((st = 'ACEPTADO') or (st = 'VALIDADO')) then
      btEditar.Enabled := False;
  end;

  if Assigned(btBorrar) and RS.Active and (not RS.IsEmpty) then
  begin
    if esEcf and ((st = 'ACEPTADO') or (st = 'VALIDADO') or (st = 'ENVIADO')) then
      btBorrar.Enabled := False;
  end;
end;

end.

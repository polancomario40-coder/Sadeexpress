unit uMantDocumentos;

interface
      
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, DB, dxCntner, StdCtrls, cxDBEdit, cxDropDownEdit,
  cxCalendar, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxCurrencyEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Buttons, cxCheckBox, DBCtrls, Gradient, cxMemo, cxLabel, cxDBLabel,
  cxGroupBox, cxRadioGroup, cxGridBandedTableView, cxGridDBBandedTableView,
  ImgList, ActnList, Wwdatsrc, cxLookAndFeelPainters, cxButtons,
  cxPC, cxImageComboBox, cxSpinEdit, ADODB, Menus, kbmMemTable;

type
  TfMantDocumentos = class(TMantClass)
    Label4: TLabel;
    Label1: TLabel;
    beSuplidor: TcxDBButtonEdit;
    deFecha: TcxDBDateEdit;
    edNombre: TcxDBTextEdit;
    edDir: TcxDBTextEdit;
    edTel1: TcxDBTextEdit;
    edTel2: TcxDBTextEdit;
    Label2: TLabel;
    edRef: TcxDBTextEdit;
    Label3: TLabel;
    edValor: TcxDBCurrencyEdit;
    Label5: TLabel;
    luMoneda: TcxDBLookupComboBox;
    Label6: TLabel;
    edImps: TcxDBCurrencyEdit;
    dsCtas: TDataSource;
    cxDBCheckBox1: TcxDBCheckBox;
    dsMonedas: TDataSource;
    dsImps: TDataSource;
    DBText1: TDBText;
    btImpuestos: TcxButton;
    cxDBMemo1: TcxDBMemo;
    Label9: TLabel;
    cxDBLabel1: TcxDBLabel;
    dsAplicaciones: TDataSource;
    btAnular: TcxButton;
    bSendECF: TcxButton;
    btEditar: TcxButton;
    dsRets: TDataSource;
    DistCosto: TAction;
    pcPages: TcxPageControl;
    tsCodif: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    grDetalle: TcxGrid;
    tvCuentas: TcxGridDBTableView;
    tvCuentasidCuenta: TcxGridDBColumn;
    tvCuentasDescripcion: TcxGridDBColumn;
    tvCuentasDebito: TcxGridDBColumn;
    tvCuentasCredito: TcxGridDBColumn;
    grDetalleLevel1: TcxGridLevel;
    GridImpuestos: TcxGrid;
    tvImpuestos: TcxGridDBTableView;
    GridImpuestosImpuesto: TcxGridDBColumn;
    GridImpuestosDesc: TcxGridDBColumn;
    GridImpuestosPorc: TcxGridDBColumn;
    GridImpuestosMonto: TcxGridDBColumn;
    glImpuestos: TcxGridLevel;
    GridRets: TcxGrid;
    tvRetenciones: TcxGridDBTableView;
    GridRetsCodigo: TcxGridDBColumn;
    GridRetsRetencion: TcxGridDBColumn;
    GridRetsPorc: TcxGridDBColumn;
    GridRetsMonto: TcxGridDBColumn;
    glRetenciones: TcxGridLevel;
    GridCreditos: TcxGrid;
    tvCreditos: TcxGridDBTableView;
    GridCreditosTipo: TcxGridDBColumn;
    GridCreditosRef: TcxGridDBColumn;
    GridCreditosFecha: TcxGridDBColumn;
    GridCreditosValor: TcxGridDBColumn;
    glCreditos: TcxGridLevel;
    imgTipos: TImageList;
    Grid: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    GridDBTableView1TipoItem: TcxGridDBColumn;
    GridDBTableView1idProducto: TcxGridDBColumn;
    GridDBTableView1Descripcion: TcxGridDBColumn;
    GridDBTableView1Cantidad: TcxGridDBColumn;
    GridDBTableView1idUnidad: TcxGridDBColumn;
    GridDBTableView1Costo: TcxGridDBColumn;
    GridDBTableView1DBColumn1: TcxGridDBColumn;
    GridLevel1: TcxGridLevel;
    dsUnidades: TwwDataSource;
    dsItems: TDataSource;
    dsClaseGasto: TDataSource;
    Label11: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    tvCuentasDBColumn2: TcxGridDBColumn;
    tvCuentasDBColumn3: TcxGridDBColumn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    aAnterior: TAction;
    aProximo: TAction;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBTextEdit2: TcxDBTextEdit;
    luTipoID: TcxDBLookupComboBox;
    Label12: TLabel;
    Label13: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label14: TLabel;
    Label15: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label16: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    tvCuentasCentroCosto: TcxGridDBColumn;
    tvCuentasIdPartida: TcxGridDBColumn;
    Label17: TLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    Label18: TLabel;
    cxButton2: TcxButton;
    PopupMenu1: TPopupMenu;
    ImportardeMovInventario1: TMenuItem;
    Label19: TLabel;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    Label20: TLabel;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    cBorrarDesgloce: TADOCommand;
    rsDesglose: TADODataSet;
    rsDesgloseidPago: TGuidField;
    rsDesgloseidDocumento: TGuidField;
    rsDesgloseMonto: TBCDField;
    rsDesgloseNumero: TStringField;
    rsDesgloseidFormaPago: TIntegerField;
    tvRetencionesDBColumn1: TcxGridDBColumn;
    dsTiposRetencion: TDataSource;
    dsFormaPago: TDataSource;
    Label8: TLabel;
    Label10: TLabel;
    Label21: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    luClase: TcxDBLookupComboBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    Label7: TLabel;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    Label22: TLabel;
    cxDBCurrencyEdit7: TcxDBCurrencyEdit;
    Label23: TLabel;
    cxDBCurrencyEdit8: TcxDBCurrencyEdit;
    Label24: TLabel;
    LabelEcfStatus: TLabel;
    btnRefrescarECF: TcxButton;
    edEcfStatus: TcxDBTextEdit;
    procedure SpeedButton7Click(Sender: TObject);
    procedure beSuplidorPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure cxDBCheckBox1PropertiesChange(Sender: TObject);
    procedure grDetalleEnter(Sender: TObject);
    procedure grDetalleExit(Sender: TObject);
    procedure tvCuentasStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure btImpuestosClick(Sender: TObject);
    procedure tvCuentasidCuentaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure SpeedButton8Click(Sender: TObject);
    procedure AAnularExecute(Sender: TObject);
    procedure ALocalizarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tvRetencionesidRetencionPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure GridDBTableView1idProductoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
    procedure GridEnter(Sender: TObject);
    procedure GridExit(Sender: TObject);
    procedure GridRetsEnter(Sender: TObject);
    procedure aAnteriorExecute(Sender: TObject);
    procedure aProximoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1Exit(Sender: TObject);
    procedure tvCuentasCentroCostoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ImportardeMovInventario1Click(Sender: TObject);
    procedure bSendECFClick(Sender: TObject);
    procedure btnRefrescarECFClick(Sender: TObject);
  private
    FIdTrans: Integer;
    pagos: TkbmMemTable;
    procedure AgregarImpuestos;
    procedure SetIdTrans(const Value: Integer);
    procedure registra_pago;
    procedure SendEcf(Silencioso: Boolean = False; ForzarEstado: Boolean = False);
    { Private declarations }
  protected
    procedure doNuevo; override;
    procedure doCancelar; override;
    procedure doSalir; override;
    procedure doGuardar; override;
    procedure doBorrar; override;
    procedure doPrint; override;
    function Localizar(const id : Variant) : boolean; override;

    procedure browsebotonstate; override;
    procedure Editbotonstate; override;
    procedure Newbotonstate; override;
  public
    { Public declarations }
    procedure AbrirDocumento(const idDoc: Integer);
    procedure doShowState; override;

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    property IdTrans: Integer read FIdTrans write SetIdTrans;
  end;

var
  fMantDocumentos: TfMantDocumentos;

implementation

uses uDOCDM, uListaSups, uBuscarTipoImp, uBuscarCargos, Utils, udgiidm,
  uBuscarCuentaMayor, uformx, UUtiles, uBusqueda,uImprNCR, Udata, uBusquedaRangoDX, uFullTextSearch,
  uBuscarDocumentoDX, uFacturaCobro;

{$R *.dfm}

procedure TfMantDocumentos.SpeedButton7Click(Sender: TObject);
begin
  inherited;
//  Salir();
end;

procedure TfMantDocumentos.doPrint;
begin
  if docdm.mDocumentoIdDocumento.AsInteger > 0 then
  begin
    if (((Length(Trim(docdm.mDocumentoCompFiscal.Value)) = 11) and (Copy(docdm.mDocumentoCompFiscal.AsString, 2, 2) = '11')) or
        ((Length(Trim(docdm.mDocumentoCompFiscal.Value)) = 13) and (Copy(docdm.mDocumentoCompFiscal.AsString, 2, 2) = '41')) or
        ((Length(Trim(docdm.mDocumentoCompFiscal.Value)) = 19) and (Copy(docdm.mDocumentoCompFiscal.AsString, 10, 2) = '11'))) Then //Comprobantes especiales proveedores informales
      ImprimirProvInf(docdm.mDocumentoIdDocumento.AsInteger)
    Else
      ImprimirNCR(docdm.mDocumentoIdDocumento.AsInteger);
  end;
end;

procedure TfMantDocumentos.beSuplidorPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  i: Integer;
begin
  inherited;
  if appEstado in [appEdit, appInsert] then begin
    i := BuscarSuplidor();
    if i > 0 then begin
      if not (docdm.mDocumento.State in dsEditModes) then
        docdm.mDocumento.Edit();
        
      docdm.mDocumentoIdSuplidor.AsInteger := i;

      SelectNext(ActiveControl,True,True);
    end;
  end;
end;

procedure TfMantDocumentos.SpeedButton1Click(Sender: TObject);
begin
  inherited;
//  Nuevo();
end;

procedure TfMantDocumentos.AbrirDocumento(const idDoc: Integer);
begin
  docdm.AbrirDocumento(idDoc);
end;

procedure TfMantDocumentos.doCancelar;
begin
  inherited;
  if docdm.mDocumentoIdDocumento.AsInteger > 0 then
    docdm.AbrirDocumento(docdm.mDocumentoidDocumento.AsInteger)
  else begin
    docdm.CerrarDocumento();
  end;
end;

procedure TfMantDocumentos.doGuardar;
var
  isInsert: Boolean;
begin
// if docdm.mDocumentoCompFiscal.AsString = '' then
//    raise Exception.Create('No puede guardar documentos sin un NCF valido');

  SelectNext(ActiveControl,True,True);
  if docdm.mDocumentoDiferencia.AsCurrency <> 0 then begin
    if dm.PermitirDescuadre then begin
      if MessageDlg('Hay un descuadre en el documento, desea guardarlo',mtConfirmation,[mbYes,mbNo],0) = mrNo then
        Abort();
    end
    else
      raise Exception.Create('Hay un descuadre en el documento, no puede guardarlo');
  end;

  isInsert := (appestado = appInsert);

  inherited doGuardar();

  docdm.GuardarDocumento();

  if isInsert and (dmDGII <> nil) and dmDGII.AutoEnviarEcfs and (Copy(Trim(docdm.mDocumentoCompFiscal.AsString), 1, 1) = 'E') then
  begin
    SendEcf(True, True);
  end;

  {pagos := GetPagoCxP(docdm.mDocumentoGUIDDocumento.AsString, docdm.mDocumentoTotal.AsFloat);
  if not(pagos = nil) then
    registra_pago; }
end;

procedure TfMantDocumentos.registra_pago;
begin
  cBorrarDesgloce.Parameters[1].Value := docdm.mDocumentoGUIDDocumento.Value;
  cBorrarDesgloce.Execute();

  rsDesglose.Close;
  rsDesglose.Open;

  with pagos do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      rsDesglose.Insert;
      rsDesgloseidPago.AsString := Pagos.FieldByName('idPago').AsString;
      rsDesgloseidDocumento.AsString := Pagos.FieldByName('idDocumento').AsString;
      rsDesgloseidFormaPago.AsInteger := Pagos.FieldByName('idFormaPago').AsInteger;
      rsDesgloseMonto.AsFloat := Pagos.FieldByName('Monto').AsFloat;
      rsDesgloseNumero.AsString := Pagos.FieldByName('Numero').AsString;
      rsDesglose.Post();
      Next();
    end;
    EnableControls;
  end;

  rsDesglose.UpdateBatch();
end;

procedure TfMantDocumentos.doNuevo;
begin
  inherited;
  if UpperCase(XField) = 'IDTRANS' then
    docdm.IdTrans := XValue;

  with docdm do begin
    NuevoDocumento();
  end;
end;

procedure TfMantDocumentos.doSalir;
begin
  inherited;
  Close();
end;

constructor TfMantDocumentos.Create(AOwner: TComponent);
begin
 // if not Assigned(docdm) then
    docdm := Tdocdm.Create(Application);

//  docdm.IdTrans := idTr;

//  showmessage('ya');

  inherited Create(AOWner);
end;

destructor TfMantDocumentos.Destroy;
begin
  if Assigned(docdm) then
    FreeAndNil(docdm);

  inherited Destroy;
end;

procedure TfMantDocumentos.SpeedButton6Click(Sender: TObject);
begin
  inherited;
{  SelectNext(ActiveControl,True,True);
  if docdm.mDocumentoDiferencia.AsCurrency <> 0 then begin
    if MessageDlg('Hay un descuadre en el documento, desea guardarlo',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      Exit;
  end;

  Guardar();}
end;

procedure TfMantDocumentos.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  //Cancelar();
end;

procedure TfMantDocumentos.cxDBCheckBox1PropertiesChange(Sender: TObject);
begin
  inherited;
  if grDetalle.Visible then begin
    if docdm.mCtasDoc.State in dsEditModes then
      docdm.mCtasDoc.Cancel();

    tsCodif.TabVisible := cxDBCheckBox1.Checked;
    if tsCodif.TabVisible then
      pcPages.ActivePage := tsCodif;
  end;
end;

procedure TfMantDocumentos.grDetalleEnter(Sender: TObject);
begin
  inherited;
  if appEstado <> appBrowse then begin
    Enter2Tab := False;
    if (docdm.mCtasDoc.RecordCount = 0) then
      docdm.mCtasDoc.Append()
  end;
end;

procedure TfMantDocumentos.grDetalleExit(Sender: TObject);
begin
  inherited;
  if appEstado <> appBrowse then
    Enter2Tab := True;
end;

procedure TfMantDocumentos.AgregarImpuestos;
var
  i: Integer;
begin
  i := BuscarImpuesto();
  if i > 0 then
    docdm.AgregarImpuesto(i);
end;

procedure TfMantDocumentos.tvCuentasStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
  if ARecord.Values[5] = True then
    AStyle := cxStyle1
  else
    AStyle := nil;
end;

procedure TfMantDocumentos.btImpuestosClick(Sender: TObject);
begin
  inherited;
  AgregarImpuestos();
end;

procedure TfMantDocumentos.tvCuentasidCuentaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  idCta: string;
begin
  inherited;
  if appEstado = appBrowse then
    Exit;

  if docdm.mCtasDocAutomatica.AsBoolean then
    Exit;
    
  idCta := BuscarCtaDetalle();
  if idCta <> '' then begin
    if not (docdm.mCtasDoc.State in dsEditModes) then
      docdm.mCtasDoc.Edit();

    docdm.mCtasDocIdCuenta.Asstring := idCta;
    tvCuentas.Columns[3].Focused := True;
  end;
end;

procedure TfMantDocumentos.SpeedButton8Click(Sender: TObject);
begin
  inherited;
{  if (docdm.mDocumentoidDocumento.AsInteger > 0) then begin
    if (MessageDlg('Esta seguro de anular el documento',mtConfirmation,[mbYes,mbNo],0) = mrYes) then
      docdm.BorrarDocumento();
  end
  else
    Nuevo();   }
end;

procedure TfMantDocumentos.doBorrar;
begin
  inherited doBorrar();
  if (docdm.mDocumentoidDocumento.AsInteger > 0) then begin
    if (MessageDlg('Esta seguro de borrar el documento',mtConfirmation,[mbYes,mbNo],0) = mrYes) then
      docdm.BorrarDocumento();
  end;
end;

procedure TfMantDocumentos.SetIdTrans(const Value: Integer);
begin
  FIdTrans := Value;
  if Assigned(docdm) then
    docdm.IdTrans := Value;
end;

procedure TfMantDocumentos.doShowState;
begin
  inherited doShowState();
  idTrans := XValue;
end;

function TfMantDocumentos.Localizar(const id: Variant): boolean;
var
  oldst : boolean;
begin
  Result := False;
  try
    oldst := docDM.Novalidar;
    DocDM.Novalidar := true;
    AbrirDocumento(id);
    browsebotonstate();
    Docdm.Novalidar:= oldst;
    Result := True;
  except
    on e:Exception do begin
      ShowMessage('Error cargando registro: ' + #13 + e.Message);
    end;
  end;
end;

procedure TfMantDocumentos.AAnularExecute(Sender: TObject);
begin
  inherited;
  if (docdm.mDocumentoidDocumento.AsInteger > 0) and (MessageDlg('Esta seguro de anular el documento',mtConfirmation,[mbYes,mbNo],0) = mrYes) then
    docdm.AnularDocumento();
end;

procedure TfMantDocumentos.browsebotonstate;
begin
  inherited browsebotonState();
  btImpuestos.Enabled := False;
  if docdm.mDocumento.RecordCount > 0 then
    btImprimir.Enabled := True;

  DistCosto.Enabled := False;
  bSendECF.Enabled := (docdm.mDocumento.Active) and (docdm.mDocumentoIdDocumento.AsInteger > 0) and (Copy(Trim(docdm.mDocumentoCompFiscal.AsString), 1, 1) = 'E');
  btnRefrescarECF.Enabled := (docdm.mDocumento.Active) and (docdm.mDocumentoIdDocumento.AsInteger > 0);

  cxGridReadOnly(True, grDetalle);
  cxGridReadOnly(True, GridImpuestos);
  cxGridReadOnly(True, GridRets);
  cxGridReadOnly(True, grid);
end;

procedure TfMantDocumentos.Editbotonstate;
begin
  inherited EditbotonState();
  btImpuestos.Enabled := True;
  btImprimir.Enabled := False;
  DistCosto.Enabled := True;
  bSendECF.Enabled := False;
  btnRefrescarECF.Enabled := False;

  cxGridReadOnly(False, grDetalle);
  cxGridReadOnly(False, GridImpuestos);
  cxGridReadOnly(False, GridRets);
  cxGridReadOnly(False, grid);
end;

procedure TfMantDocumentos.Newbotonstate;
begin
  inherited NewbotonState();
  btImpuestos.Enabled := True;
  btImprimir.Enabled := False;
  DistCosto.Enabled := True;
  bSendECF.Enabled := False;
  btnRefrescarECF.Enabled := False;

  cxGridReadOnly(False, grDetalle);
  cxGridReadOnly(False, GridImpuestos);
  cxGridReadOnly(False, GridRets);
  cxGridReadOnly(False, grid);
end;

procedure TfMantDocumentos.ALocalizarExecute(Sender: TObject);
var
  i: Variant;
  oldst : boolean;
begin
//  inherited;
  oldst := docDM.Novalidar;
  DocDM.Novalidar := true;
  i := TBuscarDocumentoDX.BuscarPorTipo(docdm.IdTrans);
  //i := BuscarRegistro(TfBuscarCargos, Format('IdTrans = %d',[idTrans]));
  if i <> NULL then begin
    AbrirDocumento(i);
    browsebotonstate();
  Docdm.Novalidar:= oldst;
  end;
end;

procedure TfMantDocumentos.FormCreate(Sender: TObject);
begin
  inherited;
  Modulo := 'CXP';
  SetIdTrans(1);
  ds.DataSet := docdm.mDocumento;
  CampodeCierre := 'Fecha';
  docdm.rsUnidades.Open();
  docdm.rsClaseGasto.Open();
  docdm.rsTiposRetencion.Open();
  docdm.rsFormaPago.Open();  

  if not dm.rsPartidas.Active then
    dm.rsPartidas.Open();

  if dm.GetDefaultStr('AFECTAR_CC_ED') = '1' then begin
    tvCuentasCentroCosto.Visible := True;
    tvCuentasidPartida.Visible := True;
  end
  else begin
    tvCuentasCentroCosto.Visible := False;
    tvCuentasidPartida.Visible := False;
  end;

  ImageidField := 'GUIDDocumento';
  LogField := 'idDocumento';
end;

procedure TfMantDocumentos.tvRetencionesidRetencionPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
 id: Variant;
begin
  inherited;
  if appEstado <> appBrowse then begin
    id := fBuscar(TBusqueda,'idRetencion',True,'cxpListaRetenciones');
    if id <> NULL then begin
      if not (docdm.mRets.State in dsEditModes) then
        docdm.mRets.Edit();

      docdm.mRetsidRetencion.Value := id;
    end;
  end;
end;

procedure TfMantDocumentos.GridDBTableView1idProductoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i: Variant;
begin
  inherited;
  if appEstado = appBrowse then
    exit;
    
  if docdm.mDocItemsTipoItem.Value = 'I' then
    i := fBuscar(TBusqueda,'idProducto',False,'ocListaItems')
  else if docdm.mDocItemsTipoItem.Value = 'C' then
    i := fBuscar(TBusqueda,'idCuenta',False,'FindCuentaContable');

  if i <> NULL then begin
    if not (docdm.mDocItems.State in dsEditModes) then
      docdm.mDocItems.Edit();
      
    docdm.mDocItemsidProducto.Value := i;

    GridDBTableView1.Columns[2].Focused := True;
  end;
end;

procedure TfMantDocumentos.GridEnter(Sender: TObject);
begin
  inherited;
  if appEstado <> appBrowse then begin
    Enter2Tab := False;
    
    if docdm.mDocItems.Eof then
      docdm.mDocItems.Append();
  end;
end;

procedure TfMantDocumentos.GridExit(Sender: TObject);
begin
  inherited;
  Enter2Tab := True;
end;

procedure TfMantDocumentos.GridRetsEnter(Sender: TObject);
begin
  inherited;
  if appEstado <> appBrowse then begin
    Enter2Tab := False;
    if docdm.mRets.Eof then
      docdm.mRets.Append();
  end;
end;

procedure TfMantDocumentos.aAnteriorExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if AppEstado = appBrowse then begin
    if docdm.mDocumento.Active and (docdm.mDocumentoIdDocumento.AsInteger > 0) then begin
      i := docdm.BuscarAnterior(docdm.mDocumentoidDocumento.AsInteger);
      if i <> -1 then
        Localizar(i);
    end;
  end;
end;

procedure TfMantDocumentos.aProximoExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if AppEstado = appBrowse then begin
    if docdm.mDocumento.Active and (docdm.mDocumentoIdDocumento.AsInteger > 0) then begin
      i := docdm.BuscarProximo(docdm.mDocumentoidDocumento.AsInteger);
      if i <> -1 then
        Localizar(i);
    end;
  end;
end;

procedure TfMantDocumentos.FormShow(Sender: TObject);
begin
  inherited;
  if ds.DataSet = nil then
    ds.DataSet := docdm.mDocumento;
end;

procedure TfMantDocumentos.cxGrid1Exit(Sender: TObject);
begin
  inherited;
  Enter2Tab := True;
end;

procedure TfMantDocumentos.tvCuentasCentroCostoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  idcc: Variant;
begin
  inherited;
  if (appEstado <> appBrowse) and (not docdm.mCtasDocAutomatica.Value) then begin
//    idcc := TFindCentroCostoTree.Buscar('Key');
     idcc := TFullTextSearch.Buscar('idCentroCosto',True,'costControCostoFind');
    //cc := fBuscar(TFindCentroCostoTree,'CentroCosto',True,'');
    if idcc <> null then begin
      if not (docdm.mCtasDoc.State in dsEditModes) then
        docdm.mCtasDoc.Edit();

      docdm.mCtasDocidCentroCosto.Value := idcc;
      tvCuentasCentroCosto.Focused := True;
    end;
  end;
end;

procedure TfMantDocumentos.ImportardeMovInventario1Click(Sender: TObject);
var
  x: Variant;
begin
  inherited;
  if appEstado <> appBrowse then begin
    x := TBusquedaRangoDX.Buscar('idProMov',True,'invBuscarEntradas');
    if x <> null then begin
      docdm.ImportarEntrada(x);
    end;
  end;
end;


procedure TfMantDocumentos.SendEcf(Silencioso: Boolean = False; ForzarEstado: Boolean = False);
begin
  if (Copy(Trim(docdm.mDocumentoCompFiscal.AsString), 1, 1) <> 'E') then
  begin
    if not Silencioso then ShowMessage('Este documento no es un comprobante fiscal electronico (e-CF).');
    Exit;
  end;

  if not ForzarEstado and ((AppEstado = appInsert) or (AppEstado = appEdit)) then
  begin
    if not Silencioso then ShowMessage('Debe guardar el documento primero.');
    Exit;
  end;

  if not Silencioso then
  if not Confirmar('Esta seguro de enviar este ECF? luego aceptado, el documento no podra ser editado') then
    Exit;

  with docdm.cCambStatusEcf do begin
    parameters[1].Value := docdm.mDocumentoidDocumento.Value;
    Execute();
    if Parameters[0].Value = -1 then
    begin
      if not Silencioso then ShowMessage('Este documento ya fue enviado al sistema ECF y no puede enviarse dos veces.');
      Exit;
    end;
  end;

  Localizar(docdm.mDocumentoIDDocumento.value);

      if not Silencioso then
      ShowMessage('El ecf ha sido enviado al sistema de procesamiento'#13#10' en instantes podra ver el resultado');
end;

procedure TfMantDocumentos.bSendECFClick(Sender: TObject);
begin
  SendEcf();
end;

procedure TfMantDocumentos.btnRefrescarECFClick(Sender: TObject);
var
  st, err: string;
begin
  Localizar(docdm.mDocumentoIDDocumento.value);
  if docdm.mDocumento.Active and not docdm.mDocumento.IsEmpty then
  begin
    st := Trim(docdm.mDocumentoStatusEcf.AsString);
    if (st = 'ERROR') or (st = 'RECHAZADO') then
    begin
      err := '';
      if docdm.mDocumento.FindField('UltError') <> nil then
        err := docdm.mDocumento.FieldByName('UltError').AsString;
      if (err = '') and (docdm.rsDocumento.FindField('UltError') <> nil) then
        err := docdm.rsDocumento.FieldByName('UltError').AsString;

      if (Pos('135', err) > 0) or (Pos('rango', LowerCase(err)) > 0) then
        ShowMessage('DGII (Ambiente de Pruebas) - ' + st + ':' + #13#10#13#10 +
                    err + #13#10#13#10 +
                    'NOTA: Este rechazo proviene del servidor de la DGII (no de SADE).' + #13#10 +
                    'Indica que para este RNC no se ha solicitado el rango de secuencias de prueba ' +
                    'para Compras/Gastos (E41) en la Oficina Virtual de la DGII.')
      else if err <> '' then
        ShowMessage('DGII (Ambiente de Pruebas) - ' + st + ':' + #13#10#13#10 + err)
      else
        ShowMessage('DGII (Ambiente de Pruebas) - ' + st);
    end
    else if (st = 'ACEPTADO') or (st = 'VALIDADO') then
    begin
      ShowMessage('DGII (Ambiente de Pruebas) - ' + st + ':' + #13#10#13#10 +
                  'Codigo Seguridad: ' + docdm.mDocumentoCodigoSeguridadEcf.AsString);
    end
    else if (st = 'ENVIADO') or (st = 'PENDIENTE') then
    begin
      ShowMessage('Estado: ' + st + #13#10#13#10 +
                  'El documento fue transmitido y esta pendiente de validacion en la DGII.' + #13#10 +
                  'Vuelva a presionar Refrescar en unos segundos.');
    end;
  end;
end;
end.

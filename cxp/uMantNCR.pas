unit uMantNCR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, DB, dxCntner, Gradient, Buttons, cxMemo, cxDBEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCurrencyEdit, cxCalendar, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, StdCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, DBCtrls, cxCheckBox, cxLabel, cxDBLabel,
  cxGroupBox, ImgList, ActnList, Wwdatsrc, cxLookAndFeelPainters, cxButtons,
  cxImageComboBox;

type
  TMantNCR = class(TMantClass)
    detds: TDataSource;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    beSuplidor: TcxDBButtonEdit;
    deFecha: TcxDBDateEdit;
    edNombre: TcxDBTextEdit;
    edDir: TcxDBTextEdit;
    edTel1: TcxDBTextEdit;
    edTel2: TcxDBTextEdit;
    edRef: TcxDBTextEdit;
    edValor: TcxDBCurrencyEdit;
    luMoneda: TcxDBLookupComboBox;
    cxDBMemo1: TcxDBMemo;
    grDetalle: TcxGrid;
    tvDocs: TcxGridDBTableView;
    tvDocsidDocumento: TcxGridDBColumn;
    tvDocsAbrev: TcxGridDBColumn;
    tvDocsReferencia: TcxGridDBColumn;
    tvDocsFecha: TcxGridDBColumn;
    tvDocsTotal: TcxGridDBColumn;
    tvDocsValor: TcxGridDBColumn;
    levDocs: TcxGridLevel;
    DBText1: TDBText;
    dsMon: TDataSource;
    cxDBCheckBox1: TcxDBCheckBox;
    levCtas: TcxGridLevel;
    tvCtas: TcxGridDBTableView;
    Dsctas: TDataSource;
    tvCtasidCuenta: TcxGridDBColumn;
    tvCtasDescripcion: TcxGridDBColumn;
    tvCtasDebito: TcxGridDBColumn;
    tvCtasCredito: TcxGridDBColumn;
    gbTotales: TcxGroupBox;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBCheckBox2: TcxDBCheckBox;
    Label6: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    btEditar: TcxButton;
    tvDocsAplicacion: TcxGridDBColumn;
    Label7: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    Label8: TLabel;
    Label9: TLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    tvDocsDBColumn1: TcxGridDBColumn;
    tvCtasDBColumn2: TcxGridDBColumn;
    tvCtasDBColumn3: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    aProximo: TAction;
    aAnterior: TAction;
    Label10: TLabel;
    luBanco: TcxDBLookupComboBox;
    dsBancos: TDataSource;
    grDetalleDBTableView1: TcxGridDBTableView;
    dsRets: TwwDataSource;
    grDetalleDBTableView1Porcentaje: TcxGridDBColumn;
    grDetalleDBTableView1Valor: TcxGridDBColumn;
    grDetalleDBTableView1idRetencion: TcxGridDBColumn;
    grDetalleLevel2: TcxGridLevel;
    luTipoID: TcxDBLookupComboBox;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    tvCtasidCentroCosto: TcxGridDBColumn;
    tvCtasidPartida: TcxGridDBColumn;
    Label14: TLabel;
    boTipoGasto: TcxDBImageComboBox;
    Label19: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    grDetalleDBTableView1DBColumn1: TcxGridDBColumn;
    dsTiposRetencion: TDataSource;
    Label15: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    procedure grDetalleEnter(Sender: TObject);
    procedure grDetalleExit(Sender: TObject);
    procedure beSuplidorPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure tvDocsNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure tvCtasidCuentaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ALocalizarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tvCtasStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure aAnteriorExecute(Sender: TObject);
    procedure aProximoExecute(Sender: TObject);
    procedure tvCtasidCentroCostoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure AAnularExecute(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    FAutoCodif: Boolean;
    FidTrans: Integer;
    procedure SetAutoCodif(const Value: Boolean);

  protected
    procedure doNuevo; override;
    procedure doCancelar; override;
    procedure doSalir; override;
    procedure doGuardar; override;
    procedure doBorrar; override;
    procedure doPrint; override;
    procedure doAnular; 
    function Localizar(const id : Variant) : boolean; override;
    procedure SetidTrans(const Value: Integer);

    procedure browsebotonstate; override;
    procedure Editbotonstate; override;
    procedure Newbotonstate; override;
    { Private declarations }
  public
    { Public declarations }
    procedure AbrirDocumento(const idDoc: Integer);
    procedure doShowState; override;
    procedure Guardar; override;
    procedure Cancelar; override;
    procedure Nuevo; override;
    procedure Editar; override;

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    property AutoCodificar: Boolean read FAutoCodif write SetAutoCodif;
    property idTrans: Integer read FidTrans write SetidTrans;
  end;

var
  MantNCR: TMantNCR;

implementation

uses uNCRDM, uListaSups, uBuscarPend, Utils, uBuscarCargos,
  uBuscarCuentaMayor, uImprNCR, UUtiles, Udata,
  uFullTextSearch, uBuscarDocumentoDX, urcheques, uformx, uImprimirCert;

{$R *.dfm}

procedure TMantNCR.grDetalleEnter(Sender: TObject);
begin
  inherited;
  if appEstado <> appbrowse then begin
    Enter2Tab := False;
    if (grDetalle.ActiveView = tvCtas) and (ncrdm.mCtasDoc.RecordCount = 0) then
      ncrdm.mCtasDoc.Append()
    else if (grDetalle.ActiveView = grDetalleDBTableView1) and (ncrdm.mDocRets.RecordCount = 0) then
      ncrdm.mDocRets.Append();
  end;
end;

procedure TMantNCR.grDetalleExit(Sender: TObject);
begin
  inherited;
  if appEstado <> appBrowse then begin
//    if (ncrdm.mCtasDoc.State in dsEditModes) and (ncrdm.mCtasDocIdCuenta.AsString = '') and (ncrdm.mCtasDocAutomatica.Value = False) then
//      ncrdm.mCtasDoc.Cancel();
       
    Enter2Tab := True;
  end;
end;

procedure TMantNCR.beSuplidorPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  i: Integer;
begin
  inherited;
  i := BuscarSuplidor();
  if i > 0 then begin
    if not (ncrdm.mDocumento.State in dsEditModes) then
      ncrdm.mDocumento.Edit();

    ncrdm.mDocumentoIdSuplidor.AsInteger := i;

    SelectNext(ActiveControl,True,True);
  end;
end;

procedure TMantNCR.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  SelectNext(ActiveControl,True,True);

  if ncrdm.mDocumentoDiferencia.AsCurrency <> 0 then begin
    if dm.PermitirDescuadre then begin
      if MessageDlg('Hay un descuadre en el documento, desea guardarlo',mtConfirmation,[mbYes,mbNo],0) = mrNo then
        Exit;
    end
    else
      raise Exception.Create('Hay un descuadre en el documento, no puede guardarlo');
  end;


  Guardar();
end;

procedure TMantNCR.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  Cancelar();
end;

procedure TMantNCR.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Nuevo();
end;

procedure TMantNCR.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  Salir();
end;

procedure TMantNCR.AbrirDocumento(const idDoc: Integer);
begin
  ncrdm.AbrirDocumento(idDoc);

  if ncrdm.mDocumento.Active then begin
    gbTotales.Visible := ncrdm.mDocumentoMostrarEnCXP.Value
  end;
end;


constructor TMantNCR.Create(AOwner: TComponent);
begin
//  if not Assigned(ncrdm) then
  ncrdm := Tncrdm.Create(Application);

  AutoCodificar := True;
  inherited Create(AOWner);
end;

destructor TMantNCR.Destroy;
begin
  if Assigned(ncrdm) then
    FreeAndNil(ncrdm);

  inherited Destroy;
end;

procedure TMantNCR.tvDocsNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
 ADone := False;
  //showmessage(IntToStr(AButtonIndex));

  if AButtonIndex = 6 then begin
    ADone := True;
    if ncrdm.mDocumentoidSuplidor.AsInteger = 0 then
      ShowMessage('Seleccione un suplidor antes de buscar los documentos')
    else begin
      ncrdm.AbrirPendientes(ncrdm.mDocumentoIdSuplidor.AsInteger);
      if SeleccionarPend(ncrdm.mDocsPendientes) then
        ncrdm.AceptarPendientes();
    end;
  end;
end;

procedure TMantNCR.SetAutoCodif(const Value: Boolean);
begin
  FAutoCodif := Value;
  if Assigned(ncrdm) then
    ncrdm.AutoCodificar := Value;
end;

procedure TMantNCR.tvCtasidCuentaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  idCta: string;
begin
  inherited;
  idCta := BuscarCtaDetalle();
  if idCta <> '' then begin
    if not (ncrdm.mCtasDoc.State in dsEditModes) then
      ncrdm.mCtasDoc.Edit();

    ncrdm.mCtasDocIdCuenta.Asstring := idCta;
    tvCtas.Columns[2].Focused := True;
  end;
end;

procedure TMantNCR.doBorrar;
begin
  inherited;
  ncrdm.BorrarDocumento();
end;

procedure TMantNCR.doCancelar;
begin
  inherited;
  if ncrdm.mDocumentoIdDocumento.AsInteger > 0 then
    ncrdm.AbrirDocumento(ncrdm.mDocumentoidDocumento.AsInteger)
  else
    ncrdm.CerrarDocumento();
end;

procedure TMantNCR.doGuardar;
begin
  inherited;
  SelectNext(ActiveControl,True,True);
  ncrdm.GuardarDocumento();
end;

procedure TMantNCR.doNuevo;
begin
  inherited doNuevo();

  if UpperCase(XField) = 'IDTRANS' then
    ncrdm.IdTrans := XValue;

  ncrdm.NuevoDocumento();
end;

procedure TMantNCR.doSalir;
begin
  inherited;
  Close();
end;

function TMantNCR.Localizar(const id: Variant): boolean;
begin
  try
    ncrdm.AbrirDocumento(id);
    Result := True;
  except
    Result := False;
  end;
end;

procedure TMantNCR.SetidTrans(const Value: Integer);
begin
  FidTrans := Value;
  ncrdm.IdTrans := Value;  
end;

procedure TMantNCR.ALocalizarExecute(Sender: TObject);
var
  i: Variant;
begin
//  inherited;
  i := TBuscarDocumentoDX.BuscarPorTipo(FidTrans);
  if i <> NULL then begin
    AbrirDocumento(i);
    browsebotonstate();
  end;
end;

procedure TMantNCR.browsebotonstate;
begin
  inherited browsebotonState();
  if ncrdm.mDocumento.RecordCount > 0 then
    btImprimir.Enabled := True;

  //grDetalle.Enabled := False;
  CxGridReadOnly(True, grDetalle);
end;

procedure TMantNCR.Editbotonstate;
begin
  inherited EditbotonState();
  btImprimir.Enabled := False;

  //grDetalle.Enabled := True;
  CxGridReadOnly(False, grDetalle);
end;

procedure TMantNCR.Newbotonstate;
begin
  inherited NewbotonState();
  btImprimir.Enabled := False;

  //grDetalle.Enabled := True;
  CxGridReadOnly(False, grDetalle);  
end;

procedure TMantNCR.doShowState;
begin
  inherited doShowState();
  idtrans := xvalue;
  btNuevo.Visible := idTrans = TR_NCR
end;

procedure TMantNCR.Guardar;
begin
  inherited Guardar();
  detds.AutoEdit := False;
  Dsctas.AutoEdit := False;
  dsRets.AutoEdit := False;
  ncrdm.mDocumento.ReadOnly := True;
end;

procedure TMantNCR.Cancelar;
begin
  inherited;
  detds.AutoEdit := False;
  Dsctas.AutoEdit := False;
  dsRets.AutoEdit := False;  
  ncrdm.mDocumento.ReadOnly := True;
end;

procedure TMantNCR.Editar;
begin
  inherited;
  detds.AutoEdit := True;
  Dsctas.AutoEdit := True;
  ncrdm.mDocumento.ReadOnly := False;
  dsRets.AutoEdit := True;
end;

procedure TMantNCR.Nuevo;
begin
  inherited;
  detds.AutoEdit := True;
  Dsctas.AutoEdit := True;
  dsRets.AutoEdit := True;
  ncrdm.mDocumento.ReadOnly := False;
end;

procedure TMantNCR.doPrint;
begin
  inherited;
  if ncrdm.mDocumentoidDocumento.isnull then
    raise exception.Create('Seleccione un documento valido');

  if ncrdm.mDocumentoIdTrans.Value = TR_NCR then
    ImprimirNCR(ncrdm.mDocumentoidDocumento.Value)
  else
    PrintChk(ncrdm.mDocumentoidDocumento.Value);
end;

procedure TMantNCR.FormCreate(Sender: TObject);
begin
  inherited;
  Modulo := 'CXP';
  CampodeCierre := 'Fecha';
  LogField := 'idDocumento';
  ImageidField := 'GuidDocumento';
  ds.DataSet := ncrdm.mDocumento;

  if dm.GetDefaultStr('AFECTAR_CC_ED') = '1' then begin
    tvCtasIdCentroCosto.Visible := True;
    tvCtasidPartida.Visible := True;
  end
  else begin
    tvCtasidCentroCosto.Visible := False;
    tvCtasidPartida.Visible := False;
  end;

  if not ncrdm.rsMonedas.Active then
    ncrdm.rsMonedas.Open();

  if not ncrdm.rsListaPagoForma.Active then
    ncrdm.rsListaPagoForma.Open();

  ncrdm.MONEDA_LEGAL := dm.MonedaLegal();

  ncrdm.rsBancos.Open();
  ncrdm.rsTiposRets.Open();
  ncrdm.rsTiposRetencion.Open();
end;

procedure TMantNCR.tvCtasStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
  if ARecord.Values[5] = True then
    AStyle := cxStyle1
  else
    AStyle := nil;
end;

procedure TMantNCR.aAnteriorExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if AppEstado = appBrowse then begin
    if ncrdm.mDocumento.Active and (ncrdm.mDocumentoIdDocumento.AsInteger > 0) then begin
      i := ncrdm.BuscarAnterior(ncrdm.mDocumentoidDocumento.AsInteger);
      if i <> -1 then
        Localizar(i);
    end;
  end;
end;

procedure TMantNCR.aProximoExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if AppEstado = appBrowse then begin
    if ncrdm.mDocumento.Active and (ncrdm.mDocumentoIdDocumento.AsInteger > 0) then begin
      i := ncrdm.BuscarProximo(ncrdm.mDocumentoidDocumento.AsInteger);
      if i <> -1 then
        Localizar(i);
    end;
  end;
end;

procedure TMantNCR.tvCtasidCentroCostoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  idcc: Variant;
begin
  inherited;
  if (appEstado <> appBrowse) and (not ncrdm.mCtasdocAutomatica.Value) then begin
    idcc := TFullTextSearch.Buscar('idCentroCosto',True, 'costCentroCostoFind');
    if idcc <> null then begin
      if not (ncrdm.mCtasDoc.State in dsEditModes) then
        ncrdm.mCtasDoc.Edit();

      ncrdm.mCtasDocidCentroCosto.Value := idcc;
      tvCtasidPartida.Focused := True;
    end;
  end;
end;

procedure TMantNCR.doAnular;
begin
  inherited;
  ncrdm.AnularDocumento();
end;

procedure TMantNCR.AAnularExecute(Sender: TObject);
begin
  inherited;
  if Confirmar('Esta seguro que desea anular este documento') then
    doAnular();
end;

procedure TMantNCR.cxButton2Click(Sender: TObject);
begin
  inherited;
  if ncrdm.IdTrans <> TR_NCR then
    TImprimirCert.MostrarCertificacion(ncrdm.mDocumentoidDocumento.Value);
end;

end.

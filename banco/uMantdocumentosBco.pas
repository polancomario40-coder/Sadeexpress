unit uMantdocumentosBco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClassbco, DB, dxCntner, Gradient, StdCtrls, cxCurrencyEdit,
  cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxCalc, DBCtrls, Buttons, cxButtonEdit, cxCheckBox, cxMemo;

type
  TMantDocumentosbco = class(TMantClassBco)
    Label1: TLabel;
    edId: TcxDBTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    deFecha: TcxDBDateEdit;
    luCta: TcxDBLookupComboBox;
    edRef: TcxDBTextEdit;
    ceValor: TcxDBCurrencyEdit;
    dsBcos: TDataSource;
    dsDet: TDataSource;
    DBText1: TDBText;
    SpeedButton2: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label6: TLabel;
    edConcepto: TcxDBTextEdit;
    grConceptos: TcxGrid;
    tvDetalle: TcxGridDBTableView;
    grConceptosLevel1: TcxGridLevel;
    tvDetalleidCuenta: TcxGridDBColumn;
    tvDetalleDescripcion: TcxGridDBColumn;
    tvDetalleDebito: TcxGridDBColumn;
    tvDetalleCredito: TcxGridDBColumn;
    Label7: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    Label8: TLabel;
    Label9: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    tvDetalleDBColumn1: TcxGridDBColumn;
    tvDetalleDBColumn2: TcxGridDBColumn;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label10: TLabel;
    Label11: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cbContablizar: TcxDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure grConceptosEnter(Sender: TObject);
    procedure grConceptosExit(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure tvDetalleidCuentaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure tvDetalleStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
    FIdTrans: Integer;
  protected
    procedure doCancelar;
  public
    { Public declarations }
    property idTrans: Integer read FidTrans write FidTrans;
    procedure Nuevo; override;
    procedure Salir; override;

    constructor Create(AOwner: TComponent); override;
  end;

var
  MantDocumentosbco: TMantDocumentosbco;

implementation

uses udmBancos, uBuscarDocumentoBco, uPickIdtrans, UUtiles, uCksTransito, Udata, Utils,
  uFullTextSearch;

{$R *.dfm}

procedure TMantDocumentosbco.FormCreate(Sender: TObject);
begin
  inherited;

  Modulo := 'Banco';
  if dmBanco = nil then
    dmBanco := TdmBanco.Create(Application)
  else
    dmBanco.Inicializar();

  ds.DataSet := dmBanco.mDocumento;
end;

procedure TMantDocumentosbco.grConceptosEnter(Sender: TObject);
begin
  inherited;
  Enter2Tab := False;
end;

procedure TMantDocumentosbco.grConceptosExit(Sender: TObject);
begin
  inherited;
  Enter2Tab := True;
end;

procedure TMantDocumentosbco.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  Salir();
end;

procedure TMantDocumentosbco.SpeedButton6Click(Sender: TObject);
var
  TotalDB,TotalCR: Currency;
begin
  inherited;
  if (dmBanco.mDocumentoFecha.Value <= dm.Cierre(Modulo)) then
    raise exception.create('La fecha de esta transaccion ha sido cerrada');

  SelectNext(ActiveControl,True,True);

  dmBanco.TotalizarDocumento(TotalDB,TotalCR);

  if TotalDB <> TotalCR then begin
    if dm.PermitirDescuadre then begin
      if MessageDlg('Existe un descuadre en la codificacion, desea guardar el documento',mtConfirmation,[mbYes,mbNo],0) = mrNo then
        Exit;
    end
    else
      raise Exception.Create('Existe un descuadre en la codificacion, no puede guardar el documento');
  end;

  dmBanco.GuardarDocumento();

end;

procedure TMantDocumentosbco.SpeedButton1Click(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  i := BuscarIdtrans();
  if i > 0 then begin
    FidTrans := i;
    dmBanco.NuevoDocumento(FidTrans);
  end;
end;

procedure TMantDocumentosbco.Nuevo;
begin
  inherited;
  dmBanco.NuevoDocumento(FidTrans);
end;

procedure TMantDocumentosbco.Salir;
begin
  inherited;
  Close();
end;

procedure TMantDocumentosbco.SpeedButton9Click(Sender: TObject);
var
  i: variant;
begin
  inherited;
  i := BuscarRegistro(TBuscarDocumentos, Format('h.idTrans = %d',[idTrans]));
  if i <> NULL then begin
    dmBanco.AbrirDocumento(i);
    if (not dmBanco.EditarCXP) and (dmBanco.mDocumentoDocOrigen.AsInteger > 0) then
       ShowMessage('Este documento se registro en el sistema de cxp y no puede ser modificado');
  end;
end;

constructor TMantDocumentosbco.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  if not Assigned(dmBanco) then
    dmBanco := TdmBanco.Create(Application);
end;

procedure TMantDocumentosbco.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  dmBanco.BorrarDocumento(Null);
end;

procedure TMantDocumentosbco.tvDetalleidCuentaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  idCta: string;
begin
  inherited;
  //if appEstado <> appBrowse then begin
    if dmBanco.mDocDtlAutomatica.AsBoolean = False then begin
      idCta := TFullTextSearch.Buscar('idCuenta',False,'cgBuscarCtaDetalle');
      if idCta <> '' then begin
        if not (dmBanco.mDocDtl.State in dsEditModes) then
          dmBanco.mDocDtl.Edit();

        dmBanco.mDocDtlIdCuenta.Asstring := idCta;
        tvDetalle.Columns[3].Focused := True;
      end;
    end;
// end;
end;

procedure TMantDocumentosbco.tvDetalleStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
  if ARecord.Values[5] = True then
    AStyle := cxStyle1
  else
    AStyle := nil;
end;

procedure TMantDocumentosbco.doCancelar;
begin
  inherited;
  if dmBanco.mDocumentoidDocumento.AsInteger > 0 then
    dmBanco.AbrirDocumento(dmBanco.mDocumentoidDocumento.AsInteger)
  else
    Nuevo();
end;

procedure TMantDocumentosbco.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  doCancelar();
end;

end.

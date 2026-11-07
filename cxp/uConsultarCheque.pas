unit uConsultarCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, DB, dxCntner, Gradient, ADODB, StdCtrls, cxSpinEdit,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLookAndFeelPainters,
  ExtCtrls, cxDBEdit, cxButtons, cxPC, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxMemo, uSimpleForm;

type
  TConsultarCheque = class(TSimpleForm)
    rsCheque: TADODataSet;
    rsChequeidDocumento: TIntegerField;
    rsChequeidTrans: TIntegerField;
    rsChequeFecha: TDateTimeField;
    rsChequeidSuplidor: TIntegerField;
    rsChequeReferencia: TStringField;
    rsChequeValor: TBCDField;
    rsChequeMontoImpuestos: TBCDField;
    rsChequeMontoDescuento: TBCDField;
    rsChequeMontoRetenciones: TBCDField;
    rsChequeConcepto: TStringField;
    rsChequeidMoneda: TIntegerField;
    rsChequeCodifManual: TBooleanField;
    rsChequeStatus: TStringField;
    rsChequeFechaStatus: TDateTimeField;
    rsChequeidCuentaBanco: TIntegerField;
    rsChequeidCuenta: TStringField;
    rsChequeTipoDocOrigen: TStringField;
    rsChequeDocOrigen: TIntegerField;
    rsChequeTotal: TBCDField;
    rsChequeNombre: TStringField;
    rsChequeDescStatus: TStringField;
    rsBancos: TADODataSet;
    rsBancosidCuentaBanco: TIntegerField;
    rsBancosNumCuenta: TStringField;
    rsBancosNombre: TStringField;
    rsBancosidCuentaMayor: TStringField;
    rsBancosUltimoCheque: TIntegerField;
    rsDocs: TADODataSet;
    rsDocsidDocumento: TIntegerField;
    rsDocsLineaNum: TIntegerField;
    rsDocsIdDocXPagar: TIntegerField;
    rsDocsValor: TBCDField;
    rsDocsFecha: TDateTimeField;
    rsDocsFechaDoc: TDateTimeField;
    rsDocsTotal: TBCDField;
    rsDocsReferencia: TStringField;
    rsDocsAbrev: TStringField;
    rsCtas: TADODataSet;
    rsCtasidCuenta: TStringField;
    rsCtasDescripcion: TStringField;
    rsCtasDebCre: TWordField;
    rsCtasAutomatica: TBooleanField;
    rsCtasDebito: TBCDField;
    rsCtasCredito: TBCDField;
    Label1: TLabel;
    Label2: TLabel;
    luCta: TcxLookupComboBox;
    seNum: TcxSpinEdit;
    dsBancos: TDataSource;
    dsDocs: TDataSource;
    dsCtas: TDataSource;
    cxButton1: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    Shape1: TShape;
    Label3: TLabel;
    Label4: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label5: TLabel;
    grDocsDBTableView1: TcxGridDBTableView;
    grDocsLevel1: TcxGridLevel;
    grDocs: TcxGrid;
    grDocsDBTableView1IdDocXPagar: TcxGridDBColumn;
    grDocsDBTableView1Valor: TcxGridDBColumn;
    grDocsDBTableView1FechaDoc: TcxGridDBColumn;
    grDocsDBTableView1Total: TcxGridDBColumn;
    grDocsDBTableView1Referencia: TcxGridDBColumn;
    grDocsDBTableView1Abrev: TcxGridDBColumn;
    grCtas: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1idCuenta: TcxGridDBColumn;
    cxGridDBTableView1Descripcion: TcxGridDBColumn;
    cxGridDBTableView1Debito: TcxGridDBColumn;
    cxGridDBTableView1Credito: TcxGridDBColumn;
    cxDBMemo1: TcxDBMemo;
    cxButton2: TcxButton;
    Label17: TLabel;
    cxButton3: TcxButton;
    Label6: TLabel;
    cxButton4: TcxButton;
    rsChequeDias: TSmallintField;
    rsChequeMostrarEnCXP: TBooleanField;
    rsChequeBienesServicio: TSmallintField;
    rsChequeTotalNeto: TBCDField;
    rsCtasidAuxiliar: TStringField;
    cxGridDBTableView1DBColumn1: TcxGridDBColumn;
    rsbuscarXID: TADODataSet;
    rsbuscarXIDidDocumento: TAutoIncField;
    rsbuscarXIDidTrans: TIntegerField;
    rsbuscarXIDFecha: TDateTimeField;
    rsbuscarXIDidSuplidor: TIntegerField;
    rsbuscarXIDReferencia: TStringField;
    rsbuscarXIDValor: TBCDField;
    rsbuscarXIDMontoImpuestos: TBCDField;
    rsbuscarXIDMontoDescuento: TBCDField;
    rsbuscarXIDMontoRetenciones: TBCDField;
    rsbuscarXIDConcepto: TStringField;
    rsbuscarXIDidMoneda: TIntegerField;
    rsbuscarXIDCodifManual: TBooleanField;
    rsbuscarXIDStatus: TStringField;
    rsbuscarXIDFechaStatus: TDateTimeField;
    rsbuscarXIDidCuentaBanco: TIntegerField;
    rsbuscarXIDidCuenta: TStringField;
    rsbuscarXIDTipoDocOrigen: TStringField;
    rsbuscarXIDDocOrigen: TIntegerField;
    rsbuscarXIDDias: TSmallintField;
    rsbuscarXIDMostrarEnCXP: TBooleanField;
    rsbuscarXIDBienesServicio: TSmallintField;
    rsbuscarXIDNotaAdicional: TStringField;
    rsbuscarXIDidAuxiliar: TStringField;
    rsbuscarXIDCompFiscal: TStringField;
    rsbuscarXIDGUIDDocumento: TGuidField;
    rsbuscarXIDTotal: TBCDField;
    rsbuscarXIDTotalNeto: TBCDField;
    rsbuscarXIDTelefono1: TStringField;
    rsbuscarXIDTelefono2: TStringField;
    rsbuscarXIDFax: TStringField;
    rsbuscarXIDDireccion: TStringField;
    rsbuscarXIDNombre: TStringField;
    rsbuscarXIDRNC: TStringField;
    rsbuscarXIDDescripcion: TStringField;
    rsbuscarXIDDebCre: TWordField;
    rsbuscarXIDAbrev: TStringField;
    rsbuscarXIDTotalRetenciones: TFloatField;
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    procedure AbrirCheque(const idCta, Num: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultarCheque: TConsultarCheque;

implementation

uses urcheques, Utils, Udata, uBusquedaRangoDX;

{$R *.dfm}

procedure TConsultarCheque.cxButton1Click(Sender: TObject);
var
  i: Variant;
begin
  inherited;
  if seNum.Value = 0 then begin
    //i := BuscarRegistro(TBuscarCheques,'d.IdTrans = 20');
    i := TBusquedaRangoDX.Buscar('IdDocumento',True,'cxpBuscarChequesRango',True,200);

    if i > 0 then
      seNum.Value := i
    else
      Exit;
  end;
  AbrirCheque(luCta.EditValue, seNum.Value);
end;

procedure TConsultarCheque.AbrirCheque(const idCta, Num: Integer);
begin
  if (idCta > 0) and (Num > 0) then begin
    rsCheque.Close();
    rsDocs.Close();
    rsCtas.Close();

    rsCheque.Parameters[01].Value := idCta;
    rsCheque.Parameters[02].Value := Num;
    rsCheque.Open();
    if rsCheque.Eof then
      raise Exception.Create('Este cheque no existe');

    rsDocs.Parameters[01].Value := rsChequeidDocumento.AsInteger;
    rsDocs.Open();

    rsCtas.Parameters[01].Value := rsChequeidDocumento.AsInteger;
    rsCtas.Open();
  end;
end;

procedure TConsultarCheque.FormCreate(Sender: TObject);
begin
  inherited;
  rsBancos.Open();
  luCta.EditValue := 2; //rsBancosIdCuentaBanco.AsInteger;
end;

procedure TConsultarCheque.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TConsultarCheque.cxButton3Click(Sender: TObject);
begin
  inherited;
  if rsCheque.Active then
    PrintChk(rsChequeidDocumento.AsInteger);
end;

procedure TConsultarCheque.cxButton4Click(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  //i := BuscarRegistro(TBuscarCheques,'d.IdTrans = 20');
  i := TBusquedaRangoDX.Buscar('idDocumento',True,'cxpBuscarChequesRango',True,200);
  if i > 0 then begin
    with rsBuscarXId do begin
      Close();
      Parameters[1].Value := i;
      Open();
      if not Eof then begin
       luCta.EditValue := rsbuscarXIDidCuentaBanco.AsInteger;
       seNum.Value := rsbuscarXIdReferencia.AsInteger;
       AbrirCheque(luCta.EditValue, seNum.Value);
      end
    end;
  end;
end;

end.

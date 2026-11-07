unit uCancelarCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, DB, dxCntner, Gradient, ADODB, StdCtrls,
  cxLookAndFeelPainters, cxCurrencyEdit, cxTextEdit, cxButtons, cxSpinEdit,
  cxControls, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxMemo,
  uSimpleForm;

type
  TfCancelarCheques = class(TSimpleForm)
    Label1: TLabel;
    rsValidarCk: TADODataSet;
    luBco: TcxLookupComboBox;
    rsBancos: TADODataSet;
    edNum: TcxSpinEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    Gradient3: TGradient;
    edBen: TcxTextEdit;
    ceValor: TcxCurrencyEdit;
    Gradient4: TGradient;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dsBco: TDataSource;
    deFecha: TcxDateEdit;
    cCancelar: TADOCommand;
    Label7: TLabel;
    edConcepto: TcxMemo;
    rsBancosidCuentaBanco: TIntegerField;
    rsBancosNumCuenta: TStringField;
    rsBancosNombre: TStringField;
    rsBancosidCuentaMayor: TStringField;
    rsValidarCkidDocumento: TIntegerField;
    rsValidarCkidTrans: TIntegerField;
    rsValidarCkFecha: TDateTimeField;
    rsValidarCkidSuplidor: TIntegerField;
    rsValidarCkReferencia: TStringField;
    rsValidarCkValor: TBCDField;
    rsValidarCkMontoImpuestos: TBCDField;
    rsValidarCkMontoDescuento: TBCDField;
    rsValidarCkMontoRetenciones: TBCDField;
    rsValidarCkConcepto: TStringField;
    rsValidarCkidMoneda: TIntegerField;
    rsValidarCkCodifManual: TBooleanField;
    rsValidarCkStatus: TStringField;
    rsValidarCkFechaStatus: TDateTimeField;
    rsValidarCkidCuentaBanco: TIntegerField;
    rsValidarCkidCuenta: TStringField;
    rsValidarCkTipoDocOrigen: TStringField;
    rsValidarCkDocOrigen: TIntegerField;
    rsValidarCkDias: TSmallintField;
    rsValidarCkMostrarEnCXP: TBooleanField;
    rsValidarCkBienesServicio: TSmallintField;
    rsValidarCkNotaAdicional: TStringField;
    rsValidarCkidAuxiliar: TStringField;
    rsValidarCkCompFiscal: TStringField;
    rsValidarCkGUIDDocumento: TGuidField;
    rsValidarCkTotal: TBCDField;
    rsValidarCkTotalNeto: TBCDField;
    rsValidarCkidTipoIdentificacion: TStringField;
    rsValidarCkidClaseGasto: TStringField;
    rsValidarCkTasa: TBCDField;
    rsValidarCkBancoDestino: TStringField;
    rsValidarCkCuentaDestino: TStringField;
    rsValidarCkTipoAbono: TStringField;
    rsValidarCkNombre: TStringField;
    rsValidarCkDescStatus: TStringField;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FIdDocumento: Integer;
  public
    { Public declarations }
  end;

var
  fCancelarCheques: TfCancelarCheques;

implementation

uses Udata;

{$R *.dfm}

procedure TfCancelarCheques.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TfCancelarCheques.cxButton3Click(Sender: TObject);
begin
  inherited;
  FidDocumento := 0;
  with rsValidarCk do begin
    Close();
    Parameters[1].Value := luBco.EditValue;
    Parameters[2].Value := edNum.Value;
    Open();
    if Eof then begin
      deFecha.Date := Date();
      edBen.Text := '';
      ceValor.Value := 0;
      FidDocumento := 0;
      ShowMessage('Este cheque no existe');
      Exit;
    end;
    if RecordCount > 1 then
      raise Exception.Create('Existe mas de un cheque con este numero');

    if (rsValidarCkStatus.AsString <> 'T') and (rsValidarCkStatus.AsString <> 'P') then
      raise Exception.Create('No puede cancelar un cheque que no esta en transito');
  end;
  deFecha.Date := rsValidarCkFecha.AsDateTime;
  edBen.Text := rsValidarCkNombre.AsString;
  ceValor.Value := rsValidarCkValor.AsCurrency;
  FidDocumento := rsValidarCkIdDocumento.AsInteger;
end;

procedure TfCancelarCheques.cxButton1Click(Sender: TObject);
begin
  inherited;
  SelectNext(ActiveControl,True,True);
  if FidDocumento > 0 then begin
    cCancelar.Parameters[01].Value := FidDocumento;
    cCancelar.Parameters[02].Value := edConcepto.Text;
    cCancelar.Execute();
    dm.CreateLog('Cancelar', self.Caption,'Cheque No.: '+rsValidarCkreferencia.AsString);
    ShowMessage('El cheque ha sido cancelado');

    deFecha.Date := Date();
    edBen.Text := '';
    ceValor.Value := 0;
    FidDocumento := 0;
  end;
end;

procedure TfCancelarCheques.FormCreate(Sender: TObject);
begin
  inherited;
  rsBancos.Open();
end;

end.

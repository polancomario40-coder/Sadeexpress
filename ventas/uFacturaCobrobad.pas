unit uFacturaCobrobad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, ADODB, ExtCtrls, StdCtrls, cxMemo,
  cxDBEdit, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxLookAndFeelPainters, cxButtons, cxLabel, cxDBLabel, Buttons,
  cxMaskEdit, cxButtonEdit, cxDropDownEdit, cxCalc;

const
  OPEN_CD = ^G^Z;

type
  TFacturaCobro = class(TFForm)
    RS: TADODataSet;
    edEfectivo: TcxDBButtonEdit;
    edTCR: TcxDBButtonEdit;
    edChk: TcxDBButtonEdit;
    edOtros: TcxDBButtonEdit;
    cxDBMemo1: TcxDBMemo;
    Label1: TLabel;
    Label3: TLabel;
    RSidFactura: TGuidField;
    RSTotal: TBCDField;
    RSPagadoCon: TBCDField;
    RSEfectivo: TBCDField;
    RSTarjeta: TBCDField;
    RSCheque: TBCDField;
    RSOtros: TBCDField;
    RSNota: TStringField;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    cxButton1: TcxButton;
    RSDevuelta: TCurrencyField;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    SpeedButton1: TSpeedButton;
    CheckBox1: TCheckBox;
    Factura2Recibo: TADOCommand;
    procedure cxButton1Click(Sender: TObject);
    procedure RSCalcFields(DataSet: TDataSet);
    procedure RSPagadoConValidate(Sender: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edTCRBtClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edChkBtClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edEfectivoBtClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edOtrosbtClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FTotal: Currency;
    FCajaAbierta:Boolean;
    function CalcDevolucion: Currency;
    

  public
    { Public declarations }
  end;



function GetPago(Factura : string; Total : double): Boolean;

var
  FacturaCobro: TFacturaCobro;

implementation

uses Udata, uRecibo, uUsuario;

{$R *.dfm}

procedure OpenCashDrawer;
var
  prn: Text;
begin
  AssignFile(prn, 'LPT1');
  ReWrite(prn);
  WriteLn(prn, OPEN_CD);
  Close(prn);
end;

function GetPago(Factura : string; Total : double): Boolean;
begin
//  Result := False;

  FacturaCobro := TFacturaCobro.Create(application);
  FacturaCobro.RS.Close;
  FacturaCobro.FTotal := Total;
  FacturaCobro.rs.parameters[1].value := Factura;
  FacturaCobro.RS.Open;
  if FacturaCobro.rsidFactura.isnull then begin
    FacturaCobro.RS.Insert;
    FacturaCobro.RSidFactura.value := Factura;
    FacturaCobro.RSTotal.value := Total;
    FacturaCobro.rsPagadoCon.value := Total;
  end else begin
    FacturaCobro.RS.edit;
    FacturaCobro.RSTotal.value := Total;
    FacturaCobro.rsPagadoCon.value := Total;
  end;
  try
    Result := FacturaCobro.showmodal = mrOk;
  finally
    FacturaCobro.Release();
  end;
end;

procedure TFacturaCobro.cxButton1Click(Sender: TObject);
var  id:string;
begin
  inherited;

  SelectNext(ActiveControl,True,True);
  if ((rsTarjeta.asCurrency > 0) or (rsCheque.asCurrency > 0) or (rsOtros.AsCurrency > 0)) and (rsNota.AsString = '') then begin
    cxDBMemo1.SetFocus();
    raise exception.Create('Debe especificar una nota para pagos de esta forma');
  end;


      if (rsefectivo.value + rstarjeta.value + rscheque.value + rsotros.value < rstotal.value )
      and (CheckBox1.Checked = false) then
          raise exception.Create('La distribucion de pago no coincide con el total a pagar de la factura') ;

   rs.post  ;
 
  ModalResult := mrOk;
end;




procedure TFacturaCobro.RSCalcFields(DataSet: TDataSet);
begin
  inherited;
  rsDevuelta.Value := CalcDevolucion();
end;

function TFacturaCobro.CalcDevolucion: Currency;
begin
  if (rsPagadoCon.value + rsTarjeta.AsFloat + RSCheque.AsFloat + RSOtros.AsFloat) > 0 then
    Result := (rsPagadoCon.value + rsTarjeta.AsFloat + RSCheque.AsFloat + RSOtros.AsFloat) - rsTotal.value
  else
    Result := 0;
end;

procedure TFacturaCobro.RSPagadoConValidate(Sender: TField);
var
  d: Currency;
begin
  inherited;
//  if sender.value < 0 then raise exception.create('Debe indicar una cantidad positiva para pagar');

  d := CalcDevolucion();

  if (rsPagadoCon.AsFloat > 0) and (d >= 0) then
    rsEfectivo.AsFloat := rsPagadoCon.AsFloat - d
  else
    rsEfectivo.Value := 0;
end;

procedure TFacturaCobro.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TFacturaCobro.edTCRBtClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  rsTarjeta.Value := FTotal;
  rsCheque.Value := 0;
  rsOtros.Value := 0;
//  rsEfectivo.Value := 0;
  rsPagadoCon.Value := 0;
end;

procedure TFacturaCobro.edChkBtClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  rsCheque.Value := Ftotal;
  rsTarjeta.Value := 0;
  rsOtros.Value := 0;
//  rsEfectivo.Value := 0;
  rsPagadoCon.Value := 0;
end;

procedure TFacturaCobro.edEfectivoBtClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  //rsEfectivo.Value := FTotal;
  rsCheque.Value := 0;
  rsTarjeta.Value := 0;
  rsOtros.Value := 0;
  rsPagadoCon.Value := FTotal;
end;

procedure TFacturaCobro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F1 then begin
    edEfectivoBtClick(nil, 0);
    edEfectivo.SetFocus();
  end;

  if Key = vk_F2 then begin
    edTCRBtClick(nil, 0);
    edTCR.SetFocus();
  end;

  if Key = vk_F3 then begin
    edChkBtClick(nil, 0);
    edChk.SetFocus();
  end;

  if Key = vk_F4 then begin
    edOtrosBtClick(nil, 0);
    edOtros.SetFocus();
  end;

  if key = vk_ESCAPE then
    ModalResult := mrCancel;

  if (ActiveControl.ClassName <> 'TcxCustomInnerMemo') and ((Key = vk_END) or (Key = vk_F10) or (Key = vk_SPACE)) then begin
    Key := 0;
    if not FCajaAbierta then begin
      SelectNext(ActiveControl,True,True);

    if ((rsTarjeta.asCurrency > 0) or (rsCheque.asCurrency > 0) or (rsOtros.AsCurrency > 0)) and (rsNota.AsString = '') then begin
       cxDBMemo1.SetFocus();
       raise exception.Create('Debe especificar una nota para pagos de esta forma');
    end;
      //VerificarTotal();
  if (rsefectivo.value + rstarjeta.value + rscheque.value + rsotros.value < rstotal.value)
  and (CheckBox1.Checked = false) then begin
    edEfectivo.SetFocus();
    raise exception.Create('La distribucion de pago no coincide con el total a pagar de la factura');
  end;

  OpenCashDrawer();

      //ShowMessage('Pop!');

      FCajaAbierta := True;
    end
    else
      cxButton1.Click();
  end;
end;

procedure TFacturaCobro.edOtrosbtClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  rsOtros.Value := FTotal;
  rsTarjeta.Value := 0;
  rsCheque.Value := 0;
//  rsEfectivo.Value := 0;
  rsPagadoCon.Value := 0;
end;

procedure TFacturaCobro.FormCreate(Sender: TObject);
begin
  inherited;
  FCajaAbierta := False;
end;

end.

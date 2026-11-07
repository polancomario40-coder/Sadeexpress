unit uDesglosePago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, ADODB, ExtCtrls, StdCtrls, cxMemo,
  cxDBEdit, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxLookAndFeelPainters, cxButtons, cxLabel, cxDBLabel, Buttons,
  cxMaskEdit, cxButtonEdit, cxDropDownEdit, cxCalc, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxCurrencyEdit, kbmMemTable, ActnList;

const
  OPEN_CD           = ^G^Z;

type
  TPago = record
    idPago: TGUID;
    idDocumento: TGUID;
    idFormaPago: string;
    Monto: Currency;
    Numero: string;
    idSucursal: string;
    Cancelado: Boolean;
  end;

type
  TDesglosePago = class(TFForm)
    RS: TADODataSet;
    Label1: TLabel;
    Label3: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    btnGuardar: TcxButton;
    SpeedButton1: TSpeedButton;
    RSidDocumento: TGuidField;
    RSidFormaPago: TStringField;
    RSMonto: TBCDField;
    RSNumero: TStringField;
    RSidSucursal: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cFormaPago: TcxGridDBColumn;
    cMonto: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    RSidPago: TGuidField;
    rsFormaPago: TADODataSet;
    dsFormaPago: TDataSource;
    lblTotal: TcxLabel;
    lblCambio: TcxLabel;
    rsFormaPagoidPagoForma: TStringField;
    TempDatos: TkbmMemTable;
    TempDatosidPago: TGuidField;
    TempDatosidDocumento: TGuidField;
    TempDatosidFormaPago: TStringField;
    TempDatosMonto: TBCDField;
    TempDatosNumero: TStringField;
    TempDatosidSucursal: TStringField;
    ActionList1: TActionList;
    Cobrar: TAction;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1Enter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure TempDatosAfterPost(DataSet: TDataSet);
    procedure TempDatosNewRecord(DataSet: TDataSet);
    procedure TempDatosidFormaPagoValidate(Sender: TField);
    procedure CobrarExecute(Sender: TObject);
  private
    { Private declarations }
    FTotal, FPagado: Currency;
    FCajaAbierta: Boolean;
    FDocumento, FSucursal: string;
    procedure calculaCambio;
  public
    { Public declarations }
  end;

function GetPago(Documento, Origen, Sucursal: string; Total: double): TkbmMemTable;

var
  DesglosePago      : TDesglosePago;


implementation

uses Udata;

{$R *.dfm}

procedure OpenCashDrawer;
var
  prn               : Text;
begin
  AssignFile(prn, 'LPT1');
  ReWrite(prn);
  WriteLn(prn, OPEN_CD);
  Close(prn);
end;

function GetPago(Documento, Origen, Sucursal: string; Total: double): TkbmMemTable;
begin
  Result := nil;
  DesglosePago := TDesglosePago.Create(Application);

  DesglosePago.RS.Close;
  DesglosePago.FTotal := Total;
  DesglosePago.FPagado := 0;
  DesglosePago.FDocumento := Documento;
  DesglosePago.FSucursal := Sucursal;
  DesglosePago.RS.parameters[1].value := Documento;
  DesglosePago.RS.Open;

  DesglosePago.TempDatos.Close();
  DesglosePago.TempDatos.Open;
  DesglosePago.TempDatos.LoadFromDataSet(DesglosePago.RS, []);

  DesglosePago.lblTotal.Caption := FormatCurr('$,0.00', Total);
  DesglosePago.lblCambio.Caption := FormatCurr('$,0.00', 0);

  DesglosePago.calculaCambio();

  if DesglosePago.TempDatosidDocumento.isnull then
    DesglosePago.TempDatos.Append();

  try
    if DesglosePago.ShowModal = mrOk then
      Result := DesglosePago.TempDatos;
  finally
    DesglosePago.Release();
  end;
end;

procedure TDesglosePago.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TDesglosePago.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if key = vk_ESCAPE then
    ModalResult := mrCancel;

  if (ActiveControl.ClassName <> 'TcxCustomInnerMemo') and ((Key = vk_END) or (Key = vk_F10) or (Key = vk_SPACE)) then begin
    Key := 0;
    if not FCajaAbierta then begin
      SelectNext(ActiveControl, True, True);

      //VerificarTotal();
      {if rsefectivo.value + rstarjeta.value + rscheque.value + rsotros.value < rstotal.value then begin
        edEfectivo.SetFocus();
        raise exception.Create('La distribucion de pago no coincide con el total a pagar del documento');
      end;}

      OpenCashDrawer();

      FCajaAbierta := True;
    end
    else
      btnGuardar.Click();
  end;
end;

procedure TDesglosePago.FormCreate(Sender: TObject);
begin
  inherited;
  FCajaAbierta := False;
  rsFormaPago.Open;
end;

procedure TDesglosePago.cxGrid1Enter(Sender: TObject);
begin
  if TempDatos.IsEmpty then TempDatos.Append;
end;

procedure TDesglosePago.calculaCambio;
begin
  DesglosePago.FPagado := 0;

  with DesglosePago.TempDatos do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      DesglosePago.FPagado := DesglosePago.FPagado + DesglosePago.TempDatosMonto.Value;

      Next;
    end;
    EnableControls;
  end;

  lblCambio.Caption := FormatFloat('$,0.00; ($,0.00)', (DesglosePago.FTotal - DesglosePago.FPagado));
end;

procedure TDesglosePago.FormKeyPress(Sender: TObject; var Key: Char);
var FormaPago       : string;
begin
  if cFormaPago.Focused then
    if Key in ['1'..'9'] then
    begin
      case Key of
        '1': FormaPago := 'EFECTIVO';
        '2': FormaPago := 'CHEQUE';
        '3': FormaPago := 'TARJETA';
        '4': FormaPago := 'VISA';
        '5': FormaPago := 'MASTERCARD';
        '6': FormaPago := 'AMERICAN EXPRESS';
        '7': FormaPago := 'TARJETA DEBITO';
        '8': FormaPago := 'OTROS';
        '9': FormaPago := 'TARJETA AZUL';
      end;

      TempDatosidFormaPago.Value := FormaPago;
      TempDatos.Post;

      cxGrid1DBTableView1.Columns[cMonto.Index].Focused := True;
    end;
end;

procedure TDesglosePago.TempDatosAfterPost(DataSet: TDataSet);
begin
  inherited;
  calculaCambio;
end;

procedure TDesglosePago.TempDatosNewRecord(DataSet: TDataSet);
begin
  inherited;
  DesglosePago.TempDatosidPago.AsGuid := dm.NewGuid;
  DesglosePago.TempDatosidDocumento.value := FDocumento;
  DesglosePago.TempDatosidSucursal.Value := FSucursal;
end;

procedure TDesglosePago.TempDatosidFormaPagoValidate(Sender: TField);
begin
  inherited;
  if TempDatos.RecordCount = 0 then
    TempDatosMonto.Value := FTotal;
end;

procedure TDesglosePago.CobrarExecute(Sender: TObject);
begin
  inherited;

  if DesglosePago.FPagado < DesglosePago.FTotal then
    raise Exception.Create('El monto pagado es menor al total del documento..');

  ModalResult := mrOk;
end;

end.


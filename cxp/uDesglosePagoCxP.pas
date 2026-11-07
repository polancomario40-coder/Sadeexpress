unit uDesglosePagoCxP;

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

type
  TPago = record
    idPago: TGUID;
    idDocumento: TGUID;
    idFormaPago: Integer;
    Monto: Currency;
    Numero: string;
    Cancelado: Boolean;
  end;

type
  TDesglosePagoCxP = class(TFForm)
    RS: TADODataSet;
    Label1: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    btnGuardar: TcxButton;
    SpeedButton1: TSpeedButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cFormaPago: TcxGridDBColumn;
    cMonto: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    rsFormaPago: TADODataSet;
    dsFormaPago: TDataSource;
    lblTotal: TcxLabel;
    TempDatos: TkbmMemTable;
    TempDatosidPago: TGuidField;
    TempDatosidDocumento: TGuidField;
    TempDatosMonto: TBCDField;
    TempDatosNumero: TStringField;
    ActionList1: TActionList;
    Cobrar: TAction;
    rsFormaPagoidPagoForma: TIntegerField;
    rsFormaPagoPagoForma: TStringField;
    TempDatosidFormaPago: TIntegerField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1Enter(Sender: TObject);
    procedure TempDatosNewRecord(DataSet: TDataSet);
    procedure TempDatosidFormaPagoValidate(Sender: TField);
    procedure CobrarExecute(Sender: TObject);
    procedure TempDatosAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    FTotal, FPagado: Currency;
    FDocumento : string;

    procedure calculaPagado;
  public
    { Public declarations }
  end;

function GetPagoCxP(Documento : string; Total: double): TkbmMemTable;

var
  DesglosePagoCxP      : TDesglosePagoCxP;


implementation

uses Udata;

{$R *.dfm}

function GetPagoCxP(Documento : string; Total: double): TkbmMemTable;
begin
  Result := nil;
  DesglosePagoCxP := TDesglosePagoCxP.Create(Application);

  DesglosePagoCxP.RS.Close;
  DesglosePagoCxP.FTotal := Total;
  DesglosePagoCxP.FPagado := 0;
  DesglosePagoCxP.FDocumento := Documento;
  DesglosePagoCxP.RS.parameters[1].value := Documento;
  DesglosePagoCxP.RS.Open;

  DesglosePagoCxP.TempDatos.Close();
  DesglosePagoCxP.TempDatos.Open;
  DesglosePagoCxP.TempDatos.LoadFromDataSet(DesglosePagoCxP.RS, []);

  DesglosePagoCxP.lblTotal.Caption := FormatCurr('$,0.00', Total);

  DesglosePagoCxP.calculaPagado();

  if DesglosePagoCxP.TempDatosidDocumento.isnull then
    DesglosePagoCxP.TempDatos.Append();

  try
    if DesglosePagoCxP.ShowModal = mrOk then
      Result := DesglosePagoCxP.TempDatos;
  finally
    DesglosePagoCxP.Release();
  end;
end;

procedure TDesglosePagoCxP.calculaPagado;
begin
  DesglosePagoCxP.FPagado := 0;

  with DesglosePagoCxP.TempDatos do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      DesglosePagoCxP.FPagado := DesglosePagoCxP.FPagado + DesglosePagoCxP.TempDatosMonto.Value;

      Next;
    end;
    EnableControls;
  end;
end;

procedure TDesglosePagoCxP.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TDesglosePagoCxP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if key = vk_ESCAPE then
    ModalResult := mrCancel;

  if (ActiveControl.ClassName <> 'TcxCustomInnerMemo') and ((Key = vk_END) or (Key = vk_F10) or (Key = vk_SPACE)) then begin
    Key := 0;
    btnGuardar.Click();
  end;
end;

procedure TDesglosePagoCxP.FormCreate(Sender: TObject);
begin
  inherited;
  rsFormaPago.Open;
end;

procedure TDesglosePagoCxP.cxGrid1Enter(Sender: TObject);
begin
  if TempDatos.IsEmpty then TempDatos.Append;
end;

procedure TDesglosePagoCxP.TempDatosNewRecord(DataSet: TDataSet);
begin
  inherited;
  DesglosePagoCxP.TempDatosidPago.AsGuid := dm.NewGuid;
  DesglosePagoCxP.TempDatosidDocumento.value := FDocumento;
end;

procedure TDesglosePagoCxP.TempDatosidFormaPagoValidate(Sender: TField);
begin
  inherited;
  if TempDatos.RecordCount = 0 then
    TempDatosMonto.Value := FTotal;
end;

procedure TDesglosePagoCxP.CobrarExecute(Sender: TObject);
begin
  inherited;

  if DesglosePagoCxP.FPagado < DesglosePagoCxP.FTotal then
    raise Exception.Create('El monto pagado es menor al total del documento..');

  ModalResult := mrOk;
end;

procedure TDesglosePagoCxP.TempDatosAfterPost(DataSet: TDataSet);
begin
  calculaPagado();
end;

end.


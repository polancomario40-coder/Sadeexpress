unit uMantEDRecurrente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, Gradient, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxDBEdit, cxMemo, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxButtonEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxCurrencyEdit;

type
  TappEstado = (appBrowse, appInsert, appEdit);

type
  TMantEDRecurrente = class(TForm)
    rs: TADODataSet;
    ds: TDataSource;
    rsidEDRecurrente: TGuidField;
    rsNumeroEntrada: TStringField;
    rsFecha: TDateTimeField;
    rsConcepto: TStringField;
    rsTipoEntrada: TStringField;
    rsGrupo: TStringField;
    rsDet: TADODataSet;
    dsdet: TDataSource;
    rsDetidEDRecurrenteDet: TGuidField;
    rsDetidEDRecurrente: TGuidField;
    rsDetSecuencia: TAutoIncField;
    rsDetidCuenta: TStringField;
    rsDetDebCre: TWordField;
    rsDetValor: TBCDField;
    rsDetReferencia: TStringField;
    rsDetDescripcion: TStringField;
    rsDetidCentroCosto: TGuidField;
    rsDetidPartida: TStringField;
    rsDetidAuxiliar: TStringField;
    rsDetDebito: TBCDField;
    rsDetCredito: TBCDField;
    sbNew: TSpeedButton;
    sbCancel: TSpeedButton;
    sbSave: TSpeedButton;
    sbPrint: TSpeedButton;
    sbBuscar: TSpeedButton;
    sbBorrar: TSpeedButton;
    sbSalir: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    sbEdit: TSpeedButton;
    Gradient1: TGradient;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edNum: TcxDBTextEdit;
    luTipo: TcxDBLookupComboBox;
    dsTipo: TDataSource;
    edGrupo: TcxDBTextEdit;
    meConcepto: TcxDBMemo;
    Grid: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    GridDBTableView1idCuenta: TcxGridDBColumn;
    GridDBTableView1Debito: TcxGridDBColumn;
    GridDBTableView1Credito: TcxGridDBColumn;
    GridDBTableView1idAuxiliar: TcxGridDBColumn;
    GridDBTableView1DescrCta: TcxGridDBColumn;
    GridDBTableView1Referencia: TcxGridDBColumn;
    GridDBTableView1CentroCosto: TcxGridDBColumn;
    GridDBTableView1idPartida: TcxGridDBColumn;
    GridDBTableView1DBColumn1: TcxGridDBColumn;
    GridLevel1: TcxGridLevel;
    dsCta: TDataSource;
    edTDB: TcxCurrencyEdit;
    edTCR: TcxCurrencyEdit;
    edDif: TcxCurrencyEdit;
    procedure rsNewRecord(DataSet: TDataSet);
    procedure rsDetNewRecord(DataSet: TDataSet);
    procedure rsDetDebitoValidate(Sender: TField);
    procedure rsDetCreditoValidate(Sender: TField);
    procedure rsDetidCuentaValidate(Sender: TField);
    procedure GridEnter(Sender: TObject);
    procedure GridExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbBuscarClick(Sender: TObject);
    procedure sbSaveClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbEditClick(Sender: TObject);
    procedure sbNewClick(Sender: TObject);
    procedure rsDetBeforePost(DataSet: TDataSet);
    procedure rsDetAfterPost(DataSet: TDataSet);
    procedure GridDBTableView1idCuentaPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbSalirClick(Sender: TObject);
  private
    FappEstado: TappEstado;
    FEnter2Tab: Boolean;
    FTotalCR: Currency;
    FTotalDB: Currency;
    procedure SetappEstado(const Value: TappEstado);
    procedure CalcularTotales;
    function GetDiferencia: Currency;
    procedure SetTotalCR(const Value: Currency);
    procedure SetTotalDB(const Value: Currency);
    procedure RefreshSummary;
    { Private declarations }
  public
    { Public declarations }
    function Localizar(const id: Variant): Boolean;

    property appEstado: TappEstado read FappEstado write SetappEstado;
    property Enter2Tab: Boolean read FEnter2Tab write FEnter2Tab;

    property TotalDB: Currency read FTotalDB write SetTotalDB;
    property TotalCR: Currency read FTotalCR write SetTotalCR;
    property Diferencia: Currency read GetDiferencia;

    procedure Editar;
    procedure Nuevo;
    procedure Cancelar;
    procedure Guardar;
    procedure Imprimir;
    procedure Buscar;
  end;

var
  MantEDRecurrente: TMantEDRecurrente;

implementation

uses ugldm, uEDRecurrenteFind, uBuscarCuentaMayor, Udata;

{$R *.dfm}

{ TMantEDRecurrente }

function TMantEDRecurrente.Localizar(const id: Variant): Boolean;
begin
  with rs do begin
    Close();
    Parameters[1].Value := id;
    Open();
    Result := Eof;
  end;

  with rsDet do begin
    Close();
    Parameters[1].Value := id;
    Open();
  end;

  appEstado := appBrowse;
  CalcularTotales();
end;

procedure TMantEDRecurrente.SetAppEstado(const value: TAppEstado);
begin
  FappEstado := Value;
  if FappEstado in [appEdit,appInsert] then begin
    sbNew.Enabled := False;
    sbEdit.Enabled := False;
    sbPrint.Enabled := False;
    sbBuscar.Enabled := False;
    sbSalir.Enabled := False;
    sbBorrar.Enabled := False;

    sbCancel.Enabled := True;
    sbSave.Enabled := True;

    ds.AutoEdit := True;
    dsDet.AutoEdit := True;
  end
  else begin
    sbNew.Enabled := True;
    sbEdit.Enabled := rs.Active and (not rs.Eof);
    sbPrint.Enabled := True;
    sbBuscar.Enabled := True;
    sbSalir.Enabled := True;
    sbBorrar.Enabled := True;

    sbCancel.Enabled := False;
    sbSave.Enabled := False;

    ds.AutoEdit := False;
    dsDet.AutoEdit := False;
  end;
end;

procedure TMantEDRecurrente.rsNewRecord(DataSet: TDataSet);
begin
  rsIdEDRecurrente.AsGuid := gldm.NewGuid();
  rsGrupo.Value := '1';
  rsFecha.Value := Now();
end;

procedure TMantEDRecurrente.rsDetNewRecord(DataSet: TDataSet);
begin
  rsDetIdEDRecurrente.Value := rsIdEDRecurrente.Value;
  rsDetIdEDRecurrenteDet.AsGuid := gldm.NewGuid();
end;

procedure TMantEDRecurrente.Cancelar;
begin
  if rs.State in dsEditModes then
    rs.Cancel();

  if rsdet.State in dsEditModes then
    rsdet.Cancel();

  rsDet.CancelBatch();
  rs.CancelBatch();

  appEstado := appBrowse;
end;

procedure TMantEDRecurrente.Editar;
begin
  appEstado := appEdit;
end;

procedure TMantEDRecurrente.Imprimir;
begin

end;

procedure TMantEDRecurrente.Nuevo;
begin
  Localizar(null);
  appEstado := appInsert;
  rs.Append();
end;

procedure TMantEDRecurrente.Guardar;
begin
  if rsNumeroEntrada.AsString = '' then
    raise Exception.Create('No ha especificado el numero de la entrada');

  if rsTipoEntrada.IsNull then
    raise Exception.Create('No ha especificado el tipo de la entrada');

  if rs.State in dsEditModes then
    rs.Post();
  if rsDet.State in dsEditModes then
    rsDet.Post();

  rs.UpdateBatch();
  rsDet.UpdateBatch();

  appEstado := appBrowse;
end;

procedure TMantEDRecurrente.rsDetDebitoValidate(Sender: TField);
begin
  if rsDetDebito.AsCurrency <> 0 then begin
    rsDetDebCre.Value := 1;
    rsDetCredito.Value := 0;
    rsDetValor.Value := rsDetDebito.AsCurrency;
  end;
end;

procedure TMantEDRecurrente.rsDetCreditoValidate(Sender: TField);
begin
  if rsDetCredito.AsCurrency <> 0 then begin
    rsDetDebCre.Value := 2;
    rsDetDebito.Value := 0;
    rsDetValor.Value := rsDetCredito.AsCurrency;
  end;
end;

procedure TMantEDRecurrente.rsDetidCuentaValidate(Sender: TField);
var
  s: string;
  cta: string;
begin
  cta := Trim(rsDetidCuenta.Asstring);
  if cta <> '' then begin
    s := gldm.BuscarCuenta(cta);
    if s = NOCUENTA then
      raise exception.Create('Esta cuenta no existe')
    else if Trim(gldm.rsCatalogoTipoNivel.Asstring) <> 'D' then
      raise Exception.Create('Esta no es una cuenta de detalle');
  end;
end;

procedure TMantEDRecurrente.GridEnter(Sender: TObject);
begin
  if appEstado <> appBrowse then begin
    if not (rsDet.State in dsEditModes) then begin
      if rsDet.RecordCount = 0 then begin
        rsDet.Append();
        GridDBTableView1.Columns[0].Focused := True;
      end;
    end;
  end;
  Enter2Tab := False;
end;

procedure TMantEDRecurrente.GridExit(Sender: TObject);
begin
  Enter2Tab := True;
end;

procedure TMantEDRecurrente.FormCreate(Sender: TObject);
begin
  FTotalCR := 0;
  FTotalDB := 0;
  if gldm.rsTipos.Active = False then
    gldm.rsTipos.Open();

  if gldm.rsCatalogo.Active = False then
    gldm.rsCatalogo.Open();

  Localizar(null);
end;

procedure TMantEDRecurrente.Buscar;
var
  r: Variant;
begin
  r := BuscarEDRecurrente();
  if r <> null then
    Localizar(r);
end;

procedure TMantEDRecurrente.sbBuscarClick(Sender: TObject);
begin
  Buscar();
end;

procedure TMantEDRecurrente.sbSaveClick(Sender: TObject);
begin
  Guardar();
end;

procedure TMantEDRecurrente.sbCancelClick(Sender: TObject);
begin
  Cancelar();
end;

procedure TMantEDRecurrente.sbEditClick(Sender: TObject);
begin
  Editar();
end;

procedure TMantEDRecurrente.sbNewClick(Sender: TObject);
begin
  Nuevo();
end;

procedure TMantEDRecurrente.CalcularTotales;
var
  bm: string;
  tdb,tcr: Currency;
begin
  tcr := 0;
  tdb := 0;

  with rsDet do begin  
    DisableControls();
    try
      bm := BookMark;
      First();
      while not Eof do begin
        tdb := tdb + rsDetDebito.AsCurrency;
        tcr := tcr + rsDetCredito.AsCurrency;
        Next();
      end;
      BookMark := bm;
    finally
      EnableControls();
    end;
  end;

  TotalDB := tdb;
  TotalCR := tcr;
end;

procedure TMantEDRecurrente.rsDetBeforePost(DataSet: TDataSet);
begin
  if rsDetidCuenta.AsString = '' then
    raise Exception.Create('Escriba un numero de cuenta valida o presione ESC para cancelar');

  if rsDetValor.AsCurrency = 0 then
    raise Exception.Create('Escriba un debito o un credito');
end;

function TMantEDRecurrente.GetDiferencia: Currency;
begin
  Result := TotalDB - TotalCR;
end;

procedure TMantEDRecurrente.SetTotalCR(const Value: Currency);
begin
  FTotalCR := Value;
  RefreshSummary();
end;

procedure TMantEDRecurrente.SetTotalDB(const Value: Currency);
begin
  FTotalDB := Value;
  RefreshSummary();
end;

procedure TMantEDRecurrente.RefreshSummary;
begin
  edTDB.Value := TotalDB;
  edTCR.Value := TotalCR;
  edDif.Value := Diferencia;
end;

procedure TMantEDRecurrente.rsDetAfterPost(DataSet: TDataSet);
begin
  CalcularTotales();
end;

procedure TMantEDRecurrente.GridDBTableView1idCuentaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  cta: string;
begin
  if appEstado <> appBrowse then begin
    cta := BuscarCtaDetalle();
    if cta <> '' then begin
      if not (rsDet.State in dsEditModes) then
        rsDet.Edit();

      rsDetidCuenta.AsString := cta;
    end;
  end;
end;

procedure TMantEDRecurrente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then begin
    if Enter2Tab then begin
      Key := 0;
      SelectNext(ActiveControl,True,True);
    end;
  end;
end;

procedure TMantEDRecurrente.sbSalirClick(Sender: TObject);
begin
  Close();
end;

end.

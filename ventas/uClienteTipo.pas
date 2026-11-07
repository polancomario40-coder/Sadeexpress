unit uClienteTipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantConf, DB, ADODB, ImgList, DBActns, ActnList, Wwdatsrc,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, Grids, Wwdbigrd,
  Wwdbgrid, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxDBLookupComboBox, cxButtonEdit;

type
  TClienteTipo = class(TMantConf)
    rs: TADODataSet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    rsClienteTipoCuenta: TADODataSet;
    rsMoneda: TADODataSet;
    rsMonedaidMoneda: TIntegerField;
    rsMonedaMoneda: TStringField;
    rsMonedaCursoLegal: TBooleanField;
    rsClienteTipoCuentaidClienteTipo: TIntegerField;
    rsClienteTipoCuentaidMoneda: TIntegerField;
    rsClienteTipoCuentaidCuentaCredito: TStringField;
    rsClienteTipoCuentaidCuentaContado: TStringField;
    dsClienteTipoCuenta: TDataSource;
    dsMoneda: TDataSource;
    cxGrid1DBTableView1idClienteTipo: TcxGridDBColumn;
    cxGrid1DBTableView1idMoneda: TcxGridDBColumn;
    cxGrid1DBTableView1idCuentaCredito: TcxGridDBColumn;
    cxGrid1DBTableView1idCuentaContado: TcxGridDBColumn;
    rsClienteTipoCuentaidClienteTipoCuenta: TGuidField;
    rsidClienteTipo: TIntegerField;
    rsClienteTipo: TStringField;
    rsNoPagaItbis: TBooleanField;
    rsTipoCompFiscal: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure rsAfterScroll(DataSet: TDataSet);
    procedure rsClienteTipoCuentaBeforePost(DataSet: TDataSet);
    procedure cxGrid1DBTableView1idCuentaCreditoPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1DBTableView1idCuentaContadoPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure rsClienteTipoCuentaidCuentaCreditoValidate(Sender: TField);
    procedure rsClienteTipoCuentaidCuentaContadoValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClienteTipo: TClienteTipo;

implementation

uses Udata, uBusqueda, UUtiles;

{$R *.dfm}

procedure TClienteTipo.FormCreate(Sender: TObject);
begin
  inherited;
  rsMoneda.Open();
  rsClienteTipoCuenta.Open();
end;

procedure TClienteTipo.rsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With rsClienteTipoCuenta, Parameters Do
  Begin
    ParamByName('@IdClienteTipo').Value := rsidClienteTipo.Value;

    If Active Then
      Requery()
    Else
      Open();
  End;
end;

procedure TClienteTipo.rsClienteTipoCuentaBeforePost(DataSet: TDataSet);
begin
  inherited;
  rsClienteTipoCuentaidClienteTipo.Value := rsIdClienteTipo.Value;
end;

procedure TClienteTipo.cxGrid1DBTableView1idCuentaCreditoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  x : variant;
begin
  inherited;
  if appestado = appBrowse then begin
    x := fbuscar(tbusqueda, 'idCuenta', false, 'FindCuentaContable');
    if x <> Null then begin
      If (Not (rsClienteTipoCuenta.State = dsEdit)) Then
        rsClienteTipoCuenta.Edit;
      rsClienteTipoCuentaidCuentaCredito.value := x;
      if rsClienteTipoCuentaidCuentaContado.IsNull then rsClienteTipoCuentaidCuentaContado.value := x;
    end;
  end;
end;

procedure TClienteTipo.cxGrid1DBTableView1idCuentaContadoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  x : variant;
begin
  inherited;
  if appestado = appBrowse then begin
    x := fbuscar(tbusqueda, 'idCuenta', false, 'FindCuentaContable');
    if x <> Null then begin
      If (Not (rsClienteTipoCuenta.State = dsEdit)) Then
        rsClienteTipoCuenta.Edit;
      rsClienteTipoCuentaidCuentaContado.value := x;
    end;
  end;
end;

procedure TClienteTipo.rsClienteTipoCuentaidCuentaCreditoValidate(
  Sender: TField);
Var
  CuentaDesc : String;
begin
  inherited;
  dm.VerificarCuenta(Sender.Value, CuentaDesc);
end;

procedure TClienteTipo.rsClienteTipoCuentaidCuentaContadoValidate(
  Sender: TField);
Var
  CuentaDesc : String;
begin
  inherited;
  dm.VerificarCuenta(Sender.Value, CuentaDesc);
end;

end.

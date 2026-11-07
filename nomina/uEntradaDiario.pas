unit uEntradaDiario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, ADODB, StdCtrls, wwdblook, Grids, Wwdbigrd,
  Wwdbgrid, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxCheckBox, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxControls, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  cxDBLookupComboBox, cxButtonEdit;

type
  TEntradaDiario = class(TFForm)
    Button1: TButton;
    DsSeccion: TwwDataSource;
    Seccion: TADODataSet;
    Departamento: TADODataSet;
    TipoTransaccion: TADODataSet;
    dsTipoTransaccion: TDataSource;
    TipoTransaccionTipoTransaccionID: TIntegerField;
    TipoTransaccionTipoTransaccion: TStringField;
    TipoTransaccionDebito: TBooleanField;
    TipoTransaccionCotizable: TBooleanField;
    TipoTransaccionTipo: TStringField;
    TipoTransaccionValor: TBCDField;
    TipoTransaccionAdelanto: TBooleanField;
    TipoTransaccionProgramada: TBooleanField;
    TipoTransaccionMultiplo: TBCDField;
    TipoTransaccionNota: TStringField;
    TipoTransaccionOrden: TIntegerField;
    EntradaDiariod: TADODataSet;
    dsEntradaDiariosd: TDataSource;
    EntradaDiariodidEntradaDiario: TGuidField;
    EntradaDiariodTipoTransaccionID: TIntegerField;
    EntradaDiariodPorciento: TBCDField;
    EntradaDiariodCuenta: TStringField;
    EntradaDiariodDebito: TBooleanField;
    SeccionSeccionID: TIntegerField;
    SeccionDepartamentoID: TIntegerField;
    SeccionSeccion: TStringField;
    SeccionOrden: TIntegerField;
    DepartamentoDepartamentoID: TIntegerField;
    DepartamentoDepartamento: TStringField;
    DepartamentoOrden: TIntegerField;
    EntradaDiariodSeccionID: TIntegerField;
    EntradaDiariodDescripcion: TStringField;
    EntradaDiariodidFactorDistrib: TStringField;
    Factores: TADODataSet;
    dsFactores: TDataSource;
    EntradaDiariodMaximo: TBCDField;
    dsEntradaDiarioss: TDataSource;
    EntradaDiarios: TADODataSet;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1TipoTransaccionID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TipoTransaccion: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Debito: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Tipo: TcxGridDBBandedColumn;
    cxGrid2: TcxGrid;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1DepartamentoID: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Departamento: TcxGridDBBandedColumn;
    cxGrid3: TcxGrid;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3DBBandedTableView1SeccionID: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Seccion: TcxGridDBBandedColumn;
    cxGrid4: TcxGrid;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid5: TcxGrid;
    cxGrid5Level1: TcxGridLevel;
    cxGrid5DBBandedTableView1: TcxGridDBBandedTableView;
    EntradaDiariodDepartamentoID: TIntegerField;
    Label2: TLabel;
    EntradaDiariosidEntradaDiario: TGuidField;
    EntradaDiariosSeccionID: TIntegerField;
    EntradaDiariosDepartamentoID: TIntegerField;
    EntradaDiariosTipoTransaccionID: TIntegerField;
    EntradaDiariosPorciento: TBCDField;
    EntradaDiariosCuenta: TStringField;
    EntradaDiariosDebito: TBooleanField;
    EntradaDiariosDescripcion: TStringField;
    EntradaDiariosidFactorDistrib: TStringField;
    EntradaDiariosMaximo: TBCDField;
    cxGrid5DBBandedTableView1Porciento: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1Cuenta: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1Debito: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1Descripcion: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1idFactorDistrib: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1Maximo: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1Porciento: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1Cuenta: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1Debito: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1Descripcion: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1Maximo: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1idFactorDistrib: TcxGridDBBandedColumn;
    Label1: TLabel;
    cxGrid6: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    Label3: TLabel;
    Label4: TLabel;
    EntradadiarioE: TADODataSet;
    dsEntradadiarioE: TDataSource;
    EntradadiarioEidEntradaDiario: TGuidField;
    EntradadiarioESeccionID: TIntegerField;
    EntradadiarioEDepartamentoID: TIntegerField;
    EntradadiarioETipoTransaccionID: TIntegerField;
    EntradadiarioEPorciento: TBCDField;
    EntradadiarioECuenta: TStringField;
    EntradadiarioEDebito: TBooleanField;
    EntradadiarioEDescripcion: TStringField;
    EntradadiarioEidFactorDistrib: TStringField;
    EntradadiarioEMaximo: TBCDField;
    Label5: TLabel;
    procedure SeccionAfterScroll(DataSet: TDataSet);
    procedure EntradaDiariodNewRecord(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure EntradaDiariodBeforePost(DataSet: TDataSet);
    procedure EntradaDiariosBeforePost(DataSet: TDataSet);
    procedure EntradaDiariosNewRecord(DataSet: TDataSet);
    procedure cxGrid4DBBandedTableView1CuentaPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid5DBBandedTableView1CuentaPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure EntradaDiariodCuentaValidate(Sender: TField);
    procedure EntradaDiariosCuentaValidate(Sender: TField);
    procedure cxGrid4Enter(Sender: TObject);
    procedure cxGrid5Enter(Sender: TObject);
    procedure EntradadiarioEBeforePost(DataSet: TDataSet);
    procedure EntradadiarioENewRecord(DataSet: TDataSet);
    procedure EntradadiarioECuentaValidate(Sender: TField);
    procedure cxGrid6Enter(Sender: TObject);
    procedure cxGridDBBandedColumn1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntradaDiario: TEntradaDiario;

implementation

uses Udata, UUtiles;

{$R *.dfm}

procedure TEntradaDiario.SeccionAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if Seccion.Active and tipoTransaccion.Active then begin

    EntradaDiarioE.parameters[1].value := TipoTransaccionTipoTransaccionID.Value;
    if entradaDiarioE.active then EntradaDiarioE.Requery() else EntradaDiarioE.open;

    EntradaDiariod.parameters[1].value := DepartamentoDepartamentoID.value;
    EntradaDiariod.parameters[2].value := TipoTransaccionTipoTransaccionID.Value;
    if entradaDiariod.active then EntradaDiariod.Requery() else EntradaDiariod.open;

    EntradaDiarios.parameters[1].value := SeccionSeccionID.value;
    EntradaDiarios.parameters[2].value := TipoTransaccionTipoTransaccionID.Value;
    if entradaDiarios.active then EntradaDiarios.Requery() else EntradaDiarios.open;


  end;

end;

procedure TEntradaDiario.EntradaDiariodNewRecord(DataSet: TDataSet);
begin
  inherited;
  EntradaDiariodidEntradadiario.AsGuid := dm.NewGuid;
  EntradaDiariodDepartamentoID.Value := DepartamentoDepartamentoID.value;
  EntradaDiariodtipoTransaccionID.Value := TipoTransaccionTipoTransaccionID.Value;
  EntradaDiariodDebito.value := TipoTransaccionDebito.Value;
  EntradaDiariodPorciento.value := 1;
  EntradaDiariodMaximo.Value := 0;
end;

procedure TEntradaDiario.Button1Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TEntradaDiario.EntradaDiariodBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Entradadiariodporciento.AsFloat = 0 then
    if EntradadiariodidFactorDistrib.AsString = '' then
      raise exception.create('Debe seleccionar un porciento o un factor');
end;

procedure TEntradaDiario.EntradaDiariosBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Entradadiariosporciento.AsFloat = 0 then
    if EntradadiariosidFactorDistrib.AsString = '' then
      raise exception.create('Debe seleccionar un porciento o un factor');
end;

procedure TEntradaDiario.EntradaDiariosNewRecord(DataSet: TDataSet);
begin
  inherited;
  EntradaDiariosidEntradadiario.AsGuid := dm.NewGuid;
  EntradaDiariosSeccionID.Value := SeccionSeccionID.value;
  EntradaDiariostipoTransaccionID.Value := TipoTransaccionTipoTransaccionID.Value;
  EntradaDiariosDebito.value := TipoTransaccionDebito.Value;
  EntradaDiariosPorciento.value := 1;
  EntradaDiariosMaximo.Value := 0;
end;

procedure TEntradaDiario.cxGrid4DBBandedTableView1CuentaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  BuscarCuenta(EntradaDiariodCuenta);
end;

procedure TEntradaDiario.cxGrid5DBBandedTableView1CuentaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  BuscarCuenta(EntradaDiariosCuenta);
end;

procedure TEntradaDiario.EntradaDiariodCuentaValidate(Sender: TField);
var
  x : string;
begin
  inherited;
  x := 'invalido';
  dm.VerificarCuenta(sender.AsString, x);
end;

procedure TEntradaDiario.EntradaDiariosCuentaValidate(Sender: TField);
var
  x : string;
begin
  inherited;
  x := 'invalido';
  dm.VerificarCuenta(sender.AsString, x);
end;

procedure TEntradaDiario.cxGrid4Enter(Sender: TObject);
begin
  inherited;
 if entradadiariod.IsEmpty then
   entradadiariod.Append;

end;

procedure TEntradaDiario.cxGrid5Enter(Sender: TObject);
begin
  inherited;
 if entradadiarios.IsEmpty then
   entradadiarios.Append;
end;

procedure TEntradaDiario.EntradadiarioEBeforePost(DataSet: TDataSet);
begin
  inherited;
  if EntradadiarioEporciento.AsFloat = 0 then
    if EntradadiarioEidFactorDistrib.AsString = '' then
      raise exception.create('Debe seleccionar un porciento o un factor');
end;

procedure TEntradaDiario.EntradadiarioENewRecord(DataSet: TDataSet);
begin
  inherited;
  EntradaDiarioEidEntradadiario.AsGuid := dm.NewGuid;
  EntradaDiarioEtipoTransaccionID.Value := TipoTransaccionTipoTransaccionID.Value;
  EntradaDiarioEDebito.value := TipoTransaccionDebito.Value;
  EntradaDiarioEPorciento.value := 1;
  EntradaDiarioEMaximo.Value := 0;
end;

procedure TEntradaDiario.EntradadiarioECuentaValidate(Sender: TField);
var
  x : string;
begin
  inherited;
  x := 'invalido';
  dm.VerificarCuenta(sender.AsString, x);
end;

procedure TEntradaDiario.cxGrid6Enter(Sender: TObject);
begin
  inherited;
 if entradadiarioE.IsEmpty then
   entradadiarioE.Append;
end;

procedure TEntradaDiario.cxGridDBBandedColumn1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
 BuscarCuenta(EntradaDiarioECuenta);
end;

end.

unit uMantDistribuciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, kbmMemTable, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, ADODB, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxDBLookupComboBox, Gradient,
  cxContainer, cxLabel, ExtCtrls, cxButtonEdit;

type
  TMantDistribuciones = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    rsDistr: TADODataSet;
    rsDistridDistribucion: TAutoIncField;
    rsDistrDescripcion: TStringField;
    rsDet: TADODataSet;
    rsCtas: TADODataSet;
    rsDetidDistribucion: TIntegerField;
    rsDetidCuenta: TStringField;
    rsCtasidDistribucion: TIntegerField;
    rsCtasidCuenta: TStringField;
    rsCtasidFactor: TIntegerField;
    rsCtasidCtaDestino: TStringField;
    dsDistr: TDataSource;
    dsDet: TDataSource;
    dsCtas: TDataSource;
    rsCatalogo: TADODataSet;
    rsCatalogoidCuenta: TStringField;
    rsCatalogoDescripcion: TStringField;
    cxGrid1DBTableView1idDistribucion: TcxGridDBColumn;
    cxGrid1DBTableView1Descripcion: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1idCuenta: TcxGridDBColumn;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2idCtaDestino: TcxGridDBColumn;
    rsFactores: TADODataSet;
    rsFactoresidFactor: TIntegerField;
    rsFactoresDescripcion: TStringField;
    cxGridDBTableView2DBColumn1: TcxGridDBColumn;
    dsFactores: TDataSource;
    Panel1: TPanel;
    Gradient1: TGradient;
    cxLabel1: TcxLabel;
    Panel2: TPanel;
    Gradient2: TGradient;
    cxLabel2: TcxLabel;
    Panel3: TPanel;
    Gradient3: TGradient;
    cxLabel3: TcxLabel;
    cxGridDBTableView1DBColumn1: TcxGridDBColumn;
    dsCatalogo: TDataSource;
    cxGridDBTableView2DBColumn2: TcxGridDBColumn;
    rsDistrEntradaNum: TStringField;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxGridDBTableView1idCuentaPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure rsDetNewRecord(DataSet: TDataSet);
    procedure rsCtasNewRecord(DataSet: TDataSet);
    procedure cxGridDBTableView2idCtaDestinoPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MantDistribuciones: TMantDistribuciones;

implementation

uses ugldm, uBuscarCuentaMayor, Udata;

{$R *.dfm}

procedure TMantDistribuciones.FormCreate(Sender: TObject);
begin
  rsCatalogo.Open();
  rsFactores.Open();

  rsDistr.Open();
  rsDet.Open();
  rsCtas.Open();
end;

procedure TMantDistribuciones.cxGridDBTableView1idCuentaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  cta: string;
begin
  cta := BuscarCtaDetalle();
  if cta <> '' then begin
    if not (rsDet.State in dsEditModes) then
      rsDet.Edit();
    rsDetidCuenta.Asstring := cta;
  end;
end;

procedure TMantDistribuciones.rsDetNewRecord(DataSet: TDataSet);
begin
  rsDetidDistribucion.AsInteger := rsDistridDistribucion.AsInteger;
end;

procedure TMantDistribuciones.rsCtasNewRecord(DataSet: TDataSet);
begin
  rsCtasidDistribucion.AsInteger := rsDetidDistribucion.AsInteger;
  rsCtasidCuenta.Asstring := rsDetidCuenta.Asstring;
end;

procedure TMantDistribuciones.cxGridDBTableView2idCtaDestinoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  cta: string;
begin
  cta := BuscarCtaDetalle();
  if cta <> '' then begin
    if not (rsCtas.State in dsEditModes) then
      rsCtas.Edit();
    rsCtasidCtaDestino.Asstring := cta;
  end;
end;

end.

unit uTasa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc, StdCtrls,
  wwdblook, ComCtrls, ImgList, wwSpeedButton, wwDBNavigator, ExtCtrls,
  wwclearpanel, DBActns, ActnList, ADODB, Mask, wwdbedit, dxExEdtr,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxCntner, dxDBGrid, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxLookAndFeelPainters, cxButtons;

type
  TTasa = class(TFForm)
    ActionList1: TActionList;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    ImageList: TImageList;
    DS2: TwwDataSource;
    RS: TADODataSet;
    RS2: TADODataSet;
    RS2Fecha: TDateTimeField;
    RS2Tasa: TBCDField;
    RS2idMoneda: TIntegerField;
    Moneda: TADODataSet;
    MonedaidMoneda: TIntegerField;
    MonedaMoneda: TStringField;
    MonedaCursoLegal: TBooleanField;
    RS2idTasaTipo: TStringField;
    RSidMoneda: TIntegerField;
    RSMoneda: TStringField;
    RSCursoLegal: TBooleanField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1idMoneda: TcxGridDBColumn;
    cxGrid1DBTableView1Moneda: TcxGridDBColumn;
    cxGrid1DBTableView1CursoLegal: TcxGridDBColumn;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1Fecha: TcxGridDBColumn;
    cxGrid2DBTableView1Tasa: TcxGridDBColumn;
    cxGrid2DBTableView1idMoneda: TcxGridDBColumn;
    RS2rowguid: TGuidField;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ActualizarPrecio: TADOCommand;
    procedure RS2AfterPost(DataSet: TDataSet);
    procedure RS2BeforeInsert(DataSet: TDataSet);
    procedure RS2NewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Tasa: TTasa;

implementation

uses Udata;

{$R *.dfm}


procedure TTasa.RS2AfterPost(DataSet: TDataSet);
begin
  inherited;
  CrearLog('Modificar');
end;

procedure TTasa.RS2BeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if rsCursoLegal.value then
    raise exception.create('No se puede ingresar tasas para la moneda de curso legal');
end;

procedure TTasa.RS2NewRecord(DataSet: TDataSet);
begin
  inherited;
  rs2idtasatipo.Value := 'NORMAL';
  rs2Fecha.Value := dm.DBFecha;
  rs2idMoneda.Value := rsidmoneda.value;
end;

procedure TTasa.FormCreate(Sender: TObject);
begin
  inherited;
  rs.open;
  rs2.open;
end;

procedure TTasa.cxButton1Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TTasa.cxButton2Click(Sender: TObject);
begin
  inherited;
  actualizarprecio.Parameters[1].Value := null; //todos los productos
  actualizarprecio.Execute;
  if actualizarprecio.Parameters[0].Value <> 0 then
    raise exception.create('Error actualizando los precios de los productos, verifique')
  else
    showmessage('Los Precios han sido actualizados')  ;
end;

end.

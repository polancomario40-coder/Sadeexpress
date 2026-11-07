unit uBuscarDistribucion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxContainer, cxLabel, Gradient,
  ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, ADODB,
  cxLookAndFeelPainters, StdCtrls, cxButtons;

type
  TfBuscarDistribucion = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1idDistribucion: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1Descripcion: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Gradient1: TGradient;
    cxLabel1: TcxLabel;
    rsDistr: TADODataSet;
    rsDistridDistribucion: TIntegerField;
    rsDistrDescripcion: TStringField;
    rsDistrEntradaNum: TStringField;
    ds: TDataSource;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBuscarDistribucion: TfBuscarDistribucion;

function BuscarDistribucion: Integer;

implementation

uses ugldm, Udata;

{$R *.dfm}

procedure TfBuscarDistribucion.FormCreate(Sender: TObject);
begin
  rsDistr.Open();
end;

function BuscarDistribucion: Integer;
begin
  with TfBuscarDistribucion.Create(Application) do begin
    if ShowModal() = mrOk then
      Result := rsDistrIdDistribucion.AsInteger
    else
      Result := -1;

    Release();
  end;
end;

procedure TfBuscarDistribucion.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  AHandled := True;
  cxButton1.Click();
end;

end.

unit uEDRecurrenteFind;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLookAndFeelPainters, StdCtrls, cxButtons;

type
  TEDRecurrenteFind = class(TForm)
    rs: TADODataSet;
    rsidEDRecurrente: TGuidField;
    rsGrupo: TStringField;
    rsConcepto: TStringField;
    rsNumeroEntrada: TStringField;
    ds: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Grupo: TcxGridDBColumn;
    cxGrid1DBTableView1Concepto: TcxGridDBColumn;
    cxGrid1DBTableView1NumeroEntrada: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EDRecurrenteFind: TEDRecurrenteFind;

function BuscarEDRecurrente: Variant;

implementation

uses ugldm, Udata;

{$R *.dfm}

procedure TEDRecurrenteFind.FormCreate(Sender: TObject);
begin
  rs.Open();
end;

procedure TEDRecurrenteFind.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  cxButton1.Click();
end;

function BuscarEDRecurrente: Variant;
begin
  with TEDRecurrenteFind.Create(Application) do begin
    if ShowModal() = mrOk then
      Result := rsIdEDRecurrente.Value
    else
      Result := NULL;

    Release();
  end;
end;
end.


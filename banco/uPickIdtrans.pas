unit uPickIdtrans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClassBco, DB, dxCntner, Gradient, ADODB, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxCheckBox, cxLookAndFeelPainters, StdCtrls, cxButtons;

type
  TPickIdtrans = class(TMantClassBco)
    rsTipoTrans: TADODataSet;
    rsTipoTransidTrans: TIntegerField;
    rsTipoTransDescripcion: TStringField;
    rsTipoTransDebCre: TWordField;
    rsTipoTransAbrev: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Descripcion: TcxGridDBColumn;
    cxGrid1DBTableView1DebCre: TcxGridDBColumn;
    cxGrid1DBTableView1Abrev: TcxGridDBColumn;
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

  function BuscarIdtrans: Integer;

var
  PickIdtrans: TPickIdtrans;

implementation

uses udmBancos, Udata;

{$R *.dfm}


function BuscarIdtrans: Integer;
begin
  with TPickIdtrans.Create(Application) do begin
    if ShowModal() = mrOk then
      Result := rsTipoTransIdTrans.AsInteger
    else
      Result := -1;

    Release();
  end;
end;

procedure TPickIdtrans.FormCreate(Sender: TObject);
begin
  inherited;
  rsTipoTrans.Open();
end;

procedure TPickIdtrans.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  AHandled := True;
  cxButton1.Click();
end;

end.

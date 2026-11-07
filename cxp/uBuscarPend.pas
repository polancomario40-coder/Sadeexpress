unit uBuscarPend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, dxCntner, Gradient, StdCtrls,
  cxLookAndFeelPainters, cxButtons, uSimpleForm;

type
  TfBuscarPend = class(TSimpleForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1idDocumento: TcxGridDBColumn;
    cxGrid1DBTableView1Referencia: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Valor: TcxGridDBColumn;
    cxGrid1DBTableView1Abrev: TcxGridDBColumn;
    cxGrid1DBTableView1Pagado: TcxGridDBColumn;
    cxGrid1DBTableView1Sel: TcxGridDBColumn;
    Label1: TLabel;
    cxGrid1DBTableView1Pendiente: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  fBuscarPend: TfBuscarPend;

function SeleccionarPend(data: TDataSet): Boolean;

implementation

{$R *.dfm}

function SeleccionarPend(data: TDataSet): Boolean;
begin
  with TfBuscarPend.Create(Application) do begin
    ds.DataSet := data;
    Result := ShowModal() = mrOk;
    Release();
  end;
end;

end.

unit uSolicitudesPendientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, DB, dxCntner, Gradient, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxLookAndFeelPainters,
  StdCtrls, cxButtons, uSimpleForm;

type
  TSolicitudesPendientes = class(TSimpleForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1Sel: TcxGridDBColumn;
    cxGrid1DBTableView1Numero: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Total: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre: TcxGridDBColumn;
    cxGrid1DBTableView1Concepto: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MostrarSolsPend: Boolean;

var
  SolicitudesPendientes: TSolicitudesPendientes;

implementation

uses uSolDM;

{$R *.dfm}

function MostrarSolsPend: Boolean;
begin
  with TSolicitudesPendientes.Create(Application) do begin
    Result := ShowModal() = mrOk;
    Release();
  end;
end;


end.

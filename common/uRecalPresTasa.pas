unit uRecalPresTasa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformx, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, ADODB,
  cxContainer, cxTextEdit, cxMaskEdit, cxSpinEdit;

type
  TRecalPresTasa = class(TFFormx)
    Prestamos: TADODataSet;
    PrestamosidPrestamo: TIntegerField;
    PrestamosPrestamo: TStringField;
    PrestamosFecha: TDateTimeField;
    PrestamosMonto: TBCDField;
    PrestamosStatus: TStringField;
    PrestamosBalance: TBCDField;
    PrestamosidSolicitud: TIntegerField;
    PrestamosBalanceTotal: TBCDField;
    PrestamosCuota: TIntegerField;
    PrestamosFrecuencia: TStringField;
    dsPrestamos: TDataSource;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2idPrestamo: TcxGridDBColumn;
    cxGridDBTableView2Prestamo: TcxGridDBColumn;
    cxGridDBTableView2Fecha: TcxGridDBColumn;
    cxGridDBTableView2Monto: TcxGridDBColumn;
    cxGridDBTableView2Balance: TcxGridDBColumn;
    cxGridDBTableView2BalanceTotal: TcxGridDBColumn;
    cxGridDBTableView2Pend: TcxGridDBColumn;
    cxGridDBTableView2idSolicitud: TcxGridDBColumn;
    cxGridDBTableView2DBColumn1: TcxGridDBColumn;
    cxGridDBTableView2Status: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxButton9: TcxButton;
    PrestamosTasa: TBCDField;
    PrestamosPend: TBCDField;
    cxGridDBTableView2DBColumn2: TcxGridDBColumn;
    edtasa: TcxMaskEdit;
    porcentaje: TcxSpinEdit;
    cxButton1: TcxButton;
    Label1: TLabel;
    cxButton2: TcxButton;
    Recalcular: TADOCommand;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RecalPresTasa: TRecalPresTasa;

implementation

uses Udata, uPrestamo, UUtiles;

{$R *.dfm}

procedure TRecalPresTasa.FormCreate(Sender: TObject);
begin
  xautoopen := false;
  inherited;
  edtasa.Text := floattostr(dm.Tasaactual(2, dm.dbfecha()));

end;

procedure TRecalPresTasa.cxButton1Click(Sender: TObject);
begin
  inherited;
  Prestamos.Close;
  Prestamos.parameters[1].value := porcentaje.Value;
  Prestamos.Open;
end;

procedure TRecalPresTasa.cxButton9Click(Sender: TObject);
begin
  inherited;
  if not(prestamosidPrestamo.isnull ) then
    ModalShow(TPrestamo, showfind, prestamosidprestamo.value, 'idPrestamo', false);
end;

procedure TRecalPresTasa.cxGridDBTableView2DblClick(Sender: TObject);
begin
  inherited;
  if not(PrestamosidPrestamo.isnull) then
    ModalShow(TPrestamo, showfind, PrestamosidPrestamo.value ,'idPrestamo', false);
end;

procedure TRecalPresTasa.cxButton2Click(Sender: TObject);
begin
  inherited;

  if PrestamosidPrestamo.isnull then exit;

  if not(uutiles.Confirmar('Seguro que desea realcular el prestamo seleccionado con la tasa actual?')) then exit;

  Recalcular.Parameters[1].value := PrestamosidPrestamo.Value;
  Recalcular.Execute;

  Prestamos.Close;
  Prestamos.parameters[1].value := porcentaje.Value;
  Prestamos.Open;
end;

end.

unit uIngresosDescuentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSimpleForm, StdCtrls, DB, Gradient, cxExportGrid4Link,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxLookAndFeelPainters, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxButtons, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGrid;

Procedure ShowIngresoDescuento(NominaId : Integer);

type
  TIngresosDescuentos = class(TSimpleForm)
    Label2: TLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxButton3: TcxButton;
    btImprimir: TcxButton;
    btSalir: TcxButton;
    SaveDialog1: TSaveDialog;
    cxGridDBTableView1Departamento: TcxGridDBColumn;
    cxGridDBTableView1Seccion: TcxGridDBColumn;
    cxGridDBTableView1EmpleadoId: TcxGridDBColumn;
    cxGridDBTableView1Empleado: TcxGridDBColumn;
    cxGridDBTableView1xCantidad: TcxGridDBColumn;
    cxGridDBTableView1TipoTransaccionId: TcxGridDBColumn;
    cxGridDBTableView1Transaccion: TcxGridDBColumn;
    cxGridDBTableView1Notas: TcxGridDBColumn;
    cxGridDBTableView1TipoTransaccion: TcxGridDBColumn;
    cxGridDBTableView1Ingreso: TcxGridDBColumn;
    cxGridDBTableView1Fecha: TcxGridDBColumn;
    cxGridDBTableView1NominaId: TcxGridDBColumn;
    cxGridDBTableView1Compania: TcxGridDBColumn;
    cxGridDBTableView1Direccion: TcxGridDBColumn;
    cxGridDBTableView1Telefono: TcxGridDBColumn;
    cxGridDBTableView1Fax: TcxGridDBColumn;
    cxGridDBTableView1Debito: TcxGridDBColumn;
    cxGridDBTableView1Credito: TcxGridDBColumn;
    cxGridDBTableView1DBColumn1: TcxGridDBColumn;
    procedure cxButton3Click(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IngresosDescuentos: TIngresosDescuentos;

implementation

uses uDMReportes;

{$R *.dfm}

Procedure ShowIngresoDescuento(NominaId : Integer);
Begin
  With TIngresosDescuentos.Create(Application) Do
  Begin
    dmReporte.rsIngDesc.Close;
    dmReporte.rsIngDesc.parameters[1].value := NominaId;
    dmReporte.rsIngDesc.Open;
    ShowModal;
    Free;
  End;
End;

procedure TIngresosDescuentos.cxButton3Click(Sender: TObject);
begin
  inherited;
  If SaveDialog1.Execute Then
    ExportGrid4ToExcel(SaveDialog1.FileName, cxGrid2)

end;

procedure TIngresosDescuentos.btSalirClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TIngresosDescuentos.btImprimirClick(Sender: TObject);
begin
  inherited;
  Imprimir(dmReporte.RptNovedades);
end;

end.

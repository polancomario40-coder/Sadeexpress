unit uVolantes3en1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSimpleForm, DB, Gradient, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid;

Procedure ShowVolante3en1(NominaId : Integer);

type
  TVolantes3En1 = class(TSimpleForm)
    Label2: TLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1NominaID: TcxGridDBColumn;
    cxGridDBTableView1Fecha: TcxGridDBColumn;
    cxGridDBTableView1DepartamentoID: TcxGridDBColumn;
    cxGridDBTableView1Departamento: TcxGridDBColumn;
    cxGridDBTableView1SeccionID: TcxGridDBColumn;
    cxGridDBTableView1Seccion: TcxGridDBColumn;
    cxGridDBTableView1EmpleadoID: TcxGridDBColumn;
    cxGridDBTableView1TotalNormal: TcxGridDBColumn;
    cxGridDBTableView1TotalNocturna: TcxGridDBColumn;
    cxGridDBTableView1TotalExtra: TcxGridDBColumn;
    cxGridDBTableView1TotalDoble: TcxGridDBColumn;
    cxGridDBTableView1OtrosIngresos: TcxGridDBColumn;
    cxGridDBTableView1Bruto: TcxGridDBColumn;
    cxGridDBTableView1OtrosDescuentos: TcxGridDBColumn;
    cxGridDBTableView1TDescuentos: TcxGridDBColumn;
    cxGridDBTableView1Neto: TcxGridDBColumn;
    cxGridDBTableView1Notas: TcxGridDBColumn;
    cxGridDBTableView1Dias: TcxGridDBColumn;
    cxGridDBTableView1Cheque: TcxGridDBColumn;
    cxGridDBTableView1Volante: TcxGridDBColumn;
    cxGridDBTableView1Numero: TcxGridDBColumn;
    cxGridDBTableView1Empleado: TcxGridDBColumn;
    cxGridDBTableView1NumeroCuenta: TcxGridDBColumn;
    btImprimir: TcxButton;
    btSalir: TcxButton;
    procedure btSalirClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Volantes3En1: TVolantes3En1;

implementation

uses uDMReportes;

{$R *.dfm}

Procedure ShowVolante3en1(NominaId : Integer);
Begin
  With TVolantes3En1.Create(Application) Do
  Begin
    dmReporte.TDebito.Close;
    dmReporte.TCredito.Close;
    dmReporte.rsVolanteH.close;
    dmReporte.rsVolanteH.parameters[1].value := NominaId;
    dmReporte.rsVolanteH.open;
    ShowModal;
    Free;
  End;
End;

procedure TVolantes3En1.btSalirClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TVolantes3En1.btImprimirClick(Sender: TObject);
begin
  inherited;
  Imprimir(dmReporte.RptVolanteHLaser);

end;

end.

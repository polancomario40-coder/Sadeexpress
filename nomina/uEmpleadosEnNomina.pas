unit uEmpleadosEnNomina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSimpleForm, DB, Gradient, ADODB, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl, ppCache, cxExportGrid4Link,
  ppParameter;

Procedure ShowEmpleadosEnNomina(NominaId : Integer);

type
  TEmpleadosEnNomia = class(TSimpleForm)
    spEmpleadosEnNomina: TADOStoredProc;
    spEmpleadosEnNominaEmpleadoId: TIntegerField;
    spEmpleadosEnNominaEmpleado: TStringField;
    spEmpleadosEnNominaDepartamento: TStringField;
    spEmpleadosEnNominaSeccion: TStringField;
    spEmpleadosEnNominaNumeroCuenta: TStringField;
    spEmpleadosEnNominaNeto: TBCDField;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    btSalir: TcxButton;
    btImprimir: TcxButton;
    cxButton3: TcxButton;
    cxGridDBTableView1EmpleadoId: TcxGridDBColumn;
    cxGridDBTableView1Empleado: TcxGridDBColumn;
    cxGridDBTableView1Departamento: TcxGridDBColumn;
    cxGridDBTableView1Seccion: TcxGridDBColumn;
    cxGridDBTableView1NumeroCuenta: TcxGridDBColumn;
    cxGridDBTableView1Neto: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    qryTransacciones: TADOQuery;
    dsTransaccones: TDataSource;
    qryTransaccionesTipoTransaccionId: TIntegerField;
    qryTransaccionesTipotransaccion: TStringField;
    qryTransaccionesMonto: TBCDField;
    qryTransaccionesCantidad: TBCDField;
    cxGridDBTableView2TipoTransaccionId: TcxGridDBColumn;
    cxGridDBTableView2Tipotransaccion: TcxGridDBColumn;
    cxGridDBTableView2Monto: TcxGridDBColumn;
    cxGridDBTableView2Cantidad: TcxGridDBColumn;
    spEmpleadosEnNominaNominaId: TIntegerField;
    qryTransaccionesId: TGuidField;
    SaveDialog1: TSaveDialog;
    plEmpleadosNeto: TppDBPipeline;
    rptEmpleadoNeto: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppShape1: TppShape;
    ppLine1: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    procedure btSalirClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EmpleadosEnNomia: TEmpleadosEnNomia;

implementation

uses Udata;

{$R *.dfm}

procedure TEmpleadosEnNomia.btSalirClick(Sender: TObject);
begin
  inherited;
  Close;
end;

Procedure ShowEmpleadosEnNomina(NominaId : Integer);
Begin
  With tEmpleadosEnNomia.Create(Application) Do
  Begin
    spEmpleadosEnNomina.Parameters.ParamByName('@NominaId').Value := NominaId;
    spEmpleadosEnNomina.Open();
    qryTransacciones.Open;
    ShowModal;
    Free;
  End;
End;

procedure TEmpleadosEnNomia.cxButton3Click(Sender: TObject);
begin
  inherited;
  If SaveDialog1.Execute Then
    ExportGrid4ToExcel(SaveDialog1.FileName, cxGrid1);
end;

procedure TEmpleadosEnNomia.btImprimirClick(Sender: TObject);
begin
  inherited;
  If Not spEmpleadosEnNomina.IsEmpty Then
    Imprimir(rptEmpleadoNeto);
end;

procedure TEmpleadosEnNomia.FormCreate(Sender: TObject);
begin
  inherited;
  spEmpleadosEnNomina.Close;
end;

end.

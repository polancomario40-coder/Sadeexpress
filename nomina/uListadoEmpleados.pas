unit uListadoEmpleados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSimpleForm, StdCtrls, DB, Gradient, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, ppDB, ppDBPipe, ppCtrls, ppBands, ppClass, ppVar,
  ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport, ADODB,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, cxButtons,
  cxContainer, cxCheckBox, cxExportGrid4Link, ppParameter;

type
  TListadoEmpleado = class(TSimpleForm)
    Label2: TLabel;
    cxButton1: TcxButton;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Empleados: TADODataSet;
    EmpleadosTipoEmpleado: TStringField;
    EmpleadosDepartamento: TStringField;
    EmpleadosSeccion: TStringField;
    EmpleadosEmpleadoID: TIntegerField;
    EmpleadosNombre: TStringField;
    EmpleadosApellido: TStringField;
    EmpleadosCedula: TStringField;
    EmpleadosInicio: TDateTimeField;
    EmpleadosFin: TDateTimeField;
    EmpleadosTelefono1: TStringField;
    EmpleadosNacimiento: TDateTimeField;
    EmpleadosNumeroCuenta: TStringField;
    EmpleadosSueldoFijo: TBooleanField;
    EmpleadosNumeroSS: TStringField;
    EmpleadosEmpleadoRoll: TStringField;
    EmpleadosActivos: TStringField;
    EmpleadosTipoEmpleadoID: TAutoIncField;
    EmpleadosDepartamentoID: TIntegerField;
    EmpleadosSeccionID: TIntegerField;
    EmpleadosSueldo: TBCDField;
    EmpleadosSueldoMes: TBCDField;
    RptEmpleados: TppReport;
    ppTitleBand3: TppTitleBand;
    ppLabel97: TppLabel;
    ppDBText103: TppDBText;
    ppSystemVariable4: TppSystemVariable;
    ppDBText240: TppDBText;
    ppHeaderBand6: TppHeaderBand;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppDBText110: TppDBText;
    ppDBText111: TppDBText;
    ppDBText112: TppDBText;
    ppDBText162: TppDBText;
    ppDBText164: TppDBText;
    ppFooterBand6: TppFooterBand;
    ppSystemVariable5: TppSystemVariable;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppShape4: TppShape;
    ppLabel56: TppLabel;
    ppDBText45: TppDBText;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppShape5: TppShape;
    ppLabel93: TppLabel;
    ppDBText46: TppDBText;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppShape24: TppShape;
    ppDBCalc57: TppDBCalc;
    ppLabel64: TppLabel;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppShape6: TppShape;
    ppLabel94: TppLabel;
    ppDBText47: TppDBText;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppShape16: TppShape;
    plempleados: TppDBPipeline;
    cxGridDBTableView1TipoEmpleado: TcxGridDBColumn;
    cxGridDBTableView1Departamento: TcxGridDBColumn;
    cxGridDBTableView1Seccion: TcxGridDBColumn;
    cxGridDBTableView1EmpleadoID: TcxGridDBColumn;
    cxGridDBTableView1Nombre: TcxGridDBColumn;
    cxGridDBTableView1Apellido: TcxGridDBColumn;
    cxGridDBTableView1Cedula: TcxGridDBColumn;
    cxGridDBTableView1Inicio: TcxGridDBColumn;
    cxGridDBTableView1Fin: TcxGridDBColumn;
    cxGridDBTableView1Telefono1: TcxGridDBColumn;
    cxGridDBTableView1Nacimiento: TcxGridDBColumn;
    cxGridDBTableView1NumeroCuenta: TcxGridDBColumn;
    cxGridDBTableView1SueldoFijo: TcxGridDBColumn;
    cxGridDBTableView1NumeroSS: TcxGridDBColumn;
    cxGridDBTableView1EmpleadoRoll: TcxGridDBColumn;
    cxGridDBTableView1Activos: TcxGridDBColumn;
    cxGridDBTableView1TipoEmpleadoID: TcxGridDBColumn;
    cxGridDBTableView1DepartamentoID: TcxGridDBColumn;
    cxGridDBTableView1SeccionID: TcxGridDBColumn;
    cxGridDBTableView1Sueldo: TcxGridDBColumn;
    cxGridDBTableView1SueldoMes: TcxGridDBColumn;
    cbActivo: TcxCheckBox;
    btSalir: TcxButton;
    btImprimir: TcxButton;
    cxButton3: TcxButton;
    SaveDialog1: TSaveDialog;
    EmpleadosCodExterno: TStringField;
    EmpleadosSexo: TStringField;
    EmpleadosEstadoCivil: TStringField;
    EmpleadosDireccion: TStringField;
    cxGridDBTableView1DBColumn1: TcxGridDBColumn;
    cxGridDBTableView1DBColumn2: TcxGridDBColumn;
    cxGridDBTableView1DBColumn3: TcxGridDBColumn;
    cxGridDBTableView1DBColumn4: TcxGridDBColumn;
    EmpleadosCiudad: TStringField;
    EmpleadosReferencia: TStringField;
    cxGridDBTableView1DBColumn5: TcxGridDBColumn;
    cxGridDBTableView1DBColumn6: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ListadoEmpleado: TListadoEmpleado;

implementation

uses Udata;

{$R *.dfm}

procedure TListadoEmpleado.cxButton1Click(Sender: TObject);
begin
  inherited;
  With Empleados, Parameters Do
  Begin
    Close();
    ParamByName('@Activo').Value := cbActivo.Checked;

    Open();
  End;
end;

procedure TListadoEmpleado.btSalirClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TListadoEmpleado.cxButton3Click(Sender: TObject);
begin
  inherited;
  If SaveDialog1.Execute Then
    ExportGrid4ToExcel(SaveDialog1.FileName, cxGrid1);
end;

procedure TListadoEmpleado.btImprimirClick(Sender: TObject);
begin
  inherited;
  If Empleados.Active And (Not Empleados.IsEmpty) Then
    Imprimir(RptEmpleados);
end;

end.

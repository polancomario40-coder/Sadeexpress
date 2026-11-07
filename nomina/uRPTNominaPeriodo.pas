unit uRPTNominaPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, ADODB, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  StdCtrls, cxButtons,cxExportGrid4Link, ppDB, ppDBPipe, ppCtrls, ppBands,
  ppClass, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppParameter;

type
  TRPTNominaPeriodo = class(TFForm)
    Label1: TLabel;
    Label2: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    rs: TADODataSet;
    rsNominaID: TIntegerField;
    rsFecha: TDateTimeField;
    rsDesde: TDateTimeField;
    rsHasta: TDateTimeField;
    rsMesCalendario: TSmallintField;
    rsDepartamento: TStringField;
    rsSeccion: TStringField;
    rsEmpleadoID: TIntegerField;
    rsHoraNormal: TBCDField;
    rsHoraNocturna: TBCDField;
    rsHoraExtra: TBCDField;
    rsHoraDoble: TBCDField;
    rsPrecioNormal: TBCDField;
    rsPrecioNocturna: TBCDField;
    rsPrecioExtra: TBCDField;
    rsPrecioDoble: TBCDField;
    rsTotalNormal: TBCDField;
    rsTotalNocturna: TBCDField;
    rsTotalExtra: TBCDField;
    rsTotalDoble: TBCDField;
    rsOtrosIngresos: TBCDField;
    rsBruto: TBCDField;
    rsSS: TBCDField;
    rsIR: TBCDField;
    rsAFP: TBCDField;
    rsOtrosDescuentos: TBCDField;
    rsTDescuentos: TBCDField;
    rsNeto: TBCDField;
    rsNotas: TStringField;
    rsDias: TBCDField;
    rsCheque: TIntegerField;
    rsVolante: TIntegerField;
    rsNumero: TIntegerField;
    rsTipoEmpleadoID: TIntegerField;
    rsEmpleado: TStringField;
    rsNombre: TStringField;
    rsApellido: TStringField;
    rsCedula: TStringField;
    rsPosicion: TStringField;
    rsSueldo: TBCDField;
    rsDireccion: TStringField;
    rsCiudad: TStringField;
    rsTelefono1: TStringField;
    rsTelefono2: TStringField;
    rsNumeroCuenta: TStringField;
    rsActivo: TBooleanField;
    rsNumeroSS: TStringField;
    rsidEmpleadoRoll: TStringField;
    rsTipoEmpleado: TStringField;
    rsKeyField: TGuidField;
    cxGrid1DBTableView1NominaID: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Desde: TcxGridDBColumn;
    cxGrid1DBTableView1Hasta: TcxGridDBColumn;
    cxGrid1DBTableView1MesCalendario: TcxGridDBColumn;
    cxGrid1DBTableView1Departamento: TcxGridDBColumn;
    cxGrid1DBTableView1Seccion: TcxGridDBColumn;
    cxGrid1DBTableView1EmpleadoID: TcxGridDBColumn;
    cxGrid1DBTableView1HoraNormal: TcxGridDBColumn;
    cxGrid1DBTableView1HoraNocturna: TcxGridDBColumn;
    cxGrid1DBTableView1HoraExtra: TcxGridDBColumn;
    cxGrid1DBTableView1HoraDoble: TcxGridDBColumn;
    cxGrid1DBTableView1PrecioNormal: TcxGridDBColumn;
    cxGrid1DBTableView1PrecioNocturna: TcxGridDBColumn;
    cxGrid1DBTableView1PrecioExtra: TcxGridDBColumn;
    cxGrid1DBTableView1PrecioDoble: TcxGridDBColumn;
    cxGrid1DBTableView1TotalNormal: TcxGridDBColumn;
    cxGrid1DBTableView1TotalNocturna: TcxGridDBColumn;
    cxGrid1DBTableView1TotalExtra: TcxGridDBColumn;
    cxGrid1DBTableView1TotalDoble: TcxGridDBColumn;
    cxGrid1DBTableView1OtrosIngresos: TcxGridDBColumn;
    cxGrid1DBTableView1Bruto: TcxGridDBColumn;
    cxGrid1DBTableView1SS: TcxGridDBColumn;
    cxGrid1DBTableView1IR: TcxGridDBColumn;
    cxGrid1DBTableView1AFP: TcxGridDBColumn;
    cxGrid1DBTableView1OtrosDescuentos: TcxGridDBColumn;
    cxGrid1DBTableView1TDescuentos: TcxGridDBColumn;
    cxGrid1DBTableView1Neto: TcxGridDBColumn;
    cxGrid1DBTableView1Notas: TcxGridDBColumn;
    cxGrid1DBTableView1Empleado: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre: TcxGridDBColumn;
    cxGrid1DBTableView1Apellido: TcxGridDBColumn;
    cxGrid1DBTableView1Cedula: TcxGridDBColumn;
    cxGrid1DBTableView1Posicion: TcxGridDBColumn;
    cxGrid1DBTableView1Sueldo: TcxGridDBColumn;
    cxGrid1DBTableView1Direccion: TcxGridDBColumn;
    cxGrid1DBTableView1Ciudad: TcxGridDBColumn;
    cxGrid1DBTableView1Telefono1: TcxGridDBColumn;
    cxGrid1DBTableView1Telefono2: TcxGridDBColumn;
    cxGrid1DBTableView1Activo: TcxGridDBColumn;
    cxGrid1DBTableView1TipoEmpleado: TcxGridDBColumn;
    sd: TSaveDialog;
    RepNom: TppReport;
    ppTitleBand1: TppTitleBand;
    ppDBText81: TppDBText;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel313: TppLabel;
    ppSystemVariable19: TppSystemVariable;
    ppSystemVariable20: TppSystemVariable;
    ppHeaderBand4: TppHeaderBand;
    ppShape7: TppShape;
    ppLabel27: TppLabel;
    ppShape6: TppShape;
    ppLabel28: TppLabel;
    ppShape5: TppShape;
    ppLabel29: TppLabel;
    ppShape4: TppShape;
    ppLabel30: TppLabel;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel148: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText146: TppDBText;
    ppDBText113: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppShape11: TppShape;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppDBCalc44: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    ppLabel51: TppLabel;
    ppDBCalc81: TppDBCalc;
    ppDBCalc54: TppDBCalc;
    ppLabel169: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText36: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppShape12: TppShape;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppLabel52: TppLabel;
    ppDBCalc80: TppDBCalc;
    ppDBCalc53: TppDBCalc;
    ppLabel167: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBText37: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppShape17: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppLabel53: TppLabel;
    ppDBCalc79: TppDBCalc;
    ppDBCalc52: TppDBCalc;
    ppLabel166: TppLabel;
    Data: TppDBPipeline;
    DatappField1: TppField;
    DatappField2: TppField;
    DatappField3: TppField;
    DatappField4: TppField;
    DatappField5: TppField;
    DatappField6: TppField;
    DatappField7: TppField;
    DatappField8: TppField;
    DatappField9: TppField;
    DatappField10: TppField;
    DatappField11: TppField;
    DatappField12: TppField;
    DatappField13: TppField;
    DatappField14: TppField;
    DatappField15: TppField;
    DatappField16: TppField;
    DatappField17: TppField;
    DatappField18: TppField;
    DatappField19: TppField;
    DatappField20: TppField;
    DatappField21: TppField;
    DatappField22: TppField;
    DatappField23: TppField;
    DatappField24: TppField;
    DatappField25: TppField;
    DatappField26: TppField;
    DatappField27: TppField;
    DatappField28: TppField;
    DatappField29: TppField;
    DatappField30: TppField;
    DatappField31: TppField;
    DatappField32: TppField;
    DatappField33: TppField;
    DatappField34: TppField;
    DatappField35: TppField;
    DatappField36: TppField;
    DatappField37: TppField;
    DatappField38: TppField;
    DatappField39: TppField;
    DatappField40: TppField;
    DatappField41: TppField;
    DatappField42: TppField;
    DatappField43: TppField;
    DatappField44: TppField;
    DatappField45: TppField;
    DatappField46: TppField;
    DatappField47: TppField;
    DatappField48: TppField;
    DatappField49: TppField;
    DatappField50: TppField;
    ppVariable1: TppVariable;
    ppVariable2: TppVariable;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RPTNominaPeriodo: TRPTNominaPeriodo;

implementation

uses Udata;

{$R *.dfm}

procedure TRPTNominaPeriodo.cxButton2Click(Sender: TObject);
begin
  inherited;
  if sd.Execute() then
    ExportGrid4ToExcel(sd.FileName,cxGrid1);
end;

procedure TRPTNominaPeriodo.cxButton1Click(Sender: TObject);
begin
  inherited;
  with rs do begin
    Close();
    Parameters[1].Value := deDesde.Date;
    Parameters[2].Value := deHasta.Date;
    Open();
  end;
end;

procedure TRPTNominaPeriodo.cxButton4Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TRPTNominaPeriodo.cxButton3Click(Sender: TObject);
begin
  inherited;
  Imprimir(repNom);
end;

procedure TRPTNominaPeriodo.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  value := deDesde.Text;
end;

procedure TRPTNominaPeriodo.ppVariable2Calc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  Value := deHasta.Text;
end;

end.

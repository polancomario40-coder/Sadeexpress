unit UCxCEmpleados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, StdCtrls, wwdbdatetimepicker, Grids, Wwdbigrd, Wwdbgrid,
  DB, ADODB, Wwdatsrc, Buttons, myChkBox, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppBands, ppDB, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, ppStrtch, ppSubRpt, ComCtrls, ppMemo, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, ppParameter;

type
  TCxCEmpleados = class(TFForm)
    Empleado: TADODataSet;
    wwDBGrid1: TwwDBGrid;
    CxCEmp: TADODataSet;
    dsCxcEmp: TDataSource;
    BLocalEmp: TBitBtn;
    BNuevo: TBitBtn;
    bMostrar: TBitBtn;
    BStado: TBitBtn;
    Pendiente: TCheckBox;
    BitBtn5: TBitBtn;
    EmpleadoEmpleadoid: TIntegerField;
    EmpleadoEmpleado: TStringField;
    EmpleadoActivo: TBooleanField;
    EmpleadoDepartamento: TStringField;
    CxCEmpCxCEmpID: TIntegerField;
    CxCEmpEmpleadoID: TIntegerField;
    CxCEmpTipoTransaccionID: TIntegerField;
    CxCEmpCxCEmp: TStringField;
    CxCEmpFecha: TDateTimeField;
    CxCEmpTotal: TBCDField;
    CxCEmpCuotas: TIntegerField;
    CxCEmpDescuento: TBCDField;
    CxCEmpDescontado: TBCDField;
    CxCEmpBalance: TBCDField;
    CxCEmpActivo: TBooleanField;
    CxCEmpStadoCta: TADODataSet;
    dsCxCEmpStadoCta: TDataSource;
    plCxCEmpStadoCta: TppDBPipeline;
    RptCxCEmpStadoCta: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppLabel11: TppLabel;
    ppDBText11: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel12: TppLabel;
    CxCEmpStadoCtaDet: TADODataSet;
    dsCxCEmpStadoCtaDet: TDataSource;
    plCxCEmpStadoCtaDet: TppDBPipeline;
    CxCEmpStadoCtaEmpleadoID: TIntegerField;
    CxCEmpStadoCtaEmpleado: TStringField;
    CxCEmpStadoCtaDepartamento: TStringField;
    CxCEmpStadoCtaCxCEmpID: TIntegerField;
    CxCEmpStadoCtaTipoTransaccion: TStringField;
    CxCEmpStadoCtaFecha: TDateTimeField;
    CxCEmpStadoCtaTotal: TBCDField;
    CxCEmpStadoCtaCuotas: TIntegerField;
    CxCEmpStadoCtaDescuento: TBCDField;
    CxCEmpStadoCtaDescontado: TBCDField;
    CxCEmpStadoCtaBalance: TBCDField;
    CxCEmpStadoCtaActivo: TBooleanField;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppLabel13: TppLabel;
    ppDBText12: TppDBText;
    ppLabel14: TppLabel;
    ppDBText13: TppDBText;
    BitBtn1: TBitBtn;
    dsCxcEmpleados: TDataSource;
    CxcEmpleados: TADODataSet;
    plCxcEmpleados: TppDBPipeline;
    RptCxcEmpleados: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppSystemVariable2: TppSystemVariable;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLabel17: TppLabel;
    ppDBText17: TppDBText;
    ppLabel18: TppLabel;
    ppDBText18: TppDBText;
    ppLabel19: TppLabel;
    ppDBText19: TppDBText;
    ppLabel20: TppLabel;
    ppDBText20: TppDBText;
    ppLabel21: TppLabel;
    ppDBText21: TppDBText;
    ppLabel22: TppLabel;
    myDBCheckBox2: TmyDBCheckBox;
    ppSystemVariable3: TppSystemVariable;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLine2: TppLine;
    wwDBGrid2: TwwDBGrid;
    ReportCXCLS: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppSystemVariable4: TppSystemVariable;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine3: TppLine;
    ppDetailBand4: TppDetailBand;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    myDBCheckBox3: TmyDBCheckBox;
    ppFooterBand3: TppFooterBand;
    ppSystemVariable5: TppSystemVariable;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine4: TppLine;
    ppLabel31: TppLabel;
    ppDBMemo1: TppDBMemo;
    CxcEmpleadosEmpleadoID: TIntegerField;
    CxcEmpleadosNombre: TStringField;
    CxcEmpleadosApellido: TStringField;
    CxcEmpleadosFecha: TDateTimeField;
    CxcEmpleadosTipoTransaccion: TStringField;
    CxcEmpleadosTotal: TBCDField;
    CxcEmpleadosCuotas: TIntegerField;
    CxcEmpleadosDescontado: TBCDField;
    CxcEmpleadosBalance: TBCDField;
    CxcEmpleadosActivo: TBooleanField;
    CxcEmpleadosCXCEmp: TStringField;
    cbVertical: TCheckBox;
    deHasta: TcxDateEdit;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    dsCxcEmpBalc: TwwDataSource;
    CxCBalc: TADODataSet;
    plCxcEmpBal: TppDBPipeline;
    CxCEmpBalc: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppSystemVariable6: TppSystemVariable;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel35: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppDBText33: TppDBText;
    ppDetailBand5: TppDetailBand;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText38: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppLine5: TppLine;
    ppFooterBand4: TppFooterBand;
    ppSystemVariable7: TppSystemVariable;
    ppSummaryBand3: TppSummaryBand;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLine6: TppLine;
    CxCBalcEmpleadoID: TIntegerField;
    CxCBalcNombre: TStringField;
    CxCBalcApellido: TStringField;
    CxCBalctotal: TBCDField;
    CxCBalcDescontado: TBCDField;
    CxCBalcBalance: TBCDField;
    ppDBCalc9: TppDBCalc;
    procedure PendienteClick(Sender: TObject);
    procedure BLocalEmpClick(Sender: TObject);
    procedure EmpleadoAfterScroll(DataSet: TDataSet);
    procedure BNuevoClick(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure BStadoClick(Sender: TObject);
    procedure CxCEmpStadoCtaAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bMostrarClick(Sender: TObject);
  private
    procedure MostrarDatos(Empleado: integer; Pendiente: boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CxCEmpleados: TCxCEmpleados;

implementation

uses Udata, uBusqEmpleado, UUtiles, UCxCEmp, UEmpleado;

{$R *.dfm}

procedure TCxCEmpleados.PendienteClick(Sender: TObject);
begin
  inherited;
  MostrarDatos(EmpleadoEmpleadoID.Value, Pendiente.Checked);
end;

procedure TCxCEmpleados.BLocalEmpClick(Sender: TObject);
var
  x : variant;
begin
  inherited;
  x := fBuscar(TBusqEmpleado, 'EmpleadoID');
  if x <> Null then
  begin
    Empleado.Locate('EmpleadoID',x,[]);
  End;

end;


procedure TCxCEmpleados.MostrarDatos(Empleado : integer; Pendiente : boolean);
begin
  CxCEmp.Parameters[1].Value := Empleado;
  CxCEmp.Parameters[2].Value := Pendiente;
  if CxCEmp.Active then CxCEmp.Requery() else CxCEmp.Open;
end;

procedure TCxCEmpleados.EmpleadoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  MostrarDatos(EmpleadoEmpleadoID.Value, Pendiente.Checked);
end;

procedure TCxCEmpleados.BNuevoClick(Sender: TObject);
begin
  inherited;
  ModalShow(TCxCEmp, ShowInsert, EmpleadoEmpleadoID.value, 'EmpleadoId',true);
  MostrarDatos(EmpleadoEmpleadoID.Value, Pendiente.Checked);
end;

procedure TCxCEmpleados.wwDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if Not(EmpleadoEmpleadoID.isnull) then
    ModalShow(TEmpleado, ShowFind, EmpleadoEmpleadoID.value, 'EmpleadoID',true);
end;

procedure TCxCEmpleados.BStadoClick(Sender: TObject);
begin
  inherited;
  CxCEmpStadoCta.Close();
  CxCEmpStadoCta.Parameters[1].Value := EmpleadoEmpleadoID.Value ;
  CxCEmpStadoCta.Parameters[2].Value := deHasta.Date;
  CxCEmpStadoCta.Open;
  Imprimir(RptCxCEmpStadoCta);
end;

procedure TCxCEmpleados.CxCEmpStadoCtaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CxCEmpStadoCtaDet.Close();
  CxCEmpStadoCtaDet.Parameters[1].Value := CxCEmpStadoCtaCxCEmpId.value;
  CxCEmpStadoCtaDet.Parameters[2].Value := deHasta.Date;
  CxCEmpStadoCtaDet.Open;
end;

procedure TCxCEmpleados.FormCreate(Sender: TObject);
begin
  inherited;
  deHasta.Date := dm.DBFecha();
  CxCEmp.Open;                 
end;

procedure TCxCEmpleados.BitBtn1Click(Sender: TObject);
begin
  inherited;

  cxcEmpleados.Close();
  cxcEmpleados.Parameters[1].Value := deHasta.Date;
  CxCEmpleados.Open;
  if cbVertical.Checked then
  Begin

    cxcBalc.Close();
    cxcBalc.Parameters[1].Value := deHasta.Date;
    CxCBalc.Open;
    Imprimir(CxCEmpBalc);
    end
  else
    Imprimir(ReportCXCLS);
  CxCEmpleados.Close;
end;

procedure TCxCEmpleados.bMostrarClick(Sender: TObject);
begin
  inherited;
  if CxCEmpCxCEmpID.isnull then
    Abort;

  ModalShow(TCxCEmp, ShowFind, CxCEmpCxCEmpID.value, 'CxCEmpID', true);
  MostrarDatos(EmpleadoEmpleadoID.Value, Pendiente.Checked);
end;

end.

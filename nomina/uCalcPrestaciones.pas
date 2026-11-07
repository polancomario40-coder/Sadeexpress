unit uCalcPrestaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSimpleForm, StdCtrls, DB, Gradient, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxDBEdit,
  cxTextEdit, cxContainer, cxMaskEdit, cxButtonEdit, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, ADODB, cxDropDownEdit,
  cxCalendar, cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxLookAndFeelPainters, cxButtons, cxExportGrid4Link, cxLabel, ExtCtrls,
  kbmMemTable, ppVar, ppCtrls, ppPrnabl, ppClass, ppDB, ppBands, ppCache,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ppSubRpt, ppStrtch,
  ppRegion, ppMemo, cxMemo, ppEndUsr, ppParameter;

type
  TPrestaciones = class(TSimpleForm)
    Label2: TLabel;
    cxPageControl1: TcxPageControl;
    tsTransacciones: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    tsXDepartamento: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    beIdEmpleado: TcxButtonEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    Gradient4: TGradient;
    cxDBTextEdit6: TcxDBTextEdit;
    Label7: TLabel;
    Label9: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    Label15: TLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    Gradient3: TGradient;
    spPrestaciones: TADOStoredProc;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    dtpFechaSalida: TcxDateEdit;
    cbTomoVacaciones: TcxCheckBox;
    Gradient5: TGradient;
    cbPreaviso: TcxCheckBox;
    Label19: TLabel;
    Label20: TLabel;
    cbPagarRegalia: TcxCheckBox;
    spPrestacionesFechaInicio: TDateTimeField;
    spPrestacionesAcumulado12Meses: TBCDField;
    spPrestacionesAno: TIntegerField;
    spPrestacionesMeses: TIntegerField;
    spPrestacionesDepartamento: TStringField;
    spPrestacionesSeccion: TStringField;
    spPrestacionesCedula: TStringField;
    spPrestacionesRoll: TStringField;
    spPrestacionesPreaviso: TBCDField;
    spPrestacionesCesantia: TBCDField;
    spPrestacionesVacaciones: TBCDField;
    spPrestacionesRegalia: TBCDField;
    spPrestacionesTotal: TBCDField;
    spPrestacionesEmpleado: TStringField;
    EmpleadoList: TADODataSet;
    EmpleadoListEmpleadoId: TIntegerField;
    EmpleadoListEmpleado: TStringField;
    spPresXDep: TADOStoredProc;
    qryDepartamento: TADOQuery;
    dsDepartamento: TDataSource;
    lkDepartamento: TcxLookupComboBox;
    Label21: TLabel;
    bBuscar: TcxButton;
    spPresXDepEmpleadoId: TIntegerField;
    spPresXDepEmpleado: TStringField;
    spPresXDepDepartamento: TStringField;
    spPresXDepSeccion: TStringField;
    spPresXDepPreaviso: TBCDField;
    spPresXDepCesantia: TBCDField;
    spPresXDepVacaciones: TBCDField;
    spPresXDepRegalia: TBCDField;
    spPresXDepTotal: TBCDField;
    btSalir: TcxButton;
    dsPresXDep: TDataSource;
    cxGridDBTableView1EmpleadoId: TcxGridDBColumn;
    cxGridDBTableView1Empleado: TcxGridDBColumn;
    cxGridDBTableView1Departamento: TcxGridDBColumn;
    cxGridDBTableView1Seccion: TcxGridDBColumn;
    cxGridDBTableView1Preaviso: TcxGridDBColumn;
    cxGridDBTableView1Cesantia: TcxGridDBColumn;
    cxGridDBTableView1Vacaciones: TcxGridDBColumn;
    cxGridDBTableView1Regalia: TcxGridDBColumn;
    cxGridDBTableView1Total: TcxGridDBColumn;
    cxButton3: TcxButton;
    SaveDialog1: TSaveDialog;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    mtblIngresos: TkbmMemTable;
    Panel6: TPanel;
    Gradient9: TGradient;
    cxLabel6: TcxLabel;
    Panel1: TPanel;
    Gradient6: TGradient;
    cxLabel1: TcxLabel;
    mTblDescuentos: TkbmMemTable;
    mtblIngresosId: TAutoIncField;
    mtblIngresosIdTransaccion: TIntegerField;
    mtblIngresosTransaccion: TStringField;
    mtblIngresosMonto: TFloatField;
    mTblDescuentosId: TAutoIncField;
    mTblDescuentosIdTransaccion: TIntegerField;
    mTblDescuentosTransaccion: TStringField;
    mTblDescuentosMonto: TFloatField;
    dsIngresos: TDataSource;
    dsDescuentos: TDataSource;
    cxGrid1DBTableView1Id: TcxGridDBColumn;
    cxGrid1DBTableView1IdTransaccion: TcxGridDBColumn;
    cxGrid1DBTableView1Transaccion: TcxGridDBColumn;
    cxGrid1DBTableView1Monto: TcxGridDBColumn;
    cxGridDBTableView2Id: TcxGridDBColumn;
    cxGridDBTableView2IdTransaccion: TcxGridDBColumn;
    cxGridDBTableView2Transaccion: TcxGridDBColumn;
    cxGridDBTableView2Monto: TcxGridDBColumn;
    qryIngresos: TADOQuery;
    qryDescuentos: TADOQuery;
    qryIngresosTipoTransaccionId: TIntegerField;
    qryIngresosTipoTransaccion: TStringField;
    qryDescuentosTipoTransaccionId: TIntegerField;
    qryDescuentosTipoTransaccion: TStringField;
    rptPrestaciones: TppReport;
    plPrestaciones: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel7: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    cxButton6: TcxButton;
    ppRegion1: TppRegion;
    ppRegion2: TppRegion;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    plIngreso: TppDBPipeline;
    plDescuento: TppDBPipeline;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppShape1: TppShape;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLine2: TppLine;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppShape2: TppShape;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine3: TppLine;
    ppDetailBand3: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLine4: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLine6: TppLine;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppDBText17: TppDBText;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppLabel26: TppLabel;
    ppLine5: TppLine;
    ppLabel27: TppLabel;
    ppSummaryBand3: TppSummaryBand;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    lNetoaPagar: TppLabel;
    ppLine9: TppLine;
    cxButton1: TcxButton;
    plPorDepartamento: TppDBPipeline;
    rptPorDept: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppTitleBand3: TppTitleBand;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppDBText22: TppDBText;
    ppLabel31: TppLabel;
    ppDBText23: TppDBText;
    ppLabel32: TppLabel;
    ppDBText24: TppDBText;
    ppLabel33: TppLabel;
    ppDBText25: TppDBText;
    ppLabel34: TppLabel;
    ppDBText26: TppDBText;
    ppLabel35: TppLabel;
    ppDBText27: TppDBText;
    ppLabel36: TppLabel;
    ppDBText28: TppDBText;
    ppLabel37: TppLabel;
    ppLine11: TppLine;
    ppDBText29: TppDBText;
    ppLabel30: TppLabel;
    ppShape7: TppShape;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLine10: TppLine;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLine12: TppLine;
    ppSummaryBand4: TppSummaryBand;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppLine13: TppLine;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    spPrestacionesFechaFin: TDateTimeField;
    spPrestacionesSalarioActual: TBCDField;
    spPrestacionesSalarioPromedioMensual: TBCDField;
    spPrestacionesSalarioPromedioDiario: TBCDField;
    spPrestacionesDiasPreaviso: TIntegerField;
    spPrestacionesDiasCesantiaCodAnt: TIntegerField;
    spPrestacionesDiasCesantiaCodActual: TIntegerField;
    spPrestacionesDiasVacaciones: TIntegerField;
    spPrestacionesDiasRegalia: TIntegerField;
    dtpFechaLimite: TcxDateEdit;
    Label22: TLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    Label23: TLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    spPrestacionescfTiempoEmpresa: TStringField;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBTextEdit22: TcxDBTextEdit;
    Label8: TLabel;
    Label10: TLabel;
    tsIngresosAcum: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    spIngresosAcum: TADOStoredProc;
    dsIngresosAcum: TDataSource;
    spIngresosAcumTipoTransaccionId: TIntegerField;
    spIngresosAcumTipoTransaccion: TStringField;
    spIngresosAcumTotal: TBCDField;
    cxGridDBTableView3TipoTransaccionId: TcxGridDBColumn;
    cxGridDBTableView3TipoTransaccion: TcxGridDBColumn;
    cxGridDBTableView3Total: TcxGridDBColumn;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    lFechaSalida: TppLabel;
    lFechaLimite: TppLabel;
    ppDBText32: TppDBText;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppRegion3: TppRegion;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppDetailBand5: TppDetailBand;
    ppSummaryBand5: TppSummaryBand;
    plIngresoAcum: TppDBPipeline;
    ppShape8: TppShape;
    ppLabel48: TppLabel;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppLine14: TppLine;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBCalc18: TppDBCalc;
    ppLine15: TppLine;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    lBanda: TppShape;
    ppDBText18: TppDBText;
    ppLabel6: TppLabel;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLabel8: TppLabel;
    ppDBText21: TppDBText;
    ppLabel9: TppLabel;
    ppDBText41: TppDBText;
    ppLabel10: TppLabel;
    ppLabel51: TppLabel;
    ppLine16: TppLine;
    tsObservacion: TcxTabSheet;
    cxMemo1: TcxMemo;
    memoObservacion: TppMemo;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    spPrestacionesCodigoForm: TStringField;
    ppDBText42: TppDBText;
    bDisenarRpt: TcxButton;
    rptDesigner: TppDesigner;
    spPrestacionesDias: TIntegerField;
    spPrestacionesOrigMeses: TIntegerField;
    spPrestacionesOrigDias: TIntegerField;
    spPrestacionesorigAnos: TIntegerField;
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure beIdEmpleadoPropertiesEditValueChanged(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure bBuscarClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure mtblIngresosIdTransaccionValidate(Sender: TField);
    procedure cxGrid1Enter(Sender: TObject);
    procedure cxGrid1Exit(Sender: TObject);
    procedure cxGrid3Exit(Sender: TObject);
    procedure cxGrid3Enter(Sender: TObject);
    procedure mTblDescuentosIdTransaccionValidate(Sender: TField);
    procedure cxButton6Click(Sender: TObject);
    procedure lNetoaPagarPrint(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure dtpFechaSalidaPropertiesChange(Sender: TObject);
    procedure spPrestacionesCalcFields(DataSet: TDataSet);
    procedure spPrestacionesAfterScroll(DataSet: TDataSet);
    procedure lFechaSalidaPrint(Sender: TObject);
    procedure lFechaLimitePrint(Sender: TObject);
    procedure lBandaPrint(Sender: TObject);
    procedure memoObservacionPrint(Sender: TObject);
    procedure bDisenarRptClick(Sender: TObject);
    procedure dtpFechaSalidaPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    Function ValidarEmpleado (IdEmpleado : Integer) : Boolean;
    Procedure CalcularPrestaciones;
    Function ValidarIngreso(IdTransaccion : Integer) : Boolean;
    Function ValidarDescuento(IdTransaccion : Integer) : Boolean;
  public
    { Public declarations }
  end;

var
  Prestaciones: TPrestaciones;

implementation

uses Udata, uBusquedaDX, UUtiles, uEmpleadoFindDX;

{$R *.dfm}

procedure TPrestaciones.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  xx : variant;
begin
  inherited;
//  xx := uUtiles.BuscarDX('EmpleadoId', False, 'nomEmpleadoListDX', True, -1);
  xx := fBuscar(tEmpleadoFindDX, 'EmpleadoId', False, '');

  if not(xx = null) then
  begin
    beIdEmpleado.Text := xx;
  end;
end;

function TPrestaciones.ValidarEmpleado(IdEmpleado: Integer): Boolean;
begin
  With EmpleadoList Do
  Begin
    Result := Locate('EmpleadoId', IdEmpleado, []);
  End;
end;

procedure TPrestaciones.FormCreate(Sender: TObject);
begin
  inherited;
  dtpFechaSalida.Date := Date;
  EmpleadoList.Open;
  qryDepartamento.Open;
  lkDepartamento.EditValue := -1;
  mtblIngresos.Open();
  mtblDescuentos.Open();
  qryIngresos.Open();
  qryDescuentos.Open();
  cxPageControl1.ActivePageIndex := 0
end;

procedure TPrestaciones.CalcularPrestaciones;
begin
  With spPrestaciones, Parameters Do
  Begin
    Close();
    ParamByName('@EmpleadoId').Value := SaveStrToInt(beIdEmpleado.Text);
    ParamByName('@FechaFin').Value := dtpFechaSalida.Date;
    ParamByName('@TomoVacaciones').Value := cbTomoVacaciones.Checked;
    ParamByName('@Preaviso').Value := cbPreaviso.Checked;
    ParamByName('@PagarRegalia').Value := cbPagarRegalia.Checked;
    Open();
  End;
end;

procedure TPrestaciones.beIdEmpleadoPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  If ValidarEmpleado(SaveStrToInt(beIdEmpleado.Text)) Then
    CalcularPrestaciones
  Else
  Begin
    ShowMessage('Empleado no existe');
    Abort;
  End;
end;

procedure TPrestaciones.btSalirClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TPrestaciones.bBuscarClick(Sender: TObject);
begin
  inherited;
  With spPresXDep, Parameters Do
  Begin
    Close();
    ParamByName('@DepartamentoId').Value := lkDepartamento.EditValue;
    Open();
  End;
end;

procedure TPrestaciones.cxButton3Click(Sender: TObject);
begin
  inherited;
  If SaveDialog1.Execute Then
    ExportGrid4ToExcel(SaveDialog1.FileName, cxGrid1);
end;


function TPrestaciones.ValidarDescuento(IdTransaccion: Integer): Boolean;
begin
  Result := qryDescuentos.Locate('TipoTransaccionId', IdTransaccion,[]);
end;

function TPrestaciones.ValidarIngreso(IdTransaccion: Integer): Boolean;
begin
  Result := qryIngresos.Locate('TipoTransaccionId', IdTransaccion,[]);
end;

procedure TPrestaciones.mtblIngresosIdTransaccionValidate(Sender: TField);
begin
  inherited;
  If ValidarIngreso(Sender.Value) Then
  Begin
    mtblIngresosTransaccion.Value := qryIngresosTipoTransaccion.Value;
  End
  Else
    Raise Exception.Create('Tipo de transacción no válido');
end;

procedure TPrestaciones.cxGrid1Enter(Sender: TObject);
begin
  inherited;
  Enter2Tab := False;
  If mtblIngresos.IsEmpty Then
    mtblIngresos.Insert;
end;

procedure TPrestaciones.cxGrid1Exit(Sender: TObject);
begin
  inherited;
  Enter2Tab := True;
end;

procedure TPrestaciones.cxGrid3Exit(Sender: TObject);
begin
  inherited;
  Enter2Tab := True;
end;

procedure TPrestaciones.cxGrid3Enter(Sender: TObject);
begin
  inherited;
  Enter2Tab := False;
    If mtblDescuentos.IsEmpty Then
    mtblDescuentos.Insert;
end;

procedure TPrestaciones.mTblDescuentosIdTransaccionValidate(
  Sender: TField);
begin
  inherited;
  If ValidarDescuento(Sender.Value) Then
  Begin
    mtblDescuentosTransaccion.Value := qryDescuentosTipoTransaccion.Value;
  End
  Else
    Raise Exception.Create('Tipo de transacción no válido');
end;

procedure TPrestaciones.cxButton6Click(Sender: TObject);
begin
  inherited;
  if FileExists('Prestaciones.rtm') then
  begin
    rptPrestaciones.Template.FileName := 'Prestaciones.rtm';
    rptPrestaciones.Template.LoadFromFile();
  end;

  With spPrestaciones, Parameters Do
  Begin
    Close;
    Imprimir(rptPrestaciones);
  End;
end;

procedure TPrestaciones.lNetoaPagarPrint(Sender: TObject);
Var
  TotalIngreso, TotalDescuento : Variant;
begin
  inherited;
  TotalIngreso := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
  If TotalIngreso = Null Then
    TotalIngreso := 0;

  TotalDescuento := cxGridDBTableView2.DataController.Summary.FooterSummaryValues[0];
  If TotalDescuento = Null Then
    TotalDescuento:= 0;

  lNetoaPagar.Caption := FormatFloat('#,#0.00', ((spPrestacionesTotal.Value + TotalIngreso) - TotalDescuento));
end;

procedure TPrestaciones.cxButton1Click(Sender: TObject);
begin
  inherited;
  If spPresXDep.Active Then
  Begin
    Imprimir(rptPorDept);
  End;
end;

procedure TPrestaciones.dtpFechaSalidaPropertiesChange(Sender: TObject);
begin
  inherited;
  dtpFechaLimite.Date := dtpFechaSalida.Date + 10;
end;

procedure TPrestaciones.spPrestacionesCalcFields(DataSet: TDataSet);
begin
  inherited;
  spPrestacionescfTiempoEmpresa.Value := iff(spPrestacionesOrigAnos.AsInteger  <= 0, '', spPrestacionesOrigAnos.AsString  + ' Año(s), ') +
                                         iff(spPrestacionesOrigMeses.AsInteger <= 0, '', spPrestacionesOrigMeses.AsString + ' Mes(es)') +
                                         iff(spPrestacionesOrigDias.AsInteger <= 0,'',' & ' + spPrestacionesOrigDias.Asstring + ' dias');
end;

procedure TPrestaciones.spPrestacionesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With spIngresosAcum, Parameters Do
  Begin
    Close();
    ParamByName('@EmpleadoId').Value := SaveStrToInt(beIdEmpleado.Text);
    ParamByName('@FechaFin').Value := spPrestacionesFechaFin.Value;
    Open(); 
  End;
end;

procedure TPrestaciones.lFechaSalidaPrint(Sender: TObject);
begin
  inherited;
  lFechaSalida.Caption := DateToStr(dtpFechaSalida.Date);
end;

procedure TPrestaciones.lFechaLimitePrint(Sender: TObject);
begin
  inherited;
  lFechaLimite.Caption := DateToStr(dtpFechaLimite.Date);
end;

procedure TPrestaciones.lBandaPrint(Sender: TObject);
begin
  inherited;
  lBanda.Visible := Not lBanda.Visible;
end;

procedure TPrestaciones.memoObservacionPrint(Sender: TObject);
begin
  inherited;
  memoObservacion.Lines.Text := cxMemo1.Text;
end;

procedure TPrestaciones.bDisenarRptClick(Sender: TObject);
begin
  inherited;
  rptDesigner.ShowModal;

end;

procedure TPrestaciones.dtpFechaSalidaPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if beIdEmpleado.Text <> '' then
    if ValidarEmpleado(SaveStrToInt(beIdEmpleado.Text)) then
      CalcularPrestaciones
end;

end.

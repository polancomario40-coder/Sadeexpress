unit uReportesConfigurados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSimpleForm, DB, Gradient, StdCtrls, ADODB,
  cxLookAndFeelPainters, cxButtons, cxDropDownEdit, cxCalendar, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppClass, ppReport, ppBands, ppCache, ppCtrls, ppVar, ppPrnabl, ppEndUsr,
  Menus, cxExportGrid4Link, cxCalc, ppParameter;

type
  TReportesConfigurados = class(TSimpleForm)
    Reportes: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    rsReporte: TADODataSet;
    rsTipoEmpleado: TADODataSet;
    dsTipoEmpleado: TDataSource;
    rsReporteIdReporte: TGuidField;
    rsReporteReporte: TStringField;
    rsReporteNomColum01: TStringField;
    rsReporteNomColum02: TStringField;
    rsReporteNomColum03: TStringField;
    rsReporteNomColum04: TStringField;
    rsReporteNomColum05: TStringField;
    rsReporteNomColum06: TStringField;
    rsReporteNomColum07: TStringField;
    rsReporteNomColum08: TStringField;
    rsReporteNomColum09: TStringField;
    rsReporteNomColum10: TStringField;
    rsReporteNomColum11: TStringField;
    rsReporteNomColum12: TStringField;
    rsReporteNomColum13: TStringField;
    rsReporteNomColum14: TStringField;
    rsReporteNomColum15: TStringField;
    rsReporteNomColum16: TStringField;
    rsReporteNomColum17: TStringField;
    rsReporteNomColum18: TStringField;
    rsReporteTransColum01: TStringField;
    rsReporteTransColum02: TStringField;
    rsReporteTransColum03: TStringField;
    rsReporteTransColum04: TStringField;
    rsReporteTransColum05: TStringField;
    rsReporteTransColum06: TStringField;
    rsReporteTransColum07: TStringField;
    rsReporteTransColum08: TStringField;
    rsReporteTransColum09: TStringField;
    rsReporteTransColum10: TStringField;
    rsReporteTransColum11: TStringField;
    rsReporteTransColum12: TStringField;
    rsReporteTransColum13: TStringField;
    rsReporteTransColum14: TStringField;
    rsReporteTransColum15: TStringField;
    rsReporteTransColum16: TStringField;
    rsReporteTransColum17: TStringField;
    rsReporteTransColum18: TStringField;
    rsTipoEmpleadoTipoEmpleadoID: TAutoIncField;
    rsTipoEmpleadoTipoEmpleado: TStringField;
    lkReporte: TcxLookupComboBox;
    lkTipoEmpleado: TcxLookupComboBox;
    dtpDesde: TcxDateEdit;
    dtpHasta: TcxDateEdit;
    bBuscar: TcxButton;
    bReporte: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsReporte: TDataSource;
    rsTransSumRpt: TADODataSet;
    cxButton1: TcxButton;
    rsTransSumRptdepartamento: TStringField;
    rsTransSumRptOrden: TIntegerField;
    rsTransSumRptSeccion: TStringField;
    rsTransSumRptOrden_1: TIntegerField;
    rsTransSumRptEmpleadoID: TIntegerField;
    rsTransSumRptCedula: TStringField;
    rsTransSumRptEmpleado: TStringField;
    rsTransSumRptColumna1: TBCDField;
    rsTransSumRptColumna2: TBCDField;
    rsTransSumRptColumna3: TBCDField;
    rsTransSumRptColumna4: TBCDField;
    rsTransSumRptColumna5: TBCDField;
    rsTransSumRptColumna6: TBCDField;
    rsTransSumRptColumna7: TBCDField;
    rsTransSumRptColumna8: TBCDField;
    rsTransSumRptColumna9: TBCDField;
    rsTransSumRptColumna10: TBCDField;
    rsTransSumRptColumna11: TBCDField;
    rsTransSumRptColumna12: TBCDField;
    rsTransSumRptColumna13: TBCDField;
    rsTransSumRptColumna14: TBCDField;
    rsTransSumRptColumna15: TBCDField;
    rsTransSumRptColumna16: TBCDField;
    rsTransSumRptColumna17: TBCDField;
    rsTransSumRptColumna18: TBCDField;
    cxGrid1DBTableView1departamento: TcxGridDBColumn;
    cxGrid1DBTableView1Orden: TcxGridDBColumn;
    cxGrid1DBTableView1Seccion: TcxGridDBColumn;
    cxGrid1DBTableView1Orden_1: TcxGridDBColumn;
    cxGrid1DBTableView1EmpleadoID: TcxGridDBColumn;
    cxGrid1DBTableView1Cedula: TcxGridDBColumn;
    cxGrid1DBTableView1Empleado: TcxGridDBColumn;
    cxGrid1DBTableView1Columna1: TcxGridDBColumn;
    cxGrid1DBTableView1Columna2: TcxGridDBColumn;
    cxGrid1DBTableView1Columna3: TcxGridDBColumn;
    cxGrid1DBTableView1Columna4: TcxGridDBColumn;
    cxGrid1DBTableView1Columna5: TcxGridDBColumn;
    cxGrid1DBTableView1Columna6: TcxGridDBColumn;
    cxGrid1DBTableView1Columna7: TcxGridDBColumn;
    cxGrid1DBTableView1Columna8: TcxGridDBColumn;
    cxGrid1DBTableView1Columna9: TcxGridDBColumn;
    cxGrid1DBTableView1Columna10: TcxGridDBColumn;
    cxGrid1DBTableView1Columna11: TcxGridDBColumn;
    cxGrid1DBTableView1Columna12: TcxGridDBColumn;
    cxGrid1DBTableView1Columna13: TcxGridDBColumn;
    cxGrid1DBTableView1Columna14: TcxGridDBColumn;
    cxGrid1DBTableView1Columna15: TcxGridDBColumn;
    cxGrid1DBTableView1Columna16: TcxGridDBColumn;
    cxGrid1DBTableView1Columna17: TcxGridDBColumn;
    cxGrid1DBTableView1Columna18: TcxGridDBColumn;
    bCerrar: TcxButton;
    rptTransSum: TppReport;
    plTransSumRpt: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    lReporteNombre: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppShape1: TppShape;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppShape2: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
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
    ppShape3: TppShape;
    ppSummaryBand1: TppSummaryBand;
    ppLabel19: TppLabel;
    lDesdeHasta: TppLabel;
    rsReporteFormatoReporte: TMemoField;
    plReporte: TppDBPipeline;
    dReporteConfigurable: TppDesigner;
    PopupMenu1: TPopupMenu;
    DisearReporte1: TMenuItem;
    SaveDialog1: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure bBuscarClick(Sender: TObject);
    procedure bCerrarClick(Sender: TObject);
    procedure bReporteClick(Sender: TObject);
    procedure lReporteNombrePrint(Sender: TObject);
    procedure ppShape2Print(Sender: TObject);
    procedure ppLabel4Print(Sender: TObject);
    procedure ppLabel5Print(Sender: TObject);
    procedure ppLabel6Print(Sender: TObject);
    procedure ppLabel7Print(Sender: TObject);
    procedure ppLabel8Print(Sender: TObject);
    procedure ppLabel9Print(Sender: TObject);
    procedure ppLabel10Print(Sender: TObject);
    procedure ppLabel11Print(Sender: TObject);
    procedure ppLabel12Print(Sender: TObject);
    procedure ppLabel13Print(Sender: TObject);
    procedure ppLabel14Print(Sender: TObject);
    procedure ppLabel15Print(Sender: TObject);
    procedure ppLabel16Print(Sender: TObject);
    procedure ppLabel17Print(Sender: TObject);
    procedure ppLabel18Print(Sender: TObject);
    procedure lDesdeHastaPrint(Sender: TObject);
    procedure DisearReporte1Click(Sender: TObject);
    procedure lkReportePropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    Procedure SetHeaderName;
  public
    { Public declarations }
  end;

var
  ReportesConfigurados: TReportesConfigurados;

implementation

uses Udata;


{$R *.dfm}

procedure TReportesConfigurados.FormCreate(Sender: TObject);
begin
  inherited;
  rsReporte.Open();
  rsTipoEmpleado.Open();

  dtpDesde.Date := Date - 90;
  dtpHasta.Date := Date;
end;

procedure TReportesConfigurados.bBuscarClick(Sender: TObject);
begin
  inherited;
  With rsTransSumRpt, Parameters Do
  Begin
    Close;
    ParamByName('@IdReporte').Value := lkReporte.EditValue;
    ParamByName('@TipoEmpleadoId').Value := lkTipoEmpleado.EditValue;
    ParamByName('@Desde').Value := dtpDesde.Date;
    ParamByName('@Hasta').Value := dtpHasta.Date;

    Open();

    SetHeaderName;
  End;
end;

procedure TReportesConfigurados.bCerrarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TReportesConfigurados.SetHeaderName;
begin
  If rsReporte.Locate('IdReporte', lkReporte.EditValue, []) Then
  Begin
    With cxGrid1DBTableView1 Do
    Begin
      GetColumnByFieldName('Columna1').Caption := rsReporteNomColum01.Value;
      GetColumnByFieldName('Columna2').Caption := rsReporteNomColum02.Value;
      GetColumnByFieldName('Columna3').Caption := rsReporteNomColum03.Value;
      GetColumnByFieldName('Columna4').Caption := rsReporteNomColum04.Value;
      GetColumnByFieldName('Columna5').Caption := rsReporteNomColum05.Value;
      GetColumnByFieldName('Columna6').Caption := rsReporteNomColum06.Value;
      GetColumnByFieldName('Columna7').Caption := rsReporteNomColum07.Value;
      GetColumnByFieldName('Columna8').Caption := rsReporteNomColum08.Value;
      GetColumnByFieldName('Columna9').Caption := rsReporteNomColum09.Value;
      GetColumnByFieldName('Columna10').Caption := rsReporteNomColum10.Value;
      GetColumnByFieldName('Columna11').Caption := rsReporteNomColum11.Value;
      GetColumnByFieldName('Columna12').Caption := rsReporteNomColum12.Value;
      GetColumnByFieldName('Columna13').Caption := rsReporteNomColum13.Value;
      GetColumnByFieldName('Columna14').Caption := rsReporteNomColum14.Value;
      GetColumnByFieldName('Columna15').Caption := rsReporteNomColum15.Value;
      GetColumnByFieldName('Columna16').Caption := rsReporteNomColum16.Value;
      GetColumnByFieldName('Columna17').Caption := rsReporteNomColum17.Value;
      GetColumnByFieldName('Columna18').Caption := rsReporteNomColum18.Value;

    End;
  End;
end;

procedure TReportesConfigurados.bReporteClick(Sender: TObject);
begin
  inherited;
  If rsTransSumRpt.Active Then
  Begin
    If rsReporteFormatoReporte.IsNull Then
      Imprimir(rptTransSum)
    Else
    Begin
      rptTransSum.Template.DatabaseSettings.Name := rsReporteReporte.Value;
      rptTransSum.Template.LoadFromDatabase;
      Imprimir(rptTransSum);
    End;
  End;
end;

procedure TReportesConfigurados.lReporteNombrePrint(Sender: TObject);
begin
  inherited;
  lReporteNombre.Caption := rsReporteReporte.Value;
end;

procedure TReportesConfigurados.ppShape2Print(Sender: TObject);
begin
  inherited;
  ppShape2.Visible := Not ppShape2.Visible;
end;

procedure TReportesConfigurados.ppLabel4Print(Sender: TObject);
begin
  inherited;
  ppLabel4.Caption := rsReporteNomColum01.Value;
end;

procedure TReportesConfigurados.ppLabel5Print(Sender: TObject);
begin
  inherited;
  ppLabel5.Caption := rsReporteNomColum02.Value;
end;

procedure TReportesConfigurados.ppLabel6Print(Sender: TObject);
begin
  inherited;
  ppLabel6.Caption := rsReporteNomColum03.Value;

end;

procedure TReportesConfigurados.ppLabel7Print(Sender: TObject);
begin
  inherited;
  ppLabel7.Caption := rsReporteNomColum04.Value;

end;

procedure TReportesConfigurados.ppLabel8Print(Sender: TObject);
begin
  inherited;
  ppLabel8.Caption := rsReporteNomColum05.Value;

end;

procedure TReportesConfigurados.ppLabel9Print(Sender: TObject);
begin
  inherited;
  ppLabel9.Caption := rsReporteNomColum06.Value;

end;

procedure TReportesConfigurados.ppLabel10Print(Sender: TObject);
begin
  inherited;
  ppLabel10.Caption := rsReporteNomColum07.Value;

end;

procedure TReportesConfigurados.ppLabel11Print(Sender: TObject);
begin
  inherited;
  ppLabel11.Caption := rsReporteNomColum08.Value;

end;

procedure TReportesConfigurados.ppLabel12Print(Sender: TObject);
begin
  inherited;
  ppLabel12.Caption := rsReporteNomColum09.Value;

end;

procedure TReportesConfigurados.ppLabel13Print(Sender: TObject);
begin
  inherited;
  ppLabel13.Caption := rsReporteNomColum10.Value;

end;

procedure TReportesConfigurados.ppLabel14Print(Sender: TObject);
begin
  inherited;
  ppLabel14.Caption := rsReporteNomColum11.Value;

end;

procedure TReportesConfigurados.ppLabel15Print(Sender: TObject);
begin
  inherited;
  ppLabel15.Caption := rsReporteNomColum12.Value;

end;

procedure TReportesConfigurados.ppLabel16Print(Sender: TObject);
begin
  inherited;
  ppLabel16.Caption := rsReporteNomColum13.Value;

end;

procedure TReportesConfigurados.ppLabel17Print(Sender: TObject);
begin
  inherited;
  ppLabel17.Caption := rsReporteNomColum14.Value;

end;

procedure TReportesConfigurados.ppLabel18Print(Sender: TObject);
begin
  inherited;
  ppLabel18.Caption := rsReporteNomColum15.Value;

end;

procedure TReportesConfigurados.lDesdeHastaPrint(Sender: TObject);
begin
  inherited;
  lDesdeHasta.Caption := 'Del: ' + DateToStr(dtpDesde.Date) + ' Al: ' + DateToStr(dtpHasta.Date);
end;

procedure TReportesConfigurados.DisearReporte1Click(Sender: TObject);
begin
  inherited;
  If rsReporte.Active Then
  Begin
    If Not rsReporteFormatoReporte.IsNull Then
      rptTransSum.Template.LoadFromDatabase;
    dReporteConfigurable.ShowModal;
  End;

end;

procedure TReportesConfigurados.lkReportePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  rsReporte.Locate('IdReporte', lkReporte.EditValue, []);
end;

procedure TReportesConfigurados.cxButton1Click(Sender: TObject);
begin
  inherited;
  If SaveDialog1.Execute Then
    ExportGrid4ToExcel(SaveDialog1.FileName, cxGrid1);

end;

end.

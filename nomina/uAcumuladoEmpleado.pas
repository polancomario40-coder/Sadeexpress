unit uAcumuladoEmpleado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSimpleForm, DB, Gradient, ADODB, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxButtons, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxExportGrid4Link, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppCtrls, ppPrnabl, ppVar, ppBands, ppCache,
  cxPC, ppParameter;

type
  TAcumuladoEmpleado = class(TSimpleForm)
    spAcumuladoEmpleado: TADOStoredProc;
    spAcumuladoEmpleadoDesde: TDateTimeField;
    spAcumuladoEmpleadoHasta: TDateTimeField;
    spAcumuladoEmpleadoEmpleadoID: TIntegerField;
    spAcumuladoEmpleadoApellido: TStringField;
    spAcumuladoEmpleadoNombre: TStringField;
    spAcumuladoEmpleadoEmpleado: TStringField;
    spAcumuladoEmpleadoDepartamento: TStringField;
    spAcumuladoEmpleadoTipoTransaccionID: TIntegerField;
    spAcumuladoEmpleadoTipoTransaccion: TStringField;
    spAcumuladoEmpleadoDebito: TBooleanField;
    spAcumuladoEmpleadoValor: TBCDField;
    spAcumuladoEmpleadoCantidad: TBCDField;
    qryDepartamento: TADOQuery;
    qryTipoTransaccion: TADOQuery;
    dsDepartamento: TDataSource;
    dsTipoTransaccion: TDataSource;
    Label1: TLabel;
    Label4: TLabel;
    dtpDesde: TcxDateEdit;
    dtpHasta: TcxDateEdit;
    Label2: TLabel;
    lkDepartamento: TcxLookupComboBox;
    Label3: TLabel;
    lkTipoTransaccion: TcxLookupComboBox;
    edtTipoTrans: TcxTextEdit;
    Label5: TLabel;
    btSalir: TcxButton;
    btImprimir: TcxButton;
    cxButton3: TcxButton;
    bBuscar: TcxButton;
    SaveDialog1: TSaveDialog;
    spAcumuladoEmpleadoFecha: TDateTimeField;
    plAcumEmp: TppDBPipeline;
    rptAcumEmp: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppTitleBand1: TppTitleBand;
    ppSummaryBand1: TppSummaryBand;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppDBText29: TppDBText;
    ppLabel35: TppLabel;
    ppShape3: TppShape;
    ppLabel27: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine5: TppLine;
    ppLine1: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppLine2: TppLine;
    ppDBText4: TppDBText;
    lDesdeHasta: TppLabel;
    ppLabel30: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLine4: TppLine;
    spAcumuladoEmpleadoId: TGuidField;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel4: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppShape2: TppShape;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    tsResumido: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Desde: TcxGridDBColumn;
    cxGrid1DBTableView1Hasta: TcxGridDBColumn;
    cxGrid1DBTableView1EmpleadoID: TcxGridDBColumn;
    cxGrid1DBTableView1Apellido: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre: TcxGridDBColumn;
    cxGrid1DBTableView1Empleado: TcxGridDBColumn;
    cxGrid1DBTableView1TipoTransaccionID: TcxGridDBColumn;
    cxGrid1DBTableView1TipoTransaccion: TcxGridDBColumn;
    cxGrid1DBTableView1Valor: TcxGridDBColumn;
    cxGrid1DBTableView1Cantidad: TcxGridDBColumn;
    cxGrid1DBTableView1Departamento: TcxGridDBColumn;
    cxGrid1DBTableView1Debito: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    spAcumResum: TADOStoredProc;
    dsAcumResum: TDataSource;
    spAcumResumDesde: TDateTimeField;
    spAcumResumHasta: TDateTimeField;
    spAcumResumEmpleadoID: TIntegerField;
    spAcumResumApellido: TStringField;
    spAcumResumNombre: TStringField;
    spAcumResumEmpleado: TStringField;
    spAcumResumDepartamento: TStringField;
    spAcumResumTipoTransaccionID: TIntegerField;
    spAcumResumTipoTransaccion: TStringField;
    spAcumResumDebito: TBooleanField;
    spAcumResumValor: TBCDField;
    spAcumResumCantidad: TBCDField;
    spAcumResumId: TGuidField;
    cxGridDBTableView1Desde: TcxGridDBColumn;
    cxGridDBTableView1Hasta: TcxGridDBColumn;
    cxGridDBTableView1EmpleadoID: TcxGridDBColumn;
    cxGridDBTableView1Apellido: TcxGridDBColumn;
    cxGridDBTableView1Nombre: TcxGridDBColumn;
    cxGridDBTableView1Empleado: TcxGridDBColumn;
    cxGridDBTableView1Departamento: TcxGridDBColumn;
    cxGridDBTableView1TipoTransaccionID: TcxGridDBColumn;
    cxGridDBTableView1TipoTransaccion: TcxGridDBColumn;
    cxGridDBTableView1Debito: TcxGridDBColumn;
    cxGridDBTableView1Valor: TcxGridDBColumn;
    cxGridDBTableView1Cantidad: TcxGridDBColumn;
    cxGridDBTableView1Id: TcxGridDBColumn;
    Label6: TLabel;
    lkTipoEmpleado: TcxLookupComboBox;
    qryTipoEmpleado: TADOQuery;
    dsTipoEmpleado: TDataSource;
    qryTipoEmpleadoTipoEmpleadoId: TIntegerField;
    qryTipoEmpleadoTipoEmpleado: TStringField;
    rptAcumEmpII: TppReport;
    ppTitleBand2: TppTitleBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText7: TppDBText;
    ppLabel6: TppLabel;
    lDesdeHastaII: TppLabel;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel8: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppLine3: TppLine;
    ppDBCalc7: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppShape4: TppShape;
    ppLabel9: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppShape5: TppShape;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine7: TppLine;
    ppLabel13: TppLabel;
    ppLine8: TppLine;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppShape6: TppShape;
    ppLabel14: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    plAcumEmpII: TppDBPipeline;
    spAcumResumSeccion: TStringField;
    spAcumuladoEmpleadoSeccion: TStringField;
    cxGridDBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    spAcumuladoEmpleadoActivo: TBooleanField;
    spAcumResumActivo: TBooleanField;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGridDBTableView1DBColumn2: TcxGridDBColumn;
    spAcumResumReferencia: TStringField;
    spAcumuladoEmpleadoReferencia: TStringField;
    cxGrid1DBTableView1Referencia: TcxGridDBColumn;
    cxGridDBTableView1Referencia: TcxGridDBColumn;
    ppDBText8: TppDBText;
    ppLabel7: TppLabel;
    ppLabel10: TppLabel;
    ppDBText14: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure lkTipoTransaccionPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxButton3Click(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure lDesdeHastaPrint(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure lDesdeHastaIIPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AcumuladoEmpleado: TAcumuladoEmpleado;

implementation

uses Udata;

{$R *.dfm}

procedure TAcumuladoEmpleado.FormCreate(Sender: TObject);
begin
  inherited;
  dtpDesde.Date := Date;
  dtpHasta.Date := Date - 30;
  qryDepartamento.Open();
  qryTipoTransaccion.Open();
  qryTipoEmpleado.Open();
  lkDepartamento.EditValue := -1;
  lkTipoTransaccion.EditValue  := -1;
  lkTipoEmpleado.EditValue := -1;
end;

procedure TAcumuladoEmpleado.cxButton1Click(Sender: TObject);
begin
  inherited;
  With spAcumuladoEmpleado, Parameters Do
  Begin
    Close();
    ParamByName('@Desde').Value := dtpDesde.Date;
    ParamByName('@Hasta').Value := dtpHasta.Date;
    ParamByName('@DepartamentoId').Value := lkDepartamento.EditValue;
    If edtTipoTrans.Text <> '' Then
      ParamByName('@TipoTransaccionId').Value := edtTipoTrans.Text;

    Open();
  End;
  With spAcumResum, Parameters Do
  Begin
    Close();
    ParamByName('@Desde').Value := dtpDesde.Date;
    ParamByName('@Hasta').Value := dtpHasta.Date;
    ParamByName('@DepartamentoId').Value := lkDepartamento.EditValue;
    ParamByName('@TipoEmpleadoId').Value := lkTipoEmpleado.EditValue;

    If edtTipoTrans.Text <> '' Then
      ParamByName('@TipoTransaccionId').Value := edtTipoTrans.Text;

    Open();
  End;
end;

procedure TAcumuladoEmpleado.lkTipoTransaccionPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  edtTipoTrans.Text := lkTipoTransaccion.EditValue;
end;

procedure TAcumuladoEmpleado.cxButton3Click(Sender: TObject);
begin
  inherited;
  If SaveDialog1.Execute Then
    If cxPageControl1.ActivePageIndex = 0 Then
      ExportGrid4ToExcel(SaveDialog1.FileName, cxGrid1)
    Else
      ExportGrid4ToExcel(SaveDialog1.FileName, cxGrid2)

end;

procedure TAcumuladoEmpleado.btSalirClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TAcumuladoEmpleado.lDesdeHastaPrint(Sender: TObject);
begin
  inherited;
  lDesdeHasta.Caption := 'Del: ' + DateToStr(dtpDesde.Date) + ' Al: ' + DateToStr(dtpHasta.Date);
end;

procedure TAcumuladoEmpleado.btImprimirClick(Sender: TObject);
begin
  inherited;
  If cxPageControl1.ActivePageIndex = 0 Then
  Begin
    With spAcumuladoEmpleado Do
    Begin
      If Active Then
        Imprimir(rptAcumEmp);
    End;
  End
  Else
  Begin
    With spAcumResum Do
    Begin
      If Active Then
        Imprimir(rptAcumEmpII);
    End;
  End
end;

procedure TAcumuladoEmpleado.lDesdeHastaIIPrint(Sender: TObject);
begin
  inherited;
  lDesdeHastaII.Caption := 'Del: ' + DateToStr(dtpDesde.Date) + ' Al: ' + DateToStr(dtpHasta.Date);
end;

end.

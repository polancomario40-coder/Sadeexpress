unit uToAFP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, StdCtrls, Buttons, DB, ADODB, Grids, Wwdbigrd, Wwdbgrid,
  Wwdatsrc, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLookAndFeelPainters, cxButtons, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppVar, ppCtrls,
  ppBands, ppPrnabl, ppCache, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, ppParameter;

type
  TToAFP = class(TFForm)
    GRID: TwwDBGrid;
    toafp: TADODataSet;
    BitBtn1: TBitBtn;
    dDesde: TcxDateEdit;
    dHasta: TcxDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    Save: TSaveDialog;
    BitBtn2: TBitBtn;
    btImprimir: TcxButton;
    btSalir: TcxButton;
    plToAfp: TppDBPipeline;
    rptToAfp: TppReport;
    dsToAfpRpt: TDataSource;
    spToAfpRpt: TADOStoredProc;
    spToAfpRptTipoRegistro: TStringField;
    spToAfpRptClaveNomina: TStringField;
    spToAfpRptTipoDocumento: TStringField;
    spToAfpRptNumeroDocumento: TStringField;
    spToAfpRptNombres: TStringField;
    spToAfpRptPrimerApellido: TStringField;
    spToAfpRptSegundoApellido: TStringField;
    spToAfpRptSexo: TStringField;
    spToAfpRptFechaNacimiento: TDateTimeField;
    spToAfpRptSalario_SS: TBCDField;
    spToAfpRptAporteOrdinario: TBCDField;
    spToAfpRptSalarioISR: TBCDField;
    spToAfpRptOtraRemuneraciones: TBCDField;
    spToAfpRptIdAgenteRetencion: TStringField;
    spToAfpRptRemuneracionesOtrosEmpleadores: TBCDField;
    spToAfpRptIngresosExentosISR: TBCDField;
    spToAfpRptNoSe: TBCDField;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
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
    ppShape1: TppShape;
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
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    lDelAl: TppLabel;
    qryTipoEmpleado: TADOQuery;
    lkTipoEmpleado: TcxLookupComboBox;
    Label1: TLabel;
    dsTipoEmpleado: TDataSource;
    lTipoEmpleado: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure lDelAlPrint(Sender: TObject);
    procedure lTipoEmpleadoPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ToAFP: TToAFP;

implementation

uses Udata;

{$R *.dfm}

procedure TToAFP.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Save.Execute;
  Grid.ExportOptions.FileName := save.FileName;
  Grid.ExportOptions.Save;
end;

procedure TToAFP.FormCreate(Sender: TObject);
begin
  inherited;
  ds.DataSet := toafp;
  dDesde.date := dm.FechaDesde;
  dHasta.date := dm.FechaHasta;
  qryTipoEmpleado.Open();
  lkTipoEmpleado.EditValue := -1;
end;

procedure TToAFP.BitBtn2Click(Sender: TObject);
begin
  inherited;
  ToAFP.close;
  ToAFP.Parameters[1].Value := dDesde.date;
  ToAFP.Parameters[2].Value := dHasta.date;
  toAfp.Parameters[3].Value := lkTipoEmpleado.EditValue;
  ToAFP.open;
end;

procedure TToAFP.btSalirClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TToAFP.btImprimirClick(Sender: TObject);
begin
  inherited;
  With spToAfpRpt, Parameters Do
  Begin
    Close();
    ParamByName('@Desde').Value := dDesde.Date;
    ParamByName('@Hasta').Value := dHasta.Date;
    ParamByName('@TipoEmpleadoId').Value := lkTipoEmpleado.EditValue;

    Open();

    Imprimir(rptToAfp);
  End;
end;

procedure TToAFP.lDelAlPrint(Sender: TObject);
begin
  inherited;
  lDelAl.Caption := 'Del: ' + DateToStr(dDesde.Date) + ' Al: ' + DateToStr(dHasta.Date); 
end;

procedure TToAFP.lTipoEmpleadoPrint(Sender: TObject);
begin
  inherited;
  lTipoEmpleado.Caption := 'Tipo Empleado: ' + lkTipoEmpleado.EditText;
end;

end.

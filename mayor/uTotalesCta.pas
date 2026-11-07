unit uTotalesCta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, dxCntner, dxTL, dxDBCtrl, dxDBGrid, Mask,
  wwdbedit, wwdbdatetimepicker, dxDBTLCl, dxGrClms, Wwdbspin, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppVar,
  ppCtrls, ppPrnabl, ppBands, ppCache, dxExEdtr, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxSpinEdit, cxLookAndFeelPainters, cxButtons,
  cxButtonEdit, cxPC, ppParameter;

type
  TBalanzaComprobacion = class(TForm)
    dxDBGrid1: TdxDBGrid;
    catds: TDataSource;
    dxDBGrid1idCuenta: TdxDBGridMaskColumn;
    dxDBGrid1Descripcion: TdxDBGridMaskColumn;
    dxDBGrid1Origen: TdxDBGridMaskColumn;
    dxDBGrid1Nivel: TdxDBGridMaskColumn;
    dxDBGrid1Tipo: TdxDBGridMaskColumn;
    dxDBGrid1BalanceAnt: TdxDBGridCurrencyColumn;
    dxDBGrid1TotalDB: TdxDBGridCurrencyColumn;
    dxDBGrid1TotalCR: TdxDBGridCurrencyColumn;
    dxDBGrid1BalanceAct: TdxDBGridCurrencyColumn;
    plTotales: TppBDEPipeline;
    Report: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLine1: TppLine;
    ppLabel7: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppVariable1: TppVariable;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBText7: TppDBText;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDBText8: TppDBText;
    ppLabel8: TppLabel;
    ppDBText9: TppDBText;
    ppLabel9: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLine4: TppLine;
    ppLabel10: TppLabel;
    btnSalir: TSpeedButton;
    sbPrint: TSpeedButton;
    SpeedButton1: TSpeedButton;
    dsResumen: TDataSource;
    plResumen: TppBDEPipeline;
    ppDBText10: TppDBText;
    ppLabel11: TppLabel;
    ppDBText11: TppDBText;
    ppLabel12: TppLabel;
    ppDBText12: TppDBText;
    ppLabel13: TppLabel;
    ppDBText13: TppDBText;
    ppLabel14: TppLabel;
    ppDBText14: TppDBText;
    ppLabel15: TppLabel;
    ppDBText15: TppDBText;
    ppLabel16: TppLabel;
    ppDBText16: TppDBText;
    ppLabel17: TppLabel;
    ppShape1: TppShape;
    ppLine5: TppLine;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2TotalActivos: TdxDBGridCurrencyColumn;
    dxDBGrid2TotalPasivos: TdxDBGridCurrencyColumn;
    dxDBGrid2TotalCapital: TdxDBGridCurrencyColumn;
    dxDBGrid2TotalIngresos: TdxDBGridCurrencyColumn;
    dxDBGrid2TotalCostos: TdxDBGridCurrencyColumn;
    dxDBGrid2TotalGastos: TdxDBGridCurrencyColumn;
    dxDBGrid2PruebaCero: TdxDBGridCurrencyColumn;
    ppDBText17: TppDBText;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dtDesde: TcxDateEdit;
    dtHasta: TcxDateEdit;
    seNivel: TcxSpinEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    deDesdeRgo: TcxDateEdit;
    deHastaRgo: TcxDateEdit;
    seNivelRgo: TcxSpinEdit;
    beCtaDesde: TcxButtonEdit;
    beCtaHasta: TcxButtonEdit;
    edCta: TcxButtonEdit;
    SpeedButton2: TSpeedButton;
    sd: TSaveDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppDBText2GetText(Sender: TObject; var Text: String);
    procedure ppDBText2Print(Sender: TObject);
    procedure sbPrintClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure dtDesdePropertiesEditValueChanged(Sender: TObject);
    procedure beCtaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure beCtaDesdePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure beCtaHastaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CargarTotales;
  end;

var
  BalanzaComprobacion: TBalanzaComprobacion;

implementation

uses ugldm, DateUtils, uBuscarCuentaMayor, Udata, UUtiles;

{$R *.dfm}

procedure TBalanzaComprobacion.BitBtn1Click(Sender: TObject);
begin
  CargarTotales();
//  showmessage(inttostr(gldm.spTotales.RecordCount));
end;

procedure TBalanzaComprobacion.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  Value := 'Desde: ' + dtDesde.Text + ' Hasta: ' + dtHasta.Text +
           ' / Mostrar cuentas hasta el nivel: ' + seNivel.Text;
end;

procedure TBalanzaComprobacion.BitBtn2Click(Sender: TObject);
begin
  if not gldm.mTotales.Active then begin
    CargarTotales();
  end;
  uutiles.ImprimirReporte(Report);
end;

procedure TBalanzaComprobacion.FormCreate(Sender: TObject);
begin
  edCta.Text := '%';
  dtDesde.Date := dm.FechaDesde;;
  dtHasta.Date := dm.FechaHasta;
  deDesdeRgo.Date := dm.FechaDesde;
  deHastaRgo.Date := dm.FechaHasta;
  gldm.mTotales.Close();
end;

procedure TBalanzaComprobacion.ppDBText2GetText(Sender: TObject; var Text: String);
begin
  if gldm.mTotalesNivel.AsInteger > 0 then
    Text := StringOfChar(' ', gldm.mTotalesNivel.AsInteger * 2) + Text;
end;

procedure TBalanzaComprobacion.ppDBText2Print(Sender: TObject);
begin
  if (gldm.mTotalesNivel.AsInteger <= 3) and
     (gldm.mTotalesTipo.Value <> 'D') then
    (sender as TppDBText).Font.Style := [fsBold]
  else
    (sender as TppDBText).Font.Style := [];
end;

procedure TBalanzaComprobacion.sbPrintClick(Sender: TObject);
begin
  CargarTotales();
end;

procedure TBalanzaComprobacion.btnSalirClick(Sender: TObject);
begin
  Close();
end;

procedure TBalanzaComprobacion.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then begin
    Key := 0;
    SpeedButton1.Click();
  end;
end;

procedure TBalanzaComprobacion.FormDestroy(Sender: TObject);
begin
  if cxPageControl1.ActivePageIndex = 0 then begin
    if dm.FechaDesde <> dtDesde.Date then
      dm.FechaDesde := dtDesde.Date;

    if dm.FechaHasta <> dtHasta.Date then
      dm.FechaHasta := dtHasta.Date;
  end
  else begin
    if dm.FechaDesde <> dtDesde.Date then
      dm.FechaDesde := deDesdeRgo.Date;

    if dm.FechaHasta <> dtHasta.Date then
      dm.FechaHasta := deHastaRgo.Date;
  end;
end;

procedure TBalanzaComprobacion.dtDesdePropertiesEditValueChanged(Sender: TObject);
begin
  dtHasta.Date := DateOf(EndOfTheMonth(dtDesde.Date));
end;

procedure TBalanzaComprobacion.beCtaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  cta: string;
begin
  cta := BuscarCtaDetalle();
  if cta <> '' then begin
    edcta.Text := cta + '%';
  end;
end;

procedure TBalanzaComprobacion.beCtaDesdePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  cta: string;
begin
  cta := BuscarCtaDetalle();
  if cta <> '' then
    bectadesde.Text := cta;
end;

procedure TBalanzaComprobacion.beCtaHastaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  cta: string;
begin
  cta := BuscarCtaDetalle();
  if cta <> '' then
    bectahasta.Text := cta;
end;

procedure TBalanzaComprobacion.CargarTotales;
begin
  SelectNext(ActiveControl,True,True);
  if cxPageControl1.ActivePageIndex = 0 then begin
    gldm.CargarTotales(dtDesde.Date, dtHasta.Date, edCta.Text, Trunc(seNivel.Value));
  end
  else
    gldm.CargarTotales(deDesdeRgo.Date, deHastaRgo.Date, beCtadesde.Text, bectahasta.Text, Trunc(seNivelRgo.Value));
  dxDBGrid1.Refresh();
end;

procedure TBalanzaComprobacion.SpeedButton2Click(Sender: TObject);
begin
  if sd.Execute() then
    dxDBGrid1.SaveToXLS(sd.FileName,True);
end;

end.

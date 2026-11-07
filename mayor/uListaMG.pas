unit uListaMG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, wwdbedit, wwdbdatetimepicker, ppBands,
  ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppDBBDE, DB, dxDBTLCl, dxGrClms, dxDBGrid,
  dxTL, dxDBCtrl, dxCntner, ppStrtch, ppRichTx, Grids, Wwdbigrd, Wwdbgrid,
  kbmMemTable, ppSubRpt, dxExEdtr, cxLookAndFeelPainters, cxButtons,
  cxControls, cxContainer, cxEdit, cxCheckBox, cxButtonEdit, cxSpinEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxPC, DateUtils,
  ADODB, ppMemo, ppParameter;

type
  TMayorGeneral = class(TForm)
    BitBtn2: TBitBtn;
    Salir: TBitBtn;
    catds: TDataSource;
    Report: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppLabel7: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppVariable1: TppVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc9: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppLine4: TppLine;
    ppLabel10: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    dxDBGrid1: TdxDBGrid;
    BitBtn1: TBitBtn;
    dxDBGrid1idCuenta: TdxDBGridMaskColumn;
    dxDBGrid1NumeroEntrada: TdxDBGridMaskColumn;
    dxDBGrid1Fecha: TdxDBGridDateColumn;
    dxDBGrid1TipoEntrada: TdxDBGridMaskColumn;
    dxDBGrid1EntradaId: TdxDBGridMaskColumn;
    dxDBGrid1Debito: TdxDBGridMaskColumn;
    dxDBGrid1Credito: TdxDBGridMaskColumn;
    dxDBGrid1Concepto: TdxDBGridMemoColumn;
    BalanzaDS: TDataSource;
    plBalanza: TppBDEPipeline;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2idCuenta: TdxDBGridMaskColumn;
    dxDBGrid2Descripcion: TdxDBGridMaskColumn;
    dxDBGrid2BalanceAnterior: TdxDBGridCurrencyColumn;
    dxDBGrid2TotalDB: TdxDBGridCurrencyColumn;
    dxDBGrid2TotalCR: TdxDBGridCurrencyColumn;
    dxDBGrid2BalanceActual: TdxDBGridColumn;
    mMayor: TkbmMemTable;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    dxDBGrid1Descripcion: TdxDBGridMaskColumn;
    dxDBGrid1Referencia: TdxDBGridMaskColumn;
    ppLabel4: TppLabel;
    mTotales: TkbmMemTable;
    mTotalesidCuenta: TStringField;
    mTotalesDescripcion: TStringField;
    mTotalesOrigen: TStringField;
    mTotalesTipo: TStringField;
    mTotalesNivel: TIntegerField;
    mTotalesBalanceAnterior: TCurrencyField;
    mTotalesTotalDB: TCurrencyField;
    mTotalesTotalCR: TCurrencyField;
    mTotalesGrupo: TStringField;
    mTotalesNivel0: TStringField;
    mTotalesDetBalAnt: TCurrencyField;
    mTotalesDetTDB: TCurrencyField;
    mTotalesDetTCR: TCurrencyField;
    mTotalesDetBalAct: TCurrencyField;
    mTotalesNivel01: TStringField;
    mTotalesSignedBal: TCurrencyField;
    mTotalesBalanceActual: TCurrencyField;
    ppDBText9: TppDBText;
    mMayorSecuencia: TIntegerField;
    mMayoridCuenta: TStringField;
    mMayorNumeroEntrada: TStringField;
    mMayorConcepto: TBlobField;
    mMayorFecha: TDateTimeField;
    mMayorTipoEntrada: TStringField;
    mMayorIdEntrada: TGuidField;
    mMayorDebito: TBCDField;
    mMayorCredito: TBCDField;
    mMayorDescripcion: TStringField;
    mMayorReferencia: TStringField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    dtDesde: TcxDateEdit;
    dtHasta: TcxDateEdit;
    seNivel: TcxSpinEdit;
    edCta: TcxButtonEdit;
    cxTabSheet2: TcxTabSheet;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    deDesdeRgo: TcxDateEdit;
    deHastaRgo: TcxDateEdit;
    seNivelRgo: TcxSpinEdit;
    beCtaDesde: TcxButtonEdit;
    beCtaHasta: TcxButtonEdit;
    cbDet: TcxCheckBox;
    cxCheckBox1: TcxCheckBox;
    BitBtn3: TBitBtn;
    sd: TSaveDialog;
    rs: TADODataSet;
    rsidCuenta: TStringField;
    rsDescripcion: TStringField;
    rsOrigen: TStringField;
    rsTipo: TStringField;
    rsNivel: TIntegerField;
    rsBalanceAnterior: TBCDField;
    rsTotalDB: TBCDField;
    rsTotalCR: TBCDField;
    rsBalanceActual: TBCDField;
    rsNumeroEntrada: TStringField;
    rsConcepto: TBlobField;
    rsFecha: TDateTimeField;
    rsTipoEntrada: TStringField;
    rsDebito: TBCDField;
    rsCredito: TBCDField;
    rsDetDescripcion: TStringField;
    rsReferencia: TStringField;
    ds: TDataSource;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText8: TppDBText;
    cDebito: TppDBCalc;
    cCredito: TppDBCalc;
    ppLine2: TppLine;
    ppDBMemo1: TppDBMemo;
    ppShape1: TppShape;
    procedure BitBtn2Click(Sender: TObject);
    procedure SalirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure mTotalesAfterScroll(DataSet: TDataSet);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure beCtaDesdePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
    procedure beCtaHastaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
    procedure beCtaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
    procedure cxDateEdit1PropertiesEditValueChanged(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ppGroupFooterBand3BeforeGenerate(Sender: TObject);
    procedure ppDetailBand1BeforeGenerate(Sender: TObject);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
    FLoading: Boolean;
    procedure AbrirDetalle;
  public
    { Public declarations }
  end;

var
  MayorGeneral: TMayorGeneral;

implementation

uses ugldm, uBuscarCuentaMayor, uMantEntrada, Udata, uBusquedaDX, UUtiles;

{$R *.dfm}

procedure TMayorGeneral.BitBtn2Click(Sender: TObject);
begin
  with rs do begin
    Close();
    Parameters[1].Value := dtDesde.Date;
    Parameters[2].Value := dtHasta.Date;
    Parameters[3].Value := edCta.Text;
    Open();
  end;
  uutiles.ImprimirReporte(Report);
end;

procedure TMayorGeneral.SalirClick(Sender: TObject);
begin
  Close();
end;

procedure TMayorGeneral.BitBtn1Click(Sender: TObject);
begin
  FLoading := True;
  try
   if cxPageControl1.ActivePageIndex = 0 then
    gldm.CargarTotales(dtDesde.Date, dtHasta.Date, edCta.Text, Trunc(seNivel.Value))
  else
    gldm.CargarTotales(deDesdeRgo.Date, deHastaRgo.Date, beCtadesde.Text, bectahasta.Text, Trunc(seNivelRgo.Value));

    mTotales.Close();
    mTotales.Filtered := False;
    mTotales.Open();
    mTotales.LoadFromDataSet(gldm.mTotales,[mtcpoAppend]);

    if cbDet.Checked then begin
      mTotales.Filter := 'Tipo = ''D''';
      mTotales.Filtered := True;
    end;
  finally
    FLoading := False;
  end;

  AbrirDetalle();
  
  dxDBGrid2.SetFocus();
end;

procedure TMayorGeneral.AbrirDetalle;
begin
  mMayor.Close();
  mMayor.Open();
  if cxPageControl1.ActivePageIndex = 0 then
    gldm.AbrirMayorGeneral(dtDesde.Date, dtHasta.Date, mTotalesIdCuenta.Value)
  else
    gldm.AbrirMayorGeneral(deDesdeRgo.Date, deHastaRgo.Date, mTotalesIdCuenta.Value);
    
  mMayor.LoadFromDataSet(gldm.spMayor,[mtcpoAppend]); 
end;

procedure TMayorGeneral.FormCreate(Sender: TObject);
begin
  dtDesde.Date := dm.FechaDesde;
  dtHasta.Date := dm.FechaHasta;
  deDesdeRgo.Date := dm.FechaDesde;
  deHastaRgo.Date := dm.FechaHasta;
  edCta.Text := '%';
  mTotales.Close();
  FLoading := False;
end;

procedure TMayorGeneral.FormDestroy(Sender: TObject);
begin
 dm.FechaDesde := dtDesde.Date;
 dm.FechaHasta := dtHasta.Date;
end;

procedure TMayorGeneral.cxButton1Click(Sender: TObject);
var
  cta: string;
begin
  cta := BuscarCtaDetalle();
  if cta <> '' then begin
    edcta.Text := cta;
  end;

end;

procedure TMayorGeneral.ppVariable1Calc(Sender: TObject; var Value: Variant);
begin
  if cxPageControl1.ActivePageIndex = 0 then
    Value := 'Cuenta = ' + edCta.Text + ' desde:' + dtDesde.Text + ' hasta:' + dtHasta.Text
  else
    Value := 'Desde cuenta ' + beCtaDesde.Text + ' Hasta cuenta ' + beCtaHasta.Text + ' desde fecha:' + dtDesde.Text + ' hasta:' + dtHasta.Text;
end;

procedure TMayorGeneral.mTotalesAfterScroll(DataSet: TDataSet);
begin
  if not FLoading then
    AbrirDetalle();
end;

procedure TMayorGeneral.dxDBGrid1DblClick(Sender: TObject);
begin
  if mMayor.Active and (mMayor.RecordCount > 0) then
    AbrirEntradaDiario(mMayorIdEntrada.Value);
end;

procedure TMayorGeneral.beCtaDesdePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  cta: string;
begin
  cta := BuscarCtaDetalle();
  if cta <> '' then
    bectadesde.Text := cta;
end;

procedure TMayorGeneral.beCtaHastaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  cta: string;
begin
  cta := BuscarCtaDetalle();
  if cta <> '' then
    bectahasta.Text := cta;
end;

procedure TMayorGeneral.beCtaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  cta: string;
begin
//  cta := TBusquedaDX.Buscar('idCuenta',False,'FindCuentaContable');
  cta := BuscarCtaDetalle();
  if cta <> '' then begin
    edCta.Text := cta + '%';
  end;
end;

procedure TMayorGeneral.cxDateEdit1PropertiesEditValueChanged(Sender: TObject);
begin
  dtHasta.Date := DateOf(EndOfTheMonth(dtDesde.Date));
end;

procedure TMayorGeneral.BitBtn3Click(Sender: TObject);
begin
  sd.FileName := 'movimiento cuenta ' + mTotalesIdCuenta.AsString + '.xls';
  if sd.Execute() then
    dxDBGrid1.SaveToXLS(sd.FileName,True);
end;

procedure TMayorGeneral.ppGroupFooterBand3BeforeGenerate(Sender: TObject);
begin
//  ppGroupFooterBand3.Visible := rsNumeroEntrada.AsString <> ''; //(rsTotalDB.AsCurrency <> 0) or (rsTotalCR.AsCurrency <> 0);
end;

procedure TMayorGeneral.ppDetailBand1BeforeGenerate(Sender: TObject);
begin
//  ppDetailBand1.Visible := rsNumeroEntrada.AsString <> ''; //(rsCredito.AsCurrency <> 0) or (rsDebito.AsCurrency <> 0);
end;

procedure TMayorGeneral.ppGroupFooterBand3BeforePrint(Sender: TObject);
begin
  ppGroupFooterBand3.Visible := (cDebito.Value <> 0) or (cCredito.Value <> 0);
end;

procedure TMayorGeneral.ppDetailBand1BeforePrint(Sender: TObject);
begin
 // ppDetailBand1.Visible := ppDBText11.Text <> '';
end;

end.

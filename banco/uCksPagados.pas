unit uCksPagados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxDBEdtr, dxDBELib, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  StdCtrls, DB, ppBands, ppVar, ppClass, ppCtrls, ppStrtch, ppRichTx,
  ppPrnabl, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  ppDBBDE, ADODB, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, Buttons, DateUtils,
  ComCtrls, cxLookAndFeelPainters, cxButtons, cxDropDownEdit, cxCalendar,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxImageComboBox, cxMemo,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, kbmMemTable, ppParameter;

type
  TfCksPagados = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    rsRelacionCks: TADODataSet;
    plRelacion: TppBDEPipeline;
    Report: TppReport;
    ppTitleBand1: TppTitleBand;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBRichText1: TppDBRichText;
    ppLine5: TppLine;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    ppLabel8: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel1: TppLabel;
    ppVariable1: TppVariable;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine3: TppLine;
    ppLabel7: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    relsource: TDataSource;
    sbOpen: tcxButton;
    dsBcos: TDataSource;
    SpeedButton1: tcxButton;
    SpeedButton2: tcxButton;
    SpeedButton3: tcxButton;
    ReportXDia: TppReport;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBRichText2: TppDBRichText;
    ppLine2: TppLine;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLine6: TppLine;
    ppLabel9: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLine7: TppLine;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel15: TppLabel;
    ppVariable2: TppVariable;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine8: TppLine;
    ppLabel16: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel17: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBText13: TppDBText;
    ppShape1: TppShape;
    leCuenta: TcxLookupComboBox;
    dtHasta: TcxDateEdit;
    dtDesde: TcxDateEdit;
    Grid: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    GridDBTableView1Referencia: TcxGridDBColumn;
    GridDBTableView1Fecha: TcxGridDBColumn;
    GridDBTableView1Valor: TcxGridDBColumn;
    GridDBTableView1Status: TcxGridDBColumn;
    GridDBTableView1FechaStatus: TcxGridDBColumn;
    GridLevel1: TcxGridLevel;
    GridDBTableView1DBColumn1: TcxGridDBColumn;
    rsRelacionCksIdDocumento: TIntegerField;
    rsRelacionCksFecha: TDateTimeField;
    rsRelacionCksCuentaBanco: TStringField;
    rsRelacionCksidCuenta: TStringField;
    rsRelacionCksDescripcionCuenta: TStringField;
    rsRelacionCksValorCheque: TBCDField;
    rsRelacionCksTextoConcepto: TStringField;
    rsRelacionCksST: TStringField;
    rsRelacionCksFechaStatus: TDateTimeField;
    rsRelacionCksNumero: TIntegerField;
    procedure sbOpenClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCksPagados: TfCksPagados;

implementation

uses udmBancos, Udata, UUtiles;

{$R *.dfm}

procedure TfCksPagados.sbOpenClick(Sender: TObject);
begin
  SelectFirst();
  with rsRelacionCks do begin
    Close();
    Parameters[1].Value := DateOf(dtDesde.Date);
    Parameters[2].Value := DateOf(dtHasta.Date);
    Parameters[3].Value := leCuenta.EditValue;
    Open();
  end;

end;

procedure TfCksPagados.FormCreate(Sender: TObject);
begin
  if not dmBanco.rsBancos.Active then
    dmBanco.rsBancos.Open();

  leCuenta.EditValue := dmBanco.rsBancosIdCuentaBanco.AsInteger;

  dtDesde.Date := Date();
  dtHasta.Date := Date();
end;

procedure TfCksPagados.SpeedButton2Click(Sender: TObject);
begin
  Close();
end;

procedure TfCksPagados.SpeedButton1Click(Sender: TObject);
begin
  if rsRelacionCks.Active then
    uutiles.ImprimirReporte(Report);
end;

procedure TfCksPagados.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  Value := 'Pagados desde: ' + dtDesde.Text + ' hasta: ' + dtHasta.Text; 
end;

procedure TfCksPagados.SpeedButton3Click(Sender: TObject);
begin
  if rsRelacionCks.Active then
    uutiles.ImprimirReporte(ReportXDia);
end;

end.

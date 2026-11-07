unit uCksTransito;

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
  cxFilter, cxData, cxDataStorage, cxDBData, cxMemo, cxImageComboBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ppParameter;

type
  TfCksTransito = class(TForm)
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
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
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
    leCuenta: TcxLookupComboBox;
    dtHasta: TcxDateEdit;
    Grid: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    GridDBTableView1Referencia: TcxGridDBColumn;
    GridDBTableView1DBColumn1: TcxGridDBColumn;
    GridDBTableView1Fecha: TcxGridDBColumn;
    GridDBTableView1Valor: TcxGridDBColumn;
    GridLevel1: TcxGridLevel;
    rsRelacionCksIdDocumento: TIntegerField;
    rsRelacionCksFecha: TDateTimeField;
    rsRelacionCksCuentaBanco: TStringField;
    rsRelacionCksidCuenta: TStringField;
    rsRelacionCksDescripcionCuenta: TStringField;
    rsRelacionCksValorCheque: TBCDField;
    rsRelacionCksTextoConcepto: TStringField;
    rsRelacionCksST: TStringField;
    rsRelacionCksNumero: TIntegerField;
    ppDBText3: TppDBText;
    procedure sbOpenClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCksTransito: TfCksTransito;

implementation

uses udmBancos, Udata, UUtiles;

{$R *.dfm}

procedure TfCksTransito.sbOpenClick(Sender: TObject);
begin
  SelectFirst();
  with rsRelacionCks do begin
    Close();
    Parameters[1].Value := DateOf(dtHasta.Date);
    Parameters[2].Value := leCuenta.EditValue;
    Open();
  end;
end;

procedure TfCksTransito.FormCreate(Sender: TObject);
begin
  if not dmBanco.rsBancos.Active then
    dmBanco.rsBancos.Open();

  leCuenta.EditValue := dmBanco.rsBancosidCuentaBanco.AsInteger;

  dtHasta.Date := Date();
end;

procedure TfCksTransito.SpeedButton2Click(Sender: TObject);
begin
  Close();
end;

procedure TfCksTransito.SpeedButton1Click(Sender: TObject);
begin
  if rsRelacionCks.Active then
    uutiles.ImprimirReporte(Report);
end;

procedure TfCksTransito.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  Value := 'Hasta: ' + dtHasta.Text; 
end;

end.

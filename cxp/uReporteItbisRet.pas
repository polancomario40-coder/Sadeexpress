unit uReporteItbisRet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  ADODB, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, ppDB, ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass,
  ppCache, ppComm, ppRelatv, ppProd, ppReport,cxExportGrid4Link,
  cxButtonEdit, cxDBLookupComboBox, cxCurrencyEdit, cxImageComboBox,
  cxSpinEdit, ppParameter;

type
  TReporteItbisRet = class(TFForm)
    Label1: TLabel;
    deDesde: TcxDateEdit;
    Label2: TLabel;
    deHasta: TcxDateEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxButton3: TcxButton;
    rs: TADODataSet;
    rskeyfield: TGuidField;
    rsrnc_cedula: TStringField;
    rstipo_identificacion: TIntegerField;
    rssuplidor: TStringField;
    rstipo_compra: TStringField;
    rscompfiscal: TStringField;
    rscompfiscal_modif: TStringField;
    rsfecha_compfiscal: TDateTimeField;
    rsfecha_pago: TDateTimeField;
    rsitbis_facturado: TBCDField;
    rsitbis_retenido: TBCDField;
    rsmonto_facturado: TBCDField;
    cxGrid1DBTableView1rnc_cedula: TcxGridDBColumn;
    cxGrid1DBTableView1tipo_identificacion: TcxGridDBColumn;
    cxGrid1DBTableView1suplidor: TcxGridDBColumn;
    cxGrid1DBTableView1tipo_compra: TcxGridDBColumn;
    cxGrid1DBTableView1compfiscal: TcxGridDBColumn;
    cxGrid1DBTableView1compfiscal_modif: TcxGridDBColumn;
    cxGrid1DBTableView1fecha_compfiscal: TcxGridDBColumn;
    cxGrid1DBTableView1fecha_pago: TcxGridDBColumn;
    cxGrid1DBTableView1itbis_facturado: TcxGridDBColumn;
    cxGrid1DBTableView1itbis_retenido: TcxGridDBColumn;
    cxGrid1DBTableView1monto_facturado: TcxGridDBColumn;
    ReporteRets: TppReport;
    ppTitleBand5: TppTitleBand;
    ppHeaderBand5: TppHeaderBand;
    ppLine10: TppLine;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppVariable5: TppVariable;
    ppSystemVariable9: TppSystemVariable;
    ppSystemVariable10: TppSystemVariable;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppLine11: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc4: TppDBCalc;
    ppLabel54: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBPipeline2: TppDBPipeline;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBCalc1: TppDBCalc;
    cxButton4: TcxButton;
    sd: TSaveDialog;
    procedure ppVariable5Calc(Sender: TObject; var Value: Variant);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReporteItbisRet: TReporteItbisRet;

implementation

uses Udata, uMantDocumentos;

{$R *.dfm}

procedure TReporteItbisRet.ppVariable5Calc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  Value := 'Desde: ' + deDesde.Text + ' hasta: ' + deHasta.Text;
end;

procedure TReporteItbisRet.FormCreate(Sender: TObject);
begin
  inherited;
  deDesde.Date := Date();
  deHasta.Date := Date();
end;

procedure TReporteItbisRet.cxButton1Click(Sender: TObject);
begin
  inherited;
  with rs Do begin
    Close();
    Parameters[1].Value := deDesde.Date;
    Parameters[2].Value := deHasta.Date;
    Open();
  end;
end;

procedure TReporteItbisRet.cxButton2Click(Sender: TObject);
begin
  inherited;
  Imprimir(ReporteRets);
end;

procedure TReporteItbisRet.cxButton4Click(Sender: TObject);
begin
  inherited;
  if sd.Execute() then
    ExportGrid4ToExcel(sd.FileName,cxGrid1);
end;

procedure TReporteItbisRet.cxButton3Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TReporteItbisRet.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
//  ModalShow(TfMantDocumentos,ShowFind,rsDocsIdDocumento.AsInteger,'idDocumento',True);
//  Ahandled := True;
end;

end.

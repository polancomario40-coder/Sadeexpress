unit uRPTOCPendientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, cxLookAndFeelPainters, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  DB, ADODB, Wwdatsrc,cxExportGrid4Link, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxCalc, ppCtrls, ppDB, ppDBPipe, ppBands,
  ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppParameter;

type
  TRPTOCPendientes = class(TFForm)
    rs: TADODataSet;
    rsidOrden: TGuidField;
    rsNumero: TIntegerField;
    rsTipo: TStringField;
    rsFecha: TDateTimeField;
    rsSuplidor: TStringField;
    rsidSuplidor: TIntegerField;
    rsSubTotal: TBCDField;
    rsITBIS: TBCDField;
    rsGranTotal: TBCDField;
    rsMoneda: TStringField;
    rsReferencia: TStringField;
    rsNotas: TStringField;
    rsPagado: TBCDField;
    rsPendiente: TBCDField;
    Label1: TLabel;
    deHasta: TcxDateEdit;
    sd: TSaveDialog;
    cxButton2: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    StyleNONCF: TcxStyle;
    StyleNCF: TcxStyle;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxButton4: TcxButton;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    cxGrid1DBTableView1Numero: TcxGridDBColumn;
    cxGrid1DBTableView1Tipo: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Suplidor: TcxGridDBColumn;
    cxGrid1DBTableView1SubTotal: TcxGridDBColumn;
    cxGrid1DBTableView1ITBIS: TcxGridDBColumn;
    cxGrid1DBTableView1GranTotal: TcxGridDBColumn;
    cxGrid1DBTableView1Moneda: TcxGridDBColumn;
    cxGrid1DBTableView1Referencia: TcxGridDBColumn;
    cxGrid1DBTableView1Notas: TcxGridDBColumn;
    cxGrid1DBTableView1Pagado: TcxGridDBColumn;
    cxGrid1DBTableView1Pendiente: TcxGridDBColumn;
    Report: TppReport;
    ppTitleBand1: TppTitleBand;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel1: TppLabel;
    ppVariable1: TppVariable;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    ppDBPipeline1: TppDBPipeline;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    ppShape1: TppShape;
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure ppShape1Print(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RPTOCPendientes: TRPTOCPendientes;

implementation

uses Udata;

{$R *.dfm}

procedure TRPTOCPendientes.cxButton4Click(Sender: TObject);
begin
  inherited;
  if sd.Execute() then
    ExportGrid4ToExcel(sd.FileName,cxGrid1);
end;

procedure TRPTOCPendientes.cxButton1Click(Sender: TObject);
begin
  inherited;
  with rs do begin
    Close();
    Parameters[1].Value := deHasta.Date;
    Open();
  end;
  dm.FechaHasta := deHasta.Date;
end;

procedure TRPTOCPendientes.cxButton3Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TRPTOCPendientes.ppShape1Print(Sender: TObject);
begin
  inherited;
  ppshape1.Visible := not ppShape1.Visible;
end;

procedure TRPTOCPendientes.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  Value := 'Hasta: ' + deHasta.Text;
end;

procedure TRPTOCPendientes.cxButton2Click(Sender: TObject);
begin
  inherited;

    Imprimir(Report);
 
end;

procedure TRPTOCPendientes.FormCreate(Sender: TObject);
begin
  inherited;
  deHasta.Date := dm.FechaHasta;
end;

end.

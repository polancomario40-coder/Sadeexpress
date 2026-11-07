unit uRPTAplicaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, cxExportGrid4Link, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, ADODB, ppDB, ppDBPipe, ppBands, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport;

type
  TRPTAplicaciones = class(TFForm)
    rs: TADODataSet;
    rsidDocumento: TIntegerField;
    rsProveedor: TStringField;
    rsFechaFact: TDateTimeField;
    rsFactura: TStringField;
    rsTotalFact: TBCDField;
    rsTipo: TStringField;
    rsCheque: TStringField;
    rsFechaCKS: TDateTimeField;
    rsTotalCk: TBCDField;
    rsAplicado: TBCDField;
    Label1: TLabel;
    deDesde: TcxDateEdit;
    Label2: TLabel;
    deHasta: TcxDateEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton4: TcxButton;
    cxButton3: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    sd: TSaveDialog;
    cxGrid1DBTableView1Proveedor: TcxGridDBColumn;
    cxGrid1DBTableView1FechaFact: TcxGridDBColumn;
    cxGrid1DBTableView1Factura: TcxGridDBColumn;
    cxGrid1DBTableView1TotalFact: TcxGridDBColumn;
    cxGrid1DBTableView1Tipo: TcxGridDBColumn;
    cxGrid1DBTableView1Cheque: TcxGridDBColumn;
    cxGrid1DBTableView1FechaCKS: TcxGridDBColumn;
    cxGrid1DBTableView1TotalCk: TcxGridDBColumn;
    cxGrid1DBTableView1Aplicado: TcxGridDBColumn;
    Report: TppReport;
    ppTitleBand1: TppTitleBand;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
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
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    ppDBPipeline1: TppDBPipeline;
    ppLabel3: TppLabel;
    ppLabel8: TppLabel;
    ppDBText7: TppDBText;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    ppShape1: TppShape;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure ppShape1Print(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RPTAplicaciones: TRPTAplicaciones;

implementation

uses Udata, DateUtils;

{$R *.dfm}

procedure TRPTAplicaciones.cxButton1Click(Sender: TObject);
begin
  inherited;
  with rs do begin
    Close();
    Parameters[1].Value := deDesde.Date;
    parameters[2].Value := dehasta.Date;
    Open();
  end;
end;

procedure TRPTAplicaciones.cxButton4Click(Sender: TObject);
begin
  inherited;
  if sd.Execute() then
    ExportGrid4ToExcel(sd.FileName,cxGrid1);
end;

procedure TRPTAplicaciones.cxButton2Click(Sender: TObject);
begin
  inherited;
  Report.Print();
end;

procedure TRPTAplicaciones.cxButton3Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TRPTAplicaciones.ppShape1Print(Sender: TObject);
begin
  inherited;
  ppShape1.Visible := not ppShape1.Visible;
end;

procedure TRPTAplicaciones.FormCreate(Sender: TObject);
begin
  inherited;
  deDesde.Date := StartOfTheMonth(Date());
  dehasta.Date := Date();
end;

end.

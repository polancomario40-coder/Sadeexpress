unit uDetalleCostoProyecto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, cxLookAndFeelPainters, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, StdCtrls,
  cxButtons, Gradient, DB, Wwdatsrc, ADODB, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxGroupBox,DateUtils, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppStrtch, ppMemo, ppCtrls, ppVar,
  ppPrnabl, ppBands, ppCache,txtradev,cxExportGrid4Link, cxCalc ;

type
  TDetalleCostoProyecto = class(TFForm)
    Gradient1: TGradient;
    Gradient2: TGradient;
    btGuardar: TcxButton;
    btCancelar: TcxButton;
    rs: TADODataSet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    cxButton2: TcxButton;
    lTipo: TcxLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    Tipo: TADODataSet;
    TipoTipo: TStringField;
    dsTipo: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    Report: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBMemo1: TppDBMemo;
    ppDBText2: TppDBText;
    ppShape1: TppShape;
    cxButton1: TcxButton;
    od: TSaveDialog;
    Label4: TLabel;
    rsCentros: TADODataSet;
    rsCentrosidCentroCosto: TGuidField;
    rsCentrosCentroCostoDesc: TStringField;
    dsCC: TDataSource;
    lCC: TcxLookupComboBox;
    cxGrid1DBTableView1CentroCosto: TcxGridDBColumn;
    cxGrid1DBTableView1CentroCostoDesc: TcxGridDBColumn;
    cxGrid1DBTableView1Referencia: TcxGridDBColumn;
    cxGrid1DBTableView1TipoDoc: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1idPartida: TcxGridDBColumn;
    cxGrid1DBTableView1Gasto: TcxGridDBColumn;
    cxGrid1DBTableView1Notas: TcxGridDBColumn;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel9: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel10: TppLabel;
    ppDBText8: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppVariable1: TppVariable;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    ppLabel11: TppLabel;
    ppLine3: TppLine;
    rsidDocumento: TGuidField;
    rsidCentroCosto: TGuidField;
    rsCentroCosto: TStringField;
    rsDescripcion: TStringField;
    rsidPartida: TStringField;
    rsPartida: TStringField;
    rsidCentroCostoParent: TGuidField;
    rsFecha: TDateTimeField;
    rsDocumento: TStringField;
    rsTipo: TStringField;
    rsValor: TBCDField;
    rsNotas: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure ppShape1Print(Sender: TObject);
    procedure btGuardarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DetalleCostoProyecto: TDetalleCostoProyecto;

implementation

uses Udata;

{$R *.dfm}

procedure TDetalleCostoProyecto.FormCreate(Sender: TObject);
begin
  inherited;
  Tipo.Open();
  rsCentros.Open();
  lCC.EditValue := null;
  lTipo.EditValue := '(Todos)';
  deDesde.Date := StartOfTheMonth(Date());
  deHasta.Date := DateOf(EndOftheMonth(Date()));
end;

procedure TDetalleCostoProyecto.cxButton2Click(Sender: TObject);
begin
  inherited;
  with rs do begin
    Close();
    Parameters[1].Value := lTipo.EditValue;
    Parameters[2].Value := lcc.EditValue;
    Parameters[3].Value := deDesde.Date;
    Parameters[4].Value := deHasta.Date;
    Open();
  end;
end;

procedure TDetalleCostoProyecto.btCancelarClick(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TDetalleCostoProyecto.ppShape1Print(Sender: TObject);
begin
  inherited;
  ppShape1.Visible := not ppShape1.Visible;
end;

procedure TDetalleCostoProyecto.btGuardarClick(Sender: TObject);
begin
  inherited;
  Report.Print();
end;

procedure TDetalleCostoProyecto.cxButton1Click(Sender: TObject);
begin
  inherited;
  if od.Execute() then
    ExportGrid4toExcel(od.FileName,cxGrid1);
  
end;

procedure TDetalleCostoProyecto.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  Value := 'Desde:' + deDesde.Text + ' hasta:' + deHasta.Text;
end;

end.

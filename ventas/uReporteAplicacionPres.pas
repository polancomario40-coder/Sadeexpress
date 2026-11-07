unit uReporteAplicacionPres;

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
  ppPrnabl, ppBands, ppCache,cxExportGrid4Link, ppParameter ;

type
  TReporteAplicacionPres = class(TFForm)
    Gradient1: TGradient;
    Gradient2: TGradient;
    btGuardar: TcxButton;
    btCancelar: TcxButton;
    rs: TADODataSet;
    rsidCentroCosto: TGuidField;
    rsCentroCosto: TStringField;
    rsCentroCostoDesc: TStringField;
    rsPresupuestado: TBCDField;
    rsPresupuestadoHijos: TBCDField;
    rsGasto: TBCDField;
    rsGastoHijos: TBCDField;
    rsidCentroCostoParent: TGuidField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CentroCosto: TcxGridDBColumn;
    cxGrid1DBTableView1CentroCostoDesc: TcxGridDBColumn;
    cxGrid1DBTableView1Presupuestado: TcxGridDBColumn;
    cxGrid1DBTableView1PresupuestadoHijos: TcxGridDBColumn;
    cxGrid1DBTableView1Gasto: TcxGridDBColumn;
    cxGrid1DBTableView1GastoHijos: TcxGridDBColumn;
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
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBMemo1: TppDBMemo;
    ppDBText2: TppDBText;
    ppShape1: TppShape;
    cxButton1: TcxButton;
    od: TSaveDialog;
    ppShape2: TppShape;
    ppShape3: TppShape;
    Label4: TLabel;
    rsCentros: TADODataSet;
    rsCentrosidCentroCosto: TGuidField;
    rsCentrosCentroCostoDesc: TStringField;
    dsCC: TDataSource;
    lCC: TcxLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure ppShape1Print(Sender: TObject);
    procedure btGuardarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReporteAplicacionPres: TReporteAplicacionPres;

implementation

uses Udata;

{$R *.dfm}

procedure TReporteAplicacionPres.FormCreate(Sender: TObject);
begin
  inherited;
  Tipo.Open();
  rsCentros.Open();
  lCC.EditValue := null;
  lTipo.EditValue := '(Todos)';
  deDesde.Date := StartOfTheMonth(Date());
  deHasta.Date := DateOf(EndOftheMonth(Date()));
end;

procedure TReporteAplicacionPres.cxButton2Click(Sender: TObject);
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

procedure TReporteAplicacionPres.btCancelarClick(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TReporteAplicacionPres.ppShape1Print(Sender: TObject);
begin
  inherited;
  ppShape1.Visible := not ppShape1.Visible;
end;

procedure TReporteAplicacionPres.btGuardarClick(Sender: TObject);
begin
  inherited;
  Imprimir(Report);
end;

procedure TReporteAplicacionPres.cxButton1Click(Sender: TObject);
begin
  inherited;
  if od.Execute() then
    ExportGrid4toExcel(od.FileName,cxGrid1);
  
end;

end.

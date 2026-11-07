unit uReciboPorCobradorSeg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformx, cxLookAndFeelPainters, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  Gradient, DB, ADODB, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxExportGrid4Link,
  ppDB, ppDBPipe, ppCtrls, ppBands, ppStrtch, ppMemo, myChkBox, ppVar,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport;

type
  TReciboXCobradorSeg = class(TFFormx)
    Gradient1: TGradient;
    Gradient2: TGradient;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    dtpDesde: TcxDateEdit;
    cxButton1: TcxButton;
    dtpHasta: TcxDateEdit;
    Label4: TLabel;
    spRecibos: TADOStoredProc;
    spRecibosCompania: TStringField;
    spRecibosidRecibo: TGuidField;
    spRecibosRecibo: TStringField;
    spRecibosidCliente: TIntegerField;
    spRecibosCliente: TStringField;
    spRecibosCategoria: TStringField;
    spRecibosesCxc: TBooleanField;
    spRecibosFecha: TDateTimeField;
    spRecibosidEmpleado: TIntegerField;
    spRecibosempleado: TStringField;
    spRecibosReferencia: TIntegerField;
    spRecibosCancelado: TBooleanField;
    spRecibosConcepto: TStringField;
    spRecibosUsuario: TStringField;
    spRecibosidPagoForma: TStringField;
    spRecibosNumeroChk: TStringField;
    spRecibosBanco: TStringField;
    spRecibosMoneda: TStringField;
    spRecibosValor: TBCDField;
    spRecibosCobros: TBCDField;
    spRecibosOtrosIng: TBCDField;
    dsRecibos: TDataSource;
    Grid: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    GridDBTableView1Compania: TcxGridDBColumn;
    GridDBTableView1idRecibo: TcxGridDBColumn;
    GridDBTableView1Recibo: TcxGridDBColumn;
    GridDBTableView1idCliente: TcxGridDBColumn;
    GridDBTableView1Cliente: TcxGridDBColumn;
    GridDBTableView1Categoria: TcxGridDBColumn;
    GridDBTableView1esCxc: TcxGridDBColumn;
    GridDBTableView1Fecha: TcxGridDBColumn;
    GridDBTableView1idEmpleado: TcxGridDBColumn;
    GridDBTableView1empleado: TcxGridDBColumn;
    GridDBTableView1Referencia: TcxGridDBColumn;
    GridDBTableView1Cancelado: TcxGridDBColumn;
    GridDBTableView1Concepto: TcxGridDBColumn;
    GridDBTableView1Usuario: TcxGridDBColumn;
    GridDBTableView1idPagoForma: TcxGridDBColumn;
    GridDBTableView1NumeroChk: TcxGridDBColumn;
    GridDBTableView1Banco: TcxGridDBColumn;
    GridDBTableView1Moneda: TcxGridDBColumn;
    GridDBTableView1Valor: TcxGridDBColumn;
    GridDBTableView1Cobros: TcxGridDBColumn;
    GridDBTableView1OtrosIng: TcxGridDBColumn;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton6: TcxButton;
    OpenFile: TOpenDialog;
    edtCobrador: TcxTextEdit;
    Label5: TLabel;
    plReciboList: TppDBPipeline;
    RPTRcCobrador: TppReport;
    ppTitleBand14: TppTitleBand;
    ppLabel157: TppLabel;
    ppSystemVariable27: TppSystemVariable;
    ppDBText176: TppDBText;
    ppHeaderBand14: TppHeaderBand;
    ppLabel161: TppLabel;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppDetailBand14: TppDetailBand;
    ppDBText155: TppDBText;
    ppDBText156: TppDBText;
    ppDBText157: TppDBText;
    ppDBText158: TppDBText;
    ppDBText159: TppDBText;
    ppDBText160: TppDBText;
    ppDBText161: TppDBText;
    myDBCheckBox5: TmyDBCheckBox;
    myDBCheckBox7: TmyDBCheckBox;
    ppDBText162: TppDBText;
    ppDBText163: TppDBText;
    ppDBMemo3: TppDBMemo;
    ppFooterBand14: TppFooterBand;
    ppLine56: TppLine;
    ppSystemVariable28: TppSystemVariable;
    ppSummaryBand6: TppSummaryBand;
    ppDBCalc36: TppDBCalc;
    ppLabel173: TppLabel;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppLine57: TppLine;
    ppGroup13: TppGroup;
    ppGroupHeaderBand13: TppGroupHeaderBand;
    ppLabel174: TppLabel;
    ppDBText164: TppDBText;
    ppGroupFooterBand13: TppGroupFooterBand;
    ppDBCalc39: TppDBCalc;
    ppLabel175: TppLabel;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppShape1: TppShape;
    ppLine1: TppLine;
    spRecibosGrupo: TStringField;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppLabel3: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine2: TppLine;
    ppDBCalc4: TppDBCalc;
    ppLabel4: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine3: TppLine;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReciboXCobradorSeg: TReciboXCobradorSeg;

implementation

uses Udata, UUtiles;

{$R *.dfm}

procedure TReciboXCobradorSeg.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TReciboXCobradorSeg.cxButton3Click(Sender: TObject);
begin
  inherited;
  if openfile.execute then
    ExportGrid4ToExcel(openfile.filename, Grid);

end;

procedure TReciboXCobradorSeg.cxButton1Click(Sender: TObject);
begin
  inherited;
  With spRecibos, Parameters Do
  Begin
    Close();
    ParamByName('@Desde').Value := dtpDesde.Date;
    ParamByName('@Hasta').Value := dtpHasta.Date;
    ParamByName('@IdEmpleado').Value := SaveStrToInt(edtCobrador.Text);

    Open();
  End;
end;

procedure TReciboXCobradorSeg.FormCreate(Sender: TObject);
begin
  inherited;
  dtpDesde.Date := Date;
  dtpHasta.Date := Date;
end;

procedure TReciboXCobradorSeg.cxButton6Click(Sender: TObject);
begin
  inherited;
  If spRecibos.Active Then
    RPTRcCobrador.Print;
end;

end.

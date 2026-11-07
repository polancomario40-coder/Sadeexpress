unit uConsultaRecibosDevueltos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, cxLookAndFeelPainters, StdCtrls, cxButtons,
  Gradient, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ADODB, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppVar,
  ppPrnabl, ppBands, ppCache, ppParameter;

type
  TConsultaRecibosDevueltos = class(TFForm)
    Gradient2: TGradient;
    Gradient1: TGradient;
    Gradient3: TGradient;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    Label1: TLabel;
    spRecibosDevueltos: TADOStoredProc;
    spRecibosDevueltosCompania: TStringField;
    spRecibosDevueltosidRecibo: TGuidField;
    spRecibosDevueltosRecibo: TStringField;
    spRecibosDevueltosidCliente: TIntegerField;
    spRecibosDevueltosCliente: TStringField;
    spRecibosDevueltosesCxc: TBooleanField;
    spRecibosDevueltosFecha: TDateTimeField;
    spRecibosDevueltosFechaDevuelto: TDateTimeField;
    spRecibosDevueltosidEmpleado: TIntegerField;
    spRecibosDevueltosempleado: TStringField;
    spRecibosDevueltosReferencia: TIntegerField;
    spRecibosDevueltosCancelado: TBooleanField;
    spRecibosDevueltosConcepto: TStringField;
    spRecibosDevueltosUsuario: TStringField;
    spRecibosDevueltosidPagoForma: TStringField;
    spRecibosDevueltosNumeroChk: TStringField;
    spRecibosDevueltosBanco: TStringField;
    spRecibosDevueltosMoneda: TStringField;
    spRecibosDevueltosValor: TBCDField;
    spRecibosDevueltosCobros: TBCDField;
    spRecibosDevueltosOtrosIng: TBCDField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Compania: TcxGridDBColumn;
    cxGrid1DBTableView1idRecibo: TcxGridDBColumn;
    cxGrid1DBTableView1Recibo: TcxGridDBColumn;
    cxGrid1DBTableView1idCliente: TcxGridDBColumn;
    cxGrid1DBTableView1Cliente: TcxGridDBColumn;
    cxGrid1DBTableView1esCxc: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1FechaDevuelto: TcxGridDBColumn;
    cxGrid1DBTableView1idEmpleado: TcxGridDBColumn;
    cxGrid1DBTableView1empleado: TcxGridDBColumn;
    cxGrid1DBTableView1Referencia: TcxGridDBColumn;
    cxGrid1DBTableView1Cancelado: TcxGridDBColumn;
    cxGrid1DBTableView1Concepto: TcxGridDBColumn;
    cxGrid1DBTableView1Usuario: TcxGridDBColumn;
    cxGrid1DBTableView1idPagoForma: TcxGridDBColumn;
    cxGrid1DBTableView1NumeroChk: TcxGridDBColumn;
    cxGrid1DBTableView1Banco: TcxGridDBColumn;
    cxGrid1DBTableView1Moneda: TcxGridDBColumn;
    cxGrid1DBTableView1Valor: TcxGridDBColumn;
    cxGrid1DBTableView1Cobros: TcxGridDBColumn;
    cxGrid1DBTableView1OtrosIng: TcxGridDBColumn;
    dtpDesde: TcxDateEdit;
    dtpHasta: TcxDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    cxButton3: TcxButton;
    plRecibosDev: TppDBPipeline;
    RecibosDevRpt: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
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
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppShape1: TppShape;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel10: TppLabel;
    ppLine1: TppLine;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaRecibosDevueltos: TConsultaRecibosDevueltos;

implementation

uses Udata;

{$R *.dfm}

procedure TConsultaRecibosDevueltos.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TConsultaRecibosDevueltos.cxButton3Click(Sender: TObject);
begin
  inherited;
  With spRecibosDevueltos, Parameters Do
  Begin
    Close();
    ParamByName('@Desde').Value := dtpDesde.Date;
    ParamByName('@Hasta').Value := dtpHasta.Date;

    Open;
  End;
end;

procedure TConsultaRecibosDevueltos.FormCreate(Sender: TObject);
begin
  inherited;
  dtpDesde.Date := Date - 30;
  dtpHasta.Date := Date;
end;

procedure TConsultaRecibosDevueltos.cxButton1Click(Sender: TObject);
begin
  inherited;
  If (spRecibosDevueltos.Active) And (Not spRecibosDevueltos.IsEmpty) Then
  Begin
    Imprimir(RecibosDevRpt);
  End;
end;

end.

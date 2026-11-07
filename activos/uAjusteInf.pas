unit uAjusteInf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformx, cxLookAndFeelPainters, StdCtrls, cxButtons, Gradient,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,  dateutils,
  cxGridCustomView, cxGrid, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, ADODB, ppDB, ppDBPipe, ppCtrls, ppBands,
  ppRegion, ppClass, ppStrtch, ppRichTx, ppVar, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ppMemo, cxExportGrid4Link, cxSpinEdit,
  ppParameter ;

type
  TAjusteInf = class(TFFormx)
    Gradient1: TGradient;
    Gradient2: TGradient;
    bSalir: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    rs: TADOStoredProc;
    dsConsultaActivo: TDataSource;
    rsUbicacion: TStringField;
    rsidActivo: TIntegerField;
    rsDescripcion: TStringField;
    rsCategoria: TStringField;
    rsPorcentaje: TFloatField;
    rsMonto: TBCDField;
    rsAcumulada: TBCDField;
    rsDepMes: TBCDField;
    rsFechaAdq: TDateTimeField;
    rsDocumentoAdq: TStringField;
    rsFechaActivacion: TDateTimeField;
    rsVidaUtil: TBCDField;
    rsStatus: TStringField;
    rsFechaStatus: TDateTimeField;
    rsReferencia: TStringField;
    rsNumeroSerie: TStringField;
    rsAsignadoA: TStringField;
    rsValorResidual: TBCDField;
    rsClase: TStringField;
    rsTiempoGarantia: TBCDField;
    rsProveedor: TStringField;
    rsProveedorGarantia: TStringField;
    rsCondicionGarantia: TStringField;
    rsValorLibros: TBCDField;
    cxGrid1DBTableView1Ubicacion: TcxGridDBColumn;
    cxGrid1DBTableView1idActivo: TcxGridDBColumn;
    cxGrid1DBTableView1Descripcion: TcxGridDBColumn;
    cxGrid1DBTableView1Categoria: TcxGridDBColumn;
    cxGrid1DBTableView1Porcentaje: TcxGridDBColumn;
    cxGrid1DBTableView1Monto: TcxGridDBColumn;
    cxGrid1DBTableView1Acumulada: TcxGridDBColumn;
    cxGrid1DBTableView1DepMes: TcxGridDBColumn;
    cxGrid1DBTableView1FechaAdq: TcxGridDBColumn;
    cxGrid1DBTableView1DocumentoAdq: TcxGridDBColumn;
    cxGrid1DBTableView1FechaActivacion: TcxGridDBColumn;
    cxGrid1DBTableView1VidaUtil: TcxGridDBColumn;
    cxGrid1DBTableView1Status: TcxGridDBColumn;
    cxGrid1DBTableView1FechaStatus: TcxGridDBColumn;
    cxGrid1DBTableView1Referencia: TcxGridDBColumn;
    cxGrid1DBTableView1NumeroSerie: TcxGridDBColumn;
    cxGrid1DBTableView1AsignadoA: TcxGridDBColumn;
    cxGrid1DBTableView1ValorResidual: TcxGridDBColumn;
    cxGrid1DBTableView1Clase: TcxGridDBColumn;
    cxGrid1DBTableView1TiempoGarantia: TcxGridDBColumn;
    cxGrid1DBTableView1Proveedor: TcxGridDBColumn;
    cxGrid1DBTableView1ProveedorGarantia: TcxGridDBColumn;
    cxGrid1DBTableView1CondicionGarantia: TcxGridDBColumn;
    cxGrid1DBTableView1ValorLibros: TcxGridDBColumn;
    plReporte: TppDBPipeline;
    rListaDepr: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable7: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel52: TppLabel;
    dbDetalle: TppDetailBand;
    ppDBText44: TppDBText;
    ppDBText46: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppLabel53: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppGroup8: TppGroup;
    ghbCategoria: TppGroupHeaderBand;
    ppDBText45: TppDBText;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppDBText8: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBText9: TppDBText;
    ppShape1: TppShape;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc5: TppDBCalc;
    ppLine2: TppLine;
    ppLabel3: TppLabel;
    ppShape2: TppShape;
    ppDBMemo1: TppDBMemo;
    ppShape3: TppShape;
    ppLabel4: TppLabel;
    cxButton3: TcxButton;
    SaveDialog1: TSaveDialog;
    Label1: TLabel;
    cxSpinEdit1: TcxSpinEdit;
    rsAjusteInflacion: TFloatField;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure bSalirClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure ppShape2Print(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure ppLabel4Print(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AjusteInf: TAjusteInf;

implementation

uses Udata;

{$R *.dfm}

procedure TAjusteInf.FormCreate(Sender: TObject);
begin
  inherited;
  cxSpinEdit1.Value := YearOf(Date());
end;

procedure TAjusteInf.cxButton1Click(Sender: TObject);
begin
  inherited;
  With rs Do
  Begin
    Close();
    Parameters.ParamByName('@Yr').Value :=  cxSpinEdit1.Value;
    Open();
  End;
end;

procedure TAjusteInf.bSalirClick(Sender: TObject);
begin
  inherited;
  Close;

end;

procedure TAjusteInf.cxButton2Click(Sender: TObject);
begin
  inherited;
  If rs.Active Then
  Begin
    Imprimir(rListaDepr);
  End;
end;

procedure TAjusteInf.ppShape2Print(Sender: TObject);
begin
  inherited;
  ppShape2.Visible := (Not ppShape2.Visible);
end;

procedure TAjusteInf.cxButton3Click(Sender: TObject);
begin
  inherited;
  If SaveDialog1.Execute Then
    ExportGrid4ToExcel(SaveDialog1.FileName, cxGrid1);
end;

procedure TAjusteInf.ppLabel4Print(Sender: TObject);
begin
  inherited;
  ppLabel4.Caption := 'Al: ' + cxSpinEdit1.Text;
end;

end.

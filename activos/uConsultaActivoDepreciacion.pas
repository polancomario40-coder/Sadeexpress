unit uConsultaActivoDepreciacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformx, cxLookAndFeelPainters, StdCtrls, cxButtons, Gradient,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, ADODB, ppDB, ppDBPipe, ppCtrls, ppBands,
  ppRegion, ppClass, ppStrtch, ppRichTx, ppVar, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ppMemo, cxExportGrid4Link, ppParameter ;

type
  TConsultaActivoDepreciacion = class(TFFormx)
    Gradient1: TGradient;
    Gradient2: TGradient;
    bSalir: TcxButton;
    Gradient4: TGradient;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Label1: TLabel;
    dtpDesde: TcxDateEdit;
    spConsultaActivo: TADOStoredProc;
    dsConsultaActivo: TDataSource;
    Gradient3: TGradient;
    spConsultaActivoUbicacion: TStringField;
    spConsultaActivoidActivo: TIntegerField;
    spConsultaActivoDescripcion: TStringField;
    spConsultaActivoCategoria: TStringField;
    spConsultaActivoPorcentaje: TFloatField;
    spConsultaActivoMonto: TBCDField;
    spConsultaActivoAcumulada: TBCDField;
    spConsultaActivoDepMes: TBCDField;
    spConsultaActivoFechaAdq: TDateTimeField;
    spConsultaActivoDocumentoAdq: TStringField;
    spConsultaActivoFechaActivacion: TDateTimeField;
    spConsultaActivoVidaUtil: TBCDField;
    spConsultaActivoStatus: TStringField;
    spConsultaActivoFechaStatus: TDateTimeField;
    spConsultaActivoReferencia: TStringField;
    spConsultaActivoNumeroSerie: TStringField;
    spConsultaActivoAsignadoA: TStringField;
    spConsultaActivoValorResidual: TBCDField;
    spConsultaActivoClase: TStringField;
    spConsultaActivoTiempoGarantia: TBCDField;
    spConsultaActivoProveedor: TStringField;
    spConsultaActivoProveedorGarantia: TStringField;
    spConsultaActivoCondicionGarantia: TStringField;
    spConsultaActivoValorLibros: TBCDField;
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
    ppDBText47: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppLabel53: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppGroup8: TppGroup;
    ghbCategoria: TppGroupHeaderBand;
    ppDBText45: TppDBText;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppDBText8: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBText9: TppDBText;
    ppShape1: TppShape;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLine2: TppLine;
    ppLabel3: TppLabel;
    ppShape2: TppShape;
    ppDBMemo1: TppDBMemo;
    ppShape3: TppShape;
    ppLabel4: TppLabel;
    cxButton3: TcxButton;
    SaveDialog1: TSaveDialog;
    dtphasta: TcxDateEdit;
    Label2: TLabel;
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
  ConsultaActivoDepreciacion: TConsultaActivoDepreciacion;

implementation

uses Udata;

{$R *.dfm}

procedure TConsultaActivoDepreciacion.FormCreate(Sender: TObject);
begin
  inherited;
  dtpHasta.Date := Date;
  dtpDesde.Date := Date;

end;

procedure TConsultaActivoDepreciacion.cxButton1Click(Sender: TObject);
begin
  inherited;
  With spConsultaActivo, Parameters Do
  Begin
    Close();
    ParamByName('@Desde').Value := dtpDesde.Date;
    ParamByName('@Hasta').Value := dtpHasta.Date;
    Open();
  End;
end;

procedure TConsultaActivoDepreciacion.bSalirClick(Sender: TObject);
begin
  inherited;
  Close;

end;

procedure TConsultaActivoDepreciacion.cxButton2Click(Sender: TObject);
begin
  inherited;
  If spConsultaActivo.Active Then
  Begin
    Imprimir(rListaDepr)
  End;
end;

procedure TConsultaActivoDepreciacion.ppShape2Print(Sender: TObject);
begin
  inherited;
  ppShape2.Visible := (Not ppShape2.Visible);
end;

procedure TConsultaActivoDepreciacion.cxButton3Click(Sender: TObject);
begin
  inherited;
  If SaveDialog1.Execute Then
    ExportGrid4ToExcel(SaveDialog1.FileName, cxGrid1);
end;

procedure TConsultaActivoDepreciacion.ppLabel4Print(Sender: TObject);
begin
  inherited;
  ppLabel4.Caption := 'Al: ' + DateToStr(dtphasta.Date);
end;

end.

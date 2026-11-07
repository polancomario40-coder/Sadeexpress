unit uListadoActivos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformx, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  StdCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxButtons, Gradient, ADODB, cxExportGrid4Link, ppCtrls, ppBands,
  ppStrtch, ppMemo, ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd,
  ppReport, ppComm, ppRelatv, ppDBPipe, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar,dateutils, ppParameter;

type
  TListadoActivos = class(TFFormx)
    Gradient1: TGradient;
    Gradient2: TGradient;
    Gradient3: TGradient;
    bSalir: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    SaveDialog1: TSaveDialog;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Label1: TLabel;
    rsActivos: TADODataSet;
    dsActivos: TDataSource;
    rsActivosIdActivo: TAutoIncField;
    rsActivosDescripcion: TStringField;
    rsActivosFechaAdq: TDateTimeField;
    rsActivosDocumentoAdq: TStringField;
    rsActivosFechaActivacion: TDateTimeField;
    rsActivosVidaUtil: TBCDField;
    rsActivosCuentaActivo: TStringField;
    rsActivosReferencia: TStringField;
    rsActivosNumeroSerie: TStringField;
    rsActivosCantidad: TBCDField;
    rsActivosObservaciones: TStringField;
    rsActivosAsignadoA: TStringField;
    rsActivosValorAdq: TBCDField;
    rsActivosValorResidual: TBCDField;
    rsActivosTiempoGarantia: TIntegerField;
    rsActivosProveedor: TStringField;
    rsActivosProveedorGarantia: TStringField;
    rsActivosCondicionGarantia: TStringField;
    rsActivosCategoria: TStringField;
    rsActivosUbicacion: TStringField;
    rsActivosActivoClase: TStringField;
    cxGrid1DBTableView1IdActivo: TcxGridDBColumn;
    cxGrid1DBTableView1Descripcion: TcxGridDBColumn;
    cxGrid1DBTableView1FechaAdq: TcxGridDBColumn;
    cxGrid1DBTableView1DocumentoAdq: TcxGridDBColumn;
    cxGrid1DBTableView1FechaActivacion: TcxGridDBColumn;
    cxGrid1DBTableView1VidaUtil: TcxGridDBColumn;
    cxGrid1DBTableView1CuentaActivo: TcxGridDBColumn;
    cxGrid1DBTableView1Referencia: TcxGridDBColumn;
    cxGrid1DBTableView1NumeroSerie: TcxGridDBColumn;
    cxGrid1DBTableView1Cantidad: TcxGridDBColumn;
    cxGrid1DBTableView1Observaciones: TcxGridDBColumn;
    cxGrid1DBTableView1AsignadoA: TcxGridDBColumn;
    cxGrid1DBTableView1ValorAdq: TcxGridDBColumn;
    cxGrid1DBTableView1ValorResidual: TcxGridDBColumn;
    cxGrid1DBTableView1TiempoGarantia: TcxGridDBColumn;
    cxGrid1DBTableView1Proveedor: TcxGridDBColumn;
    cxGrid1DBTableView1ProveedorGarantia: TcxGridDBColumn;
    cxGrid1DBTableView1CondicionGarantia: TcxGridDBColumn;
    cxGrid1DBTableView1Categoria: TcxGridDBColumn;
    cxGrid1DBTableView1Ubicacion: TcxGridDBColumn;
    cxGrid1DBTableView1ActivoClase: TcxGridDBColumn;
    SaveDialog2: TSaveDialog;
    plActivos: TppDBPipeline;
    rptActivos: TppReport;
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
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    Label2: TLabel;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    cxButton1: TcxButton;
    rsActivosStatus: TStringField;
    rsActivosValor: TBCDField;
    ppDBText3: TppDBText;
    ppLabel7: TppLabel;
    ppDBCalc1: TppDBCalc;
    procedure FormCreate(Sender: TObject);
    procedure bSalirClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ListadoActivos: TListadoActivos;

implementation

uses Udata;

{$R *.dfm}

procedure TListadoActivos.FormCreate(Sender: TObject);
begin
  inherited;
  deDesde.Date := IncMonth(StartOfTheMonth(Date()));
  deHasta.Date := EndOfTheMonth(deDesde.Date);
end;

procedure TListadoActivos.bSalirClick(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TListadoActivos.cxButton3Click(Sender: TObject);
begin
  inherited;
  If SaveDialog1.Execute Then
    ExportGrid4ToExcel(SaveDialog1.FileName, cxGrid1);
end;

procedure TListadoActivos.cxButton2Click(Sender: TObject);
begin
  inherited;
  If rsActivos.Active Then
  Begin
    Imprimir(rptActivos);
  End;
end;

procedure TListadoActivos.cxButton1Click(Sender: TObject);
begin
  inherited;
  with rsActivos do begin
    Close();
    Parameters[1].Value := deDesde.Date;
    Parameters[2].Value := deHasta.Date;
    Open();
  end;
end;

end.

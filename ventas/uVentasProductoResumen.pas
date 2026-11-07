unit uVentasProductoResumen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls,
  cxButtons, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Wwdatsrc, cxExportGrid4Link, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, cxCalc;

type
  TVentasdeProductosResumen = class(TFForm)
    Label1: TLabel;
    Label2: TLabel;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    Grid: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    OpenFile: TOpenDialog;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxButton2: TcxButton;
    cxButton5: TcxButton;
    RS: TADODataSet;
    RSDesde: TDateTimeField;
    RSHasta: TDateTimeField;
    RSidGrupo: TStringField;
    RSGrupo: TStringField;
    RSidProducto: TStringField;
    RSProducto: TStringField;
    RSCantidad: TFloatField;
    RSPrecio: TBCDField;
    RSDescuento: TBCDField;
    RSItbis: TBCDField;
    RSTotal: TBCDField;
    RSTotalBruto: TBCDField;
    RSTotalNeto: TBCDField;
    RSCompania: TStringField;
    RSPromedio: TFloatField;
    RSPromedioCat: TFloatField;
    RSPromedioGral: TFloatField;
    plVentasdeProductosResumen: TppDBPipeline;
    RPTVentasdeProductosResumen: TppReport;
    ppTitleBand3: TppTitleBand;
    ppLabel25: TppLabel;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppDBText180: TppDBText;
    ppHeaderBand3: TppHeaderBand;
    ppLine7: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText71: TppDBText;
    ppDBText73: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSystemVariable6: TppSystemVariable;
    ppSummaryBand3: TppSummaryBand;
    ppShape5: TppShape;
    ppLine23: TppLine;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppLabel102: TppLabel;
    ppLine28: TppLine;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBText183: TppDBText;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppShape4: TppShape;
    ppDBText87: TppDBText;
    ppLabel101: TppLabel;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppLabel60: TppLabel;
    ppLine9: TppLine;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBText182: TppDBText;
    GridDBTableView1Grupo: TcxGridDBColumn;
    GridDBTableView1idProducto: TcxGridDBColumn;
    GridDBTableView1Producto: TcxGridDBColumn;
    GridDBTableView1Cantidad: TcxGridDBColumn;
    GridDBTableView1Precio: TcxGridDBColumn;
    GridDBTableView1Descuento: TcxGridDBColumn;
    GridDBTableView1Itbis: TcxGridDBColumn;
    GridDBTableView1Total: TcxGridDBColumn;
    GridDBTableView1TotalBruto: TcxGridDBColumn;
    GridDBTableView1TotalNeto: TcxGridDBColumn;
    GridDBTableView1Promedio: TcxGridDBColumn;
    GridDBTableView1PromedioCat: TcxGridDBColumn;
    GridDBTableView1PromedioGral: TcxGridDBColumn;
    cxButton6: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VentasdeProductosResumen: TVentasdeProductosResumen;

implementation

uses Udata;

{$R *.dfm}

procedure TVentasdeProductosResumen.cxButton1Click(Sender: TObject);
begin
  inherited;
  rs.Close;
  rs.Parameters[1].Value := dedesde.date;
  rs.Parameters[2].Value := dehasta.date;
  rs.Open;

end;

procedure TVentasdeProductosResumen.cxButton4Click(Sender: TObject);
begin
  inherited;
    if openfile.execute then ExportGrid4ToExcel(openfile.filename, Grid);
end;

procedure TVentasdeProductosResumen.cxButton2Click(Sender: TObject);
begin
  inherited;
  GridDBTableView1.DataController.Groups.FullExpand;
end;

procedure TVentasdeProductosResumen.cxButton5Click(Sender: TObject);
begin
  inherited;
  GridDBTableView1.DataController.Groups.FullCollapse;
end;

procedure TVentasdeProductosResumen.FormCreate(Sender: TObject);
begin
  inherited;
  deDesde.Date := dm.FechaDesde;
  deHasta.Date := dm.FechaHasta;
end;

procedure TVentasdeProductosResumen.cxButton3Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TVentasdeProductosResumen.cxButton6Click(Sender: TObject);
begin
  inherited;
  rs.DisableControls();
  try
    RPTVentasdeProductosResumen.Print();
  finally
    rs.EnableControls();
  end;
end;

end.

unit uVentasPorProductoPrecioPromedio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformx, cxLookAndFeelPainters, DB, ADODB, StdCtrls, cxButtons,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Gradient, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxExportGrid4Link, ppBands, ppCtrls, ppClass,
  ppVar, ppPrnabl, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppReport;

type
  TVentasPorProdPrecioPromedio = class(TFFormx)
    Gradient1: TGradient;
    Gradient2: TGradient;
    Label2: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    dtpDesde: TcxDateEdit;
    cxButton1: TcxButton;
    dtpHasta: TcxDateEdit;
    Gradient3: TGradient;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    Label3: TLabel;
    spPrecioPromedio: TADOStoredProc;
    spPrecioPromedioId: TGuidField;
    spPrecioPromedioGrupo: TStringField;
    spPrecioPromedioClienteGrupo: TStringField;
    spPrecioPromedioVendedor: TStringField;
    spPrecioPromedioCliente: TStringField;
    spPrecioPromedioFactura: TStringField;
    spPrecioPromedioIdProducto: TStringField;
    spPrecioPromedioProducto: TStringField;
    spPrecioPromedioCantidad: TFloatField;
    spPrecioPromedioPrecio: TBCDField;
    spPrecioPromedioDescuento: TBCDField;
    spPrecioPromedioLineTotal: TBCDField;
    spPrecioPromedioPrecioPromedio: TFloatField;
    Grid: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    dsPrecioPromedio: TDataSource;
    GridDBTableView1Id: TcxGridDBColumn;
    GridDBTableView1Grupo: TcxGridDBColumn;
    GridDBTableView1ClienteGrupo: TcxGridDBColumn;
    GridDBTableView1Vendedor: TcxGridDBColumn;
    GridDBTableView1Cliente: TcxGridDBColumn;
    GridDBTableView1Factura: TcxGridDBColumn;
    GridDBTableView1IdProducto: TcxGridDBColumn;
    GridDBTableView1Producto: TcxGridDBColumn;
    GridDBTableView1Cantidad: TcxGridDBColumn;
    GridDBTableView1Precio: TcxGridDBColumn;
    GridDBTableView1Descuento: TcxGridDBColumn;
    GridDBTableView1LineTotal: TcxGridDBColumn;
    GridDBTableView1PrecioPromedio: TcxGridDBColumn;
    OpenFile: TOpenDialog;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    rptPrecioPromedio: TppReport;
    plPrecioPromedio: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
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
    lDelAl: TppLabel;
    ppDBText7: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppShape1: TppShape;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppLabel11: TppLabel;
    ppDBText11: TppDBText;
    ppLabel12: TppLabel;
    ppDBText12: TppDBText;
    ppLabel13: TppLabel;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLabel14: TppLabel;
    ppLine2: TppLine;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLabel15: TppLabel;
    ppLine3: TppLine;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppLabel16: TppLabel;
    ppLine4: TppLine;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppLabel17: TppLabel;
    ppLine5: TppLine;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLabel18: TppLabel;
    ppLine6: TppLine;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    cxButton6: TcxButton;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure lDelAlPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VentasPorProdPrecioPromedio: TVentasPorProdPrecioPromedio;

implementation

uses Udata;

{$R *.dfm}

procedure TVentasPorProdPrecioPromedio.FormCreate(Sender: TObject);
begin
  inherited;
  dtpDesde.Date := Date - 30;
  dtpHasta.Date := Date;
end;

procedure TVentasPorProdPrecioPromedio.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TVentasPorProdPrecioPromedio.cxButton1Click(Sender: TObject);
begin
  inherited;
  With spPrecioPromedio, Parameters Do
  Begin
    Close();
    ParamByName('@Desde').Value := dtpDesde.Date;
    ParamByName('@Hasta').Value := dtpHasta.Date;

    Open();
  End;
end;

procedure TVentasPorProdPrecioPromedio.cxButton3Click(Sender: TObject);
begin
  inherited;
  if openfile.execute then
    ExportGrid4ToExcel(openfile.filename, Grid);
end;

procedure TVentasPorProdPrecioPromedio.cxButton5Click(Sender: TObject);
begin
  inherited;
  If spPrecioPromedio.Active Then
  Begin
    rptPrecioPromedio.Print;
  End;
end;

procedure TVentasPorProdPrecioPromedio.lDelAlPrint(Sender: TObject);
begin
  inherited;
  lDelAl.Caption := 'Del: ' + DateToStr(dtpDesde.Date) + ' Al: ' + DateToStr(dtpHasta.Date);
end;

end.

unit uVentasPorProductos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformx, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, cxButtons, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Gradient, ADODB, cxExportGrid4Link, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppBands, ppVar,
  ppPrnabl, ppCache, ppParameter;

type
  TVentasPorProductos = class(TFFormx)
    Gradient1: TGradient;
    Gradient2: TGradient;
    Label2: TLabel;
    Label4: TLabel;
    dtpDesde: TcxDateEdit;
    cxButton1: TcxButton;
    Gradient3: TGradient;
    cxButton2: TcxButton;
    Grid: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    Label1: TLabel;
    dtpHasta: TcxDateEdit;
    spVentasPorProductos: TADOStoredProc;
    dsVentasPorProducto: TDataSource;
    spVentasPorProductosDesde: TDateTimeField;
    spVentasPorProductosHasta: TDateTimeField;
    spVentasPorProductosidCliente: TIntegerField;
    spVentasPorProductosCliente: TStringField;
    spVentasPorProductosidProducto: TStringField;
    spVentasPorProductosProducto: TStringField;
    spVentasPorProductosfecha: TDateTimeField;
    spVentasPorProductosfactura: TStringField;
    spVentasPorProductosreferencia: TStringField;
    spVentasPorProductosMoneda: TStringField;
    spVentasPorProductosItbis: TBCDField;
    spVentasPorProductosPrecio: TBCDField;
    spVentasPorProductosLineTotal: TBCDField;
    spVentasPorProductosTotalValor: TBCDField;
    spVentasPorProductosId: TGuidField;
    GridDBTableView1Desde: TcxGridDBColumn;
    GridDBTableView1Hasta: TcxGridDBColumn;
    GridDBTableView1idCliente: TcxGridDBColumn;
    GridDBTableView1Cliente: TcxGridDBColumn;
    GridDBTableView1idProducto: TcxGridDBColumn;
    GridDBTableView1Producto: TcxGridDBColumn;
    GridDBTableView1fecha: TcxGridDBColumn;
    GridDBTableView1factura: TcxGridDBColumn;
    GridDBTableView1referencia: TcxGridDBColumn;
    GridDBTableView1Moneda: TcxGridDBColumn;
    GridDBTableView1TotalCant: TcxGridDBColumn;
    GridDBTableView1DescuentoDet: TcxGridDBColumn;
    GridDBTableView1Itbis: TcxGridDBColumn;
    GridDBTableView1Precio: TcxGridDBColumn;
    GridDBTableView1LineTotal: TcxGridDBColumn;
    GridDBTableView1TotalValor: TcxGridDBColumn;
    GridDBTableView1Id: TcxGridDBColumn;
    spVentasPorProductosGrupo: TStringField;
    GridDBTableView1DBColumn1: TcxGridDBColumn;
    spVentasPorProductosVendedor: TStringField;
    spVentasPorProductosCategoria: TStringField;
    spVentasPorProductosClienteTipo: TStringField;
    spVentasPorProductoscantidad: TFloatField;
    spVentasPorProductosDescuento: TBCDField;
    OpenFile: TOpenDialog;
    cxButton3: TcxButton;
    spVentasPorProductosDevCantidad: TFloatField;
    spVentasPorProductosDevDescuento: TBCDField;
    spVentasPorProductosDevItbis: TBCDField;
    spVentasPorProductosDevLineTotal: TBCDField;
    spVentasPorProductosDevTotalBruto: TBCDField;
    spVentasPorProductosDevTotalNeto: TBCDField;
    GridDBTableView1DBColumn2: TcxGridDBColumn;
    GridDBTableView1DBColumn3: TcxGridDBColumn;
    GridDBTableView1DBColumn4: TcxGridDBColumn;
    GridDBTableView1DBColumn5: TcxGridDBColumn;
    GridDBTableView1DBColumn6: TcxGridDBColumn;
    GridDBTableView1DBColumn7: TcxGridDBColumn;
    bImprimir: TcxButton;
    spVentasXProductos: TADOStoredProc;
    spVentasXProductosId: TGuidField;
    spVentasXProductosDesde: TDateTimeField;
    spVentasXProductosHasta: TDateTimeField;
    spVentasXProductosidCliente: TIntegerField;
    spVentasXProductosCliente: TStringField;
    spVentasXProductosfecha: TDateTimeField;
    spVentasXProductosfactura: TStringField;
    spVentasXProductosreferencia: TStringField;
    spVentasXProductosCompFiscal: TStringField;
    spVentasXProductosMoneda: TStringField;
    spVentasXProductosidProducto: TStringField;
    spVentasXProductosProducto: TStringField;
    spVentasXProductoscantidad: TFloatField;
    spVentasXProductosDescuento: TBCDField;
    spVentasXProductosItbis: TBCDField;
    spVentasXProductosPrecio: TBCDField;
    spVentasXProductosLineTotal: TBCDField;
    spVentasXProductosTotalValor: TBCDField;
    spVentasXProductosAlmacen: TStringField;
    dsVentasXProductos: TDataSource;
    plVentasXProductos: TppDBPipeline;
    rptVentasXProductos: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppShape1: TppShape;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine1: TppLine;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLine2: TppLine;
    ppLabel15: TppLabel;
    ppDBText16: TppDBText;
    spVentasXProductosTotal: TBCDField;
    spVentasPorProductosAlmacen: TStringField;
    GridDBTableView1DBColumn8: TcxGridDBColumn;
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VentasPorProductos: TVentasPorProductos;

implementation

uses Udata;

{$R *.dfm}

procedure TVentasPorProductos.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TVentasPorProductos.FormCreate(Sender: TObject);
begin
  inherited;
  dtpDesde.Date := Date;
  dtpHasta.Date := Date;
  
end;

procedure TVentasPorProductos.cxButton1Click(Sender: TObject);
begin
  inherited;
  With spVentasPorProductos, Parameters Do
  Begin
    Close();
    ParamByName('@Desde').Value := dtpDesde.Date;
    ParamByName('@Hasta').Value := dtpHasta.Date;

    Open();
  End;
end;

procedure TVentasPorProductos.cxButton3Click(Sender: TObject);
begin
  inherited;
  if openfile.execute then
    ExportGrid4ToExcel(openfile.filename, Grid);
end;

procedure TVentasPorProductos.bImprimirClick(Sender: TObject);
begin
  inherited;
  With spVentasXProductos, Parameters Do
  Begin
    Close();
    ParamByName('@Desde').Value := dtpDesde.Date;
    ParamByName('@Hasta').Value := dtpHasta.Date;
    Open();

    Imprimir(rptVentasXProductos);
  End;
end;

end.

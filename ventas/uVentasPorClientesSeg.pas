unit uVentasPorClientesSeg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformx, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, ppDB,
  ppDBPipe, ppCtrls, ppBands, ppClass, ppVar, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ADODB, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, StdCtrls, cxButtons, Gradient, cxExportGrid4Link,
  ppParameter;

type
  TVentasPorClienteSeg = class(TFFormx)
    Gradient1: TGradient;
    Gradient2: TGradient;
    Label2: TLabel;
    cxButton1: TcxButton;
    Label4: TLabel;
    Label1: TLabel;
    dtpDesde: TcxDateEdit;
    dtpHasta: TcxDateEdit;
    Grid: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    Gradient3: TGradient;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    spVentasxClientesSeg: TADODataSet;
    spVentasxClientesSegDesde: TDateTimeField;
    spVentasxClientesSegHasta: TDateTimeField;
    spVentasxClientesSegidCliente: TIntegerField;
    spVentasxClientesSegCliente: TStringField;
    spVentasxClientesSegidProducto: TStringField;
    spVentasxClientesSegProducto: TStringField;
    spVentasxClientesSegTotalCant: TFloatField;
    spVentasxClientesSegTotalValor: TBCDField;
    spVentasxClientesSegfecha: TDateTimeField;
    spVentasxClientesSegfactura: TStringField;
    spVentasxClientesSegreferencia: TStringField;
    spVentasxClientesSegPrecio: TBCDField;
    dsVentasporCliente: TDataSource;
    RPTVentasporCliente: TppReport;
    ppTitleBand5: TppTitleBand;
    ppHeaderBand5: TppHeaderBand;
    ppLine14: TppLine;
    ppLabel63: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppLabel68: TppLabel;
    ppDBText58: TppDBText;
    ppLabel69: TppLabel;
    ppDBText59: TppDBText;
    ppDetailBand5: TppDetailBand;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText10: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppLine17: TppLine;
    ppSystemVariable10: TppSystemVariable;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppShape2: TppShape;
    ppLine16: TppLine;
    ppLine15: TppLine;
    ppDBText53: TppDBText;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppDBText60: TppDBText;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel11: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBCalc10: TppDBCalc;
    ppLine18: TppLine;
    ppLabel74: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel73: TppLabel;
    ppDBCalc2: TppDBCalc;
    plVentasporCliente: TppDBPipeline;
    Label3: TLabel;
    Label5: TLabel;
    edtIdCliente: TcxTextEdit;
    edtProducto: TcxTextEdit;
    spVentasxClientesSegGrupo: TStringField;
    spVentasxClientesSegCategoria: TStringField;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    GridDBTableView1Desde: TcxGridDBColumn;
    GridDBTableView1Hasta: TcxGridDBColumn;
    GridDBTableView1idCliente: TcxGridDBColumn;
    GridDBTableView1Cliente: TcxGridDBColumn;
    GridDBTableView1idProducto: TcxGridDBColumn;
    GridDBTableView1Producto: TcxGridDBColumn;
    GridDBTableView1TotalCant: TcxGridDBColumn;
    GridDBTableView1TotalValor: TcxGridDBColumn;
    GridDBTableView1fecha: TcxGridDBColumn;
    GridDBTableView1factura: TcxGridDBColumn;
    GridDBTableView1referencia: TcxGridDBColumn;
    GridDBTableView1Precio: TcxGridDBColumn;
    GridDBTableView1Grupo: TcxGridDBColumn;
    GridDBTableView1Categoria: TcxGridDBColumn;
    cxButton4: TcxButton;
    OpenFile: TOpenDialog;
    spVentasxClientesSegId: TGuidField;
    spVentasxClientesSegVendedor: TStringField;
    GridDBTableView1Vendedor: TcxGridDBColumn;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VentasPorClienteSeg: TVentasPorClienteSeg;

implementation

uses Udata, UUtiles;

{$R *.dfm}

procedure TVentasPorClienteSeg.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TVentasPorClienteSeg.cxButton4Click(Sender: TObject);
begin
  inherited;
  If spVentasxClientesSeg.Active Then
    Imprimir(RptVentasporCliente);
end;

procedure TVentasPorClienteSeg.cxButton1Click(Sender: TObject);
begin
  inherited;
  With spVentasxClientesSeg, Parameters Do
  Begin
    Close;    
    Parameters[1].Value := SaveStrToInt(edtIdCliente.Text);
    Parameters[2].Value := dtpDesde.date;
    Parameters[3].Value := dtpHasta.date;
    if edtProducto.text = '' then
      Parameters[4].Value := Null
    else
      Parameters[4].Value := edtProducto.Text;

    Open();  
  End;
end;

procedure TVentasPorClienteSeg.cxButton3Click(Sender: TObject);
begin
  inherited;
  if openfile.execute then
    ExportGrid4ToExcel(openfile.filename, Grid);

end;

procedure TVentasPorClienteSeg.FormCreate(Sender: TObject);
begin
  inherited;
  dtpDesde.Date := Date - 30;
  dtpHasta.Date := Date;
end;

end.

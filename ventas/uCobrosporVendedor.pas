unit uCobrosporVendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLookAndFeelPainters,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ADODB,
  StdCtrls, cxButtons, cxContainer, cxTextEdit, cxMaskEdit, cxCalendar,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, Wwdatsrc, cxExportGrid4Link;

type
  TCobrosporVendedor = class(TFForm)
    Grid: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    GridDBTableView1id: TcxGridDBColumn;
    GridDBTableView1Vendedor: TcxGridDBColumn;
    GridDBTableView1fecha: TcxGridDBColumn;
    GridDBTableView1Pago: TcxGridDBColumn;
    GridDBTableView1Valor: TcxGridDBColumn;
    GridDBTableView1Tasa: TcxGridDBColumn;
    GridDBTableView1Moneda: TcxGridDBColumn;
    GridDBTableView1FechaApli: TcxGridDBColumn;
    GridDBTableView1factura: TcxGridDBColumn;
    GridDBTableView1cliente: TcxGridDBColumn;
    GridDBTableView1FechaFact: TcxGridDBColumn;
    GridDBTableView1Aplicado: TcxGridDBColumn;
    GridDBTableView1Pagado: TcxGridDBColumn;
    GridLevel1: TcxGridLevel;
    Label1: TLabel;
    Label2: TLabel;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    RS: TADODataSet;
    RSid: TGuidField;
    RSVendedor: TStringField;
    RSfecha: TDateTimeField;
    RSPago: TStringField;
    RSValor: TBCDField;
    RSTasa: TBCDField;
    RSMoneda: TStringField;
    RSFechaApli: TDateTimeField;
    RSfactura: TStringField;
    RScliente: TStringField;
    RSFechaFact: TDateTimeField;
    RSAplicado: TBCDField;
    RSPagado: TBCDField;
    OpenFile: TOpenDialog;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxButton2: TcxButton;
    cxButton5: TcxButton;
    Empleado: TADODataSet;
    EmpleadoidEmpleado: TIntegerField;
    EmpleadoEmpleado: TStringField;
    dsEmpleado: TDataSource;
    Label18: TLabel;
    lkEmpleado: TcxLookupComboBox;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CobrosporVendedor: TCobrosporVendedor;

implementation

uses Udata;

{$R *.dfm}

procedure TCobrosporVendedor.cxButton1Click(Sender: TObject);
begin
  inherited;
  rs.Close;
  rs.Parameters[1].Value := dedesde.date;
  rs.Parameters[2].Value := dehasta.date;
  rs.Parameters[3].Value := lkEmpleado.EditValue;
  rs.Open;
end;

procedure TCobrosporVendedor.cxButton4Click(Sender: TObject);
begin
  inherited;
  if openfile.execute then ExportGrid4ToExcel(openfile.filename, Grid);
end;

procedure TCobrosporVendedor.cxButton2Click(Sender: TObject);
begin
  inherited;
  GridDBTableView1.DataController.Groups.FullExpand;
end;

procedure TCobrosporVendedor.cxButton5Click(Sender: TObject);
begin
  inherited;
  GridDBTableView1.DataController.Groups.FullCollapse;
end;

procedure TCobrosporVendedor.FormCreate(Sender: TObject);
begin
  inherited;
  Empleado.open;
  deDesde.Date := dm.FechaDesde;
  deHasta.Date := dm.FechaHasta;
end;

procedure TCobrosporVendedor.cxButton3Click(Sender: TObject);
begin
  inherited;
  close;
end;

end.

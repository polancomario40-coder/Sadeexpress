unit uDevolucionList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, ppBands, ppClass, ppCtrls, myChkBox, ppVar, ppPrnabl,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, ADODB,
  Wwdatsrc, cxCheckBox, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxButtons, cxExportGrid4Link,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxExEdtr, dxCntner,
  dxTL, dxDBCtrl, dxDBGrid, uformx, dxDBTLCl, dxGrClms, cxCurrencyEdit,
  ppParameter;

type
  TDevolucionList = class(TFFormx)
    Devoluciones: TADODataSet;
    dsDevolucionList: TDataSource;
    RPTDevolucionList: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppDBText175: TppDBText;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    ppLabel10: TppLabel;
    ppLabel155: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText154: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    ppSystemVariable2: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppShape14: TppShape;
    ppLabel15: TppLabel;
    ppLine3: TppLine;
    Label1: TLabel;
    Label2: TLabel;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    Cancelado: TcxCheckBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    plDevolucionList: TppDBPipeline;
    DevolucionesidDevolucion: TGuidField;
    DevolucionesDevolucion: TStringField;
    DevolucionesidCliente: TIntegerField;
    DevolucionesCliente: TStringField;
    DevolucionesFecha: TDateTimeField;
    DevolucionesConcepto: TStringField;
    DevolucionesidProMov: TGuidField;
    DevolucionesDevUsuario: TStringField;
    DevolucionesSubTotal: TBCDField;
    DevolucionesItbis: TBCDField;
    DevolucionesDescuento: TBCDField;
    DevolucionesTotal: TBCDField;
    DevolucionesCancelado: TBooleanField;
    DevolucionesFechaCancelado: TDateTimeField;
    DevolucionesTasa: TBCDField;
    DevolucionesidDevolucionDet: TGuidField;
    DevolucionesidProducto: TStringField;
    DevolucionesProducto: TStringField;
    DevolucionesDevCantidad: TFloatField;
    DevolucionesDevDescuento: TBCDField;
    DevolucionesDevItbis: TBCDField;
    DevolucionesDevLineTotal: TBCDField;
    DevolucionesFactura: TStringField;
    Devolucionesusuario: TStringField;
    DevolucionesidEmpleado: TIntegerField;
    DevolucionesEmpleado: TStringField;
    DevolucionesidMoneda: TIntegerField;
    DevolucionesMoneda: TStringField;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppDBText10: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel12: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel17: TppLabel;
    ppLine4: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBText14: TppDBText;
    ppLabel16: TppLabel;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppDBCalc4: TppDBCalc;
    ppLabel18: TppLabel;
    cxButton4: TcxButton;
    OpenFile: TOpenDialog;
    DevolucionesFechaFact: TDateTimeField;
    DevolucionesDevTotal: TBCDField;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1idDevolucion: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Devolucion: TcxGridDBColumn;
    cxGrid1DBTableView1idCliente: TcxGridDBColumn;
    cxGrid1DBTableView1FechaFact: TcxGridDBColumn;
    cxGrid1DBTableView1Factura: TcxGridDBColumn;
    cxGrid1DBTableView1idProducto: TcxGridDBColumn;
    cxGrid1DBTableView1Producto: TcxGridDBColumn;
    cxGrid1DBTableView1Cliente: TcxGridDBColumn;
    cxGrid1DBTableView1Usuario: TcxGridDBColumn;
    cxGrid1DBTableView1DevCantidad: TcxGridDBColumn;
    cxGrid1DBTableView1idDevolucionDet: TcxGridDBColumn;
    cxGrid1DBTableView1DevDescuento: TcxGridDBColumn;
    cxGrid1DBTableView1DevItbis: TcxGridDBColumn;
    cxGrid1DBTableView1DevLineTotal: TcxGridDBColumn;
    cxGrid1DBTableView1CodVendedor: TcxGridDBColumn;
    cxGrid1DBTableView1Empleado: TcxGridDBColumn;
    cxGrid1DBTableView1Cancelado: TcxGridDBColumn;
    cxGrid1DBTableView1FechaCancelado: TcxGridDBColumn;
    cxGrid1DBTableView1Moneda: TcxGridDBColumn;
    ppDBText15: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DevolucionList: TDevolucionList;

implementation

uses Udata, uDevolucion, UUtiles;

{$R *.dfm}

procedure TDevolucionList.cxButton2Click(Sender: TObject);
begin
  inherited;
  Imprimir(RPTDevolucionList);
end;

procedure TDevolucionList.cxButton3Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TDevolucionList.FormCreate(Sender: TObject);
begin
  inherited;
  deDesde.Date := dm.FechaDesde;
  deHasta.Date := dm.FechaHasta;
end;

procedure TDevolucionList.cxButton1Click(Sender: TObject);
begin
  inherited;
  Devoluciones.Close;
  Devoluciones.Parameters[1].value := deDesde.Date;
  Devoluciones.Parameters[2].value := deHasta.Date;
  Devoluciones.Parameters[3].value := Cancelado.Checked;
  Devoluciones.Open;
end;

procedure TDevolucionList.cxButton4Click(Sender: TObject);
begin
  inherited;
  if openfile.execute then
    ExportGrid4ToExcel(openfile.FileName, cxGrid1);
end;

procedure TDevolucionList.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  ModalShow(TDevolucion, ShowFind, DevolucionesidDevolucion.Value ,'idDevolucion', true);
  AHandled := True;
end;

end.

unit uCotizacionList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, ppBands, ppClass, ppCtrls, myChkBox, ppVar, ppPrnabl,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, ADODB,
  Wwdatsrc, cxCheckBox, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxButtons,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxExEdtr, dxCntner,
  dxTL, dxDBCtrl, dxDBGrid, uformx, dxDBTLCl, dxGrClms, cxExportGrid4Link;

type
  TCotizacionList = class(TFFormx)
    Label1: TLabel;
    Label2: TLabel;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    OpenFile: TOpenDialog;
    Grid: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    CotizacionList: TADODataSet;
    dsCotizacionList: TDataSource;
    CotizacionListidCotizacion: TGuidField;
    CotizacionListCotizacion: TStringField;
    CotizacionListidCliente: TIntegerField;
    CotizacionListCliente: TStringField;
    CotizacionListFecha: TDateTimeField;
    CotizacionListReferencia: TStringField;
    CotizacionListItbis: TBCDField;
    CotizacionListDescuento: TBCDField;
    CotizacionListTotal: TBCDField;
    CotizacionListUsuario: TStringField;
    CotizacionListCondicion: TIntegerField;
    CotizacionListCredito: TBooleanField;
    CotizacionListidCondicion: TStringField;
    CotizacionListidEmpleado: TIntegerField;
    CotizacionListEmpleado: TStringField;
    CotizacionListidMoneda: TIntegerField;
    CotizacionListMoneda: TStringField;
    CotizacionListStatus: TStringField;
    GridDBTableView1idCotizacion: TcxGridDBColumn;
    GridDBTableView1Cotizacion: TcxGridDBColumn;
    GridDBTableView1Cliente: TcxGridDBColumn;
    GridDBTableView1Fecha: TcxGridDBColumn;
    GridDBTableView1Referencia: TcxGridDBColumn;
    GridDBTableView1Itbis: TcxGridDBColumn;
    GridDBTableView1Descuento: TcxGridDBColumn;
    GridDBTableView1Total: TcxGridDBColumn;
    GridDBTableView1Usuario: TcxGridDBColumn;
    GridDBTableView1Condicion: TcxGridDBColumn;
    GridDBTableView1Credito: TcxGridDBColumn;
    GridDBTableView1idCondicion: TcxGridDBColumn;
    GridDBTableView1idEmpleado: TcxGridDBColumn;
    GridDBTableView1Empleado: TcxGridDBColumn;
    GridDBTableView1Moneda: TcxGridDBColumn;
    GridDBTableView1Status: TcxGridDBColumn;
    CotizacionListDetalle: TMemoField;
    GridDBTableView1DBColumn1: TcxGridDBColumn;
    procedure cxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure GridDBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CotizacionList: TCotizacionList;

implementation

uses Udata, UUtiles, uCotizacion;

{$R *.dfm}

procedure TCotizacionList.cxButton3Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TCotizacionList.FormCreate(Sender: TObject);
begin
  inherited;
  deDesde.Date := dm.FechaDesde;
  deHasta.Date := dm.FechaHasta;
end;

procedure TCotizacionList.cxButton1Click(Sender: TObject);
begin
  inherited;
  CotizacionList.Close;
  CotizacionList.Parameters[1].value := deDesde.Date;
  CotizacionList.Parameters[2].value := deHasta.Date;
  CotizacionList.Open;
end;

procedure TCotizacionList.cxButton4Click(Sender: TObject);
begin
  inherited;
  if openfile.execute then ExportGrid4ToExcel(openfile.filename, Grid);
end;

procedure TCotizacionList.GridDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  ModalShow(TCotizacion, ShowFind, CotizacionListidCotizacion.Value ,'idCotizacion', true);
end;

end.

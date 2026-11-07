unit uInvMovimientoProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, ADODB, StdCtrls, Buttons, dxCntner, dateutils,
  dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, dxTL, dxDBCtrl, dxDBGrid, dxEdLib,
  ppVar, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppProd,
  ppReport, ppComm, ppRelatv, ppDBPipe, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, dxDBTLCl,
  dxGrClms, kbmMemTable, ppParameter;

type
  TInvMovimientoProd = class(TFForm)
    Label1: TLabel;
    Almacen: TADODataSet;
    AlmacenAlmacen: TStringField;
    luAlm: TdxLookupEdit;
    BitBtn1: TBitBtn;
    rsMovimiento: TADODataSet;
    Grid: TdxDBGrid;
    Desde: TdxDateEdit;
    Label5: TLabel;
    Report: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLine2: TppLine;
    BitBtn2: TBitBtn;
    ppShape1: TppShape;
    AlmacenidAlmacen: TStringField;
    Label6: TLabel;
    Hasta: TdxDateEdit;
    Producto: TdxEdit;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Movimientos: TkbmMemTable;
    dsMovimientos: TDataSource;
    GrididProMov: TdxDBGridColumn;
    GridProMov: TdxDBGridMaskColumn;
    GridReferencia: TdxDBGridMaskColumn;
    GridFecha: TdxDBGridDateColumn;
    GridisAlmacen: TdxDBGridMaskColumn;
    GrididProMovDet: TdxDBGridColumn;
    GrididProducto: TdxDBGridMaskColumn;
    GridCosto: TdxDBGridCurrencyColumn;
    GridEntradas: TdxDBGridMaskColumn;
    GridSalidas: TdxDBGridCurrencyColumn;
    GridBalance: TdxDBGridCurrencyColumn;
    rsMovimientoidProMov: TGuidField;
    rsMovimientoProMov: TStringField;
    rsMovimientoReferencia: TStringField;
    rsMovimientoFecha: TDateTimeField;
    rsMovimientoidProMovDet: TGuidField;
    rsMovimientoidProducto: TStringField;
    rsMovimientoCosto: TBCDField;
    rsMovimientoEntradas: TFloatField;
    rsMovimientoSalidas: TBCDField;
    rsMovimientoBalance: TBCDField;
    rsMovimientoidAlmacen: TStringField;
    rsMovimientoDesde: TDateTimeField;
    rsMovimientoHasta: TDateTimeField;
    rsMovimientoProducto: TStringField;
    MovimientosDesde: TDateTimeField;
    MovimientosHasta: TDateTimeField;
    MovimientosidProMov: TGuidField;
    MovimientosProMov: TStringField;
    MovimientosReferencia: TStringField;
    MovimientosFecha: TDateTimeField;
    MovimientosidAlmacen: TStringField;
    MovimientosidProMovDet: TGuidField;
    MovimientosidProducto: TStringField;
    MovimientosProducto: TStringField;
    MovimientosCosto: TBCDField;
    MovimientosEntradas: TFloatField;
    MovimientosSalidas: TBCDField;
    MovimientosBalance: TBCDField;
    plMovimiento: TppDBPipeline;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText10: TppDBText;
    ppLabel3: TppLabel;
    ppDBText11: TppDBText;
    ppLabel4: TppLabel;
    ppDBText12: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppShape2: TppShape;
    rsMovimientoPromovTipo: TStringField;
    MovimientosPromovTipo: TStringField;
    GridColumn12: TdxDBGridMaskColumn;
    ppLabel13: TppLabel;
    ppDBText13: TppDBText;
    rsMovimientoxCosto: TBCDField;
    rsMovimientoxCantidad: TBCDField;
    MovimientosxCosto: TBCDField;
    MovimientosxCantidad: TBCDField;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    MovimientosSuplidor: TStringField;
    rsMovimientoSalida: TBooleanField;
    rsMovimientoSuplidor: TStringField;
    GridColumn13: TdxDBGridColumn;
    BitBtn3: TBitBtn;
    fd: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppShape1Print(Sender: TObject);
    procedure DesdeChange(Sender: TObject);
    procedure HastaChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    procedure CalcularBalance;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InvMovimientoProd: TInvMovimientoProd;

implementation

uses Udata, uBusqueda, UUtiles, uProMov, uProductoFindDX;

{$R *.dfm}

procedure TInvMovimientoProd.FormCreate(Sender: TObject);
begin
  inherited;
  movimientos.Close;
  rsMovimiento.close;
  Desde.date := dm.FechaDesde;
  Hasta.date := dm.FechaHasta;
  Almacen.Open();
  luAlm.LookupKeyValue := dm.GetDefaultStr('ALMACENDEFAULT');
end;

procedure TInvMovimientoProd.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if (producto.Text = '') or (lualm.LookupKeyValue = Null) then
    raise exception.create('Seleccione un producto y un almacen');

  Movimientos.Close;

  with rsMovimiento do begin
    Close();
    Parameters[1].Value := Desde.date;
    Parameters[2].Value := Hasta.date;
    Parameters[3].Value := Producto.text;
    Parameters[4].Value := lualm.LookupKeyValue;
    Open();

    Movimientos.LoadFromDataSet(rsMovimiento, []);
    CalcularBalance();
  end;
end;

procedure TInvMovimientoProd.CalcularBalance;
var
  Balance : double;
begin
  inherited;
  movimientos.disablecontrols;
  try
    Balance := 0.00;
    Movimientos.first;
    While not(movimientos.eof) do begin
      Balance := Balance + movimientosentradas.AsFloat - movimientossalidas.asfloat;
      movimientos.edit;
      movimientosBalance.value := Balance;
      movimientos.post;
      movimientos.next;
    end;
   finally
      movimientos.enablecontrols;
   end;
end;


procedure TInvMovimientoProd.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Imprimir(Report);
end;

procedure TInvMovimientoProd.ppShape1Print(Sender: TObject);
begin
  inherited;
  ppShape1.Visible := not ppShape1.Visible;
end;

procedure TInvMovimientoProd.DesdeChange(Sender: TObject);
begin
  inherited;
  dm.fechadesde := desde.Date;
end;

procedure TInvMovimientoProd.HastaChange(Sender: TObject);
begin
  inherited;
  dm.fechahasta := hasta.Date;
end;

procedure TInvMovimientoProd.SpeedButton1Click(Sender: TObject);
var
  x : variant;
begin
  inherited;
  x := fbuscar(TProductofindDX,'idProducto');
  if x <> null then
    producto.text := x
  else
    producto.clear;
end;

procedure TInvMovimientoProd.GridDblClick(Sender: TObject);
begin
  inherited;
  if not(MovimientosidPromov.isnull) then
    ModalShow(TProMov, ShowFind, MovimientosidPromov.Value, 'idProMov', true);
end;

procedure TInvMovimientoProd.BitBtn3Click(Sender: TObject);
begin
  inherited;
  if (fd.Execute()) then
    Grid.SaveToXLS(fd.FileName,True);
end;

end.

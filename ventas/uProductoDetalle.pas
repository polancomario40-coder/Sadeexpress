unit uProductoDetalle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxButtonEdit, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, ExtCtrls, ADODB,
  cxLookAndFeelPainters, cxCheckBox, cxDBEdit, StdCtrls, cxButtons, cxMemo,
  cxImage, cxPC, ComCtrls;

type
  TProductoDetalle = class(TFForm)
    RS: TADODataSet;
    RSidProducto: TStringField;
    RSProducto: TStringField;
    RSExistencia: TFloatField;
    RSCostoPromedio: TFloatField;
    RSInactivo: TBooleanField;
    RSidUnidad: TStringField;
    RSMinimo: TFloatField;
    RSReorden: TFloatField;
    RSMaximo: TFloatField;
    RSPrecioContado: TBCDField;
    RSPrecioCredito: TBCDField;
    RSporciento: TFloatField;
    RSDescuento: TFloatField;
    RSExistenciaNeg: TBooleanField;
    fecha: TcxDateEdit;
    idProducto: TcxButtonEdit;
    RSid: TGuidField;
    RSAlmacen: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    RSgrupo: TStringField;
    RSLinea: TStringField;
    RSInventario: TStringField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    edPrecioCO: TcxDBTextEdit;
    edPrecioCR: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxDBImage1: TcxDBImage;
    RSFoto: TBlobField;
    cxDBImage2: TcxDBImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1Existencia: TcxGridDBColumn;
    cxGrid1DBTableView1CostoPromedio: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    UltEntradas: TADODataSet;
    UltEntradasKeyField: TGuidField;
    UltEntradasidProducto: TStringField;
    UltEntradasFecha: TDateTimeField;
    UltEntradasSuplidor: TStringField;
    UltEntradasCosto: TBCDField;
    UltEntradasCantidad: TBCDField;
    dsUltEntradas: TDataSource;
    cxGridDBTableView1KeyField: TcxGridDBColumn;
    cxGridDBTableView1idProducto: TcxGridDBColumn;
    cxGridDBTableView1Fecha: TcxGridDBColumn;
    cxGridDBTableView1Suplidor: TcxGridDBColumn;
    cxGridDBTableView1Costo: TcxGridDBColumn;
    cxGridDBTableView1Cantidad: TcxGridDBColumn;
    cxGridDBTableView1COLUMN1: TcxGridDBColumn;
    UltEntradasUnitario: TBCDField;
    TabSheet3: TTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    Compras: TADODataSet;
    ComprasidProducto: TStringField;
    ComprasidSolicitudDet: TGuidField;
    ComprasSolicitud: TStringField;
    ComprasFecha: TDateTimeField;
    ComprasCantidad: TFloatField;
    ComprasUnidad: TStringField;
    ComprasOrden: TFloatField;
    ComprasRecibido: TFloatField;
    ComprasReservado: TFloatField;
    dscompras: TwwDataSource;
    cxGridDBTableView2idProducto: TcxGridDBColumn;
    cxGridDBTableView2idSolicitudDet: TcxGridDBColumn;
    cxGridDBTableView2Solicitud: TcxGridDBColumn;
    cxGridDBTableView2Fecha: TcxGridDBColumn;
    cxGridDBTableView2Cantidad: TcxGridDBColumn;
    cxGridDBTableView2Unidad: TcxGridDBColumn;
    cxGridDBTableView2Orden: TcxGridDBColumn;
    cxGridDBTableView2Recibido: TcxGridDBColumn;
    cxGridDBTableView2Reservado: TcxGridDBColumn;
    ComprasenSolicitado: TFloatField;
    ComprasBackOrder: TFloatField;
    cxGridDBTableView2DBColumn1: TcxGridDBColumn;
    cxGridDBTableView2DBColumn2: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure idProductoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure idProductoPropertiesChange(Sender: TObject);
  private
    //Fotos : string;
    function GetProduct: string;
    procedure GetUltEntradas;
    procedure GetCompras;
    procedure Mostrar;
    { Private declarations }
  public
    Procedure doShowState(); Override;
    { Public declarations }
  end;

var
  ProductoDetalle: TProductoDetalle;

implementation

uses Udata, uProductoFindDX, UUtiles;

{$R *.dfm}

procedure TProductoDetalle.FormCreate(Sender: TObject);
begin
  //Fotos := dm.GetDefaultStr('ProductosConFoto');
  fecha.Date := dm.FechaHoy;
  inherited;
  if not (dm.TienePermisoShow(pAprobar, Permisos))   then
  begin
  TabSheet2.Visible := False;
  cxGrid2.Visible := False;
  end;
end;

procedure TProductoDetalle.cxButton1Click(Sender: TObject);
begin
  inherited;
  Mostrar();
end;

procedure TProductoDetalle.Mostrar();
begin
  Rs.close;
  rs.Parameters[1].Value := idProducto.Text;
  rs.Parameters[2].Value := fecha.date;
  rs.open;
  GetUltEntradas();
  GetCompras();
   if not (dm.TienePermisoShow(pAprobar, Permisos))   then
  TabSheet2.Visible := False;

end;

procedure TProductoDetalle.GetUltEntradas;
begin
    UltEntradas.close;
    UltEntradas.Parameters[1].Value := idProducto.Text;
    UltEntradas.open;
end;

procedure TProductoDetalle.GetCompras;
begin
    Compras.close;
    Compras.Parameters[1].Value := idProducto.Text;
    Compras.open;
end;

procedure TProductoDetalle.doShowState;
begin
  inherited;
  if (xvalue <> NULL) then begin
    idProducto.Text := xvalue;

    Mostrar();
  end;
end;

function TProductoDetalle.GetProduct() : string;
var
  idprodres : variant;
begin
  inherited;

  idprodres := fbuscar(TProductofindDX,'idProducto');

  if idprodres <> Null then
    idProducto.text := idprodres;


end;


procedure TProductoDetalle.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TProductoDetalle.idProductoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  GetProduct();
end;

procedure TProductoDetalle.idProductoPropertiesChange(Sender: TObject);
begin
  inherited;
  rs.Close;
  Compras.close;
  UltEntradas.close;

end;

end.

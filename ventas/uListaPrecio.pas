unit uListaPrecio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, Grids, Wwdbigrd, Wwdbgrid, DB, ADODB, Wwdatsrc,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxDBLookupComboBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxExportGrid4Link, cxButtonEdit, cxCurrencyEdit, cxContainer,
  cxTextEdit, ExtCtrls, DBCtrls;

type
  TListaPrecio = class(TFForm)
    rsListaPrecio: TADODataSet;
    rsListaPrecioDet: TADODataSet;
    dsListaPrecio: TDataSource;
    dsListaPrecioDet: TDataSource;
    rsListaPrecioidListaPrecio: TStringField;
    rsListaPrecioListaPrecio: TStringField;
    rsListaPrecioDetidListaPrecio: TStringField;
    rsListaPrecioDetidProducto: TStringField;
    rsListaPrecioDetPrecioContado: TBCDField;
    rsListaPrecioDetPrecioCredito: TBCDField;
    Productos: TADODataSet;
    dsProductos: TDataSource;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    rsListaPrecioidMoneda: TIntegerField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1idListaPrecio: TcxGridDBColumn;
    cxGrid1DBTableView1ListaPrecio: TcxGridDBColumn;
    cxGrid1DBTableView1idMoneda: TcxGridDBColumn;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1idProducto: TcxGridDBColumn;
    cxGrid2DBTableView1PrecioContado: TcxGridDBColumn;
    cxGrid2DBTableView1PrecioCredito: TcxGridDBColumn;
    rsListaPrecioDetid: TGuidField;
    rsListaPrecioDetluProducto: TStringField;
    cxGrid2DBTableView1DBColumn1: TcxGridDBColumn;
    rsListaPrecioContadoPorc: TBCDField;
    rsListaPrecioCreditoPorc: TBCDField;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxButton5: TcxButton;
    OpenFile: TOpenDialog;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure rsListaPrecioDetNewRecord(DataSet: TDataSet);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure rsListaPrecioDetAfterPost(DataSet: TDataSet);
    procedure cxGrid2DBTableView1idProductoPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure rsListaPrecioDetBeforeInsert(DataSet: TDataSet);
  private
    Moneda : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ListaPrecio: TListaPrecio;

implementation

uses Udata, uProductoFindDX, UUtiles, uProducto;

{$R *.dfm}

procedure TListaPrecio.FormCreate(Sender: TObject);
begin
  inherited;
  TipoDoc := 'LISTAPRECIO';
  try
    Moneda := dm.GetDefault('MONEDA_ACTIVA');
  except
    Moneda := 1;
  end;
  Productos.Open;
  rsListaPrecio.open;
  rsListaPreciodet.Open;
end;

procedure TListaPrecio.rsListaPrecioDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  //rsListaPrecioDetidListaPrecio.Value := rsListaPrecioidListaPrecio.Value;
end;

procedure TListaPrecio.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TListaPrecio.cxButton1Click(Sender: TObject);
begin
  inherited;
  if not(rsListaPrecioDetidProducto.isnull) then
    ModalShow(TProducto, Showfind, rsListaPrecioDetidProducto.Value, 'idProducto', true);
end;

procedure TListaPrecio.cxButton3Click(Sender: TObject);
var
  x : variant;
begin
  inherited;
  rsListaPrecioDet.Insert;
    x := fbuscar(TProductoFindDX,'idProducto');
    if x <> Null then begin
      RSListaPrecioDet.Edit;
      RSListaPrecioDetidProducto.Value := x;
      //RSListaPrecioDet.Post;
    end;
end;

procedure TListaPrecio.rsListaPrecioDetAfterPost(DataSet: TDataSet);
begin
  inherited;
  CrearLog('Modificado');
end;

procedure TListaPrecio.cxGrid2DBTableView1idProductoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  x : variant;
begin
  inherited;
  x := fbuscar(TProductoFindDX,'idProducto');
  if x <> Null then begin
    RSListaPrecioDet.Edit;
    RSListaPrecioDetidProducto.Value := x;
  end;
end;

procedure TListaPrecio.cxButton5Click(Sender: TObject);
begin
  inherited;
  if openfile.execute then ExportGrid4ToExcel(openfile.filename, cxGrid2);
end;

procedure TListaPrecio.cxButton6Click(Sender: TObject);
begin
  inherited;
  rslistaprecio.Append;
  
end;

procedure TListaPrecio.rsListaPrecioDetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if rslistaprecio.State in dseditmodes then
    raise exception.create('Debe guardar la lista arriba antres de poner productos');
end;

end.

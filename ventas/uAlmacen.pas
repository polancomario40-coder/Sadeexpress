unit uAlmacen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformx, DB, Grids, Wwdbigrd, Wwdbgrid, ADODB, ComCtrls,
  StdCtrls, Buttons, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxDBLookupComboBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxButtonEdit,
  cxCheckBox, cxGridBandedTableView, cxGridDBBandedTableView;

type
  TAlmacen = class(TFFormx)
    Inventarios: TPageControl;
    TabSheet1: TTabSheet;
    Almacenes: TTabSheet;
    Inventario: TADODataSet;
    Linea: TADODataSet;
    Grupo: TADODataSet;
    wwDBGrid1: TwwDBGrid;
    InventarioidInventario: TStringField;
    InventarioInventario: TStringField;
    InventarioUidInventario: TGuidField;
    dsInventario: TDataSource;
    dsLinea: TDataSource;
    dsrupo: TDataSource;
    wwDBGrid2: TwwDBGrid;
    wwDBGrid3: TwwDBGrid;
    LineaidLinea: TStringField;
    LineaLinea: TStringField;
    LineaidInventario: TStringField;
    LineaUidLinea: TGuidField;
    almacen: TADODataSet;
    dsAlmacen: TDataSource;
    almacenidAlmacen: TStringField;
    almacenAlmacen: TStringField;
    almacenActivo: TBooleanField;
    BitBtn1: TBitBtn;
    GrupoidGrupo: TStringField;
    GrupoGrupo: TStringField;
    GrupoidLinea: TStringField;
    GrupoUidGrupo: TGuidField;
    GrupoDescuento: TFloatField;
    TabSheet2: TTabSheet;
    AlmacenLineaCC: TADODataSet;
    dsAlmacenLineaCC: TDataSource;
    AlmacenLineaCCidAlmacen: TStringField;
    AlmacenLineaCCidLinea: TStringField;
    AlmacenLineaCCidCuenta: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1idAlmacen: TcxGridDBColumn;
    cxGrid1DBTableView1idLinea: TcxGridDBColumn;
    cxGrid1DBTableView1idCuenta: TcxGridDBColumn;
    LineaAll: TADODataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    GuidField1: TGuidField;
    dsLineaAll: TDataSource;
    qryDescuentoXCantidad: TADOQuery;
    qryDescuentoXCantidadIdDescuentoXCantidad: TGuidField;
    qryDescuentoXCantidadIdGrupo: TStringField;
    qryDescuentoXCantidadDesde: TBCDField;
    qryDescuentoXCantidadHasta: TBCDField;
    qryDescuentoXCantidadDescuento: TBCDField;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dsDescuentoxCantidad: TDataSource;
    cxGridDBTableView1IdDescuentoXCantidad: TcxGridDBColumn;
    cxGridDBTableView1IdGrupo: TcxGridDBColumn;
    cxGridDBTableView1Desde: TcxGridDBColumn;
    cxGridDBTableView1Hasta: TcxGridDBColumn;
    cxGridDBTableView1Descuento: TcxGridDBColumn;
    GrupoDescNivel1: TFloatField;
    GrupoDescNivel2: TFloatField;
    GrupoDescNivel3: TFloatField;
    almacenContadorEntradas: TStringField;
    almacenContadorSalidas: TStringField;
    InsertarContador: TADOCommand;
    cxGrid3: TcxGrid;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3DBBandedTableView1idAlmacen: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Almacen: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Activo: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1ContadorEntradas: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1ContadorSalidas: TcxGridDBBandedColumn;
    procedure GrupoDescuentoValidate(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure AlmacenLineaCCidCuentaValidate(Sender: TField);
    procedure cxGrid1DBTableView1idCuentaPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure qryDescuentoXCantidadNewRecord(DataSet: TDataSet);
    procedure almacenidAlmacenValidate(Sender: TField);
    procedure almacenAfterPost(DataSet: TDataSet);
    procedure almacenNewRecord(DataSet: TDataSet);
  private
    procedure insertarcontadoralmacen;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Almacen: TAlmacen;

implementation

uses Udata, UUtiles, uBusqueda;

{$R *.dfm}

procedure TAlmacen.GrupoDescuentoValidate(Sender: TField);
begin
  inherited;
  if (sender.Ascurrency < 0) then
    raise exception.create('El Descuento Maximo no puede ser menor que cero (0)');

  if (sender.Ascurrency > 0) and (not(dm.Tienepermiso(PAprobar, Permisos, 'Descuento Maximo Grupo Prods', GrupoGrupo.Value))) then
    raise exception.Create('Usted no tiene permiso para asinar descuento');
end;

procedure TAlmacen.FormCreate(Sender: TObject);
begin
  inherited;
  inventario.Open;
  almacen.Open;
  linea.Open;
  Grupo.Open;
  qryDescuentoXCantidad.Open;
  AlmacenLineaCC.open;
  LineaAll.open;
end;

procedure TAlmacen.AlmacenLineaCCidCuentaValidate(Sender: TField);
var
  g : string;
begin
  inherited;
  dm.VerificarCuenta(sender.Value, g);
end;

procedure TAlmacen.cxGrid1DBTableView1idCuentaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  BuscarCuenta(AlmacenLineaCCidCuenta);
end;


procedure TAlmacen.qryDescuentoXCantidadNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryDescuentoXCantidadIdDescuentoXCantidad.AsGuid := dm.NewGuid;
end;

procedure TAlmacen.almacenidAlmacenValidate(Sender: TField);
begin
  inherited;
  if not(sender.IsNull) then begin
    almacencontadorentradas.Value := sender.Value;
    almacencontadorsalidas.Value := sender.value;
  end;
  
end;

procedure TAlmacen.almacenAfterPost(DataSet: TDataSet);
begin
  inherited;
  insertarcontadoralmacen();

end;

procedure TAlmacen.insertarcontadoralmacen;
begin
  inherited;
  insertarcontador.parameters[1].value := almacencontadorsalidas.value;
  insertarcontador.parameters[2].value := almacencontadorentradas.value;
  insertarcontador.Execute;
  if (insertarcontador.parameters[0].value = -1)  then
     showmessage('Algunos de los contadores especificados ya existen, se usaran los existentes');

  if (insertarcontador.parameters[0].value <> -1) and ((insertarcontador.parameters[0].value <> 0)) then
    raise exception.create('Error al crear los contadores, intentar otro nombre o llamar a soporte');


end;

procedure TAlmacen.almacenNewRecord(DataSet: TDataSet);
begin
  inherited;
  almacenactivo.Value := true;
end;

end.

unit uMantEncuesta;

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
  TMantEncuestas = class(TFFormx)
    Inventarios: TPageControl;
    TabSheet1: TTabSheet;
    Inventario: TADODataSet;
    Linea: TADODataSet;
    Grupo: TADODataSet;
    wwDBGrid1: TwwDBGrid;
    dsInventario: TDataSource;
    dsLinea: TDataSource;
    dsrupo: TDataSource;
    wwDBGrid2: TwwDBGrid;
    wwDBGrid3: TwwDBGrid;
    BitBtn1: TBitBtn;
    LineaAll: TADODataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    GuidField1: TGuidField;
    dsLineaAll: TDataSource;
    InventarioidEncuesta: TStringField;
    InventarioEncuesta: TStringField;
    LineaidPreguntas: TStringField;
    LineaidEncuesta: TStringField;
    LineaPreguntas: TStringField;
    GrupoidPreguntas: TStringField;
    GrupoidRespuestas: TStringField;
    GrupoRespuetas: TStringField;
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
  MantEncuestas: TMantEncuestas;

implementation

uses Udata, UUtiles, uBusqueda;

{$R *.dfm}

procedure TMantEncuestas.GrupoDescuentoValidate(Sender: TField);
begin
  inherited;
  if (sender.Ascurrency < 0) then
    raise exception.create('El Descuento Maximo no puede ser menor que cero (0)');

  if (sender.Ascurrency > 0) and (not(dm.Tienepermiso(PAprobar, Permisos, 'Descuento Maximo Grupo Prods', GrupoGrupo.Value))) then
    raise exception.Create('Usted no tiene permiso para asinar descuento');
end;

procedure TMantEncuestas.FormCreate(Sender: TObject);
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

procedure TMantEncuestas.AlmacenLineaCCidCuentaValidate(Sender: TField);
var
  g : string;
begin
  inherited;
  dm.VerificarCuenta(sender.Value, g);
end;

procedure TMantEncuestas.cxGrid1DBTableView1idCuentaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  BuscarCuenta(AlmacenLineaCCidCuenta);
end;


procedure TMantEncuestas.qryDescuentoXCantidadNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryDescuentoXCantidadIdDescuentoXCantidad.AsGuid := dm.NewGuid;
end;

procedure TMantEncuestas.almacenidAlmacenValidate(Sender: TField);
begin
  inherited;
  if not(sender.IsNull) then begin
    almacencontadorentradas.Value := sender.Value;
    almacencontadorsalidas.Value := sender.value;
  end;
  
end;

procedure TMantEncuestas.almacenAfterPost(DataSet: TDataSet);
begin
  inherited;
  insertarcontadoralmacen();

end;

procedure TMantEncuestas.insertarcontadoralmacen;
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

procedure TMantEncuestas.almacenNewRecord(DataSet: TDataSet);
begin
  inherited;
  almacenactivo.Value := true;
end;

end.

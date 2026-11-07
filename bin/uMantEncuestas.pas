unit uMantEncuestas;

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
    GrupoRespuestas: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MantEncuestas: TMantEncuestas;

implementation

uses Udata, UUtiles, uBusqueda;

{$R *.dfm}

procedure TMantEncuestas.FormCreate(Sender: TObject);
begin
  inherited;
  inventario.Open;
  linea.Open;
  Grupo.Open;
  LineaAll.open;
end;



end.

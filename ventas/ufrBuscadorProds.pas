unit ufrBuscadorProds;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCntner, dxEditor, dxEdLib, StdCtrls, DB, ADODB, dxExEdtr,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, cxLookAndFeelPainters,
  cxButtons, Buttons;

const
  COLOR_INACTIVO = clWindow;
  COLOR_ACTIVO = clInfoBk;

type
  TOnSelectItemEvent = procedure (const idProd: string) of object;

  TfrBuscadorProds = class(TFrame)
    rsLista: TADODataSet;
    Label1: TLabel;
    edBuscar: TdxEdit;
    StyleController: TdxEditStyleController;
    cbLookInside: TdxCheckEdit;
    grListaProds: TdxDBGrid;
    ds: TDataSource;
    dxDBGrid1ProductoID: TdxDBGridMaskColumn;
    dxDBGrid1Descripcion: TdxDBGridMaskColumn;
    dxDBGrid1CodigoFabricante: TdxDBGridMaskColumn;
    dxDBGrid1Referencia: TdxDBGridMaskColumn;
    dxDBGrid1Precio: TdxDBGridCurrencyColumn;
    rsListaidProducto: TStringField;
    rsListaProducto: TStringField;
    rsListaReferencia: TStringField;
    rsListaModelo: TStringField;
    rsListaPrecioCredito: TBCDField;
    rsListaPrecioContado: TBCDField;
    SpeedButton1: TSpeedButton;
    procedure edBuscarChange(Sender: TObject);
    procedure grListaProdsColumnClick(Sender: TObject;
      Column: TdxDBTreeListColumn);
    procedure grListaProdsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grListaProdsDblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    FCampo: string;
    FOnSelect: TOnSelectItemEvent;
    FCondiciones: Integer;
    procedure BuscarParcial(const fld,valr: string; const li: Boolean);
    procedure SetCondiciones(const Value: Integer);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure AgregarAFactura;
    property OnSelectItem: TOnSelectItemEvent read FOnSelect write FOnSelect;
    property Condiciones: Integer read FCondiciones write SetCondiciones;
  end;

implementation

uses Udata, UUtiles, uProductoDetalle;

{$R *.dfm}

{ TfrBuscadorProds }

procedure TfrBuscadorProds.AgregarAFactura;
begin
  if rsLista.Active and (not rsLista.IsEmpty) then begin
    if Assigned(FOnSelect) then
      FOnSelect(rsListaidProducto.AsString);
  end;
end;

procedure TfrBuscadorProds.BuscarParcial(const fld, valr: string;
  const li: Boolean);
var
  svlr: string;
begin
  svlr := StringReplace(valr,'''','''''',[rfReplaceAll]);
  with rsLista do begin
    Close();
    Parameters[1].Value := fld;
    Parameters[2].Value := svlr;
    Parameters[3].Value := li;
    try
      Open();
    except
      on e: Exception do begin
        ShowMessage('Error buscando productos' + #13 + e.Message);
      end;
    end;
  end;
end;

constructor TfrBuscadorProds.Create(AOwner: TComponent);
begin
  inherited;
  FCampo := 'Producto';
  FCondiciones := 0;
  BuscarParcial(FCampo,'',False)
end;

procedure TfrBuscadorProds.edBuscarChange(Sender: TObject);
begin
  BuscarParcial(FCampo,Trim(edBuscar.Text),cbLookInside.Checked);
end;

procedure TfrBuscadorProds.grListaProdsColumnClick(Sender: TObject;
  Column: TdxDBTreeListColumn);
begin
  if FCampo <> Column.FieldName then begin
    grListaProds.ColumnByFieldName(FCampo).Color := COLOR_INACTIVO;
    FCampo := Column.FieldName;
    Column.Color := COLOR_ACTIVO;
  end;
end;

procedure TfrBuscadorProds.grListaProdsKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_SPACE) or (Key = vk_F12) then begin
    Key := 0;
    AgregarAFactura();
  end;
end;

procedure TfrBuscadorProds.edBuscarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = vk_F12) then begin
    Key := 0;
    AgregarAFactura();
  end;
end;

procedure TfrBuscadorProds.SetCondiciones(const Value: Integer);
begin
  if Value <> FCondiciones then begin
    FCondiciones := Value;

    if FCondiciones > 0 then
      grListaProds.Columns[4].FieldName := 'PrecioCredito'
    else
      grListaProds.Columns[4].FieldName := 'PrecioContado';
  end;
end;

procedure TfrBuscadorProds.grListaProdsDblClick(Sender: TObject);
begin
  AgregarAFactura();
end;

procedure TfrBuscadorProds.SpeedButton1Click(Sender: TObject);
begin
  ModalShow(TproductoDetalle,showFind,rsListaidProducto.Value,'idproducto',True);
end;

end.

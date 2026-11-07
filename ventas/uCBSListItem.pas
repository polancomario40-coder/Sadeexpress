unit uCBSListItem;

interface

uses
  Windows, Classes;

type
  TCBSListItem = class
  private
    FPrecio: Currency;
    FCantidad: Single;
    FId: string;
    FDescripcion: string;
    function GetImporte: Currency;

  public
    property ID: string read FId write FId;
    property Descripcion: string read FDescripcion write FDescripcion;
    property Precio: Currency read FPrecio write FPrecio;
    property Cantidad: Single read FCantidad write FCantidad;
    property Importe: Currency read GetImporte;

    constructor Create; overload;
    constructor Create(const Aid: string; adescr: string = ''; const aprecio: Currency = 0; const aCant: single = 0); overload;
  end;

  TDetalleItems = class
  private
    FList: TList;
    function GetItem(index: Integer): TCBSListItem;
    procedure setItem(index: Integer; const Value: TCBSListItem);
    function GetCount: Integer;
    public
      procedure Add(itm: TCBSListItem);
      property Items[index: Integer]: TCBSListItem read GetItem write setItem;
      property Count: Integer read GetCount;
      constructor Create;
      destructor Destroy; override;
  end;


implementation

{ TListItems }

constructor TCBSListItem.Create;
begin
  Precio := 0;
  Cantidad := 0;
  ID := '';
  Descripcion := '';
end;

constructor TCBSListItem.Create(const Aid: string; adescr: string = '';
  const aprecio: Currency = 0; const aCant: single = 0);
begin
  Precio := aPrecio;
  Cantidad := aCant;
  ID := Aid;
  Descripcion := adescr;
end;

function TCBSListItem.GetImporte: Currency;
begin
  Result := Cantidad * Precio;
end;

{ TDetalleItems }

procedure TDetalleItems.Add(itm: TCBSListItem);
begin
  Flist.Add(itm);
end;

constructor TDetalleItems.Create;
begin
  FList := TList.Create();
end;

destructor TDetalleItems.Destroy;
begin
  while (FList.Count > 0) do begin
    TCBSListItem(Flist.Items[FList.Count - 1]).Free();
    FList.Delete(FList.Count - 1);
  end;
  FList.Free();
  inherited;
end;

function TDetalleItems.GetCount: Integer;
begin
  Result := FList.Count;
end;

function TDetalleItems.GetItem(index: Integer): TCBSListItem;
begin
  Result := TCBSListItem(FList.Items[index]);
end;

procedure TDetalleItems.setItem(index: Integer; const Value: TCBSListItem);
begin
  Flist.Items[index] := Value;
end;

end.

unit uDateRangeList;

interface

uses Classes, SysUtils, Variants;

type

  TDateRange = class
   private
     FDesde: TDateTime;
     FHasta: TDateTime;
    FColumna: Integer;
    FKeyValue: Variant;
    procedure SetDesde(const Value: TDateTime);
    procedure SetHasta(const Value: TDateTime);
   public
     property Desde: TDateTime read FDesde write SetDesde;
     property Hasta: TDateTime read FHasta write SetHasta;
     property Columna: Integer read FColumna write FColumna;
     property KeyValue: Variant read FKeyValue write FKeyValue;

     function Between(const fec: TDateTime): Boolean;

     constructor Create; overload;
     constructor Create(const adesde, ahasta: TDateTime; const aCol: Integer; const aKey: Variant); overload;
  end;

  TDateRangeList = class
    private
      FList: TList;
      function GetRangeItem(index: Integer): TDateRange;
      procedure SetRangeItem(index: Integer; const Value: TDateRange);  
    public
      function Add(range: TDateRange): Integer; overload;
      function Add(const desde,hasta: TDateTime; const col: Integer; const key: Variant): Integer; overload;
      function GetRangeColumn(const fec: TDateTime): Integer;

      property Items[index: Integer]: TDateRange read GetRangeItem write SetRangeItem;
      constructor Create;
      destructor Destroy; override;
      procedure Clear;

      function GetRange(const fec: TDateTime): TDateRange;
      function GetRangeKey(const fec: TDateTime): Variant;
      function GetRangeByKeyValue(const Key: Variant): TDateRange;
      function GetRangeByColumn(const col: Integer): TDateRange;
  end;
    
implementation

{ TDateRange }

function TDateRange.Between(const fec: TDateTime): Boolean;
begin
  Result := (fec >= Desde) and (fec <= Hasta);
end;

constructor TDateRange.Create;
begin
  Desde := 0;
  Hasta := 0;
  Columna := -1;
  KeyValue := null;
end;

constructor TDateRange.Create(const adesde, ahasta: TDateTime;
  const aCol: Integer; const aKey: Variant);
begin
  Desde := aDesde;
  Hasta := aHasta;
  Columna := aCol;
  KeyValue := aKey;
end;

procedure TDateRange.SetDesde(const Value: TDateTime);
begin
  FDesde := Value;
end;

procedure TDateRange.SetHasta(const Value: TDateTime);
begin
  FHasta := Value;
end;

{ TDateRangeList }

function TDateRangeList.Add(range: TDateRange): Integer;
begin
  Result := FList.Add(range);
end;

function TDateRangeList.Add(const desde, hasta: TDateTime;
  const col: Integer; const key: Variant): Integer;
begin
  Result := FList.Add(TDateRange.Create(desde,hasta,col, Key));
end;

constructor TDateRangeList.Create;
begin
  FList := TList.Create();
end;

destructor TDateRangeList.Destroy;
begin
  Flist.Free();

  inherited Destroy();
end;

function TDateRangeList.GetRangeColumn(const fec: TDateTime): Integer;
var
  j: Integer;
  range: TDateRange;
begin
  Result := -1;
  for j := 0 to Flist.Count - 1 do begin
    range := TDateRange(Flist[j]);
    if range.Between(fec) then begin
      Result := range.Columna;
      break;
    end;
  end;
end;

function TDateRangeList.GetRangeKey(const fec: TDateTime): Variant;
var
  j: Integer;
  range: TDateRange;
begin
  Result := NULL;
  for j := 0 to Flist.Count - 1 do begin
    range := TDateRange(Flist[j]);
    if range.Between(fec) then begin
      Result := range.KeyValue;
      break;
    end;
  end;
end;

function TDateRangeList.GetRange(const fec: TDateTime): TDateRange;
var
  j: Integer;
  range: TDateRange;
begin
  Result := nil;
  for j := 0 to Flist.Count - 1 do begin
    range := TDateRange(Flist[j]);
    if range.Between(fec) then begin
      Result := range;
      break;
    end;
  end;
end;

function TDateRangeList.GetRangeItem(index: Integer): TDateRange;
begin
  if (index < 0) and (index >= FList.Count) then
     raise Exception.Create('Error de indice fuera de rango');
  Result := TDateRange(Flist[index]);
end;

procedure TDateRangeList.Clear;
begin
   FList.Clear();
end;

procedure TDateRangeList.SetRangeItem(index: Integer;
  const Value: TDateRange);
begin
  if (index >= 0) and (index < FList.Count) then
    Flist[index] := value;
end;

function TDateRangeList.GetRangeByKeyValue(const Key: Variant): TDateRange;
var
  j: Integer;
  range: TDateRange;
begin
  Result := nil;
  for j := 0 to Flist.Count - 1 do begin
    range := TDateRange(Flist[j]);
    if range.KeyValue = Key then begin
      Result := range;
      break;
    end;
  end;
end;

function TDateRangeList.GetRangeByColumn(const col: Integer): TDateRange;
var
  j: Integer;
  range: TDateRange;
begin
  Result := nil;
  for j := 0 to Flist.Count - 1 do begin
    range := TDateRange(Flist[j]);
    if range.Columna = col then begin
      Result := range;
      break;
    end;
  end;
end;

end.

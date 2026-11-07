 unit ufrArbol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, Comctrls,DB, ADODB, ImgList, cxControls, cxContainer, cxTreeView;
  
type
  TTreeKey = class
  private
    FKey: Variant;
  public
    property Key: Variant read FKey write FKey;
    constructor Create(const id: Variant);
  end;

  TSelectedEvent = procedure (const Key: Variant) of object;

type
  TfrArbol = class(TFrame)
    Tree: TcxTreeView;
    ImageList1: TImageList;
    RS: TADODataSet;
    procedure TreeChange(Sender: TObject; Node: TTreeNode);
  private
    FOnSelectedChange: TSelectedEvent;
    FParentKeyField: string;
    FNameField: string;
    FKeyFieldName: string;
    function GetSelectedNode: TTreeKey;
    function FindById(const Key: Variant): TTreeNode;
    function GetKeyActual: Variant;
    procedure SetKeyActual(const Value: Variant);
    procedure SetCommandName(const Value: string);
    function GetCommandName: string;
    { Private declarations }
  public
    { Public declarations }
    procedure FillTree(const Param: Variant);
    procedure ClearTree;
    destructor Destroy; override;
    property OnSelectedChange: TSelectedEvent read FOnSelectedChange write FOnSelectedChange;
    property NodoActual: TTreeKey read GetSelectedNode;
    property ParentKeyField: string read FParentKeyField write FParentKeyField;
    property NameField: string read FNameField write FNameField;
    property KeyField: string read FKeyFieldName write FKeyFieldName;
    property KeyActual: Variant read GetKeyActual write SetKeyActual;
    property CommandName: string read GetCommandName write SetCommandName;
    constructor Create(Aowner: TComponent); override;
  end;

implementation

{$R *.dfm}

{ TfrArbol }

procedure TfrArbol.ClearTree;
var
  j: integer;
  key: TTreeKey;
begin
  for j := 0 to Tree.Items.Count - 1 do begin
    if Tree.Items[j].Data <> nil then begin
      Key := (Tree.Items[j].Data); // as TTreeKey);
      FreeAndNil(Key);
    end;
  end;
  Tree.Items.Clear();
end;

procedure TfrArbol.SetCommandName(const Value: string);
begin
  rs.CommandText := Value;
  rs.Parameters.Refresh();
end;

constructor TfrArbol.Create(Aowner: TComponent);
begin
  inherited;
  KeyField := 'Key';
  ParentKeyField := 'ParentKey';
  NameField := 'NameField';
end;

destructor TfrArbol.Destroy;
begin
  ClearTree();
  inherited;
end;

procedure TfrArbol.FillTree(const Param: Variant);
var
  //Key: TTreeKey;
  Node: TTreeNode;
  N: TTreeNode;
begin
  Tree.Items.BeginUpdate();
  try
    ClearTree();

    if (ParentKeyField = '') or (NameField = '') or (KeyField = '') then
      raise Exception.Create('Error creando arbol, defina los campos necesarios');

    with RS do begin
      if Param <> NULL then begin
        if Active then Close();
        Parameters[1].Value := Param;
      end;
      if not(Active) then Open();
      while not Eof do begin
        if rs.FieldByName(ParentKeyField).IsNull then begin
          N := Tree.Items.AddObject(nil, rs.FieldByName(NameField).Value, TTreeKey.Create(rs.FieldByName(KeyField).Value));
          N.ImageIndex := 2;
          N.SelectedIndex := 2;
        end
        else begin
          Node := FindByid(rs.FieldByName(ParentKeyField).Value);
          if Node <> nil then begin
            N := Tree.Items.AddChildObject(Node,rs.FieldByName(NameField).Value, TTreeKey.Create(rs.FieldByName(KeyField).Value));
            Node.ImageIndex := 1;
            Node.SelectedIndex := 0;
            N.ImageIndex := 2;
            N.SelectedIndex := 2;
          end;
        end;
        Next();
      end;
      //Close();
    end;
    Tree.FullCollapse();
  finally
    Tree.Items.EndUpdate();
  end;
end;

function TfrArbol.FindById(const Key: Variant): TTreeNode;
var
  j: Integer;
  akey: TTreeKey;
begin
  Result := nil;
  for j := 0 to Tree.Items.Count - 1 do begin
    if (Tree.Items[j].Data <> nil) then begin
      akey := TTreeKey(Tree.Items[j].Data);
      if akey.Key = Key then begin
        Result := Tree.Items[j];
        break;
      end;
    end;
  end;
end;

function TfrArbol.GetCommandName: string;
begin
  Result := rs.CommandText;
end;

function TfrArbol.GetKeyActual: Variant;
var
  aKey: TTreeKey;
begin
  aKey := NodoActual;
  if aKey <> nil then
    Result := aKey.Key
  else
    Result := NULL;
end;

function TfrArbol.GetSelectedNode: TTreeKey;
begin
  if Tree.Selected <> nil then
    Result := Tree.Selected.Data
  else
    Result := nil;
end;

procedure TfrArbol.SetKeyActual(const Value: Variant);
var
  Node: TTreeNode;
begin
  Node := FindById(Value);
  if Node <> nil then
    Node.Selected := True;
end;

procedure TfrArbol.TreeChange(Sender: TObject; Node: TTreeNode);
begin
  if Assigned(FOnSelectedChange) then begin
    if Node.Data = nil then
      FOnSelectedChange(NULL)
    else
      FOnSelectedChange(TTreeKey(Node.Data).Key);
  end;
end;

{ TTreeKey }

constructor TTreeKey.Create(const id: Variant);
begin
  Inherited Create();
  Key := id;
end;

end.

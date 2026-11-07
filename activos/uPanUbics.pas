unit uPanUbics;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ExtCtrls, cxControls, cxContainer, cxTreeView, ComCtrls,
  cxLookAndFeelPainters, StdCtrls, cxButtons, ImgList, dxExEdtr, dxCntner,
  dxTL, dxDBCtrl, dxDBTL;

type
  TUbicEvent = procedure (const idUbicacion: Integer) of object;

type
  TPanUbics = class(TFrame)
    cxTreeView1: TcxTreeView;
    Panel1: TPanel;
    rsUbics: TADODataSet;
    rsUbicsidUbicacion: TAutoIncField;
    rsUbicsidUbicMadre: TIntegerField;
    rsUbicsDescripcion: TStringField;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Images: TImageList;
    tlUbicacion: TdxDBTreeList;
    dsUbics: TDataSource;
    qryUbics: TADODataSet;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    dxDBTreeList1Column1: TdxDBTreeListColumn;
    procedure cxTreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxTreeView1GetImageIndex(Sender: TObject; Node: TTreeNode);
    procedure tlUbicacionChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
  private
    FOnCambioUbicacion: TUbicEvent;
    { Private declarations }
//    function BuscarNodo(const idUbic: Integer): TTreeNode;
    function GetUbicacion: Integer;
  protected
    procedure LoadData; virtual;
  public
    { Public declarations }
    constructor Create(Aowner: TComponent); override;
    procedure Refresh;
    property OnCambioUbicacion: TUbicEvent read FOnCambioUbicacion write FOnCambioUbicacion;
    property idUbicacion: Integer read GetUbicacion;
  end;

implementation

uses Udata, uMantUbicaciones, UUtiles;

{$R *.dfm}

{ TPanUbics }

{function TPanUbics.BuscarNodo(const idUbic: Integer): TTreeNode;
var
  j: Integer;
begin
  j := 0;
  while j < cxTreeView1.Items.Count do begin
    if Integer(cxTreeView1.Items[j].Data) = idUbic then
      Break
    else
      Inc(j);
  end;
  if j < cxTreeView1.Items.Count then
    Result := cxTreeView1.Items[j]
  else
    Result := nil;
end; }

constructor TPanUbics.Create(Aowner: TComponent);
begin
  inherited Create(Aowner);
  LoadData();
end;

function TPanUbics.GetUbicacion: Integer;
begin
  if cxTreeView1.Selected <> nil then
    Result := Integer(cxTreeView1.Selected.Data)
  else
    Result := -1;
end;

{procedure TPanUbics.LoadData;
var
  nodo: TTreeNode;
begin
  cxTreeView1.Items.BeginUpdate();
  cxTreeView1.Items.Clear();
  try
    with rsUbics do begin
      //Close();
      Open();
      try
        while not Eof do begin
          if rsUbicsidUbicMadre.AsInteger > 0 then begin
            nodo := BuscarNodo(rsUbicsidUbicMadre.AsInteger);
            if nodo <> nil then
              cxTreeView1.Items.AddChildObject(nodo, rsUbicsDescripcion.Asstring, Pointer(rsUbicsidUbicacion.AsInteger))
            else
              cxTreeView1.Items.AddObject(nil,rsUbicsDescripcion.Asstring, Pointer(rsUbicsidUbicacion.AsInteger));
          end
          else begin
            cxTreeView1.Items.AddObject(nil,rsUbicsDescripcion.Asstring, Pointer(rsUbicsidUbicacion.AsInteger));
          end;
          Next();
        end;
      finally
        Close();
      end;
    end;
  finally
    cxTreeView1.Items.EndUpdate();
  end;
end;}

procedure TPanUbics.LoadData;
begin
  if Assigned(FOnCambioUbicacion) then
     FOnCambioUbicacion(AutoIncField1.Value);
end;

procedure TPanUbics.cxTreeView1Change(Sender: TObject; Node: TTreeNode);
begin
  if Assigned(FOnCambioUbicacion) then
    FOnCambioUbicacion(IdUbicacion);
end;

procedure TPanUbics.cxButton1Click(Sender: TObject);
begin
  ModalShow(TMantUbicaciones, showInsert, '', '', True);
  LoadData();
  qryUbics.Requery();
end;

procedure TPanUbics.cxButton2Click(Sender: TObject);
var
  i: Integer;
begin
//  i := idUbicacion;
  i := AutoIncField1.Value;
  if i > 0 then begin
//    ModalShow(TMantUbicaciones, showEdit, idUbicacion, 'idUbicacion', True);
    ModalShow(TMantUbicaciones, showEdit, AutoIncField1.Value, 'idUbicacion', True);
    LoadData();
  end;
  qryUbics.Requery();
end;

procedure TPanUbics.cxTreeView1GetImageIndex(Sender: TObject;
  Node: TTreeNode);
begin
{  if Node.Selected then
    Node.ImageIndex := 0
  else
    Node.ImageIndex := 1;}
end;

procedure TPanUbics.Refresh;
begin
  inherited;
  LoadData();
  cxButton1.Enabled := dm.Tienepermiso(pAgregar,dm.apppermisos('MantUbicaciones'));
  cxButton2.Enabled := dm.Tienepermiso(pAbrir,dm.apppermisos('MantUbicaciones'));
end;

procedure TPanUbics.tlUbicacionChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
// jft
  if Assigned(FOnCambioUbicacion) then
     FOnCambioUbicacion(AutoIncField1.Value);
end;


end.

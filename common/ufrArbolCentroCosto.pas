 unit ufrArbolCentroCosto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, Comctrls,DB, ADODB, ImgList, cxControls, cxContainer, cxTreeView,
  dxExEdtr, dxTL, dxDBCtrl, dxCntner, dxDBTL, cxEdit, cxLabel, Gradient,
  ExtCtrls, kbmMemTable;

type
  TSelectedEvent = procedure (const Key: Variant) of object;

type
  TfrArbolCentroCosto = class(TFrame)
    ds: TDataSource;
    Panel1: TPanel;
    Gradient1: TGradient;
    cxLabel1: TcxLabel;
    dxDBTreeList1: TdxDBTreeList;
    dxDBTreeList1Descripcion: TdxDBTreeListMaskColumn;
    mCentros: TkbmMemTable;
    mCentrosKey: TGuidField;
    mCentrosNameField: TStringField;
    mCentrosParentKey: TGuidField;
    ImageList1: TImageList;

    mCentrosHighlited: TBooleanField;
    RS: TADODataSet;
  private
    FOnSelectedChange: TSelectedEvent;
    function GetKeyActual: Variant;
    procedure SetKeyActual(const Value: Variant);
    { Private declarations }
  public
    { Public declarations }
    procedure FillTree;
    property OnSelectedChange: TSelectedEvent read FOnSelectedChange write FOnSelectedChange;
    property KeyActual: Variant read GetKeyActual write SetKeyActual;
    constructor Create(Aowner: TComponent); override;
  end;

implementation

{$R *.dfm}

{ TfrArbol }

procedure TfrArbolCentroCosto.FillTree;
begin
  rs.Close();
//  rs.parameters[1].value := 'CentroCosto';
//  rs.parameters[2].Value := null;
//  rs.parameters[3].value := True;
  rs.Open();

  mCentros.Close();
  mCentros.Open();
  mcentros.LoadFromDataSet(rs,[mtcpoAppend]);
   showmessage(format('%d',[rs.RecordCount]));
end;

constructor TfrArbolCentroCosto.Create(Aowner: TComponent);
begin
  inherited;
  FillTree();
end;


function TfrArbolCentroCosto.GetKeyActual: Variant;
begin
  if rs.Active then
    Result := mCentrosKey.Value
  else
    Result := NULL;
end;

procedure TfrArbolCentroCosto.SetKeyActual(const Value: Variant);
begin
  mCentros.Locate('Key',Value,[]);
end;

end.

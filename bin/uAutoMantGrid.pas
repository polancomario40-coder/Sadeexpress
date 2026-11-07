unit uAutoMantGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DBActns, ActnList, ImgList, DB, ADODB, Wwdatsrc,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel;

type
  TAutoMantGrid = class(TFForm)
    rs: TADODataSet;
    ImageList: TImageList;
    Actions: TActionList;
    AAnterior: TDataSetPrior;
    AProximo: TDataSetNext;
    ANuevo: TDataSetInsert;
    ABorrar: TDataSetDelete;
    AEditar: TDataSetEdit;
    AGuardar: TDataSetPost;
    ACancelar: TDataSetCancel;
    ASalir: TAction;
    wwDBNavigator1: TwwDBNavigator;
    banterior: TwwNavButton;
    wwDBNavigator1Button1: TwwNavButton;
    wwDBNavigator1Button2: TwwNavButton;
    wwDBNavigator1Button3: TwwNavButton;
    wwDBNavigator1Button4: TwwNavButton;
    wwDBNavigator1Button6: TwwNavButton;
    wwDBNavigator1Button7: TwwNavButton;
    wwDBNavigator1Button9: TwwNavButton;
    tvData: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    Grid: TcxGrid;
    procedure ABorrarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure AEditarExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ANuevoExecute(Sender: TObject);
    procedure ASalirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FKeyFieldName: string;
//    procedure CuentaButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure GenerateColumns;
    { Private declarations }
  protected
    procedure Newbotonstate;
    procedure Editbotonstate;
    procedure browsebotonstate;

    property KeyFieldName: string read FKeyFieldName write FKeyFieldName;

  public
    { Public declarations }

    class procedure Mostrar(const cmd: string; const keyfield: string; const Titulo: string);
  end;

var
  AutoMantGrid: TAutoMantGrid;

implementation

uses Udata, UUtiles, DateUtils;

{$R *.dfm}

Procedure TAutoMantGrid.Newbotonstate;
begin
    AAnterior.enabled := False;
    AProximo.Enabled := False;
    ANuevo.enabled := False;
    AEditar.enabled := False;
    AGuardar.enabled := True;
    ACancelar.enabled := True;
    ABorrar.Enabled := False;
    Asalir.Enabled := false;
end;

Procedure TAutoMantGrid.Editbotonstate;
begin
    AAnterior.enabled := False;
    AProximo.Enabled := False;
    ANuevo.enabled := False;
    AEditar.enabled := False;
    AGuardar.enabled := True;
    ACancelar.enabled := True;
    ABorrar.Enabled := False;
    Asalir.Enabled := false;
end;

Procedure TAutoMantGrid.browsebotonstate;
begin
    AAnterior.enabled := True;
    AProximo.Enabled := True;
    ANuevo.enabled := dm.TienePermisoShow(pAgregar, permisos);
    AEditar.enabled := (not(ds.dataset.IsEmpty) and  (dm.TienePermisoShow(pEditar, permisos))); //(Peditar and not(ds.dataset.IsEmpty)) ;
    AGuardar.enabled := False;
    ACancelar.enabled := False;
    ABorrar.Enabled := (not(ds.dataset.IsEmpty) and (dm.TienePermisoShow(pBorrar,permisos))); //(Pborrar and not(ds.dataset.IsEmpty)) ;
    Asalir.Enabled := True;
end;

procedure TAutoMantGrid.ASalirExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TAutoMantGrid.FormShow(Sender: TObject);
begin
  inherited;

  If (ShowState = showInsert) and (ANuevo.enabled) Then
  begin
//    ANuevo.Execute;
    ds.DataSet.Insert;
    if ds.DataSet.State in [dsinsert, dsedit] then
    if (XField <> '') and (XValue <> Null) then
       ds.DataSet.FieldByName(XField).Value := XValue;
  end;

  If (ShowState = showEdit) and (AEditar.enabled) Then
  Begin
    If ((XField <> '') and (XValue <> Null)) and (Not(ds.DataSet.FieldByName(XField).Value = XValue)) Then
       ds.DataSet.Locate(XField, XValue, []);
       ds.DataSet.Edit;
  End;

  If ShowState = showFind Then
  begin
    If  ((XField <> '') and (XValue <> Null)) and (Not(ds.DataSet.FieldByName(XField).Value = XValue)) Then
       ds.DataSet.Locate(XField, XValue, []);
  end;

  If ShowState = showFilter Then
  Begin
      Case ds.DataSet.FieldByName(XField).DataType Of
      ftString: Begin
                 ds.DataSet.Filter := XField + ' = ' + QuotedStr(XValue);
                 ds.DataSet.Filtered := True;
                End;
  End

  End;

end;

procedure TAutoMantGrid.ANuevoExecute(Sender: TObject);
begin
  inherited;
  if not(dm.Tienepermiso(pAgregar, Permisos)) then
     exception.Create ('Permiso de Agregar Denegado');

  Newbotonstate;
  ds.DataSet.append;
end;

procedure TAutoMantGrid.AEditarExecute(Sender: TObject);
begin
  inherited;
    if not(dm.Tienepermiso(pEditar, Permisos)) then
     exception.Create ('Permiso de Modificar Denegado');

  ds.DataSet.Edit;
  Editbotonstate;
end;

procedure TAutoMantGrid.AGuardarExecute(Sender: TObject);
begin
  inherited;
  ds.DataSet.Post;
  browsebotonstate
end;

procedure TAutoMantGrid.ACancelarExecute(Sender: TObject);
begin
  inherited;
  ds.DataSet.Cancel;
  browsebotonstate
end;

procedure TAutoMantGrid.FormCreate(Sender: TObject);
begin
  inherited;
  browsebotonstate;
end;

procedure TAutoMantGrid.ABorrarExecute(Sender: TObject);
begin
  inherited;
    if not(dm.Tienepermiso(pEditar, Permisos)) then
     exception.Create ('Permiso de Borrar Denegado');

  ds.DataSet.delete;

end;

procedure TAutoMantGrid.GenerateColumns;
var
  j: Integer;
begin
  tvData.DataController.KeyFieldNames := KeyFieldName;
  tvData.DataController.CreateAllItems();
  for j := 0 to tvData.ColumnCount - 1 do begin
    if (tvData.Columns[j].DataBinding.Field.DataType in [ftGuid]) then
      tvData.Columns[j].Visible := False;
  end;
end;

class procedure TAutoMantGrid.Mostrar(const cmd: string; const keyfield: string; const Titulo: string);
begin
  with TAutoMantGrid.Create(Application) do begin
    Caption := Titulo;
    rs.CommandText := cmd;
    KeyFieldName := keyField;
    rs.Open();
    GenerateColumns();
    ShowModal();
    Release();
  end;
end;


end.

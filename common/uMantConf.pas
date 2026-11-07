unit uMantConf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel,
  DBActns, ActnList, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc, ImgList;

type
  TMantConf = class(TFForm)
    wwDBGrid1: TwwDBGrid;
    Actions: TActionList;
    AAnterior: TDataSetPrior;
    AProximo: TDataSetNext;
    ANuevo: TDataSetInsert;
    ABorrar: TDataSetDelete;
    AEditar: TDataSetEdit;
    AGuardar: TDataSetPost;
    ACancelar: TDataSetCancel;
    wwDBNavigator1: TwwDBNavigator;
    banterior: TwwNavButton;
    wwDBNavigator1Button1: TwwNavButton;
    wwDBNavigator1Button2: TwwNavButton;
    wwDBNavigator1Button3: TwwNavButton;
    wwDBNavigator1Button4: TwwNavButton;
    wwDBNavigator1Button6: TwwNavButton;
    wwDBNavigator1Button7: TwwNavButton;
    wwDBNavigator1Button9: TwwNavButton;
    ImageList: TImageList;
    ASalir: TAction;
    procedure ASalirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ANuevoExecute(Sender: TObject);
    procedure AEditarExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ABorrarExecute(Sender: TObject);
  private
    procedure browsebotonstate;
    procedure Editbotonstate;
    procedure Newbotonstate;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MantConf: TMantConf;

implementation

uses UUtiles, Udata;

{$R *.dfm}


Procedure TMantConf.Newbotonstate;
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

Procedure TMantConf.Editbotonstate;
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

Procedure TMantConf.browsebotonstate;
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



procedure TMantConf.ASalirExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TMantConf.FormShow(Sender: TObject);
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

procedure TMantConf.ANuevoExecute(Sender: TObject);
begin
  inherited;
  if not(dm.Tienepermiso(pAgregar, Permisos)) then
     exception.Create ('Permiso de Agregar Denegado');

  Newbotonstate;
  ds.DataSet.append;
end;

procedure TMantConf.AEditarExecute(Sender: TObject);
begin
  inherited;
    if not(dm.Tienepermiso(pEditar, Permisos)) then
     exception.Create ('Permiso de Modificar Denegado');

  ds.DataSet.Edit;
  Editbotonstate;
end;

procedure TMantConf.AGuardarExecute(Sender: TObject);
begin
  inherited;
  ds.DataSet.Post;
  browsebotonstate
end;

procedure TMantConf.ACancelarExecute(Sender: TObject);
begin
  inherited;
  ds.DataSet.Cancel;
  browsebotonstate
end;

procedure TMantConf.FormCreate(Sender: TObject);
begin
  inherited;
  browsebotonstate;
end;

procedure TMantConf.ABorrarExecute(Sender: TObject);
begin
  inherited;
    if not(dm.Tienepermiso(pEditar, Permisos)) then
     exception.Create ('Permiso de Borrar Denegado');

  ds.DataSet.delete;

end;

end.

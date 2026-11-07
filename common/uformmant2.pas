unit uformmant2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, ActnList, wwidlg, wwDialog, Wwlocate,
  ImgList, Buttons, ExtCtrls, UUtiles, ActnMan, ToolWin, ActnCtrls,
  ComCtrls, wwSpeedButton, wwDBNavigator, wwclearpanel, ADODB, Grids,
  Wwdbigrd, Wwdbgrid, ppTypes, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  dxDBELib,uBusquedaBase;

type
  Tfformmant2 = class(TFForm)
    ImageList: TImageList;
    AAyuda: TAction;
    ANuevo: TAction;
    AEditar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    ABorrar: TAction;
    Aprint: TAction;
    Asalir: TAction;
    Acciones: TActionList;
    wwDBNavigator1: TwwDBNavigator;
    nuevo: TwwNavButton;
    editar: TwwNavButton;
    guardar: TwwNavButton;
    cancelar: TwwNavButton;
    borrar: TwwNavButton;
    salir: TwwNavButton;
    ALocalizar: TAction;
    BLocalizarx: TwwNavButton;
    RS: TADODataSet;
    AAnular: TAction;
    AAprobacion: TAction;
    Bevel1: TBevel;
    DS2: TwwDataSource;
    RSDet: TADODataSet;
    Grid: TwwDBGrid;
    procedure AsalirExecute(Sender: TObject);
    procedure ABorrarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure AEditarExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ANuevoExecute(Sender: TObject);
    procedure AAyudaExecute(Sender: TObject);
    procedure AprintExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ALocalizarExecute(Sender: TObject);
    procedure AAnularExecute(Sender: TObject);
    procedure AAprobacionExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RSAfterScroll(DataSet: TDataSet);
  private
    FBusqAutofit: Boolean;
    FBusqMaxColSize: integer;

    { Private declarations }
  public
    procedure DoShowstate; override;
    { Public declarations }
    property BusqAutoFit: Boolean read FBusqAutofit write FBusqAutofit;
    property BusqMaxColSize: integer read FBusqMaxColSize write FBusqMaxColSize;

  protected
    TFBusqueda : TBusquedaBaseClass;
    Busqfield  : string;
    OcultarC1 : boolean;
    ds2state : boolean;
    spName : string;  //sp de la busqueda easy si es '' busqueda normal
    bm : string;
    Autocodigo : boolean;
    tmpbm : string;
    MasterField, DetailField : string;
    DetalleObligatorio : boolean;
    function Busqueda: variant; virtual; // llamama la busqueda y retorna un valor
    Procedure BatchUpdateCancel(Dataset: TDataset; Update: boolean);
    // procedimiento que se implementa en los decendientes dode se pane el codigo que genera los codigos del usuario
    procedure UserAutoCodigo; virtual;
    procedure UserPreAutoCodigo; virtual;
    procedure browsebotonstate; virtual;
    procedure Editbotonstate; virtual;
    procedure Newbotonstate; virtual;
    Procedure AsignarParamsList();
    function Localizar(id : Variant) : boolean;
  end;


var
  fformmant2: Tfformmant2;

implementation

uses Udata, uformx, uImageView;

{$R *.dfm}

Procedure Tfformmant2.Newbotonstate;
begin
   ANuevo.enabled := False;
   AEditar.enabled := False;
   AGuardar.enabled := True;
   ACancelar.enabled := True;
   ABorrar.Enabled := False;
   Asalir.Enabled := false;
   ALocalizar.Enabled := False;
   Aprint.Enabled := false;
   AAprobacion.enabled := false;
   AAnular.enabled := false;

   ds2.autoedit := true;
   grid.KeyOptions := [dgEnterToTab,dgAllowDelete,dgAllowInsert];
   Grid.readonly := false;
end;

Procedure Tfformmant2.Editbotonstate;
begin
  ANuevo.enabled := False;
  AEditar.enabled := False;
  AGuardar.enabled := True;
  ACancelar.enabled := True;
  ABorrar.Enabled := False;
  Asalir.Enabled := false;
  ALocalizar.Enabled := False;
  Aprint.Enabled := false;
  AAprobacion.enabled := false;
  AAnular.enabled := false;

  ds2.autoedit := true;
  grid.KeyOptions := [dgEnterToTab,dgAllowDelete,dgAllowInsert];
  Grid.readonly := false;
end;

Procedure Tfformmant2.browsebotonstate;
begin
  ANuevo.enabled      := dm.TienePermisoShow(pAgregar, permisos);
  if ((CampodeCierre <> '') and (not(rs.FieldByName(CampodeCierre).isnull)) and (rs.FieldByName(CampodeCierre).Value <= dm.Cierre(Modulo))) then
    AEditar.enabled     := false
  else
    AEditar.enabled     := (not(ds.dataset.IsEmpty) and  (dm.TienePermisoShow(pEditar, permisos))); //(Peditar and not(ds.dataset.IsEmpty)) ;

  AGuardar.enabled    := False;
  ACancelar.enabled   := False;

  if ((CampodeCierre <> '') and (not(rs.FieldByName(CampodeCierre).isnull)) and (rs.FieldByName(CampodeCierre).Value <= dm.Cierre(Modulo))) then
    ABorrar.enabled := false
  else
    ABorrar.Enabled     := (not(ds.dataset.IsEmpty)) and (dm.TienePermisoShow(pBorrar,permisos)); //(Pborrar and not(ds.dataset.IsEmpty)) ;

  Asalir.Enabled      := True;
  ALocalizar.Enabled  := True;
  Aprint.Enabled      := (not(ds.dataset.IsEmpty)) and (dm.TienePermisoShow(pImprimir,Permisos));
  AAprobacion.enabled := (not(ds.dataset.IsEmpty)) and (dm.TienePermisoShow(pAprobar,Permisos));

  if ((CampodeCierre <> '')and (not(rs.FieldByName(CampodeCierre).isnull)) and (rs.FieldByName(CampodeCierre).Value <= dm.Cierre(Modulo))) then
    AAnular.enabled     := false
  else
    AAnular.enabled     := (not(ds.dataset.IsEmpty)) and (dm.TienePermisoShow(pAnular,Permisos));

  ds2.autoedit := false;
  grid.KeyOptions := [dgEnterToTab];
  Grid.readonly := true;
end;

procedure Tfformmant2.AsalirExecute(Sender: TObject);
begin
  close;
end;

procedure Tfformmant2.ANuevoExecute(Sender: TObject);
begin
  rsdet.Close;
  if (dm.Tienepermiso(pAgregar, Permisos)) then
  begin
    try
      if not(DS.DataSet.active) then
        DS.DataSet.open;
      DS.DataSet.Insert;
    except
       on e : exception do begin
        raise exception.create('Error al crear el nuevo registro - '  + e.Message) ;
      end;
    end;
    DS.autoedit := true;
    appestado := appInsert;
    Newbotonstate;
    UserPreAutoCodigo;
    SelectFirst;
    if (XField <> '') and (XValue <> null) and (ShowState = showInsert) then
       rs.FieldByName(xField).Value := xValue;
   end
   else
   begin
      showmessage('Permiso Denegado');
      abort;
   end;
end;

procedure Tfformmant2.AEditarExecute(Sender: TObject);
begin
 if (dm.Tienepermiso(pEditar, Permisos)) then
 begin
   if not(ds.DataSet.IsEmpty) then
   begin
     try
        DS.AutoEdit := True;
        DS.Edit;
     except
        raise exception.create('No es posible editar el registro actual');
        exit;
     end;
     //if HandleState then
       appestado := appEdit;
     //if HandleState then
       Editbotonstate;
   end;
 end
 else
 begin
    showmessage('Permido de Modificar Denegado');
    abort;
 end;

end;

procedure Tfformmant2.AGuardarExecute(Sender: TObject);
var
  fld : tfield;
begin

  SelectFirst;

  ChkCamposRequeridos(RS);

  if (CampodeCierre <> '') and (rs.FieldByName(CampodeCierre).Value <= dm.Cierre(Modulo)) then
     Raise exception.Create('La fecha del documento ha sido cerrada');

  if (DetalleObligatorio) and (rsdet.IsEmpty) then
      Raise exception.Create('No hay registros de detalle en el documento');

  fld := ds.DataSet.FindField('Usuario');

  try
    if handletrans then dm.Coneccion.BeginTrans;
  except
  end;

  try
    RSDet.first;
  except
    on e : exception do begin
     if handletrans then dm.Coneccion.RollbackTrans;
     Raise exception.create('Es posible que los datos del detalle no esten completos'+ #13 + e.Message);
    end;
  end;

  // aqui hace lo mismo que se debe hacer en tformmant1
  Try
    if (appestado = appInsert)  then begin
      if not (ds.state in [dsedit, dsinsert]) then ds.edit;
      if fld <> nil then fld.Value := dm.UsuarioActual;
      UserAutoCodigo;
      ds.dataset.post;
    end else begin
      if ds.state in [dsinsert, dsedit] then
        DS.DataSet.Post;
    end;
    BatchUpdateCancel(ds.dataset, True);
  except
    on e: Exception do begin
      if handletrans then dm.Coneccion.RollbackTrans;
      raise exception.create('Error al guardar los datos de cabecera' + #13 + e.Message);
    end;
  end;

  try
    DetalleUpdate(ds2.dataset, ds.DataSet.fieldbyname(MasterField).value, DetailField );
    BatchUpdateCancel(ds2.dataset, true);
  except
    on e: Exception do begin
       if handletrans then dm.Coneccion.RollbackTrans;
       raise exception.create('Error al guardar los datos del detalle' + #13 + e.Message);
    end;
  end;

  if handletrans then dm.Coneccion.CommitTrans;

  if HandleGuardarState then begin
    appestado := appBrowse;
    DS.AutoEdit := false;
    Browsebotonstate;
    ds.DataSet.Refresh;
  end;

  if (appestado = appInsert) then
     CrearLog('Insertar')
  else
     CrearLog('Edicion');

   If XResultField <> '' then
     XResultado := RS.FieldValues[XResultField]
   Else
     XResultado := Null;

   if XCloseonSave then Asalir.Execute ;
end;

procedure Tfformmant2.ACancelarExecute(Sender: TObject);
begin
  SelectFirst;
  DS2.Dataset.Cancel;
  DS2.AutoEdit := false;
  BatchUpdateCancel(ds2.dataset, False);
  ds2.DataSet.Refresh ;

  inherited;

  SelectFirst;
  if ds.dataset.state in dseditmodes then DS.DataSet.Cancel;
  BatchUpdateCancel(ds.dataset, False);
  DS.AutoEdit := false;
  //if handlestate then
  appestado := appBrowse;
  //if HandleState then
  Browsebotonstate;

  //If XResultField <> '' then
  //  XResultado := RS.FieldValues[XResultField]
  //Else
  XResultado := Null;

  if XCloseonSave then Asalir.Execute ;
end;

Procedure Tfformmant2.BatchUpdateCancel(Dataset : TDataset; Update : boolean);
Begin
  if (DataSet is TCustomAdoDataset) then
    if (DataSet as TCustomAdoDataset).LockType = ltBatchOptimistic Then
      if update then
        (DataSet as TCustomAdoDataset).updateBatch()
      else
        (DataSet as TCustomAdoDataset).cancel()   ;
End;

procedure Tfformmant2.ABorrarExecute(Sender: TObject);
begin
if (dm.Tienepermiso(pBorrar, Permisos)) then
begin
  SelectFirst;
  try
    if not(ds.dataset.isempty) then
    begin
       CrearLog('Borrado');
       DS.DataSet.Delete;
       // si usa batch updates
       BatchUpdateCancel(ds.dataset, True);
    end
  Except
    on e: Exception do begin
      showmessage('El Registro no pudo ser borrado, es posible que hayan registros dependientes'#13 + e.Message);
      //raise exception.create('El Registro no pudo ser borrado, es posible que hayan registros dependientes');
    end;
  end;
end
else
begin
  showmessage('Permiso de Borrar Denegado');
  //  abort;
end;

  if XCloseonSave then Asalir.Execute;
end;

procedure Tfformmant2.AAyudaExecute(Sender: TObject);
begin
  // ayuda
end;

procedure Tfformmant2.AprintExecute(Sender: TObject);
begin
  inherited;
  if not(dm.Tienepermiso(pImprimir, Permisos)) then
     raise exception.create('Permiso de Imprimir Denegado');
  CrearLog('Imprimir');
  // ejecutar el reporte adecuado
end;


// genera un doble click para el control activo
procedure Tfformmant2.FormCreate(Sender: TObject);
begin
  DetalleObligatorio := true;
  ds2.DataSet := RSDet;
  inherited;
  Modulo := '';
  OcultarC1 := false;
  tfBusqueda := nil;
  Busqfield := '';
  spName := '';  //sp de la busqueda easy si es '' usar busqueda normal
  ds.DataSet := RS;
  appestado := appBrowse;
  DS.AutoEdit := false;
  Browsebotonstate;
  ds2state := DS2.DataSet.Active ;
  if not(ds2.dataset.active) then ds2.dataset.open ;
end;



procedure Tfformmant2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if appestado <> appbrowse then
  begin
    ACancelar.Execute;
    if appestado <> appbrowse then abort;
  end;
  ds.DataSet.Filtered := False;
end;

procedure Tfformmant2.UserAutoCodigo;
begin
end;

procedure Tfformmant2.UserPreAutoCodigo;
begin
end;

Procedure Tfformmant2.AsignarParamsList();
var
  g : integer;
  str : string;
  LstP: TStringList;
begin
  str := StringReplace(XListaParams,'+',(Chr(10)+Chr(13)),[rfReplaceAll, rfIgnoreCase]);

  LstP := TStringList.Create;
  LstP.Text := Str;
  if LstP.Text = '' then
    exit
  else begin
    For g := 0 to rs.FieldCount -1 do
    begin
      if LstP.Values[rs.Fields[g].FieldName] <> '' then
        rs.Fields[g].AsString := LstP.Values[rs.Fields[g].FieldName]
    end;
  end;
end;

procedure Tfformmant2.DoShowstate;
Begin
  inherited;
  XShow := True;
//  Este chequeo debe ser el primero pues puede cambiar el showstate
  If (ShowState = showFindInsert) and (dm.Tienepermiso(pAbrir, Permisos)) Then
  begin
    If (XValue <> Null) and (Localizar(XValue)) then
       Browsebotonstate
    else
       ShowState := ShowInsert;
  end;

  If (ShowState = showInsert) and (dm.Tienepermiso(pAgregar, Permisos))Then
  begin
    ANuevo.Execute;
    if (XField <> '') and (XValue <> Null) then
       ds.DataSet.FieldByName(XField).Value := XValue
    else if XListaParams <> '' then
       AsignarParamsList();
  end;

  If (ShowState = showEdit) and (dm.Tienepermiso(pEditar, Permisos)) Then
  Begin
    If (XValue <> Null) and (Localizar(XValue)) then
       AEditar.Execute
    else
       xShow := false;
  End;

  If (ShowState = showFind) and (dm.Tienepermiso(pAbrir, Permisos)) Then
  begin
    If (XValue <> Null) and (Localizar(XValue)) then
       Browsebotonstate
    else
       xShow := false;
  end;

  If (ShowState = showDelete) and (dm.Tienepermiso(pBorrar, Permisos)) Then
  begin
    If (XValue <> Null)  and (Localizar(XValue)) then
    begin
      ABorrar.Execute;
      XShow := False;
    end;
  end;

  If (ShowState = showAprobar) and (dm.Tienepermiso(pAprobar, Permisos)) Then
  begin
    If (XValue <> Null) and Localizar(XValue) then
    begin
       AAprobacion.execute;
       if XCloseonSave then xShow := false;
    end;
  end;

  If (ShowState = showAnular) and (dm.Tienepermiso(pAprobar, Permisos)) Then
  begin
    If (XValue <> Null) and Localizar(XValue) then
    begin
       AAnular.execute;
       if XCloseonSave then xShow := false;
    end;
  end;

  If (ShowState = showPrint) and (dm.Tienepermiso(pImprimir, Permisos)) Then
  begin
    If (XValue <> Null) and Localizar(XValue) then
    begin
       APrint.execute;
       if XCloseonSave then xShow := false;
    end;
  end;

end;

function Tfformmant2.Localizar(id : variant):boolean;
begin
 // inherited;
  result := false;
  if id <> null then
  begin
    rs.Parameters[1].Value := id;
    if rs.active then rs.Requery() else rs.open;
    if not(rs.IsEmpty) then
    begin
      BrowseBotonState;
      result := true;
    end;
  end;
end;

function Tfformmant2.Busqueda(): variant;
Begin
  if (TfBusqueda <> nil) and (Busqfield <> '') then
  begin
//     if spname = '' then
//       Result :=  fbuscar(TfBusqueda, Busqfield, OcultarC1)
//     else
//       Result :=  fbuscar(TfBusqueda, Busqfield, OcultarC1, spname);
    Result :=  TfBusqueda.buscar(Busqfield, OcultarC1, spname, BusqAutoFit, BusqMaxColSize);
  end
  else
  begin
    raise exception.Create ('Parametros de busqueda no asignado, llamar a soporte')  ;
  end;
end;


procedure Tfformmant2.ALocalizarExecute(Sender: TObject);
begin
  inherited;
  Localizar(Busqueda());

end;

procedure Tfformmant2.AAnularExecute(Sender: TObject);
begin
  inherited;
  if not(dm.Tienepermiso(pAnular, Permisos)) then
  begin
     raise EPrivilegioError.Create('No tiene autorizacion para realizar esta acción');
  end;
  CrearLog('Anular');  
  if XCloseonSave then Asalir.Execute ;
end;

procedure Tfformmant2.AAprobacionExecute(Sender: TObject);
begin
  inherited;
  if not(dm.Tienepermiso(pAprobar, Permisos)) then
     raise EPrivilegioError.Create('No tiene autorizacion para realizar esta acción');
  CrearLog('Aprobar');
  if XCloseonSave then Asalir.Execute ;
end;

procedure Tfformmant2.FormDestroy(Sender: TObject);
begin
  DS2.DataSet.Active := ds2state;
  inherited;
end;

procedure Tfformmant2.RSAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if RS.FieldByName(MasterField).IsNull then
     RSDet.Parameters[1].Value := null
   else
     RSDet.Parameters[1].Value := RS.FieldByName(MasterField).value;

   RSDet.close;
   RSDet.open;
end;

end.

unit uformmant1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, ActnList, wwidlg, wwDialog, Wwlocate,
  ImgList, Buttons, ExtCtrls, UUtiles, ActnMan, ToolWin, ActnCtrls,
  ComCtrls, wwSpeedButton, wwDBNavigator, wwclearpanel, ADODB, Grids,
  Wwdbigrd, Wwdbgrid, ppTypes, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  dxDBELib,uBusquedaBase;

type
  Tfformmant1 = class(TFForm)
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
  private
    { Private declarations }
  public
    procedure DoShowstate; override;
    { Public declarations }
  protected
    TFBusqueda : TBusquedaBaseClass;
    Busqfield  : string;
    OcultarC1 : boolean;
    MasterField : string;
    spName : string;  //sp de la busqueda easy si es '' busqueda normal
    bm : string;
    Autocodigo : boolean;
    function Busqueda: variant; virtual; // llamama la busqueda y retorna un valor
    Procedure BatchUpdateCancel(Dataset: TDataset; Update: boolean);
    // procedimiento que se implementa en los decendientes dode se pane el codigo que genera los codigos del usuario
    procedure UserAutoCodigo; virtual;
    procedure UserPreAutoCodigo; virtual;
    procedure browsebotonstate; virtual;
    procedure Editbotonstate; virtual;
    procedure Newbotonstate; virtual;
    Procedure AsignarParamsList();
    function Localizar(id : Variant) : boolean; virtual;
  end;


var
  fformmant1: Tfformmant1;

implementation

uses Udata, uformx;

{$R *.dfm}

Procedure Tfformmant1.Newbotonstate;
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
end;

Procedure Tfformmant1.Editbotonstate;
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
end;

Procedure Tfformmant1.browsebotonstate;
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
end;


procedure Tfformmant1.AsalirExecute(Sender: TObject);
begin
  close;
end;

procedure Tfformmant1.ANuevoExecute(Sender: TObject);
begin
   if (dm.Tienepermiso(pAgregar, SegName,'Nuevo','')) then
   begin
     try
       if not(DS.DataSet.active) then
        DS.DataSet.open;
       DS.DataSet.Insert
     except
       on e: Exception do begin
         Raise exception.create('Error al agregar nuevo registro : ' + e.Message);
       end;
     end;
     DS.autoedit := true;
     //if HandleState then
       appestado := appInsert;
     //if HandleState then
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

procedure Tfformmant1.AEditarExecute(Sender: TObject);
begin
 if (dm.Tienepermiso(pEditar, SegName, 'Editar','')) then
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

procedure Tfformmant1.AGuardarExecute(Sender: TObject);
var
  fld : tfield;
begin
     SelectFirst;
     ChkCamposRequeridos(RS);

     Try
       if (CampodeCierre <> '') and (rs.FieldByName(CampodeCierre).Value <= dm.Cierre(Modulo)) then
           Raise exception.Create('La fecha del documento ha sido cerrada');
       fld := ds.DataSet.FindField('Usuario');
       if (appestado = appInsert)  then
       begin
          if not (ds.state in [dsedit, dsinsert]) then ds.edit;
          if fld <> nil then fld.Value := dm.UsuarioActual;
          UserAutoCodigo ;
          ds.dataset.post ;
       end
       else
       begin
          if ds.state in [dsinsert, dsedit] then DS.DataSet.Post;
       end;
       BatchUpdateCancel(ds.dataset, True);
     except
       on e: Exception do begin
          raise exception.create('Error al guardar los datos de cabecera' + #13 + e.Message);
       end;
     end;

     if (appestado = appInsert) then
        CrearLog('Insertar')
     else
        CrearLog('Edicion');

     if HandleState then begin
       appestado := appBrowse;
       DS.AutoEdit := false;
       Browsebotonstate;
       ds.DataSet.Refresh;
     end;



   If XResultField <> '' then
     XResultado := RS.FieldValues[XResultField]
   Else
     XResultado := Null;

   if XCloseonSave then Asalir.Execute ;
end;

procedure Tfformmant1.ACancelarExecute(Sender: TObject);
begin
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

Procedure Tfformmant1.BatchUpdateCancel(Dataset : TDataset; Update : boolean);
Begin
  if (DataSet is TCustomAdoDataset) then
    if (DataSet as TCustomAdoDataset).LockType = ltBatchOptimistic Then
      if update then
        (DataSet as TCustomAdoDataset).updateBatch()
      else
        (DataSet as TCustomAdoDataset).cancel()   ;
End;

procedure Tfformmant1.ABorrarExecute(Sender: TObject);
begin
if (dm.Tienepermiso(pBorrar, SegName, 'Borrar', '')) then
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
      showmessage('El Registro no pudo ser borrado, es posible que hayan registros dependientes');
      //raise exception.create('El Registro no pudo ser borrado, es posible que hayan registros dependientes');
  end;
end
else
begin
  showmessage('Permiso de Borrar Denegado');
  //  abort;
end;

  if XCloseonSave then Asalir.Execute;
end;

procedure Tfformmant1.AAyudaExecute(Sender: TObject);
begin
  // ayuda
end;

procedure Tfformmant1.AprintExecute(Sender: TObject);
begin
  inherited;
  if not(dm.Tienepermiso(pImprimir, Segname, 'Imprimir','')) then
     raise exception.create('Permiso de Imprimir Denegado');
   CrearLog('Imprimir');
  // ejecutar el reporte adecuado
end;


// genera un doble click para el control activo
procedure Tfformmant1.FormCreate(Sender: TObject);
begin
  inherited;
  OcultarC1 := false;
  tfBusqueda := nil;
  Busqfield := '';
  spName := '';  //sp de la busqueda easy si es '' usar busqueda normal
  ds.DataSet := RS;
  appestado := appBrowse;
  DS.AutoEdit := false;
  Browsebotonstate;
end;



procedure Tfformmant1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if appestado <> appbrowse then
  begin
    ACancelar.Execute;
    if appestado <> appbrowse then abort;
  end;
  ds.DataSet.Filtered := False;
end;

procedure Tfformmant1.UserAutoCodigo;
begin
end;

procedure Tfformmant1.UserPreAutoCodigo;
begin
end;

Procedure Tfformmant1.AsignarParamsList();
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

procedure Tfformmant1.DoShowstate;
Begin
  inherited;
  XShow := True;
//  Este chequeo debe ser el primero pues puede cambiar el showstate
  If (ShowState = showFindInsert) and (dm.Tienepermiso(pAbrir, SegName,'Abrir','')) Then
  begin
    If (XValue <> Null) and (Localizar(XValue)) then
       Browsebotonstate
    else
       ShowState := ShowInsert;
  end;

  If (ShowState = showInsert) and (dm.Tienepermiso(pAgregar, SegName,'Nuevo',''))Then
  begin
    ANuevo.Execute;
    if (XField <> '') and (XValue <> Null) then
       ds.DataSet.FieldByName(XField).Value := XValue
    else if XListaParams <> '' then
       AsignarParamsList();
  end;

  If (ShowState = showEdit) and (dm.Tienepermiso(pEditar, SegName,'Editar','')) Then
  Begin
    If (XValue <> Null) and (Localizar(XValue)) then
       AEditar.Execute
    else
       xShow := false;
  End;

  If (ShowState = showFind) and (dm.Tienepermiso(pAbrir, SegName,'Abrir','')) Then
  begin
    If (XValue <> Null) and (Localizar(XValue)) then
       Browsebotonstate
    else
       xShow := false;
  end;

  If (ShowState = showDelete) and (dm.Tienepermiso(pBorrar, SegName,'Borrar','')) Then
  begin
    If (XValue <> Null)  and (Localizar(XValue)) then
    begin
      ABorrar.Execute;
      XShow := False;
    end;
  end;

  If (ShowState = showAprobar) and (dm.Tienepermiso(pAprobar, SegName,'Aprobar','')) Then
  begin
    If (XValue <> Null) and Localizar(XValue) then
    begin
       AAprobacion.execute;
       if XCloseonSave then xShow := false;
    end;
  end;

  If (ShowState = showAnular) and (dm.Tienepermiso(pAprobar, SegName,'Anular','')) Then
  begin
    If (XValue <> Null) and Localizar(XValue) then
    begin
       AAnular.execute;
       if XCloseonSave then xShow := false;
    end;
  end;

  If (ShowState = showPrint) and (dm.Tienepermiso(pImprimir, SegName,'Imprimir','')) Then
  begin
    If (XValue <> Null) and Localizar(XValue) then
    begin
       APrint.execute;
       if XCloseonSave then xShow := false;
    end;
  end;

end;

function Tfformmant1.Localizar(id : variant):boolean;
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

function Tfformmant1.Busqueda(): variant;
Begin
  if (TfBusqueda <> nil) and (Busqfield <> '') then
  begin
//     if spname = '' then
//       Result :=  fbuscar(TfBusqueda, Busqfield, OcultarC1)
//     else
//       Result :=  fbuscar(TfBusqueda, Busqfield, OcultarC1, spname);
    Result :=  TfBusqueda.Buscar(Busqfield, OcultarC1, spname);
  end
  else
  begin
    raise exception.Create ('Parametros de busqueda no asignado, llamar a soporte')  ;
  end;
end;


procedure Tfformmant1.ALocalizarExecute(Sender: TObject);
begin
  inherited;
  Localizar(Busqueda());

end;

procedure Tfformmant1.AAnularExecute(Sender: TObject);

begin
  inherited;
  if not(dm.Tienepermiso(pAnular, segname, 'Anular', '')) then
  begin
     raise EPrivilegioError.Create('No tiene autorizacion para realizar esta acción');
  end;
  CrearLog('Anular');

  if XCloseonSave then Asalir.Execute ;
end;

procedure Tfformmant1.AAprobacionExecute(Sender: TObject);
begin
  inherited;
  if not(dm.Tienepermiso(pAprobar, SegName,'Aprobar','')) then
     raise EPrivilegioError.Create('No tiene autorizacion para realizar esta acción');
  CrearLog('Aprobar');

  if XCloseonSave then Asalir.Execute ;
end;



end.

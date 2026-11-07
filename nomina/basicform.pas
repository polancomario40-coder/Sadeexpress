unit basicform;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Forms, Dialogs,UUtiles,
  ActnList, Db, StdCtrls, ExtCtrls,  Buttons, ComCtrls, Grids, DBGrids,
  DBTables, DBctrls, ImgList, Wwdatsrc, udata, wwDialog, wwidlg, Wwlocate ;

type
 

  TFbasicform = class(TForm)
    Navegator: TPanel;
    Nuevo: TSpeedButton;
    Editar: TSpeedButton;
    Guardar: TSpeedButton;
    Cancelar: TSpeedButton;
    Borrar: TSpeedButton;
    Marcar: TSpeedButton;
    Retornar: TSpeedButton;
    filtrar: TSpeedButton;
    Salir: TSpeedButton;
    DS: TwwDataSource;
    Actiones: TActionList;
    Asalir: TAction;
    AFiltrar: TAction;
    AMarcar: TAction;
    ARetornar: TAction;
    AAnterior: TAction;
    AProximo: TAction;
    ANuevo: TAction;
    AEditar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    ABorrar: TAction;
    separador1: TPanel;
    separador2: TPanel;
    SpeedButton1: TSpeedButton;
    AAyuda: TAction;
    buscar: TSpeedButton;
    ABuscar: TAction;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Aprint: TAction;
    SpeedButton2: TSpeedButton;
    Azoom: TAction;
    Barra: TStatusBar;
    DBuscar: TwwSearchDialog;
    DLocalizar: TwwLocateDialog;
    procedure AsalirExecute(Sender: TObject);
    procedure AAnteriorExecute(Sender: TObject);
    procedure ABorrarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure AEditarExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure AMarcarExecute(Sender: TObject);
    procedure ANuevoExecute(Sender: TObject);
    procedure AProximoExecute(Sender: TObject);
    procedure ARetornarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AAyudaExecute(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure AprintExecute(Sender: TObject);
    procedure AzoomExecute(Sender: TObject);
    procedure AFiltrarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSUpdateData(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  Protected
    appEstado : TappEstado;
    calcstate, Autocodigo : boolean;
    Pabrir, Pleer, Peditar, Pinsertar, Pborrar, Pfiltrar, Pimprimir, PAprobar : boolean;
    procedure NewCtrlState; virtual;
    procedure EditCtrlState; virtual;
    procedure FindCtrlState; virtual;
    procedure BrowseCtrlState; virtual;
    procedure browsebotonstate; virtual;
    procedure Editbotonstate; virtual;
    procedure findbotonstate; virtual;
    procedure Newbotonstate; virtual;
    procedure UserAutoCodigo; virtual;
    procedure CrearLog(Accion : String); virtual;
  public
    { Public declarations }
  end;


var
  Fbasicform: TFbasicform;
  bm        : String;

implementation




{$R *.DFM}
Procedure TFbasicform.Newbotonstate;
begin
    AAnterior.enabled := False;
    AProximo.Enabled := False;
    ANuevo.enabled := False;
    AEditar.enabled := False;
    AGuardar.enabled := True;
    ACancelar.enabled := True;
    ABorrar.Enabled := False;
    AMarcar.Enabled := False;
    ARetornar.Enabled := False;
    AFiltrar.Enabled := false;
    Asalir.Enabled := false;
    ABuscar.Enabled := False;
    Aprint.Enabled := false;
end;

Procedure TFbasicform.Editbotonstate;
begin
    AAnterior.enabled := False;
    AProximo.Enabled := False;
    ANuevo.enabled := False;
    AEditar.enabled := False;
    AGuardar.enabled := True;
    ACancelar.enabled := True;
    ABorrar.Enabled := False;
    AMarcar.Enabled := False;
    ARetornar.Enabled := False;
    AFiltrar.Enabled := false;
    Asalir.Enabled := false;
    ABuscar.Enabled := False;
    Aprint.Enabled := false;
end;

Procedure TFbasicform.browsebotonstate;
begin
    AAnterior.enabled := True;
    AProximo.Enabled := True;
    ANuevo.enabled := True; //Pinsertar;
    AEditar.enabled := not(ds.dataset.IsEmpty); //(Peditar and not(ds.dataset.IsEmpty)) ;
    AGuardar.enabled := False;
    ACancelar.enabled := False;
    ABorrar.Enabled := not(ds.dataset.IsEmpty);//(Pborrar and not(ds.dataset.IsEmpty)) ;
    AMarcar.Enabled := True;
    if bm <> '' then ARetornar.Enabled := True else ARetornar.Enabled := False;
    AFiltrar.Enabled := True;
    Asalir.Enabled := True;
    ABuscar.Enabled := True;
    Aprint.Enabled := Pimprimir;
end;

Procedure TFbasicform.findbotonstate;
begin
    AAnterior.enabled := False;
    AProximo.Enabled := False;
    ANuevo.enabled := False;
    AEditar.enabled := False;
    AGuardar.enabled := False;
    ACancelar.enabled := False;
    ABorrar.Enabled := False;
    AMarcar.Enabled := False;
    ARetornar.Enabled := False;
    AFiltrar.Enabled := True;
    Asalir.Enabled := false;
    ABuscar.Enabled := True;
    Aprint.Enabled := false;
end;

procedure TFbasicform.AsalirExecute(Sender: TObject);
begin
  close;
end;

procedure TFbasicform.AMarcarExecute(Sender: TObject);
begin
  bm := DS.DataSet.Bookmark ;
  ARetornar.Enabled := True;
end;

procedure TFbasicform.ARetornarExecute(Sender: TObject);
begin
   DS.DataSet.Bookmark := bm;
end;

procedure TFbasicform.AAnteriorExecute(Sender: TObject);
begin
   DS.DataSet.Prior;
   BrowseCtrlState;
   Browsebotonstate;
end;

procedure TFbasicform.AProximoExecute(Sender: TObject);
begin
   DS.DataSet.Next;
   BrowseCtrlState;
   Browsebotonstate;
end;

procedure TFbasicform.ANuevoExecute(Sender: TObject);
begin
   SelectFirst;
   try
     DS.DataSet.Insert
   except
     raise exception.create('No es posible agregar un nuevo registro')
   end;
   DS.autoedit := true;
   appestado := appInsert;
   Newbotonstate;
   NewCtrlState;
   Barra.Panels[1].Text := 'Agregando';
end;

procedure TFbasicform.AEditarExecute(Sender: TObject);
begin
   if not(ds.DataSet.IsEmpty) then
   begin
     DS.AutoEdit := true;
     appestado := appEdit;
     Editbotonstate;
     EditCtrlState;
     Barra.Panels[1].Text := 'Editando';
   end;
end;

procedure TFbasicform.AGuardarExecute(Sender: TObject);
begin
   SelectFirst;

   try
     if ((appestado = appInsert) and (Autocodigo)) then
     begin
        if not (ds.state in [dsedit, dsinsert]) then ds.edit;
        UserAutoCodigo ;
        ds.dataset.post ;
     end
     else
     begin
        if ds.state in [dsinsert, dsedit] then
           DS.DataSet.Post ;
     end;
   except
     on ERequiredError do
     begin
        raise;
     end;
     else
       raise exception.create('No es posible guardar el registro');
   end;
   DS.AutoEdit := false;
   if (appestado = appInsert) then
      CrearLog('Insercion')
   else
      CrearLog('Edicion');
   appestado := appBrowse;
   Browsebotonstate;
   BrowseCtrlState;
   Barra.Panels[1].Text := 'Consultando';
end;

procedure TFbasicform.ACancelarExecute(Sender: TObject);
begin
  SelectFirst;
  if Application.MessageBox('Esta usted seguro de que desea cancelar los cambios hechos ' +
     'al registro actual ?', 'Advertencia', MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION) = IDYES then
  begin
    if DS.state in [dsinsert,dsedit] then DS.DataSet.Cancel;
    appestado := appBrowse;
    DS.AutoEdit := false;
    Barra.Panels[1].Text := 'Consultando';
    Browsebotonstate;
    BrowseCtrlState;
  end
  else
    abort;
end;

procedure TFbasicform.ABorrarExecute(Sender: TObject);
begin
  SelectFirst;
  try
    if not(ds.dataset.isempty) then
    begin
       if Application.MessageBox('Esta usted seguro que desea borrar el registro actual ?', 'Advertencia', MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION) = IDYES then
       begin
          CrearLog('Borrado');
          DS.DataSet.Delete;
       end;
    end
  Except
      raise exception.create('El Registro no pudo ser borrado, es posible que hayan registros dependientes');
  end;
end;

procedure TFbasicform.AAyudaExecute(Sender: TObject);
begin
  // ayuda
end;

procedure TFbasicform.AprintExecute(Sender: TObject);
begin
  // ejecutar el reporte adecuado
end;


procedure TFbasicform.ABuscarExecute(Sender: TObject);
Begin
   Dbuscar.Execute
end;

// genera un doble click para el control activo
procedure TFbasicform.AzoomExecute(Sender: TObject);
begin
   activecontrol.Perform(WM_LBUTTONDBLCLK,0,0);
end;


procedure TFbasicform.FormCreate(Sender: TObject);
begin
//  Pabrir := fdatainv.Privilegios(self.name, Pleer, Peditar, Pinsertar, Pborrar, Pfiltrar, Pimprimir, Paprobar);

 // if not(Pabrir) then
 //    raise EPrivilegioError.Create('Autorizacion no concedida, comuniquese con su administrador de sistema');
  if DS.dataset.Active then
  Begin
     DS.dataset.tag := 1;
  End
  Else
  Begin
     DS.dataset.tag := 0;
     DS.dataset.open;
  End;


  //DBuscar.SearchTable:=ds.DataSet

  //autocodigo := fdatainv.CodigoAutomatico(fdatainv.Modulo, (Ttable(ds.dataset).tablename),
  //              fdatainv.companiaactual);

  Browsebotonstate;
  BrowseCtrlState;
  ds.autoedit := false;
end;

procedure TFbasicform.AFiltrarExecute(Sender: TObject);
begin
  DLocalizar.Execute
end;

// cambia el comportamiento de algunas teclas para algunos controles
procedure TFbasicform.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

    if (key = vk_prior) and (AAnterior.enabled) and (not((activecontrol is TcustomGrid))) then
    begin
       AAnterior.Execute;
       key := 0;
       exit;
    end;

    if (key = vk_next) and (AProximo.enabled) and (not((activecontrol is TcustomGrid))) then
    begin
       AProximo.Execute;
       key := 0;
       exit;
    end;

    if (ssCtrl in shift) and ((key = vk_return) or (key = vk_tab))then
    begin
      if (activecontrol is TcustomGrid) then
      begin
         key := 0;
         selectnext(activecontrol, true, true);
      end;
      exit;
    end;

    //  cuando recibe la tecla enter, la cancela y envia la tecla tab
    if (key = vk_return) and (not(activecontrol is TButtonControl)) and (not(activecontrol is TcustomGrid)) then
    begin
       key := 0;
       Perform(CM_DialogKey, VK_TAB, 0);  // envia un mensaje de tacla tab
       Exit;
    end;
end;

// estado de los controles cuando la aplicacion esta en browse,
// para implementar en clases decendientes
Procedure TFbasicform.BrowseCtrlState;
begin
end;
// estado de los controles cuando la aplicacion esta en edicion,
// para implementar en clases decendientes
Procedure TFbasicform.EditCtrlState;
begin
end;
// estado de los controles cuando la aplicacion esta en insercion,
// para implementar en clases decendientes
Procedure TFbasicform.NewCtrlState;
begin
end;
// estado de los controles cuando la aplicacion esta en busqueda,
// para implementar en clases decendientes
Procedure TFbasicform.FindCtrlState;
begin
end;
// procedimiento que se implementa en los decendientes dode se pane el codigo que genera los codigos del usuario
Procedure TFbasicform.UserAutoCodigo;
begin
end;

// implementa el procedimiento de guardar log en los decendiente pero
// es llamado por el ancestro cuando de guarda o se borra un registro
Procedure TFbasicform.CrearLog(Accion : String );
begin
end;


// procedimento que verifica si algun campo requerido no ha sido llenado antes de postear
procedure TFbasicform.DSUpdateData(Sender: TObject);
var
   x : integer;
begin
   for x := 0 to ds.dataset.fieldcount - 1 do
   begin
      if (ds.dataset.Fields[x].Required) and (ds.dataset.Fields[x].isnull) then
         raise ERequiredError.create('Complete correctamente la informacion de : ' + uppercase(ds.dataset.Fields[x].displaylabel));
   end;
end;


procedure TFbasicform.FormDestroy(Sender: TObject);
begin
   DS.dataset.Active := not(DS.dataset.tag = 0);
end;

// si el usuario no tiene permiso de abrir la forma, esta se cerrara antes de pintarse
procedure TFbasicform.FormPaint(Sender: TObject);
begin
  //if not(Pabrir) then close;
end;

end.

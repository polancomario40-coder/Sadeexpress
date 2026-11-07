unit UModelTrans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc, StdCtrls, Wwkeycb,
  wwdblook, DBGrids, wwDialog, wwidlg, wwfltdlg, wwSpeedButton,
  wwDBNavigator, ExtCtrls, wwclearpanel, DBCtrls, ADODB, Wwdbdlg, ActnList,
  ComCtrls, ToolWin, ImgList, Buttons, uform;

type
  TModeloTrans = class(TFForm)
    Label1: TLabel;
    ld: TwwLookupDialog;
    ToolBar1: TToolBar;
    busqueda: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Acciones: TActionList;
    AAgregar: TAction;
    ABuscar: TAction;
    AFiltro: TAction;
    ATipo: TAction;
    ASalir: TAction;
    ALocate: TAction;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    procedure dsxUpdateData(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure busquedaChange(Sender: TObject);
    procedure busquedaExit(Sender: TObject);
    procedure AAgregarExecute(Sender: TObject);
    procedure ATipoExecute(Sender: TObject);
    procedure ASalirExecute(Sender: TObject);
    procedure ALocateExecute(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
  private

  Protected
    TipoField : string;
    xTipo : integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModeloTrans: TModeloTrans;

implementation

uses Udata, UdataNom, uBusqEmpleado, UUtiles, uBusqueda;

{$R *.dfm}

procedure TModeloTrans.dsxUpdateData(Sender: TObject);
var
  x : integer;
begin
  inherited;
   for x := 0 to ds.dataset.fieldcount - 1 do
   begin
      if (ds.dataset.Fields[x].Required) and (ds.dataset.Fields[x].isnull) then
         raise exception.create('Complete correctamente la informacion de : ' + uppercase(ds.dataset.Fields[x].displaylabel));
   end;

end;

procedure TModeloTrans.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
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

procedure TModeloTrans.FormCreate(Sender: TObject);
begin
  inherited;

   if dmNom.NominasCerrada.Value then
   begin
     ds.DataSet.Close;
     TCustomADODataSet(ds.DataSet).LockType := ltReadOnly;
   end
   else
   begin
     ds.DataSet.Close;
     TCustomADODataSet(ds.DataSet).LockType := ltOptimistic;
   end;

   if not(ds.DataSet.Active) then ds.DataSet.Open ;

   AAgregar.Enabled := not(dmNom.NominasCerrada.Value);

end;

procedure TModeloTrans.FormDestroy(Sender: TObject);
begin
  inherited;
  ds.DataSet.Close ;
end;

procedure TModeloTrans.busquedaChange(Sender: TObject);
begin
  inherited;
  if busqueda.Text <> '' then
   (ds.DataSet as tadodataset).locate('Empleadoid',busqueda.Text, []);
end;

procedure TModeloTrans.busquedaExit(Sender: TObject);
begin
  inherited;
  busqueda.Clear;
end;

procedure TModeloTrans.AAgregarExecute(Sender: TObject);
begin
  inherited;
  ds.DataSet.append ;
  
end;

procedure TModeloTrans.ATipoExecute(Sender: TObject);
var
  idTr: Variant;
begin
  inherited;

{  if (ld.Execute) and (not(dmNom.NominasCerrada.value)) then
  begin
     if not(ds.state in [dsInsert,dsedit]) then ds.Edit;
        ds.DataSet.FieldByName(TipoField).value := xTipo;

  end;     }
  if not dmNom.NominasCerrada.Value then begin
    idTr := fBuscar(TBusqueda, 'TipoTransaccionID', False, 'TipoTransaccionFind');
    if idTr <> NULL then begin
      if not (ds.DataSet.State in dsEditModes) then
        ds.DataSet.Edit();
      ds.DataSet.FieldByName(TipoField).Value := idTr;
    end;
  end;

end;

procedure TModeloTrans.ASalirExecute(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TModeloTrans.ALocateExecute(Sender: TObject);
begin
  inherited;
   busqueda.SetFocus;
end;

procedure TModeloTrans.ABuscarExecute(Sender: TObject);
var
  xx : variant;
begin
  inherited;

  xx := fBuscar(TBusqEmpleado, 'EmpleadoID');
  if not(xx = null) then
  begin
    if (ds.State in [dsInsert]) then
        ds.DataSet.FieldByName('EmpleadoID').Value := xx
    else
        ds.DataSet.Locate('EmpleadoID',xx,[]);
  end;

end;

end.

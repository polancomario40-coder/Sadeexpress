unit uform;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Forms, Dialogs,
  ActnList, Db, StdCtrls, ExtCtrls,  Buttons, ComCtrls, Grids, DBGrids,
  DBTables, DBctrls, ImgList, Wwdatsrc, udata, wwDialog, wwidlg, Wwlocate,
  UUtiles, dxCntner, dxTL, dxDBCtrl, dxDBGrid, wwdbedit, Variants, uformx,
  dxEditor, dxExEdtr, dxEdLib, dxDBELib;

type

  TFForm = class(TFFormx)
    DS: TwwDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSUpdateData(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    DSActive : boolean;
    FEnter2Tab: Boolean;
  Protected
    procedure CrearLog(Accion : String); override;
    procedure MiVerImagen; override;
  public
    procedure DoShowstate; override;
    property Enter2Tab: Boolean read FEnter2Tab write FEnter2Tab;
end;


var
  FForm: TFForm;

implementation

uses uImageView;

{$R *.DFM}


Procedure TFForm.DoShowstate;
begin
  inherited;
  XShow := true;
end;



// genera un doble click para el control activo
procedure TFForm.FormCreate(Sender: TObject);
begin
  inherited;
  Enter2Tab := True;

  if not(ds.dataset = nil)  then
  begin
    dsActive := ds.DataSet.Active;
    if not(DS.dataset.active) then
    begin
      try
        DS.dataset.open;
      except
      end;
    end;
  end;

end;


// cambia el comportamiento de algunas teclas para algunos controles
procedure TFForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    inherited;
    
    if not Enter2Tab then
      Exit;

    if (key = vk_return) and (activecontrol is TcustomGrid) and (shift = [ssCtrl]) then
    begin
       key := 0;
       Perform(CM_DialogKey, VK_TAB, 0);// SelectNext(ActiveControl,True,True); // envia un mensaje de tacla tab
       exit;
    end;

    //  cuando recibe la tecla enter, la cancela y envia la tecla tab
    if (key = vk_return) and (
       (not(activecontrol is TButton)) and
       (not(activecontrol is TcustomGrid)) and
       (not(ActiveControl is TCustomMemo)) and
       (not(ActiveControl is TCustomdxDBGrid))) then
    begin
       if (ActiveControl is TdxDBMemo) then
          if (TdxDBMemo(ActiveControl).wantreturns) then
             exit;
       if (ActiveControl is TwwDBEdit) then
          if (TwwDBEdit(ActiveControl).wantreturns) then
             exit;

       key := 0;
       Perform(CM_DialogKey, VK_TAB, 0);//SelectNext(ActiveControl,True,True);//  // envia un mensaje de tacla tab
       Exit;
    end;

   if (key = vk_F1) and (shift = [ssCtrl]) then
      application.Minimize;
end;

// procedimento que verifica si algun campo requerido no ha sido llenado antes de postear
procedure TFForm.DSUpdateData(Sender: TObject);
begin
{  for x := 0 to ds.dataset.fieldcount - 1 do
   begin
      if (ds.dataset.Fields[x].Required) and (ds.dataset.Fields[x].isnull) then
         raise ERequiredError.create('Complete correctamente la informacion de : ' + uppercase(ds.dataset.Fields[x].displaylabel));
   end;}
end;

procedure TFForm.FormDestroy(Sender: TObject);
begin
   if not(ds.dataset = nil) then
      DS.dataset.active := dsActive;
end;

procedure TFForm.MiVerImagen;
begin
  inherited;
  VerImagen(ds.dataset.fieldbyname(ImageidField).value, TIPODOC);
end;

procedure TFForm.CrearLog(Accion: String);
begin
  //inherited; se debe ignorar el inherited para que use esta nueva implementacion
  if LogField = '' then
    inherited
  else
    dm.CreateLog(Accion, self.Caption, ds.dataset.fieldbyname(LogField).DisplayName + ':' + ds.dataset.fieldbyname(LogField).AsString);
end;



end.

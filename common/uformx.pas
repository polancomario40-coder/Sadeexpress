unit uformx;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Forms, Dialogs,ppReport,
  StdCtrls, ExtCtrls,  Buttons, ComCtrls, udata, UUtiles, Variants;

type

  TFFormx = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
  Protected
    AutoOpenDataset : boolean;
    appEstado : TappEstado;
    HandleTrans : boolean;
    HandleState : boolean;
    HandleGuardarState : boolean;
    CampodeCierre : string;
    XAutoOpen    : Boolean;
    LogField : string;
    TipoDoc : string;
    ImageidField : string;
    procedure MiVerImagen(); Virtual;
    procedure CrearLog(Accion : String); virtual;
  public
    Permisos     : TStringList;
    XListaParams : String;
    ShowState    : TShowState;
    XField       : String;
    XResultField : String;
    XValue       : Variant;
    XCloseonSave : Boolean;
    XResultado   : Variant;
    XShow        : Boolean;
    XNoModal     : Boolean;
    SegName      : string;
    Modulo       : string;
    procedure DoShowstate; virtual;
    procedure Imprimir(rpt: TppReport);
end;


var
  FFormx: TFFormx;

implementation

uses uImageView;

{$R *.DFM}

// genera un doble click para el control activo
procedure TFFormx.FormCreate(Sender: TObject);
var
  strName: string;
begin
  // todos estos valores se deben asignar despues del inherites
  // en los formularios que heredan del framework
  Modulo := '';
  AutoOpenDataset := True;
  LogField := '';
  ImageidField := '';
  TIPODOC := strName;
  CampodeCierre := '';  //camp de fecha para verificar cierre de operaciones
  XNoModal := false;  // si el formulario no debe ser modal
  // Nombre del formulario para verificar la seguridad en la db,
  // por defecto es la case menos la 'T'.  Se puede cambiar en los descendientes
  // FormCreate antes del inherited pero ya no es obligatorio.
   strName := Copy(ClassName,2,Length(ClassName) - 1);
  if SegName = '' then SegName := strName;
  // si es falso la funcial modalshow no abrira el formulario
  XShow := true;
  // campo de resultado
  XResultField := '';
  XResultado := Null;
  // lista de parametro recibidos en el formulario. solo los mantenimiento implementan
  // esta funcionalidad
  XListaParams := '';
  HandleTrans := true; //si es true el framework maneja las transacciones al guardar
  HandleState := true; // si es true el framework maneja el estado de los botones
  HandleGuardarState := true;
  //asigna los permisos del usuario actual a la propiedad de la forma
  Permisos := dm.apppermisos(SegName);
  //remover cuando seguridad este perfecta  // esto registra los nombre de objetos en la seguridad
  dm.SegObjetoExiste(strName, Caption);
end;


Procedure TFFormx.DoShowstate;
begin
  XShow := dm.Tienepermiso(pAbrir, Permisos);
  if not(XShow) then abort;
end;

procedure TFFormx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if XNoModal then
    Action := caFree;
end;

procedure TFFormx.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_F5) and (shift = [ssCtrl]) and (ImageidField <> '') then
    MiVerImagen();
end;

procedure TFFormx.MiVerImagen;
begin
  if ImageidField = '' then abort;
end;

procedure TFFormx.CrearLog(Accion : String);
begin
  dm.CreateLog(Accion, self.Caption, '');
end;

procedure TFFormx.Imprimir(rpt: TppReport);
begin
  UUtiles.ImprimirReporte(rpt);
end;

end.

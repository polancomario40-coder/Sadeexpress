unit uMantClass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ExtCtrls, Grids, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Gradient, uform, Wwdatsrc, ActnList, ImgList, Buttons,
  cxLookAndFeelPainters, cxButtons, dxExEdtr, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxEditor, dxEdLib, dxDBELib,ubusquedabase;

type
  TMantClass = class(TFForm)
    Gradient1: TGradient;
    Gradient2: TGradient;
    Acciones: TActionList;
    AAyuda: TAction;
    ANuevo: TAction;
    AEditar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    ABorrar: TAction;
    ALocalizar: TAction;
    Asalir: TAction;
    Aprint: TAction;
    AAnular: TAction;
    AAprobacion: TAction;
    ImageList: TImageList;
    btImprimir: TcxButton;
    btLocalizar: TcxButton;
    btNuevo: TcxButton;
    btCancelar: TcxButton;
    btGuardar: TcxButton;
    btBorrar: TcxButton;
    btSalir: TcxButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AAnularExecute(Sender: TObject);
    procedure AAprobacionExecute(Sender: TObject);
    procedure ABorrarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure AEditarExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ALocalizarExecute(Sender: TObject);
    procedure ANuevoExecute(Sender: TObject);
    procedure AprintExecute(Sender: TObject);
    procedure AsalirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FEnter2Tab: Boolean;
    FAutoCodigo: Boolean;
    FOcultarC1: Boolean;
    FFormTitle: string;
    FBusqField: string;
    FspName: string;
    FDefaults: TStringList;
    FBusqAutofit: Boolean;
    FBusqMaxColSize: integer;

    procedure SetTitle(const Value: string);
    { Private declarations }
  protected
    TFBusqueda : TBusquedaBaseClass;
    property BusqField: string read FBusqField write FBusqField;
    property OcultarC1: Boolean read FOcultarC1 write FOcultarC1;
    property spName: string read FspName write FspName;
    property AutoCodigo: Boolean read FAutoCodigo write FAutoCodigo;
    property Enter2Tab: Boolean read FEnter2Tab write FEnter2Tab;
    procedure UserAutoCodigo; virtual;
    procedure UserPreAutoCodigo; virtual;
    Procedure AsignarParamsList();
    function Localizar(const id : Variant) : boolean; virtual;
    function Busqueda: variant;

    procedure browsebotonstate; virtual;
    procedure Editbotonstate; virtual;
    procedure Newbotonstate; virtual;

    procedure doNuevo; virtual;
    procedure doEditar; virtual;
    procedure doGuardar; virtual;
    procedure doCancelar; virtual;
    procedure doSalir; virtual;
    procedure doBorrar; virtual;
    procedure doPrint; virtual;

    procedure AsignarDafaults; virtual;
  public
    { Public declarations }
    procedure Nuevo; virtual;
    procedure Editar; virtual;
    procedure Guardar; virtual;
    procedure Cancelar; virtual;
    procedure Salir; virtual;
    procedure Borrar; virtual;
    procedure DoShowState; override;

    constructor Create(Aowner: TComponent); override;
    destructor Destroy; override;
    property FormTitle: string read FFormTitle write SetTitle;
    property DefaultValues: TStringList read FDefaults;
    property BusqAutoFit: Boolean read FBusqAutofit write FBusqAutofit;
    property BusqMaxColSize: integer read FBusqMaxColSize write FBusqMaxColSize;
  end;

var
  MantClass: TMantClass;

implementation

uses Udata, UUtiles, uBusqueda, uBusquedaDX;

{$R *.dfm}

procedure TMantClass.Cancelar;
begin
    SelectFirst;
    //DS.DataSet.Cancel;
    doCancelar();
    //BatchUpdateCancel(ds.dataset, False);
    DS.AutoEdit := false;
    //if handlestate then
    appestado := appBrowse;
    //if HandleState then
      Browsebotonstate;
    If XResultField <> '' then
      XResultado := ds.DataSet.FieldValues[XResultField]
    Else
      XResultado := Null;

    if XCloseonSave then
      Salir();
end;

constructor TMantClass.Create(Aowner: TComponent);
begin
  inherited Create(Aowner);
  Enter2Tab := True;
  FDefaults := TStringList.Create();  
end;

procedure TMantClass.Editar;
begin
  if (dm.Tienepermiso(pEditar, SegName,'Editar','')) then
  begin
    try
      DS.AutoEdit := True;
      //DS.Edit;
      doEditar();
    except
      raise exception.create('No es posible editar el registro actual');
      exit;
    end;
   //if HandleState then
    appestado := appEdit;
   //if HandleState then
    Editbotonstate;
  end
  else
  begin
    showmessage('Permiso de modificar denegado');
    abort;
  end;
end;

procedure TMantClass.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [] then begin
    case Key of
      vk_return: begin
        if not Enter2Tab then
          Exit;

        SelectNext(ActiveControl, True, True);
        Key := 0;
      end;
    end;
  end;
  
  Inherited;
end;

procedure TMantClass.Guardar;
begin
  SelectFirst;
  ChkCamposRequeridos(ds.DataSet);

  try
   if (CampodeCierre <> '') and (ds.DataSet.FieldByName(CampodeCierre).Value <= dm.Cierre(Modulo)) then
       Raise exception.Create('La fecha del documento ha sido cerrada');

   if (appestado = appInsert)  then
   begin
      if not (ds.state in [dsedit, dsinsert]) then ds.edit;
      UserAutoCodigo();
      doGuardar();
   end
   else begin
      doGuardar();
   end;
  except
   on e: Exception do begin
      raise exception.create('Error al guardar los datos' + #13 + e.Message);
   end;
  end;

  if (appestado = appInsert) then
    CrearLog('Insercion')
  else
    CrearLog('Edicion');

  if HandleState then begin
    appestado := appBrowse;
    DS.AutoEdit := false;
    Browsebotonstate;
   //ds.DataSet.Refresh;
  end;

  if XResultField <> '' then
    XResultado := ds.DataSet.FieldValues[XResultField]
  else
    XResultado := Null;

  if XCloseonSave then
    Salir();
end;

procedure TMantClass.Nuevo;
begin
   if (dm.Tienepermiso(pAgregar, Segname, 'Nuevo','')) then
   begin
     try
       doNuevo();
     except
       ShowMessage('No es posible agregar un nuevo registro');
       raise ;
     end;
     DS.autoedit := true;
     //if HandleState then
     appestado := appInsert;
     //if HandleState then
     Newbotonstate;
     UserPreAutoCodigo;
     SelectFirst;
{     if (XField <> '') and (XValue <> null) and (ShowState = showInsert) then begin
//      Nuevo();
        ds.DataSet.FieldByName(xField).Value := xValue;
     end;}
     AsignarDafaults();
   end
   else
   begin
      showmessage('Permiso Denegado');
      abort;
   end;
end;

procedure TMantClass.Salir;
begin
  doSalir();
end;

Procedure TMantClass.Newbotonstate;
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

Procedure TMantClass.Editbotonstate;
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

Procedure TMantClass.browsebotonstate;
begin
    ANuevo.enabled      := dm.TienePermisoShow(pAgregar, permisos);
    if ((CampodeCierre <> '') and (ds.DataSet.FieldByName(CampodeCierre).Value <= dm.Cierre(Modulo))) then
      AEditar.enabled     := false
    else
      AEditar.enabled     := (not(ds.dataset.IsEmpty) and  (dm.TienePermisoShow(pEditar, permisos))); //(Peditar and not(ds.dataset.IsEmpty)) ;

    AGuardar.enabled    := False;
    ACancelar.enabled   := False;

    if ((CampodeCierre <> '') and (ds.DataSet.FieldByName(CampodeCierre).Value <= dm.Cierre(Modulo))) then
      ABorrar.Enabled     := False
    else
      ABorrar.Enabled     := (not(ds.dataset.IsEmpty)) and (not(ds.dataset.IsEmpty) and (dm.TienePermisoShow(pBorrar,permisos))); //(Pborrar and not(ds.dataset.IsEmpty)) ;

    Asalir.Enabled      := True;
    ALocalizar.Enabled  := True;
    Aprint.Enabled      := (not(ds.dataset.IsEmpty)) and (dm.TienePermisoShow(pImprimir,Permisos));
    AAprobacion.enabled := (not(ds.dataset.IsEmpty)) and (dm.TienePermisoShow(pAprobar,Permisos));

    if ((CampodeCierre <> '') and (ds.DataSet.FieldByName(CampodeCierre).Value <= dm.Cierre(Modulo))) then
      AAnular.Enabled     := False
    else
      AAnular.enabled     := (not(ds.dataset.IsEmpty)) and (dm.TienePermisoShow(pAnular,Permisos));
end;


procedure TMantClass.AAnularExecute(Sender: TObject);
begin
  inherited;
  if not(dm.Tienepermiso(pAnular, Permisos)) then
  begin
     raise EPrivilegioError.Create('No tiene autorizacion para realizar esta acción');
  end;
  CrearLog('Anular');

  if XCloseonSave then Asalir.Execute ;
end;

procedure TMantClass.AAprobacionExecute(Sender: TObject);
begin
  inherited;
  if not(dm.Tienepermiso(pAprobar, SegName,'Aprobar','')) then
     raise EPrivilegioError.Create('No tiene autorizacion para realizar esta acción');
  CrearLog('Aprobar');
  if XCloseonSave then Asalir.Execute ;
end;

procedure TMantClass.ABorrarExecute(Sender: TObject);
begin
  Borrar();
end;

procedure TMantClass.ACancelarExecute(Sender: TObject);
begin
    inherited;
    Cancelar();
end;

procedure TMantClass.AEditarExecute(Sender: TObject);
begin
  Editar();
end;

procedure TMantClass.AGuardarExecute(Sender: TObject);
begin
  Guardar();
end;

procedure TMantClass.ALocalizarExecute(Sender: TObject);
var
  i: Variant;
begin
  inherited;
  i := Busqueda();
  if i <> NULL then
    Localizar(i);
  browsebotonstate();
end;

procedure TMantClass.ANuevoExecute(Sender: TObject);
begin
  Nuevo();
end;

procedure TMantClass.AprintExecute(Sender: TObject);
begin
  inherited;
  if not(dm.Tienepermiso(pImprimir, SegName,'Imprimir','')) then
     raise exception.create('Permiso de Imprimir Denegado');

  doPrint();
end;


procedure TMantClass.AsalirExecute(Sender: TObject);
begin
  doSalir();
end;

procedure TMantClass.Borrar;
begin
  //doBorrar();
  if (dm.Tienepermiso(pBorrar, SegName,'Borrar','')) then
  begin
    SelectFirst;
    try
      if not(ds.dataset.isempty) then
      begin
         CrearLog('Borrado');
         //DS.DataSet.Delete;
         doBorrar();
         // si usa batch updates
         //BatchUpdateCancel(ds.dataset, True);
      end
    Except
        //showmessage('El Registro no pudo ser borrado, es posible que hayan registros dependientes');
        raise exception.create('El Registro no pudo ser borrado, es posible que hayan registros dependientes');
    end;
  end
  else
  begin
    showmessage('Permiso de Borrar Denegado');
    Abort;
  end;

  if XCloseonSave then
    Salir();
//  else
 //   Nuevo();
end;

procedure TMantClass.UserAutoCodigo;
begin

end;

procedure TMantClass.UserPreAutoCodigo;
begin

end;

procedure TMantClass.AsignarParamsList;
var
  g : integer;
  str : string;
  LstP: TStringList;
begin
  str := StringReplace(XListaParams,'+',(#10#13),[rfReplaceAll, rfIgnoreCase]);

  LstP := TStringList.Create;
  LstP.Text := Str;
  if LstP.Text = '' then
    exit
  else begin
    For g := 0 to lstP.Count - 1 do
    begin
      DefaultValues.Add(LstP[g]);
    end;
  end;
end;

function TMantClass.Localizar(const id: Variant): boolean;
begin
  Result := False;
end;

function TMantClass.Busqueda(): variant;
Begin
  if (TfBusqueda <> nil) and (Busqfield <> '') then
  begin
//     if spname = '' then
//       Result :=  fbuscar(TfBusqueda, Busqfield, OcultarC1)
//     else
       Result :=  TFBusqueda.Buscar(Busqfield, OcultarC1, spname, BusqAutoFit, BusqMaxColSize);
  end
  else
  begin
    raise exception.Create ('Parametros de busqueda no asignado, llamar a soporte')  ;
  end;
end;


procedure TMantClass.SetTitle(const Value: string);
begin
  FFormTitle := Value;
  Caption := dm.ConfiguracionCompania.AsString + ':' + Value;
end;

procedure TMantClass.DoShowState;
begin
  inherited DoShowState();

  XShow := True;
//  Este chequeo debe ser el primero pues puede cambiar el showstate
  If (ShowState = showFindInsert) and (dm.Tienepermiso(pAbrir, SegName,'Abrir','')) Then
  begin
    If (XValue <> Null) and (Localizar(XValue)) then
       Browsebotonstate
    else
       ShowState := ShowInsert;
  end;

  If (ShowState = showInsert) and (dm.Tienepermiso(pAgregar, Segname, 'Nuevo',''))Then
  begin
    //ANuevo.Execute;
    if (XField <> '') and (XValue <> Null) then
       DefaultValues.Add(XField + '=' + VarToStr(XValue)) //ds.DataSet.FieldByName(XField).Value := XValue
    else if XListaParams <> '' then
       AsignarParamsList();

    Nuevo();
  end;

  If (ShowState = showEdit) and (dm.Tienepermiso(pEditar, Segname, 'Editar','')) Then
  Begin
    If (XValue <> Null) and (Localizar(XValue)) then
       Editar() 
    else
       xShow := false;
  End;

  If (ShowState = showFind) and (dm.Tienepermiso(pAbrir, SegName, 'Abrir','')) Then
  begin
    If (XValue <> Null) and (Localizar(XValue)) then
       Browsebotonstate
    else
       xShow := false;
  end;

  If (ShowState = showDelete) and (dm.Tienepermiso(pBorrar, Segname,'Borrar','')) Then
  begin
    If (XValue <> Null)  and (Localizar(XValue)) then
    begin
      ABorrar.Execute;
      XShow := False;
    end;
  end;

  If (ShowState = showAprobar) and (dm.Tienepermiso(pAprobar, SegName, 'Aprobar','')) Then
  begin
    If (XValue <> Null) and Localizar(XValue) then
    begin
       AAprobacion.execute;
       if XCloseonSave then xShow := false;
    end;
  end;

  If (ShowState = showAnular) and (dm.Tienepermiso(pAprobar, Segname, 'Anular','')) Then
  begin
    If (XValue <> Null) and Localizar(XValue) then
    begin
       AAnular.execute;
       if XCloseonSave then xShow := false;
    end;
  end;

  If (ShowState = showPrint) and (dm.Tienepermiso(pImprimir, Segname, 'Imprimir','')) Then
  begin
    If (XValue <> Null) and Localizar(XValue) then
    begin
       //APrint.execute;
       doPrint();
       if XCloseonSave then xShow := false;
    end;
  end;
end;

procedure TMantClass.doBorrar;
begin

end;

procedure TMantClass.doCancelar;
begin

end;

procedure TMantClass.doEditar;
begin

end;

procedure TMantClass.doGuardar;
begin

end;

procedure TMantClass.doNuevo;
begin

end;

procedure TMantClass.doSalir;
begin
  close;
end;

procedure TMantClass.FormCreate(Sender: TObject);
begin
  inherited;
  OcultarC1 := false;
  BusqAutoFit := True;
  BusqMaxColSize := -1;
  tfBusqueda := TBusquedaDX;
  Busqfield := '';
  spName := '';  //sp de la busqueda easy si es '' usar busqueda normal
  appestado := appBrowse;
  DS.AutoEdit := false;
  Browsebotonstate;
end;

procedure TMantClass.doPrint;
begin

end;

procedure TMantClass.AsignarDafaults;
var
 i: Integer;
 fld: TField;
 s: string;
begin
  if (DefaultValues = nil) or (DefaultValues.Count = 0) then
    exit;
  if appEstado in [appEdit, appInsert] then begin
    if (ds.DataSet <> nil) then begin
      if not (ds.DataSet.State in dsEditModes) then
        ds.DataSet.Edit();

      for i := 0 to DefaultValues.Count - 1 do begin
        s := DefaultValues.Names[i];
        fld := ds.DataSet.FindField(s);
        if fld <> nil then
          fld.Asstring := DefaultValues.Values[s];
      end;
    end;
  end;
end;

destructor TMantClass.Destroy;
begin
  FDefaults.Free();
  inherited Destroy();
end;

end.

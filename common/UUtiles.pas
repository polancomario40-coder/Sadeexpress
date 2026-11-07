unit UUtiles;

interface

uses
  SysUtils, Dialogs, Forms, ADODB, Variants, Classes, DB, ComObj, dateUtils, clipbrd,
  Graphics, Types, Registry, Windows, uBusquedaBase,Controls,cxGrid,jpeg,  ppReport,ppDBPipe,
  Wwdbigrd, Wwdbgrid, cxGridDBBandedTableView, cxGridDBTableView, cxGridTableView;
type
 TappEstado  = (appBrowse, appEdit, appInsert, appFilter);
 TappPermiso = (pAbrir, pAgregar, pEditar, pBorrar, pImprimir, pAnular, pAprobar);
 TSetPermiso = Set of Tapppermiso;
 TShowState  = (showBrowse, showEdit, showInsert, showFilter, showFind, ShowDelete, ShowAprobar, ShowAnular, ShowPrint, ShowFindInsert);
  // error que se muestra cuando un campo es abligatorio
 ERequiredError = class(Exception);
  // Error que se muestra cuando no se tiene permiso para algo
 EPrivilegioError = class(Exception);

 TRGBArray = ARRAY[0..32767] OF TRGBTriple;
 pRGBArray = ^TRGBArray;

 TListaIds = array of Variant;

  tAsTipo = Class
  Private
    vValue       : String;
    vAsString   : String;
    vAsBoolean  : Boolean;
    vAsCurrency : Currency;
    vAsInteger  : Integer;
    vAsGuid     : tGuid;

    Procedure SetValue(Const Value: String);

    Procedure InitData;
  Public
    Constructor Create;
    Destructor  Destroy; Override;
    Procedure   Free;

  Published
    Property    Value           : String        Read vValue              Write SetValue;
    Property    AsString        : String        Read vAsString;
    Property    AsBoolean       : Boolean       Read vAsBoolean;
    Property    AsCurrency      : Currency      Read vAsCurrency;
    Property    AsInteger       : Integer       Read vAsInteger;
    Property    AsGuid          : tGuid         Read vAsGuid;
End;

{Function ShowMyForm(tf : TFormClass; Estado : TShowState; List : string; CloseonSave : boolean = false): Tform;}
procedure WriteToEventLog(Const Clave, Mensaje : String);
Function ComputerName : String;
Function ReturnAsList(Const Coneccion : TADOConnection; Const  Query : String) : TStringList; overload;
Function ReturnAsList(Const Conexion : String; Const  Query : String) : TStringList; overload;


Function FindMax(Donde : String; Campo : String; Condicion : String = '') : LongInt;
Procedure ModlessShow(tf : TFormClass); OverLoad;
Procedure ModlessShow(tf : TFormClass; Estado : TShowState; Valor : Variant; Field : String = ''; CloseonSave : boolean = false); OverLoad;
Procedure ModalShow(tf : TFormClass); OverLoad;
Procedure ModalShow(tf : TFormClass; Estado : TShowState; Valor : Variant; Field : String = ''; CloseonSave : boolean = false); OverLoad;
// esta usa un strinlist.text (FIELD=VALOR) para pasar varios parametros al agregar un record nuevo
Procedure ModalShow(tf : TFormClass; Estado : TShowState; List : String; CloseonSave : boolean = false); OverLoad;
Procedure ModlessShow(tf : TFormClass; Estado : TShowState; List : String; CloseonSave : boolean = false); OverLoad;
Function ModalShowResult(tf : TFormClass; Estado : TShowState; Valor : Variant; Field : String = ''; CloseonSave : boolean = false; RField : string = ''):Variant; OverLoad;
// esta usa un string (FIELD=VALOR+FIELD=VALOR+FIELD=VALOR) para pasar varios parametros al agregar un record nuevo
Function ModalShowResult(tf : TFormClass; Estado : TShowState; List : String; CloseonSave : boolean = false; RField : string = ''):Variant; OverLoad;
Function ReturnValue(pTabla, pCampo, pCondicion : String) : String; // Esta funcion retornaba un varian anteriormente
Function ReturnVariant(pTabla, pCampo, pCondicion : String) : Variant; // Esta funcion retornaba un varian anteriormente
Function ReturnAsValue(pTabla, pCampo, pCondicion : String) : tAsTipo;
Function SaveStrToFloat(Cadena : String) : Real;
Function SaveStrToCurr(Cadena : String) : Currency;
Function SaveStrToInt(Cadena : String) : Integer;
Function IFF(pCondicion : Boolean; IfTrue, IfFalse : Variant) : Variant;
Function fBuscar(fBusq : TBusquedaBaseClass; ReturnField:string; OcultarC1 : boolean = false;
  spName :string = '') : Variant;
function BuscarDX(ReturnField:string; OcultarC1 : boolean = false;
  spName :string = ''; AAutoFit: Boolean = True; ColMaxWidth: Integer = -1) : Variant;
Function fBuscarOld(fBusq : tFormClass; ReturnField:string; OcultarC1 : boolean = false; 
  spName :string = '') : Variant; 
procedure DetalleUpdate(dts : Tdataset; valor : variant; detailfield : string);
Function SetFaxFiles(const fname,Name,SenderName,Number,computer : string): Boolean;
Function SendFax(Const FileName,Name,SenderName,Number : string): integer;
Function StartFax(Const computer : string):integer;
Function EndFax : integer;
function WinUserName: string;
// *** Funciones basica para leer, revisar, escribir al registry
Function _ExisteRegValue(pMasterKey, pKey, IoS : String) : Boolean;
Procedure _SetRegValue(pMasterKey, pKey : String; pValor : Integer); OverLoad;
Function _GetRegValue(pMasterKey, pKey : String; IoS : String) : String; OverLoad;
Procedure _SetRegValue(pMasterKey, pKey : String; pValor : String); OverLoad;
Function _GetRegValue(pMasterKey, pKey : String; IoS : Integer) : Integer; OverLoad;
Function _TruncString(pCadena : String; pTamano : Byte) : String;
Function _Centraliza(sCadena : String; iTamano : Integer) : String;
Function PadL(S : String; Tamano : Integer = 40; Direccion : Char = 'D') : String;
Procedure ChkCamposRequeridos(Dataset : TDataset);
Function MonToLit(Number : Extended; WithPesos : Byte) : String;
function EncryptString(const PW : String; Reversar : Boolean = False) : String;
procedure AbrirCaja();
procedure BuscarCuenta(field : TstringField);
//Procedure CxGridReadOnly(readonly: boolean; Grid :TcxGridDBBandedTableView); overload;
Procedure CxGridReadOnly(readonly: boolean; Grid :TcxGridTableView); overload;
Procedure CxGridReadOnly(readonly: boolean; Grid :TwwDBGrid); overload;
Procedure CxGridReadOnly(readonly: boolean; grid: TcxGrid); overload;
function GetTempFolder: String;
function Confirmar(const texto: string): Boolean;
procedure SmoothResize(abmp:Graphics.TBitmap; NuWidth,NuHeight:integer);

function JoinDateAndTime(ADate,ATime: TDateTime): TDateTime;
procedure SendOutlookMail(const rec: string; const sub: string;
const body: string; const attfiles: string; const display: Boolean = false; const clip: Boolean = False);

procedure SendRPTEmail(const email: string; const subject: string; const body: string;
const ref: string; const rpt: TppReport; const Fileformat: string = 'pdf'; const outlook: Boolean = true);

function GenerateUniqueString: string;
function GetIdsFromDataSet(data: TDataSet; const fname: string): TListaIds;
procedure LoadIdsIntoDataSet(const ids: TListaIds; const fname: string; data: TDataSet);
function IndexOfId(const id: Variant; ids: TListaIds): Integer;
procedure ImprimirReporte(rpt: TppReport; const key: string = ''; const thumbs: Boolean = False);
function CrearArhivoFormato(rpt: TppReport; const key: string = ''): Boolean;
function IsValidEmail(const Value: string): Boolean;
function PadLeft(const sIn: string; const Len: Integer; const chr: Char): string;
function PadRight(const sIn: string; const Len: Integer; const chr: Char): string;
function FieldToColumn(aField: TField; const size: Integer): string;


Var
  gv_DBDateFormat   : string;
  FaxServer         : OleVariant;
  ShowPrintDialog: Boolean;

implementation

uses Udata, uBusqueda, uformx, uBusquedaDX, ueMails7;

procedure SendRPTEmail(const email: string; const subject: string;
const body: string; const ref: string; const rpt: TppReport;
const Fileformat: string = 'pdf'; const outlook: Boolean = true);
 var
  Myfile : string;
  destino: string;
  showPrintDlg: Boolean;
  device: string;
  emailForm : TeMail;
begin
  emailForm := TeMail.Create(nil);

  destino := email;
  showPrintDlg := rpt.ShowPrintDialog;
  device := rpt.DeviceType;

  if not(inputquery('Confirmar Direccion', 'Confimacion',destino)) then abort;

  if fileformat = 'pdf' then
    MyFile := GetTempFolder()+'RPT' + ref + '.pdf'
  else
    MyFile := GetTempFolder()+'RPT' + ref + '.jpg';
  try


    SysUtils.DeleteFile(MyFile);
    if fileFormat = 'pdf' then
      rpt.DeviceType := 'PDF'
    else
      rpt.DeviceType := 'JPEG';

    rpt.ShowPrintDialog := false;
    rpt.ShowPrintDialog := false;
    rpt.TextFileName := MyFile;
    rpt.Print;
    if eMailForm.MailSend(Destino, subject , body ,MyFile,'TXT',not outlook) <> 0 then
      raise exception.Create('Error al enviar el eMail, verifique');

  finally
    rpt.ShowPrintDialog := showPrintDlg;
    rpt.DeviceType := device;
    emailForm.Release;
  end;
end;



function GetTempFolder: String;
begin
  result := GetEnvironmentVariable('TEMP');
end;

procedure BuscarCuenta(field : TstringField);
var
  x : variant;
begin
  x := fbuscar(TBusqueda, 'idCuenta', false, 'FindCuentaContable');
  if x <> null then begin
    if (not(field.dataset.state in dseditmodes)) then field.dataset.edit;
    field.value := x;
  end;
end;

Function GetConexion(const Conexion : string) : TADOConnection;
begin
 try
   Result := TADOConnection.Create(nil);
   Result.ConnectionString := Conexion;
   Result.LoginPrompt := false;
   Result.Connected := true
 Except
   raise
 end
end;

function RomanToDec(Roman : String): LongInt;
const
  Numeros : Array[1..13] of Integer =  (1000, 900, 500, 400, 100, 90, 50, 40,
                                        10,   9,   5,   4,   1);
  Romanos : Array[1..13] of String  =  ('M', 'CM', 'D', 'CD', 'C', 'XC', 'L',
                                        'XL', 'X', 'IX', 'V', 'IV', 'I');
var
  i : Integer;
  Ro : String;
  Longitud : Integer;
begin
  Result := 0;

  Roman := UpperCase(Roman);

//  if EsRomano(Roman) then
    for i := 1 to 13 do
    begin
      Longitud := Length(Romanos[i]);
      Ro := Copy(Roman, 1, Longitud);
      while ((Length(Roman)>0) and (Ro = Romanos[i])) do
      begin
        Roman  := Copy(Roman, 1 + Longitud, Length(Roman) - 1);
        Result := Result + Numeros[i];
        Ro := Copy(Roman, 1, Longitud);
      end;
    end;
end;

procedure AbrirCaja();
var
  f: TextFile;
begin
  AssignFile(f,'LPT1');
  try
  try
    Rewrite(f);
    WriteLn(f,Char(#7));
    System.CloseFile(f);
  except
  end;
  finally
    System.CloseFile(f);
  end;
end;

function WinUserName: string;
var nsize: Cardinal;
    UserName:String;
begin
  nsize := 25;
  SetLength(UserName,nsize);
  if GetUserName(PChar(UserName), nsize) then begin
     SetLength(UserName,nsize-1);
     Result := Username;
  end
  else
     Result := '';
end;


Procedure ChkCamposRequeridos(Dataset : TDataset);
var
  j : integer;
begin

  for j:=0 to dataset.fieldcount - 1 do begin
    with dataset.Fields[j] do begin
      if (Required) and (IsNull) and (AutoGenerateValue = arNone) then begin
        raise exception.Create('El campo "'+ DisplayLabel + '" requiere un valor');
      end;
    end;
  end;

end;

constructor tAsTipo.Create;
begin
  InitData;
end;

destructor tAsTipo.Destroy;
begin
  inherited Destroy;
end;

procedure tAsTipo.Free;
begin
  Destroy;
end;

procedure tAsTipo.InitData;
begin
  vValue := '';
end;

procedure tAsTipo.SetValue(const Value: String);
begin
  vValue := Value;

  Try
    vAsBoolean := StrToBool(vValue);
  Except
    vAsBoolean := False;
  End;
// *****************
  Try
    vAsCurrency := StrToCurr(vValue);
  Except
    vAsCurrency := 0.00;
  End;
//**********************
  Try
    vAsInteger := StrToInt(vValue);
  Except
    vAsInteger := 0;
  End;
//*********************
  Try
    vAsGuid := StringToGuid(vValue);
  Except
  End;

  vAsString := vValue;

end;



Function StartFax(Const computer : string):integer;
Begin
  Result :=0;
  try
    FaxServer := CreateOleObject('FaxServer.FaxServer');
    FaxServer.Connect (Computer);
  except
    on e : exception do begin
       raise exception.create('Error inicializando el servicio de MS Fax' + #13 + e.Message);
    end;
  end;
end;

Function EndFax : integer;
Begin
  Result := 0;
  try
    FaxServer.Disconnect;
    FaxServer := Null;
  except
    on e : exception do begin
       raise exception.create('Error desconectando el servicio de fax' + #13 + e.Message);
    end;
  end;
end;


Function SendFax(Const FileName, Name, SenderName, Number : string): integer;
var
  FaxDoc : OleVariant;
begin
  Result := 0;
  Try
    FaxDoc := FaxServer.CreateDocument(FileName);
    FaxDoc.FaxNumber := Number;
    FaxDoc.RecipientName := Name;
    FaxDoc.SenderName := SenderName;
    FaxDoc.Send;
    FaxDoc := Null;
  except
    on e : exception do begin
       raise exception.create('Error enviando el fax, verifique los parametros' + #13 + e.Message);
    end;
  end;
end;

Function SetFaxFiles(const fname, Name, SenderName, Number, computer : string): Boolean;
begin
  Result := true;

  if StartFax(Computer) <> 0 then
    result := false;

  if not(FileExists(fname)) then
    result := false
  else
    if SendFax(fname, Name, SenderName, Number) <> 0 then
      result := false;

  if EndFax() <> 0 then
    result := false;
end;

procedure DetalleUpdate(dts : Tdataset; valor : variant; detailfield : string);
var
  mybm : string;
begin
  if dts.IsEmpty then exit;

  mybm := Dts.Bookmark;
  dts.DisableControls;
  dts.First;
  while not dts.Eof do
  begin
    if dts.FieldByName(detailfield).Value <> Valor then
    begin
      dts.Edit;
      dts.FieldByName(detailfield).Value := Valor;
      dts.Post;
    end;
    dts.Next;
  end;
  dts.Bookmark := mybm;
  dts.EnableControls;
end;

Procedure ModlessShow(tf : TFormClass); OverLoad;
var
   xform : TForm;
   ok : boolean;
Begin
  ok := true;
  xform := tf.Create(Application);
  if (xform is tfformx) then
  begin
   With (xForm As tfFormx) Do Begin
     //if name <> SegName then Permisos := dm.apppermisos(SegName);
     if not(dm.tienepermiso(pAbrir,Permisos)) then
       raise EPrivilegioError.Create('Acceso denegado, consulte su administrador de sistemas');
     DoShowState; //el formulario valida su propio permiso de entrada
     ok := XShow; // retorna si tiene permiso o no
   end;
  end;

  if ok then
     xform.Show();
end;



Procedure ModalShow(tf : TFormClass); OverLoad;
var
   xform : TForm;
   ok, NoModal : boolean;
Begin
  NoModal := false;
  ok := true;
  xform := tf.Create(Application);
  try
     if (xform is tfformx) then
     begin
       With (xForm As tfFormx) Do Begin
         //if name <> SegName then Permisos := dm.apppermisos(SegName);
         if not(dm.tienepermiso(pAbrir,Permisos)) then
           raise EPrivilegioError.Create('Acceso denegado, consulte su administrador de sistemas');
         DoShowState; //el formulario valida su propio permiso de entrada
         ok := XShow; // retorna si tiene permiso o no
         NoModal := XNoModal;
       end;
     end
     else
       NoModal := False;

     if ok then begin
        if NoModal then
          xform.Show
        else
          xform.ShowModal; // si tiene permiso muestra el formulario
          // si la forma tiene XNoModal = true debe llamar un Show y ver que hacer con el free
     end;
  finally
     if Not NoModal then xform.Free;
  end;
end;


Procedure ModalShow(tf : TFormClass; Estado : TShowState; Valor : Variant; Field : String = ''; CloseonSave : boolean = false); OverLoad;
var
   xform : TForm;
   ok, NoModal : boolean;
Begin
  NoModal := false;
  ok := true;
  if (Estado in [showEdit, showFind, showFindInsert, showFilter]) and (Valor = Null) then
    exit;

    xform := tf.Create(Application);
    try
       if (xform is tfformx) then Begin
         With (xForm As tfFormx) Do Begin
           //if name <> SegName then Permisos := dm.apppermisos(SegName);
           if not(dm.Tienepermiso(pAbrir, Permisos)) then
             raise EPrivilegioError.Create('Acceso denegado, consulte su administrador de sistemas');
           ShowState := Estado;
           XField := Field;
           XValue := Valor;
           XCloseonSave := CloseonSave;
           DoShowState;  //verifica su propio permiso de entrada
           OK := XShow; // retorna si tiene permiso o no para entrar
           NoModal := XNoModal;
         End;
       End
       else
         NoModal := False;

     if ok then begin
        if NoModal then
          xform.Show
        else
          xform.ShowModal; // si tiene permiso muestra el formulario
     // si la forma tiene XNoModal = true debe llamar un Show y ver que hacer con el free
     end;
  finally
     if Not NoModal then xform.Free;
  end;

end;

Procedure ModlessShow(tf : TFormClass; Estado : TShowState; Valor : Variant; Field : String = ''; CloseonSave : boolean = false); OverLoad;
var
   xform : TForm;
   ok : boolean;
Begin
  ok := true;
  if (Estado in [showEdit, showFind, showFindInsert, showFilter]) and (Valor = Null) then
    exit;

    xform := tf.Create(Application);
    if (xform is tfformx) then Begin
       With (xForm As tfFormx) Do Begin
         //if name <> SegName then Permisos := dm.apppermisos(SegName);
         if not(dm.Tienepermiso(pAbrir, Permisos)) then
           raise EPrivilegioError.Create('Acceso denegado, consulte su administrador de sistemas');
         ShowState := Estado;
         XField := Field;
         XValue := Valor;
         XCloseonSave := CloseonSave;
         DoShowState;  //verifica su propio permiso de entrada
         OK := XShow; // retorna si tiene permiso o no para entrar
       End;
     end;

    if ok then
      xform.Show
 end;


Procedure ModalShow(tf : TFormClass; Estado : TShowState; List : string; CloseonSave : boolean = false); OverLoad;
var
   xform : TForm;
   ok, NoModal : boolean;
Begin
  NoModal := false;
  ok := true;
  if (Estado in [showEdit, showFind, showFindInsert, showFilter]) and (List = '') then
    exit;

    xform := tf.Create(Application);
    try
       if (xform is tfformx) then Begin
         With (xForm As tfFormx) Do begin
           //if name <> SegName then Permisos := dm.apppermisos(SegName);
           if not(dm.Tienepermiso(pAbrir, (xform as tfformx).Permisos)) then
             raise EPrivilegioError.Create('Acceso denegado, consulte su administrador de sistemas');

           ShowState := Estado;
           XListaParams := List;
           XCloseonSave := CloseonSave;
           DoShowState;  //verifica su propio permiso de entrada
           OK := XShow; // retorna si tiene permiso o no para entrar
           NoModal := XNoModal;
         End;
       End
       else
         NoModal := False;

     if ok then begin
        if NoModal then
          xform.Show
        else
          xform.ShowModal; // si tiene permiso muestra el formulario
     // si la forma tiene XNoModal = true debe llamar un Show y ver que hacer con el free
     end;
  finally
     if Not NoModal then xform.Free;
  end;
end;

procedure ModlessShow(tf : TFormClass; Estado : TShowState; List : string; CloseonSave : boolean = false); OverLoad;
var
   xform : TForm;
   ok : boolean;
Begin
  ok := true;
  if (Estado in [showEdit, showFind, showFindInsert, showFilter]) and (List = '') then
    exit;

    xform := tf.Create(Application);
    if (xform is tfformx) then Begin
       With (xForm As tfFormx) Do begin
         //if name <> SegName then Permisos := dm.apppermisos(SegName);
         if not(dm.Tienepermiso(pAbrir, (xform as tfformx).Permisos)) then
           raise EPrivilegioError.Create('Acceso denegado, consulte su administrador de sistemas');
         ShowState := Estado;
         XListaParams := List;
         XCloseonSave := CloseonSave;
         DoShowState;  //verifica su propio permiso de entrada
         OK := XShow; // retorna si tiene permiso o no para entrar
       End;
    End;
    if ok then
       xform.Show
end;


{
Function ShowMyForm(tf : TFormClass; Estado : TShowState; List : string; CloseonSave : boolean = false): Tform;
var
   xform : TForm;
   ok, NoModal : boolean;
Begin
  Result := Nil;
  NoModal := true;
  ok := true;
  if (Estado in [showEdit, showFind, showFindInsert, showFilter]) and (List = '') then
    exit;

    xform := tf.Create(Application);
    try
       if (xform is tfformx) then Begin
         With (xForm As tfFormx) Do begin
           //if name <> SegName then Permisos := dm.apppermisos(SegName);
           if not(dm.Tienepermiso(pAbrir, (xform as tfformx).Permisos)) then
             raise EPrivilegioError.Create('Acceso denegado, consulte su administrador de sistemas');
           ShowState := Estado;
           XListaParams := List;
           XCloseonSave := CloseonSave;
           DoShowState;  //verifica su propio permiso de entrada
           OK := XShow; // retorna si tiene permiso o no para entrar
           //NoModal := XNoModal;
         End;
       End
       else
         NoModal := False;

     if ok then begin
        if NoModal then
          xform.Show
        else
          xform.ShowModal; // si tiene permiso muestra el formulario
     // si la forma tiene XNoModal = true debe llamar un Show y ver que hacer con el free
     end;
  finally
     if Not NoModal then
       xform.Free
     else
       Result := xform;
  end;
end;
 }

Function ModalShowResult(tf : TFormClass; Estado : TShowState; Valor : Variant; Field : String = ''; CloseonSave : boolean = false; RField : string = ''):Variant; OverLoad;
var
   xform : TForm;
Begin
  Result := Null;

  if (Estado in [showEdit, showFind, showFilter]) and (Valor = Null) then
  begin
    raise exception.Create('Falta valor del parametro del formulario');
    exit;
  end;
  
    xform := tf.Create(Application);
    try
       if (xform is tfformx) then
       Begin
         if not(dm.Tienepermiso(pAbrir, (xform as tfformx).Permisos)) then
             raise EPrivilegioError.Create('Acceso denegado, consulte su administrador de sistemas');
         With (xForm As tfFormx) Do
         Begin
           ShowState := Estado;
           XField := Field;
           XValue := Valor;
           XCloseonSave := CloseonSave;
           XResultField := RField;
           DoShowState;
           if XShow then ShowModal;
           Result := XResultado;
         End;
       End
       else
         xForm.ShowModal;  //si usara esta funcion siempre es modal

    finally
      xform.Free;
    end;
end;


Function ModalShowResult(tf : TFormClass; Estado : TShowState; List : String; CloseonSave : boolean = false; RField : string = ''):Variant; OverLoad;
var
   xform : TForm;
Begin
  Result := Null;

  if (Estado in [showEdit, showFind, showFilter]) and (List = '') then
  begin
    raise exception.Create('Falta valor del parametro del formulario');
    exit;
  end;
    xform := tf.Create(Application);
    try
       if (xform is tfformx) then
       Begin
          if not(dm.Tienepermiso(pAbrir, (xform as tfformx).Permisos)) then
             raise EPrivilegioError.Create('Acceso denegado, consulte su administrador de sistemas');
         With (xForm As tfFormx) Do
         Begin
           ShowState := Estado;
           XListaParams := List;
           XCloseonSave := CloseonSave;
           XResultField := RField;
           DoShowState;
           if XShow then ShowModal;
           Result := XResultado;
         End;
       End
       else
         xForm.ShowModal;  // si usa esta funcion siempre es modal
    finally
     xform.Free;
    end;
end;


Function ReturnValue;
Var
 qry : TadoQuery;
Begin
 qry := TadoQuery.Create(nil);
 qry.Connection := dm.Coneccion;
 With qry, qry.Sql Do
 Begin
   Clear;
   Add('Select top 1 ' + pCampo + ' From ' + pTabla);
   If pCondicion <> '' Then
     Add(' Where ' + pCondicion);
   Open;
   If RecordCount > 0 Then
     Result := Fields[0].AsString
   Else
     Result := ''
 End;
 qry.Free
End;

Function ReturnVariant;
Var
 qry : TadoQuery;
Begin
 qry := TadoQuery.Create(nil);
 qry.Connection := dm.Coneccion;
 With qry, qry.Sql Do
 Begin
   Clear;
   Add('Select ' + pCampo + ' From ' + pTabla);
   If pCondicion <> '' Then
     Add(' Where ' + pCondicion);
   Open;
   If RecordCount > 0 Then
     Result := Fields[0].value
   Else
     Result := Null;
 End;
 qry.Free
End;


Function SaveStrToFloat;
Begin
  Try
    Result := StrToFloat(Cadena);
  Except
    Result := 0.00
  End;
End;

Function SaveStrToCurr;
Begin
  Try
    Result := StrToCurr(Cadena);
  Except
    Result := 0.00
  End;
End;

Function SaveStrToInt(Cadena : String) : Integer;
Begin
  Try
    Result := StrToInt(Cadena);
  Except
    Result := 0
  End;
End;

Function IFF(pCondicion : Boolean; IfTrue, IfFalse : Variant) : Variant;
Begin
  If pCondicion Then
    Result := IfTrue
  Else
    Result := IfFalse
End;

Function fBuscarOld(fBusq : tFormClass; ReturnField:string; OcultarC1 : boolean = false; 
  spName :string = '') : Variant; 
Begin
  raise exception.Create('Error: esta forma de busqueda ya no es soportada por el framework');// := uBusqueda.fBuscar(fBusq, ReturnField, OcultarC1, spName);
End;

Function fBuscar(fBusq : TBusquedaBaseClass; ReturnField:string; OcultarC1 : boolean = false; 
  spName :string = '') : Variant;
Begin
  Result := fBusq.Buscar(ReturnField, OcultarC1, spName);
End;


function BuscarDX(ReturnField:string; OcultarC1 : boolean = false;
  spName :string = '';AAutoFit: Boolean = True; ColMaxWidth: Integer = -1) : Variant;
begin
  Result := TBusquedaDX.Buscar(ReturnField, OcultarC1, spName,AAutoFit, ColMaxWidth);
end;

Function FindMax(Donde : String; Campo : String; Condicion : String = '') : LongInt;
Var
  qryGeneric : tADOQuery;
Begin
  qryGeneric := tADOQuery.Create(nil);
  qryGeneric.Connection := dm.Coneccion;
  qryGeneric .Sql.Clear;
  qryGeneric .Sql.Text := 'Select Max('+Campo+') As NumeroMaximo From '+Donde;
  If Condicion <> '' Then
  Begin
    qryGeneric.Sql.Add(' WHERE ');
    qryGeneric.Sql.Add(Condicion);
  End;
  qryGeneric .Open;
  If qryGeneric.FieldByName('NumeroMaximo').IsNull Then
    Result := 1
  Else
    Result := qryGeneric.FieldByName('NumeroMaximo').AsInteger+1;
  qryGeneric.Close;
  qryGeneric.Free;
End;

Function ReturnAsValue;
Var
 qry : TadoQuery;
 ElTipo : tAsTipo;
Begin
 ElTipo := tAsTipo.Create;

 qry := TadoQuery.Create(nil);
 qry.Connection := dm.Coneccion;
 With qry, qry.Sql Do
 Begin
   Clear;
   Add('Select ' + pCampo + ' From ' + pTabla);
   If pCondicion <> '' Then
     Add(' Where ' + pCondicion);
   Open;
   If RecordCount > 0 Then
   Begin
     ElTipo.Value := Fields[0].AsString;
     Result := ElTipo;
   End
   Else
   Begin
     ElTipo.Value := '';
     Result := ElTipo;
   End;
 End;
 qry.Free;
// ElTipo.Free;
End;

Function _ExisteRegValue(pMasterKey, pKey, IoS : String) : Boolean;
Var
  Registry : TRegistry;
Begin
  Registry := TRegistry.Create;
  Try
    Registry.RootKey := HKEY_LOCAL_MACHINE;
    Registry.OpenKey('\Software\PDV\'+pMasterKey ,False);
    Try
      if IoS = 'S' then
        Result := (Registry.ReadString(pKey) <> '')
      else
        Result := (Registry.ReadInteger(pKey) <> -1);
    Except
      Result := False;
    End;
  Finally
    Registry.CloseKey;
    Registry.Free;
  End;
End;

Procedure _SetRegValue(pMasterKey, pKey : String; pValor : Integer); OverLoad;
Var
  Registry : TRegistry;
Begin
  Registry := TRegistry.Create;
  Try
    Registry.RootKey := HKEY_LOCAL_MACHINE;
    Registry.OpenKey('\Software\PDV\' + pMasterKey, True);
    Registry.WriteInteger(pKey, pValor);
  Finally
    Registry.CloseKey;
    Registry.Free;
  End;
End;

Function _GetRegValue(pMasterKey, pKey, IoS : String) : String; OverLoad;
Var
  Registry : TRegistry;
Begin
  Registry := TRegistry.Create;
  Try
    Registry.RootKey := HKEY_LOCAL_MACHINE;
    Registry.OpenKey('\Software\PDV\' + pMasterKey, False);
    Result := Registry.ReadString(pKey);
  Finally
    Registry.CloseKey;
    Registry.Free;
  End;
End;

Function _GetRegValue(pMasterKey, pKey : String; IoS : Integer) : Integer; OverLoad;
Var
  Registry : TRegistry;
Begin
  Registry := TRegistry.Create;
  Try
    Registry.RootKey := HKEY_LOCAL_MACHINE;
    Registry.OpenKey('\Software\PDV\' + pMasterKey, False);
    Result := Registry.ReadInteger(pKey);
  Finally
    Registry.CloseKey;
    Registry.Free;
  End;
End;

Procedure _SetRegValue(pMasterKey, pKey : String; pValor : String); OverLoad;
Var
  Registry : TRegistry;
Begin
  Registry := TRegistry.Create;
  Try
    Registry.RootKey := HKEY_LOCAL_MACHINE;
    Registry.OpenKey('\Software\PDV\' + pMasterKey, True);
    Registry.WriteString(pKey, pValor);
  Finally
    Registry.CloseKey;
    Registry.Free;
  End;
End;

Function _TruncString(pCadena : String; pTamano : Byte) : String;
Begin
  If Length(pCadena) > pTamano Then
    Result := Copy(pCadena, 0, pTamano)
  Else
    Result := pCadena;
End;

Function _Centraliza(sCadena : String; iTamano : Integer) : String;
Var
  Donde : Integer;
Begin
  Donde := (iTamano - Length(sCadena)) Div 2;
  Result := StringOfChar(' ',Donde) + sCadena;
End;

Function PadL(S : String; Tamano : Integer = 40; Direccion : Char = 'D') : String;
Begin
  If Direccion = 'I' Then
    Result := S+StringOfChar(' ',Tamano-Length(S))
  Else
    Result := StringOfChar(' ',Tamano-Length(S))+S
End;


Function MonToLit(Number : Extended; WithPesos : Byte) : String;
// Esta Funcion Convierte un Numero Real a letras, aceptando un parametro
// Extended que es el numero a convertir, y otro parametro que especifica
// si se desea incluir en la cadena las palabras pesos y centavos.
// El valor devuelto es una cadena.
var
   dd,Enteros,Decimales,NumeroStr, EnterosPos : String;
   pp,i,j,sergio, k, Decenas, Centenas : Integer;
   ArrNumeros : Array[1..3, 1..19] of String;
begin
     ArrNumeros[1, 1] := 'Un';
     ArrNumeros[1, 2] := 'Dos';
     ArrNumeros[1, 3] := 'Tres';
     ArrNumeros[1, 4] := 'Cuatro';
     ArrNumeros[1, 5] := 'Cinco';
     ArrNumeros[1, 6] := 'Seis';
     ArrNumeros[1, 7] := 'Siete';
     ArrNumeros[1, 8] := 'Ocho';
     ArrNumeros[1, 9] := 'Nueve';
     ArrNumeros[1, 10] := 'Diez';
     ArrNumeros[1, 11] := 'Once';
     ArrNumeros[1, 12] := 'Doce';
     ArrNumeros[1, 13] := 'Trece';
     ArrNumeros[1, 14] := 'Catorce';
     ArrNumeros[1, 15] := 'Quince';
     ArrNumeros[1, 16] := 'Dieciseis';
     ArrNumeros[1, 17] := 'Diecisiete';
     ArrNumeros[1, 18] := 'Dieciocho';
     ArrNumeros[1, 19] := 'Diecinueve';
     ArrNumeros[2, 1] := '';
     ArrNumeros[2, 2] := 'Veinte';
     ArrNumeros[2, 3] := 'Treinta';
     ArrNumeros[2, 4] := 'Cuarenta';
     ArrNumeros[2, 5] := 'Cincuenta';
     ArrNumeros[2, 6] := 'Sesenta';
     ArrNumeros[2, 7] := 'Setenta';
     ArrNumeros[2, 8] := 'Ochenta';
     ArrNumeros[2, 9] := 'Noventa';
     ArrNumeros[3, 1] := 'Ciento';
     ArrNumeros[3, 2] := 'Doscientos';
     ArrNumeros[3, 3] := 'Trescientos';
     ArrNumeros[3, 4] := 'Cuatrocientos';
     ArrNumeros[3, 5] := 'Quinientos';
     ArrNumeros[3, 6] := 'Seiscientos';
     ArrNumeros[3, 7] := 'Setecientos';
     ArrNumeros[3, 8] := 'Ochocientos';
     ArrNumeros[3, 9] := 'Novecientos';

     Result := '';
     Enteros := '';
     Decimales := '';
     NumeroStr := Trim(FloatToStr(Number));
     If   POS('.', NumeroStr) > 0 then
     begin
          Enteros := Copy(NumeroStr, 1, POS('.', NumeroStr) - 1);
          Decimales := Copy(NumeroStr, POS('.', NumeroStr) + 1, Length(NumeroStr) - POS('.', NumeroStr));
          if length(decimales)<2 then
              if length(decimales) = 0 then
                  decimales := '00'
              else
                  decimales := decimales +'0';

     end

     else
       Enteros := NumeroStr;

     i := Length(Enteros);
     sergio := i;
     j := 1;
     k := 0;

     While i > 0 do
     begin
          EnterosPos := Copy(Enteros, i - 2, i);

          While Length(EnterosPos) < 3 do
                EnterosPos := '0' + EnterosPos;
          If j = 2 then
          begin

//    modificacion by sergio made problemas con millones ( la palabra mil sobra)

             if (sergio >= 6) then
                begin
                pp:=sergio-6;
                dd:=copy(enteros,pp+1,6);
                If dd = '000000' then
                   begin
                   Result := ' de ' + Result;
                   Inc(k);
                   end
                  else
                   begin
                   If copy(enteros,pp+1,3)<>'000' then
                      Result := 'Mil ' + Result
                      else
                      Result := ' ' + Result;

                   Inc(k);
                   end;
                end
// cuando la cantidad sea menor de millones

               else

                begin

                pp:=sergio-3;
                dd:=copy(enteros,pp+1,3);

                If dd = '000' then
                   begin
                   Result := 'Mil ' + Result;
                   Inc(k);
                   end
                  else
                   begin
                   Result := 'Mil ' + Result;
                   Inc(k);
                   end;

                end

           end

          else

           If k = 1 then
              begin
              Result := 'Millones ' + Result;
              j := 1;
              end;

          Decenas := StrToInt(Copy(EnterosPos, 2, 2));
          If Decenas < 20 then
             begin
               If Decenas <> 0 then
                  if (Decenas = 1) AND (i = Length(Enteros)) AND (WithPesos = 0) then
                     Result := ArrNumeros[1, Decenas] + 'o ' + Result
                     else
                      Result := ArrNumeros[1, Decenas] + ' ' + Result;
             end

          else

          begin
               If Copy(IntToStr(Decenas), 2, 1) <> '0' then
                  if (i = Length(Enteros)) AND (Copy(IntToStr(Decenas), 2, 1) = '1')
                     AND (WithPesos = 0) then
                     Result := 'y ' + ArrNumeros[1, StrToInt(Copy(IntToStr(Decenas), 2, 1))] + 'o ' + Result
                  else
                      Result := 'y ' + ArrNumeros[1, StrToInt(Copy(IntToStr(Decenas), 2, 1))] + ' ' + Result;
               Result := ArrNumeros[2, StrToInt(Copy(IntToStr(Decenas), 1, 1))] + ' ' + Result;
          end;

          If StrToInt(EnterosPos) > 99 then
             begin
               Centenas := StrToInt(Copy(EnterosPos, 1, 1));
               If Centenas <> 0 then
                  if (Centenas = 1) AND (Decenas = 0) then
                      Result := 'Cien ' + Result
                  else
                      Result := ArrNumeros[3, Centenas] + ' ' + Result;
             end;

          Dec(I, 3);
          Inc(j);

     end;

     if Decimales <> '' then begin
       If WithPesos = 1 then
          Result := Result + 'Pesos con ' + Decimales + '/100'
       else
          Result := Result + 'con ' + Decimales + '/100';
     end else begin
       if WithPesos = 1  then
         Result := Result + 'Pesos con 00/100'
       else if WithPesos <> 2 then
         Result := Result + 'con 00/100';
     end;

      Result := uppercase(result);

    if copy(Result,1,11)='UN MILLONES' then
        result := copy(Result,1,9)+copy(result,12,length(result)-11);

end;

function EncryptString;
var
  I : ShortInt;
  OrMask: SmallInt;
begin
  OrMask := 128;
  
  If Reversar Then
  Begin
    SetLength(Result, Length(PW));
    For I := 1 To Length(PW) Do
      Result[I] := Char(ShortInt(PW[I]) And 127);
  End
  Else
  Begin
    SetLength(Result, Length(PW));
    For I := 1 To Length(PW) Do
      Result[I] := Char(ShortInt(PW[I]) Or OrMask);
  End;
end;

procedure WriteToEventLog(Const Clave, Mensaje : String);
  procedure RegisterForEvents;
  var Reg : tRegistry; RegKey : String; app, appname : string; nc : integer;
  begin
    Reg := TRegistry.Create();
    try
      app := Application.ExeName; appname := ExtractFileName(App); Delete(AppName, length(AppName)-3, 4);
      nc := 2;
      RegKey := Format('SYSTEM\CurrentControlSet\Services\EventLog\Application\%s',[AppName]);
      Reg.RootKey := HKEY_LOCAL_MACHINE;
      Reg.OpenKey(RegKey, true);
      Reg.WriteString('CategoryMessageFile', App);
      Reg.WriteString('EventMessageFile', App);
      Reg.WriteInteger('CategoryCount', nc);
      Reg.WriteInteger('TypesSupported', EVENTLOG_SUCCESS or EVENTLOG_ERROR_TYPE or EVENTLOG_WARNING_TYPE or EVENTLOG_INFORMATION_TYPE);
      Reg.CloseKey();
    finally
      Reg.Free()
    end
  end;

var
  eventlog : THandle;
  msg : array [0..2] of PChar;
begin
  RegisterForEvents();
  EventLog := RegisterEventSource(nil, PChar(Clave));
  msg[0] := Pchar(Mensaje);
  ReportEvent(EventLog, EVENTLOG_ERROR_TYPE, 0, 0, nil, 1, 0, @Msg, nil)
end;


function ComputerName: string;
var
  Buffer: array[ 0..MAX_COMPUTERNAME_LENGTH ] of Char;
  MaxSize: Cardinal;
begin
  MaxSize := SizeOf( Buffer );
  if not GetComputerName(@Buffer, MaxSize) then
    raise Exception.Create('Nombre de la Computadora No Determinado' );
  Result := StrPas(@Buffer);
end;

Function ReturnAsList(Const Coneccion : TADOConnection; Const  Query : String) : TStringList; overload;
var Q :   TAdoQuery; x : byte; holder : string;
begin
 Result := TStringList.Create();
 Q := TadoQuery.Create(nil);  Q.Connection := Coneccion; Q.SQL.Text := Query;

 Q.Open();
 if Q.IsEmpty() then exit;
 for x := 0 to Q.FieldCount - 1 do Holder := Holder + Q.Fields[x].FieldName + #9;
 Result.Add(Holder); Holder := '';
 While not Q.Eof do
 begin
   for x := 0 to Q.FieldCount - 1 do Holder := Holder + Q.Fields[x].AsString + #9;
   Result.Add(Holder); Holder := '';
   Q.Next()
 end
end;

Function ReturnAsList(Const Conexion : String; Const  Query : String) : TStringList; overload;
var holder : TADOConnection;
begin
 holder := getConexion(Conexion);
  Result := ReturnAsList(Holder, Query);
 Holder.Free()
end;

function Confirmar(const texto: string): Boolean;
begin
  Result := MessageDlg(texto,mtConfirmation,[mbYes,mbNo],0) = mrYes;
end;

Procedure CxGridReadOnly(readonly: boolean; Grid :TwwDBGrid);
begin
   Grid.DataSource.autoedit := not(readonly);

   if readonly then
     grid.KeyOptions := [dgEnterToTab]
   else
        grid.KeyOptions := [dgEnterToTab,dgAllowDelete,dgAllowInsert];

   Grid.readonly := readonly;

end;

Procedure CxGridReadOnly(readonly: boolean; grid: TcxGrid);
var
  j: Integer;
begin
  for j := 0 to grid.ViewCount - 1 do begin
    if grid.Views[j] is TcxGridTableView then
      cxGridReadOnly(readonly, (grid.Views[j] as TcxGridTableView));
  end;
end;

Procedure CxGridReadOnly(readonly: boolean; Grid :TcxGridTableView);
begin
  grid.OptionsData.Appending := not(readonly);
  grid.OptionsData.Deleting  := not(readonly);
  grid.OptionsData.Inserting := not(readonly);
  grid.OptionsData.Editing   := not(readonly);
end;


procedure SmoothResize(abmp:Graphics.TBitmap; NuWidth,NuHeight:integer);
var
  xscale, yscale : Single;
  sfrom_y, sfrom_x : Single;
  ifrom_y, ifrom_x : Integer;
  to_y, to_x : Integer;
  weight_x, weight_y : array[0..1] of Single;
  weight : Single;
  new_red, new_green : Integer;
  new_blue : Integer;
  total_red, total_green : Single;
  total_blue : Single;
  ix, iy : Integer;
  bTmp : Graphics.TBitmap;
  sli, slo : pRGBArray;
begin
  abmp.PixelFormat := pf24bit;
  bTmp := Graphics.TBitmap.Create;
  bTmp.PixelFormat := pf24bit;
  bTmp.Width := NuWidth;
  bTmp.Height := NuHeight;
  xscale := bTmp.Width / (abmp.Width-1);
  yscale := bTmp.Height / (abmp.Height-1);
  for to_y := 0 to bTmp.Height-1 do begin
    sfrom_y := to_y / yscale;
    ifrom_y := Trunc(sfrom_y);
    weight_y[1] := sfrom_y - ifrom_y;
    weight_y[0] := 1 - weight_y[1];
    for to_x := 0 to bTmp.Width-1 do begin
      sfrom_x := to_x / xscale;
      ifrom_x := Trunc(sfrom_x);
      weight_x[1] := sfrom_x - ifrom_x;
      weight_x[0] := 1 - weight_x[1];
      total_red := 0.0;
      total_green := 0.0;
      total_blue := 0.0;
      for ix := 0 to 1 do begin
        for iy := 0 to 1 do begin
          sli := abmp.Scanline[ifrom_y + iy];
          new_red := sli[ifrom_x + ix].rgbtRed;
          new_green := sli[ifrom_x + ix].rgbtGreen;
          new_blue := sli[ifrom_x + ix].rgbtBlue;
          weight := weight_x[ix] * weight_y[iy];
          total_red := total_red + new_red * weight;
          total_green := total_green + new_green * weight;
          total_blue := total_blue + new_blue * weight;
        end;
      end;
      slo := bTmp.ScanLine[to_y];
      slo[to_x].rgbtRed := Round(total_red);
      slo[to_x].rgbtGreen := Round(total_green);
      slo[to_x].rgbtBlue := Round(total_blue);
    end;
  end;
  abmp.Width := bTmp.Width;
  abmp.Height := bTmp.Height;
  abmp.Canvas.Draw(0,0,bTmp);
  bTmp.Free;
end;

function JoinDateAndTime(ADate,ATime: TDateTime): TDateTime;
var
  y,m,d,h,n,s,ms: Word;
begin
  DecodeTime(ATime,h,n,s,ms);
  DecodeDate(ADate,y,m,d);
  Result := EncodeDateTime(y,m,d,h,n,0,0);
end;

procedure SendOutlookMail(const rec: string; const sub: string; const body: string;
  const attfiles: string; const display: Boolean = false; const clip: Boolean = False);
const
  olMailItem = 0;
var
  Outlook: OleVariant;
  vMailItem: variant;
  strings: TStringList;
  j: integer;
begin

  try
    Outlook := GetActiveOleObject('Outlook.Application');
  except
    Outlook := CreateOleObject('Outlook.Application');
  end;

  vMailItem := Outlook.CreateItem(olMailItem);

  try
    vMailItem.Display;
  except
    ;
  end;

  if rec <> '' then
    vMailItem.Recipients.Add(rec); ///aqui

  if sub <> '' then
    vMailItem.Subject := sub;

  if body <> '' then
    vMailItem.HtmlBody := body;

  if attfiles <> '' then begin
    if Pos(',',attfiles) = 0 then
      vMailItem.Attachments.Add(attfiles)
    else begin
      strings := TStringList.Create();
      try
        strings.Delimiter := ',';
        strings.DelimitedText := attfiles;
        for j := 0 to strings.Count - 1 do
          vMailItem.Attachments.Add(strings[0]);
      finally
        strings.Free();
      end;
     end;
  end;

  if clip then begin
    vMailItem.body := Clipboard.AsText;
  end;
  // Showmessage('Display or Send, that is the question');
  //if display then
  //  vMailItem.Display
  if not display then begin
    vMailItem.Save;
    vMailItem.Send;
  end;
  varClear(vMailItem);
  VarClear(Outlook);
end;

function GenerateUniqueString: string;
const
  LEN = 10;

var
  s: string[LEN];
  j: integer;
begin
  Randomize();
  s :=  StringOfChar(' ',LEN);
  for j := 1 to LEN do
    s[j] := char(64+random(26));

  Result := s;
end;

procedure LoadIdsIntoDataSet(const ids: TListaIds; const fname: string; data: TDataSet);
var
  j: Integer;
begin
  for j := 0 to Length(ids) - 1 do begin
    data.Append();
    data.FieldByName(fname).Value := ids[j];
    data.Post();
  end;
end;

function FieldIsNullOrEmpty(f : TField) : Boolean;
begin
  Result := ((f = nil) or f.IsNull) or (Trim(f.Asstring) = '');
end;

function GetIdsFromDataSet(data: TDataSet; const fname: string): TListaIds;
var
  ids: TListaIds;
  j: Integer;
  bm: string;
begin
  SetLength(ids,data.RecordCount);
  j := 0;
  with data do begin
    bm := BookMark;
    DisableControls();
    try
      First();
      while not Eof do begin
        if not FieldIsNullOrEmpty(data.FieldByName(fname)) then begin
          ids[j] := data.FieldByName(fname).Value;
          Inc(j);
        end;
        Next();
      end;
    finally
      BookMark := bm;
      EnableControls();
    end;
  end;
  SetLength(ids, j);
  Result := ids;
end;

function IndexOfId(const id: Variant; ids: TListaIds): Integer;
var
  j: Integer;
begin
  Result := -1;
  for j := 0 to Length(ids) - 1 do begin
    if ids[j] = id then begin
      Result := j;
      break;
    end;
  end;
end;

procedure ImprimirReporte(rpt: TppReport; const key: string = ''; const thumbs: Boolean = False);
var
  fmt: string;
  str: string;
  dset: TDataSet;
begin
  if key = '' then
    str := rpt.Owner.Name + '.' + rpt.Name
  else
    str := key;

  fmt := dm.BuscarFormatoReporte(str);
  if fmt <> '' then begin
    rpt.Template.FileName := fmt;
    rpt.Template.LoadFromFile();
  end;
  dset := (rpt.DataPipeline as TppDBPipeLine).DataSource.DataSet;
  dset.DisableControls();
  try
    rpt.Print();
  finally
    dset.EnableControls();
  end;
end;

function CrearArhivoFormato(rpt: TppReport; const key: string = ''): Boolean;
var
  fmt: string;
  fname: string;
begin
  if key = '' then
    fmt := rpt.Owner.Name + '.' + rpt.Name
  else
    fmt := key;

  fname := fmt + '.rtm';
  try
    if FileExists(fname) then
      Result := false
    else begin
      rpt.Template.Filename := fname;
      rpt.Template.SaveToFile();

      dm.GuardarFormatoReporte(fmt,'ARCHIVO',fname);
      Result := True;
    end;
  except
    Result := false;
  end;
end;

function IsValidEmail(const Value: string): Boolean;

function CheckAllowed(const s: string): Boolean;
  var i: Integer;
  begin
    Result:= false;
    for i:= 1 to Length(s) do
      if not (s[i] in ['a'..'z',
                       'A'..'Z',
                       '0'..'9',
                       '_',
                       '-',
                       '.']) then Exit;
    Result:= true;
  end;

var
  i: Integer;
  NamePart, ServerPart: string;
begin
  Result := False;
  i := Pos('@', Value);
  if i = 0 then Exit;
  NamePart := Copy(Value, 1, i - 1);
  ServerPart := Copy(Value, i + 1, Length(Value));
  if (Length(NamePart) = 0) or ((Length(ServerPart) < 5)) then Exit;
  i := Pos('.', ServerPart);
  if (i = 0) or ( i > (Length(serverPart) - 2)) then Exit;
  Result := CheckAllowed(NamePart) and CheckAllowed(ServerPart);
end;

function PadLeft(const sIn: string; const Len: Integer; const chr: Char): string;
var
  l                 : Integer;
  s                 : string;
begin
  l := Length(sIn);
  if l < Len then
    s := StringOfChar(chr, Len - l) + sIn
  else if l > Len then
    s := Copy(sIn, 1, Len)
  else
    s := sIn;

  Result := s;
end;

function PadRight(const sIn: string; const Len: Integer; const chr: Char): string;
var
  l                 : Integer;
  s                 : string;
begin
  l := Length(sIn);
  if l < Len then
    s := sIn + StringOfChar(chr, Len - l)
  else if l > Len then
    s := Copy(sIn, 1, Len)
  else
    s := sIn;

  Result := s;
end;

function FieldToColumn(aField: TField; const size: Integer): string;
var
  aCol              : string;
begin
  if aField.DataType = ftDateTime then begin
    if not aField.IsNull then
      aCol := FormatDateTime('ddmmyyyy', aField.Value) //FormatDateTime('yyyymmdd',aField.Value)
    else
      aCol := StringOfChar(' ', Size);
  end
  else if aField.DataType in [ftBCD, ftCurrency, ftFloat, ftFMTBcd] then begin
//     if not aField.IsNull then
    aCol := PadLeft(FormatFloat('########.00', aField.asFloat), Size, '0')
//    else
//       aCol := StringOfChar('0', Size);
  end
  else if aField.DataType in [ftInteger, ftSmallInt, ftWord, ftAutoInc, ftLargeInt] then
    aCol := PadLeft(FormatFloat('#########0', aField.asInteger), Size, '0')
  else if aField.DataType in [ftString, ftWideString, ftMemo, ftVarBytes] then
    aCol := PadRight(aField.AsString, Size, ' ')
  else
    aCol := StringOfChar('?', Size);

  Result := aCol;
end;
    
Initialization
  gv_DBDateFormat := 'yyyy/mm/dd';
  ShowPrintDialog := True;
end.

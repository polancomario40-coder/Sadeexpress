unit Buscador;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DBTables, ADODB;

type
  TForma = class(TForm)
    Grid: TDBGrid;
    Panel1: TPanel;
    Buscar: TEdit;
    Label1: TLabel;
    Panel2: TPanel;
    DataSource: TDataSource;
    btnAceptar: TBitBtn;
    btnCancelar: TBitBtn;
    Panel3: TPanel;
    ImOrderSignal: TImage;
    Panel4: TPanel;
    Image1: TImage;
    qryBuscar: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure GridTitleClick(Column: TColumn);
    procedure BuscarChange(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    Campo:string;
    procedure SetUpDisplay;
    { Private declarations }
  public
    { Public declarations }
    Sql,Labels:string;
    KeyField : String;
    ShowKey : Boolean;
  end;
//    Function Show_Busqueda(Sql,Labels,FieldResult:string):boolean;
    Function Show_Busqueda(Sql,Labels,FieldResult:string; ShowKey : Boolean):boolean;

  {funciones para el nuevo Buscar}
  procedure SetupGrid(form : TForm; grid : TDBGrid;Labels, KeyField:string;ShowKey : Boolean);
  function NewTextWidth(fntFont : TFont; const Text : OpenString) :Integer;
  function iCalcGridWidth(dbg : TDBGrid): integer;
  procedure RightJustifyGridTitles (const dbg : TDBGrid;Labels, KeyField:string; ShowKey : Boolean);
  function RightJustify(const s : string; len : byte) : string;
  function Buscar(Sql, Labels, FieldResult:string; pValue : Integer; ShowResult : Boolean = False):Variant; overload;
  function Buscar(Sql, Labels, FieldResult:string; pValue : String; ShowResult : Boolean = False):Variant;  overload;
  function Buscar(Sql, Labels, FieldResult:string; ShowResult : Boolean = False):Variant;                   overload;
  Function fStrToInt(Value : String):Integer;

var
  Forma      : TForma;
  bOrden     : Boolean = True;

implementation

uses Udata;

//uses uDataM;


{$R *.DFM}

Var
 vGlobal : Variant;
 vFieldResult2 : String;

Function Show_Busqueda(Sql,Labels,FieldResult:string; ShowKey : Boolean):boolean;
var
  Forma: TForma;
  sCaption, sLabels : String;
  X : Byte;
begin
   Application.CreateForm(TForma, Forma);

   X := Pos('|',Labels);
   sLabels  := Copy(Labels, X+1, Length(Labels)+ X);
   If X > 0 Then  sCaption := Copy(Labels, 0, X - 1) Else sCaption := 'Buscador...';

   Forma.Sql := UpperCase(Sql);
   Forma.Labels := sLabels;
   Forma.Caption := sCaption;
   vFieldResult2 := FieldResult;

   Forma.KeyField := FieldResult;
   Forma.ShowKey := ShowKey;

   if Forma.ShowModal = mrOk then
     Result := True
   else Result := False;
end;

procedure TForma.FormShow(Sender: TObject);
begin
    qryBuscar.close;
    qryBuscar.sql.clear;
    qryBuscar.Sql.add(Sql);
    qryBuscar.open;
    SetupGrid(self, Grid,Labels, KeyField, ShowKey );
    grid.Columns[0].Color := clInfoBk;
    Campo := grid.Columns[0].FieldName;
    If Width > Screen.Width Then
      Width := Screen.Width - 10;

    Buscar.Width := Grid.Width - 62;
    btnCancelar.Left := Grid.Width - (btnCancelar.Width + 3);
    btnAceptar.Left := btnCancelar.Left - (btnAceptar.Width + 3);
    btnAceptar.Enabled := (qryBuscar.RecordCount > 0);
    grid.Options := [dgTitles,dgIndicator,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
end;

procedure TForma.GridTitleClick(Column: TColumn);
var
 i,p,c : integer;
 s     : string;
begin
     c:= Column.Index;   // guarda columna
     for i:= 0 to grid.Columns.count - 1 do
         grid.Columns[i].Color := clWindow;

     Campo := Column.FieldName;
     Column.Color := clInfoBk;
     p := pos('ORDER BY',sql);
     if p > 0 then
     begin
       s:= copy(sql,0,p-1);

       If bOrden Then
       Begin
        sql := s + ' ORDER BY ' + campo + ' DESC';
        bOrden := False;
        Panel3.BringToFront;
       End
       Else
       Begin
        sql := s + ' ORDER BY ' + campo + ' ASC';
        bOrden := True;
        Panel4.BringToFront;
       End;

     end
     else
     Begin
       If bOrden Then
       Begin
        sql := Sql + ' ORDER BY ' + campo + ' DESC';
        bOrden := False;
        Panel3.BringToFront;
       End
       Else
       Begin
        sql := sql + ' ORDER BY ' + campo + ' ASC';
        bOrden := True;
        Panel4.BringToFront;
       End;
     End;

//       sql := sql + ' ORDER BY ' + campo + ' DESC';

        qryBuscar.close;
        qryBuscar.sql.clear;
        qryBuscar.sql.add(sql);
        qryBuscar.open;
       SetUpDisplay;
       grid.Columns[c].Color := clInfoBk;
       buscar.text := '';
       buscar.setfocus;
end;

procedure TForma.SetUpDisplay;
var
 i,a:integer;
 s:string;
begin
  // le asigna el display label a todos los campos
  i:= 0;
  s:='';
  for a :=  1 to length(Labels) do
  begin
     if Labels[a] <> ',' then s := s + Labels[a]
     else
     begin
        qryBuscar.Fields[i].DisplayLabel := trim(s);
       inc(i);
       s:= '';
     end;
  end;
   qryBuscar.Fields[i].DisplayLabel := s;
end;

procedure TForma.BuscarChange(Sender: TObject);
begin
   if trim(Buscar.Text) = '' then exit;
   try
     qryBuscar.Locate(campo,Buscar.Text,[loCaseInsensitive, loPartialKey]);
   except
     ;
   end
end;

procedure TForma.GridDblClick(Sender: TObject);
begin
 If btnAceptar.Enabled Then
 begin
  vGlobal := qryBuscar.FieldByName(Trim(vFieldResult2)).AsVariant;
  ModalResult := mrOk;
 End;
end;

// aqui comienzan las funciones para la nueva pantalla de busqueda
{-----------------------------------------------------}
function iCalcGridWidth;
const
  cMEASURE_CHAR   = '0';
  iEXTRA_COL_PIX  = 4;
  iINDICATOR_WIDE = 11;
var
  i, iColumns, iColWidth, iTitleWidth, iCharWidth : integer;
begin

{$IFDEF DONT}
  result := 0;
  for i := 0 to tGridCracker(dbg).ColCount - 1 do
    inc(result, tGridCracker(dbg).ColWidths[i]);
  if dgColLines in dbg.Options
    then inc(result, tGridCracker(dbg).ColCount)
    else inc(result, 1);
{$ENDIF}

  iColumns := 0;
  result := GetSystemMetrics(SM_CXVSCROLL);
  iCharWidth := NewTextWidth(dbg.Font, cMEASURE_CHAR);
  with dbg.dataSource.dataSet do
    for i := 0 to FieldCount - 1 do with Fields[i] do
      if visible then
      begin
        iColWidth := iCharWidth * DisplayWidth;
        if dgTitles in dbg.Options then
        begin
          iTitleWidth := NewTextWidth(dbg.TitleFont, DisplayLabel);
          if iColWidth < iTitleWidth then iColWidth := iTitleWidth;
        end;
        inc(iColumns, 1);
        inc(result, iColWidth + iEXTRA_COL_PIX);
      end;

  dec(result, 2);

  if dgIndicator in dbg.Options then
  begin
    inc(iColumns, 1);
    inc(result, iINDICATOR_WIDE);
  end;
  if dgColLines in dbg.Options
    then inc(result, iColumns + 1)
    else inc(result, 1);

  {$IFDEF WIN32}
  inc(result,2);
  {$ENDIF}

  if dbg.BorderStyle = bsNone then dec(result, 2);
  { $IFDEF WIN32}
    if dbg.Ctl3D then inc(result,2);
  { $ENDIF}
end;

procedure SetupGrid;
var
  i, iFormBorder : integer;
begin
  iFormBorder := 0;
  if grid.Parent is TPanel then with grid.Parent as TPanel do
  begin
    i := 0;
    if BevelInner <> bvNone then inc(i);
    if BevelOuter <> bvNone then inc(i);
    inc(iFormBorder, 2 * (BorderWidth + i * BevelWidth));
  end;
  with form do
    for i := ComponentCount - 1 downto 0 do
      if Components[i] is TPanel then with Components[i] as TPanel do
        if Align in [alRight, alLeft] then inc(iFormBorder, width);
  RightJustifyGridTitles(grid, Labels, KeyField, ShowKey);
  form.ClientWidth := iCalcGridWidth(grid) + iFormBorder;
end;

function NewTextWidth(fntFont : TFont; const Text : OpenString) :
  integer;
var
  canvas : TCanvas;
begin
  canvas := nil;
  try
    canvas := TCanvas.create;
    canvas.Handle := GetDC(0);
    canvas.font := fntFont;
    result := canvas.TextWidth(Text);
  finally
    if assigned(canvas) then
    begin
      if canvas.Handle <> 0 then ReleaseDC(0, canvas.Handle);
      canvas.Destroy;
    end;
  end;
end;

procedure RightJustifyGridTitles;
const
  cMEASURE_CHAR   = '0';
var
  i, a, iColWidth, iTitleWidth, {By Alex}
  iCharWidth, iSpaces, iSpaceWidth : integer;
  s:string;
begin
  if dgTitles in dbg.Options then
  begin
    iCharWidth := NewTextWidth(dbg.Font, cMEASURE_CHAR);
    iSpaceWidth := NewTextWidth(dbg.TitleFont, ' ');
    if (dbg.DataSource = nil) then
      Exit;
    with dbg.dataSource.dataSet do
    begin
        // le asigna el display label a todos los campos
        i:= 0;
        s:='';
        for a :=  1 to length(Labels) do
        begin
           if Labels[a] <> ',' then s := s + Labels[a]
           else
           begin
             Fields[i].DisplayLabel := trim(s);
             inc(i);
             s:= '';
           end;
        end;
        Fields[i].DisplayLabel := s;

      for i := 0 to FieldCount - 1 do with Fields[i] do
      Begin
        if (Alignment = taRightJustify) and visible then
        begin
          iColWidth := iCharWidth * DisplayWidth;
          iTitleWidth := NewTextWidth(dbg.TitleFont, DisplayLabel);
          iSpaces := (iColWidth - iTitleWidth) div iSpaceWidth;
          if iSpaces > 0 then
            DisplayLabel := RightJustify(DisplayLabel, Length(DisplayLabel) +   iSpaces);
        end; { if visible }
        FieldByName(KeyField).Visible := ShowKey;


      End;
    end;
  end; {if dgTitles in dbg.Options }
end; { procedure RightJustifyGridTitles }

function RightJustify(const s : string; len : byte) : string;
var
  i : integer;
begin
  result := trim(s);
  i := len - length(result);
  if i > 0
    then result := StringOfChar(' ',i) + result
    else result := copy(result,1,len);
end;


function Buscar(Sql,Labels,FieldResult:string; pValue : Integer; ShowResult : Boolean = False):Variant; overload;
var
  MyResult       : Boolean;
  PosIni, PosFin : Integer;
  strCampo, SQL2 : String;

begin

  PosIni   := Pos(' ', SQL) + 1;
  PosFin   := Pos(',', SQL) - PosIni;
  strCampo := Copy(SQL, PosIni, PosFin);
  If Trim(strCampo) <> '' Then
   SQL2     := SQL + ' Order By 1'// + strCampo  // ignorado (26/04/20001)
  Else
   SQL2     := SQL;

  MyResult := Show_Busqueda(SQL2, Labels, FieldResult, ShowResult);
  If MyResult Then
    Result := vGlobal
  Else
    Result := pValue;
end;


function Buscar(Sql,Labels, FieldResult:string; pValue : String; ShowResult : Boolean = False):Variant; overload;
var
  MyResult       : Boolean;
  PosIni, PosFin : Integer;
  strCampo, SQL2 : String;

begin

  PosIni   := Pos(' ', SQL) + 1;
  PosFin   := Pos(',', SQL) - PosIni;
  strCampo := Copy(SQL, PosIni, PosFin);
  If Trim(strCampo) <> '' Then
   SQL2     := SQL + ' Order By 1'// + strCampo // ignorado (26/04/20001)
  Else
   SQL2     := SQL;

  MyResult := Show_Busqueda(SQL2, Labels, FieldResult, ShowResult);
  If MyResult Then
    Result := vGlobal
  Else
    Result := pValue;
end;


function Buscar(Sql,Labels,FieldResult:string; ShowResult : Boolean = False):Variant; overload;
var
  MyResult       : Boolean;
  PosIni, PosFin : Integer;
  strCampo, SQL2 : String;

begin

  PosIni   := Pos(' ', SQL) + 1;
  PosFin   := Pos(',', SQL) - PosIni;
  strCampo := Copy(SQL, PosIni, PosFin);
  If Trim(strCampo) <> '' Then
   SQL2     := SQL + ' Order By 1'// + strCampo // ignorado (26/04/20001)
  Else
   SQL2     := SQL;

  MyResult := Show_Busqueda(SQL2, Labels, FieldResult, ShowResult);
  If MyResult Then
    Result := vGlobal;
end;
// final de funciones para la pantalla de busqueda Buscar
{ -------------------------------------------}

procedure TForma.btnCancelarClick(Sender: TObject);
begin
 Close;
end;

Function fStrToInt(Value : String):Integer;
Begin
  Try
    Result := StrToInt(Value);
  Except
    Result := 0;
  End;
End;

end.

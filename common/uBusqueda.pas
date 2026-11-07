unit uBusqueda;

interface

uses
  Windows, Variants, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, ADODB,uBusquedaBase;

Function fBuscar(fBusq : TBusquedaBaseclass; ReturnField : String; OcultaC1 : boolean = false; spname : string='' ) : Variant;
Function fBuscarFiltro(Filtro : Variant; fBusq : tFormClass; ReturnField : String; OcultaC1 : boolean = false; spname : string='') : Variant;

type
  TBusqueda = class(TBusquedaBase)
    grid: TDBGrid;                                      
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DS: TDataSource;
    Label1: TLabel;
    edtBuscar: TEdit;
    Panel1: TPanel;
    RS: TADODataSet;
    procedure edtBuscarChange(Sender: TObject);
    procedure gridDblClick(Sender: TObject);
    procedure gridTitleClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    Procedure SetQuery; Virtual;
    procedure SetGrid();
    procedure edtBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
     Ocultar : boolean;
     Campo : String;
     CampoName : string;
     Asc : string;
     Filtro : Variant;
     procedure ReCreate(xOcultar : boolean; spName : string = '');
     Procedure SetFilter; Virtual; Abstract;

     class function Buscar(ARetField : String; OcultaC1 : boolean = false; spname : string= '';
                 AAutoFit: Boolean = True; ColMaxWidth: Integer = -1) : Variant; override;
  published
    { Public declarations }
  end;

var
  Busqueda: TBusqueda;
implementation

uses Udata;

{$R *.DFM}

Function fBuscar(fBusq : TBusquedaBaseClass; ReturnField : String; OcultaC1 : boolean = false; spname : string='' ) : Variant;
//var
//  ffbusq : TBusqueda;
//Begin
//  application.CreateForm(fBusq, ffBusq);
//
//  With (ffBusq) Do
//  Begin
//     if spName <> '' then
//        Recreate(OcultaC1, spname)
//     else
//        Recreate(OcultaC1);
//
//     if ShowModal() = mrOk then begin
//       if RS.FieldByName(ReturnField).isnull then
//         Result := null
//       else
//         Result := RS.FieldByName(ReturnField).Value;
//     end
//     else
//       Result := null;
//
//     Free;
//  End;
begin
  Result := fBusq.Buscar(ReturnField,OcultaC1,spname);
End;

Function fBuscarFiltro(Filtro : Variant; fBusq : tFormClass; ReturnField : String; OcultaC1 : boolean = false; spname : string='') : Variant;
var
  ffbusq : TBusqueda;
Begin
  application.CreateForm(fBusq, ffBusq);
  ffBusq.Filtro := Filtro;
  ffBusq.SetFilter;

  With (ffBusq) Do
  Begin
     if spName <> '' then
        Recreate(OcultaC1, spname)
     else
        Recreate(OcultaC1);

     if ShowModal() = mrOk then begin
       if RS.FieldByName(ReturnField).isnull then
         Result := null
       else
         Result := RS.FieldByName(ReturnField).Value;
     end
     else
       Result := null;

     Free;
  End;
End;

procedure TBusqueda.FormCreate(Sender: TObject);
begin
  Ocultar := false;
  Campo := '';
  CampoName := '';
  Asc := '';
end;

procedure TBusqueda.ReCreate(xOcultar : boolean; spName : string = '');
begin
  Ocultar := xOcultar;
  if spName <> '' then
  begin
    with RS do begin
      commandText := spName;
      Parameters.Clear;
      Parameters.CreateParameter('@Return_Value', ftInteger, pdReturnValue, 10, 0);
      Parameters.CreateParameter('@Orden', ftString, pdInput, 50, '');
    end;
  end;

  // ase deben crea los dos parametros por default @Return_value y @Orden
  // en el caso de que se llame este recreate no hay desendiente y solo se
  // permite estos dos parametros en el sp de la busqueda
  SetQuery;
  setGrid;
end;



procedure TBusqueda.SetQuery();
begin
   rs.parameters[1].value := Campo + Asc;
end;

procedure TBusqueda.SetGrid();
begin
  // rs.DisableControls;
   if rs.active then rs.requery else RS.Open;
   if ((Ocultar) and (Grid.Columns[0].Visible)) then
   begin
      Grid.Columns[0].Visible := false
   end
   else if ((not(Ocultar)) and (not(Grid.Columns[0].Visible))) then
   begin
      Grid.Columns[0].Visible := True;
   end;

   if Ocultar then
   begin
      Grid.Columns[1].color := clInfoBk;
      CampoName := Grid.Columns[1].FieldName;
   end
   else
   begin
      Grid.Columns[0].color := clInfoBk;
      CampoName := Grid.Columns[0].FieldName;
   end;
 //  rs.EnableControls;
end;

procedure TBusqueda.edtBuscarChange(Sender: TObject);
begin
   if trim(edtBuscar.Text) = '' then exit;
   try
     RS.Locate(campoName,edtBuscar.Text,[loPartialKey]);
   except
     ;
   end
end;

procedure TBusqueda.gridDblClick(Sender: TObject);
begin
  ModalResult := MrOK;
end;

procedure TBusqueda.gridTitleClick(Column: TColumn);
var
 i:integer;
begin

  if campo='' then begin
    for i := 0 to rs.Fields.Count -1 do
    begin
       if rs.Fields.Fields[i].FieldName = column.FieldName then
       begin
         Campo := inttostr(i+1);
       end;
    end;
  end;

  if (Column.FieldName <> CampoName) then
  begin
    Asc := '';
    CampoName := column.FieldName;

    for i:= 0 to grid.Columns.count - 1 do
    begin
      if grid.Columns[i].Visible then
         grid.Columns[i].Color := clWindow;
    end;

    for i := 0 to rs.Fields.Count -1 do
    begin
       if rs.Fields.Fields[i].FieldName = column.FieldName then
       begin
         Campo := inttostr(i+1);
       end;
    end;
    Column.Color := clInfoBk;

    SetQuery;
    edtBuscar.Clear;
    edtBuscar.SetFocus;
  end
  else
  begin  if Asc = ' DESC' then Asc := '' else Asc := ' DESC';
    SetQuery;
    edtBuscar.Clear;
    edtBuscar.SetFocus;
  end;
  rs.Sort := CampoName + Asc;
  //if rs.active then rs.requery else RS.Open;
end;

class function TBusqueda.Buscar(ARetField: String; OcultaC1: boolean;
  spname: string; AAutoFit: Boolean; ColMaxWidth: Integer): Variant;
var
  ffbusq : TBusqueda;
Begin
  //application.CreateForm(fBusq, ffBusq);
  ffbusq := self.Create(Application);
  With (ffBusq) Do
  Begin
     if spName <> '' then
        Recreate(OcultaC1, spname)
     else
        Recreate(OcultaC1);

     if ShowModal() = mrOk then begin
       if RS.FieldByName(ARetField).isnull then
         Result := null
       else
         Result := RS.FieldByName(ARetField).Value;
     end
     else
       Result := null;

     Release();
  End;
End;

procedure TBusqueda.edtBuscarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if rs.Active then begin
    if key = vk_down then begin
      rs.Next();
      Key := 0;
    end
    else if key = vk_up then begin
      rs.Prior();
      Key := 0;
    end;
  end;
end;

end.

unit uChClass;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids, DB, Wwdatsrc, Wwdbigrd, Wwdbgrid,
  Buttons, uform;

type
  TfChClass = class(TFForm)
    Panel1: TPanel;
    gbNums: TGroupBox;
    rbnn: TRadioButton;
    rbn: TRadioButton;
    edfn: TEdit;
    gbimp: TGroupBox;
    Todos: TRadioButton;
    Rango: TRadioButton;
    Imp: TButton;
    Sal: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edDesde: TEdit;
    edHasta: TEdit;
    wwDBGrid1: TwwDBGrid;
    BitBtn1: TBitBtn;
    procedure rbnClick(Sender: TObject);
    procedure rbnnClick(Sender: TObject);
    procedure RangoClick(Sender: TObject);
    procedure TodosClick(Sender: TObject);
    procedure SalClick(Sender: TObject);
    procedure AllowNumeric(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  Protected
    Procedure Refrescar; virtual;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fChClass: TfChClass;

implementation

uses Udata;

{$R *.DFM}

Procedure TfChClass.Refrescar;
Begin
End;

procedure TfChClass.rbnClick(Sender: TObject);
begin
  inherited;
  edfn.Visible := True;
  edfn.SetFocus
end;

procedure TfChClass.rbnnClick(Sender: TObject);
begin
  inherited;
  edfn.Visible := False;
end;

procedure TfChClass.RangoClick(Sender: TObject);
begin
  inherited;
  panel2.Visible := True;
  edDesde.SetFocus;
end;

procedure TfChClass.TodosClick(Sender: TObject);
begin
  inherited;
  Todos.SetFocus;
  Panel2.Visible := False;
end;

procedure TfChClass.SalClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfChClass.AllowNumeric(Sender: TObject; var Key: Char);
begin
  inherited;
  If Not (Key In ['0'..'9',#8,#9,#13,#27]) Then
    Key := #0;
end;

procedure TfChClass.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  If Key = #13 Then Begin
    SelectNext(ActiveControl,True,True);
    Key := #0
  End;
end;


procedure TfChClass.BitBtn1Click(Sender: TObject);
Var
   x : integer;
   bm: string;
begin
  inherited;
  x := 0;
  if rbn.Checked then
  Begin
     Try
        x := strtoint(edfn.Text );
     Except
        showmessage('El Numero de cheque no es valida');
        abort;
     End;
     ds.DataSet.DisableControls;
     bm := ds.DataSet.Bookmark;
     while not(ds.DataSet.Eof ) do
     Begin

        ds.DataSet.Edit ;
        if x = 0 then
        begin
          ds.DataSet.FieldByName('Cheque').Clear;
        end
        else
        begin
          ds.DataSet.FieldByName('Cheque').Value := x;
          x := x + 1;
        end;
        ds.DataSet.Post ;
        ds.DataSet.Next ;
     End;
     ds.DataSet.Bookmark := bm;
     ds.DataSet.EnableControls;
  End;
end;


procedure TfChClass.FormCreate(Sender: TObject);
begin
  inherited;
  ds.DataSet.Open;
end;

procedure TfChClass.FormDestroy(Sender: TObject);
begin
  inherited;
  ds.DataSet.Close;
end;

end.

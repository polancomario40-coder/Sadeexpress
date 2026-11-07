unit uBuscarCC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, dxExEdtr, dxEdLib, dxCntner, dxEditor,
  dxDBEdtr, dxDBELib, ExtCtrls, ufrArbol, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxControls, cxContainer, cxEdit, cxGroupBox,
  cxLookAndFeelPainters, cxButtons, cxCheckBox, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, DB, ADODB;

type
  TBuscarCC = class(TForm)
    BitBtn2: TcxButton;
    BitBtn1: TcxButton;
    frArbol1: TfrArbol;
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    cxCheckBox1: TcxCheckBox;
    cxButton1: TcxButton;
    Tipo: TADODataSet;
    TipoTipo: TStringField;
    dsTipo: TDataSource;
    lTipo: TcxLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BuscarCC: TBuscarCC;


function BuscarCentroCosto: Variant;

implementation

uses ugldm, Udata;

{$R *.dfm}

procedure TBuscarCC.FormCreate(Sender: TObject);
var
  x : variant;
begin
  Tipo.Open;
  try
    x := dm.GetDefault('DEF.CENTROCOSTO');
    if x <> NULL then
      ltipo.EditValue := x
    else
      ltipo.EditValue := '(Todos)';
   except
      ltipo.EditValue := '(Todos)';
   end;
  cxButton1Click(nil);
end;

procedure TBuscarCC.cxButton1Click(Sender: TObject);
begin
  if frArbol1.rs.Active then frArbol1.rs.close;
  frArbol1.rs.parameters[1].value := 'CentroCosto';
  frArbol1.RS.Parameters[2].Value := ltipo.EditValue;
  frArbol1.RS.Parameters[3].Value := cxCheckBox1.Checked;

  frArbol1.rs.Open;
  frArbol1.FillTree(Null);
  //frArbol1.Tree.OnDblClick  := Dobleclick;
end;

procedure TBuscarCC.BitBtn1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TBuscarCC.BitBtn2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

function BuscarCentroCosto: Variant;
begin
  with TBuscarCC.Create(Application) do begin
    if ShowModal() = mrOk then
      Result := frArbol1.KeyActual
    else
      Result := null;

    Release();
  end;
end;

end.

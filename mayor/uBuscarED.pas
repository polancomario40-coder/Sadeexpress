unit uBuscarED;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxEdLib,
  dxEditor, dxExEdtr, StdCtrls, Buttons, dxDBTLCl, dxGrClms,Variants;

const
  Cols : Array [0..3] of string = ('NumeroEntrada', 'Fecha', 'substring(Concepto,1,8000)', 'TipoEntrada');
  Ops  : Array [0..3] of string = ('=', 'Like','Like','<>');
  SQLCMD = ' select '#13 +
           ' e.IdEntrada, e.NumeroEntrada, '#13 +
           ' e.Fecha, '#13 +
	   ' e.TipoEntrada, '#13 +
	   ' substring(Concepto,1,8000) as Concepto '#13 +
           ' from cgEntradasDiario e ';
type
  TfLocEntrada = class(TForm)
    peCols: TdxPickEdit;
    edValor: TdxEdit;
    peOps: TdxPickEdit;
    dxDBGrid1: TdxDBGrid;
    rsLoc: TADODataSet;
    BitBtn1: TBitBtn;
    LocSource: TDataSource;
    rsLocNumeroEntrada: TStringField;
    rsLocFecha: TDateTimeField;
    rsLocTipoEntrada: TStringField;
    dxDBGrid1NumeroEntrada: TdxDBGridMaskColumn;
    dxDBGrid1Fecha: TdxDBGridDateColumn;
    dxDBGrid1TipoEntrada: TdxDBGridMaskColumn;
    dxDBGrid1Concepto: TdxDBGridMemoColumn;
    rsLocConcepto: TVarBytesField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    bbOk: TBitBtn;
    bbCancelar: TBitBtn;
    rsLocIdEntrada: TGuidField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbOkClick(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure dxDBGrid1Exit(Sender: TObject);
  private
    procedure CrearSQL;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLocEntrada: TfLocEntrada;

function BuscarEntradaId: Variant;

implementation

uses ugldm, Udata;

{$R *.dfm}

procedure TfLocEntrada.BitBtn1Click(Sender: TObject);
begin
  rsLoc.Close();
  CrearSQL();
  rsLoc.Open();
end;

procedure TfLocEntrada.CrearSQL;
var
  cmd: string;
  where: string;
  valr: string;
begin
  if peOps.Itemindex = 0 then
    valr := Trim(edValor.Text)
  else if peOps.Itemindex = 1 then
    valr := '%' + Trim(edValor.Text) + '%' 
  else if peOps.Itemindex = 2 then
    valr := Trim(edValor.Text) + '%'
  else if peOps.Itemindex = 3 then
    valr := Trim(edValor.Text);

  where := 'where ' + Cols[peCols.ItemIndex] + ' ' + Ops[peOps.Itemindex];
  where := where + ' ' + QuotedStr(valr);
  cmd := SQLCMD + #13 + where;
  rsLoc.CommandText := cmd;
end;

procedure TfLocEntrada.FormCreate(Sender: TObject);
begin
  peCols.ItemIndex := 0;
  peOps.ItemIndex := 0;
end;

procedure TfLocEntrada.bbOkClick(Sender: TObject);
begin
  if rsLoc.Active and (not rsLocIdEntrada.IsNull) then
    ModalResult := mrOk;
end;

procedure TfLocEntrada.bbCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfLocEntrada.dxDBGrid1DblClick(Sender: TObject);
begin
  bbOk.Click();
end;

function BuscarEntradaId: Variant;
begin
  with TfLocEntrada.Create(Application) do begin
    if ShowModal() = mrOk then
      Result := rsLocIdEntrada.Value
    else
      Result := NULL;
    Free();
  end;
end;

procedure TfLocEntrada.dxDBGrid1Enter(Sender: TObject);
begin
  BitBtn1.Default := False;
  bbOk.Default := True;
end;

procedure TfLocEntrada.dxDBGrid1Exit(Sender: TObject);
begin
  BitBtn1.Default := True;
  bbOk.Default := False;
end;

end.

unit uAutorizaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ADODB,
  Wwdatsrc, ExtCtrls, myChkBox, ppCtrls, ppPrnabl, ppClass, ppDB, ppBands,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxExEdtr, strUtils,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxContainer, cxCheckBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, ppParameter;

type
  TAutorizaciones = class(TFForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    pl: TppDBPipeline;
    rpt: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    myCheckBox1: TmyCheckBox;
    Nivel_Seguridad: TEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1idAutorizacion: TcxGridDBColumn;
    cxGrid1DBTableView1Clase: TcxGridDBColumn;
    cxGrid1DBTableView1Referencia: TcxGridDBColumn;
    cxGrid1DBTableView1Descripcion: TcxGridDBColumn;
    cxGrid1DBTableView1UsadoPor: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    rs: TADODataSet;
    cxCheckBox1: TcxCheckBox;
    rsidAutorizacion: TStringField;
    rsClase: TSmallintField;
    rsReferencia: TStringField;
    rsDescripcion: TStringField;
    rsUsadoPor: TStringField;
    rsCreadoPor: TStringField;
    rsFecha: TDateTimeField;
    rsrowguid: TGuidField;
    procedure FormCreate(Sender: TObject);
    procedure spNewRecord(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
  private
    Nivel : Integer;
    function CreateUniqueString: string;
    procedure AbrirDatos;
    function BuscarAutorizacion(const str: string): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Autorizaciones: TAutorizaciones;

implementation

uses Udata, UUtiles;

{$R *.dfm}

procedure TAutorizaciones.FormCreate(Sender: TObject);
begin
  inherited;
  Nivel := dm.NivelUsuario;

  Nivel_Seguridad.Text := inttostr(Nivel);

  AbrirDatos();
end;

procedure TAutorizaciones.spNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsrowguid.AsGuid := dm.NewGuid();
  rsClase.Value := Nivel;
  rsCreadopor.value := dm.UsuarioActual;
end;

function TAutorizaciones.CreateUniqueString: string;
var
  str: string;
  i : Integer;
begin
//  str := GuidToString(dm.NewGuid());
//  str := StringReplace(str,'-','',[rfReplaceAll, rfIgnoreCase]);
//  str := StringReplace(str,'{','',[rfReplaceAll, rfIgnoreCase]);
//  str := StringReplace(str,'}','',[rfReplaceAll, rfIgnoreCase]);

  i := 0;

  repeat
    str := GenerateUniqueString();
    Inc(i);
  until (i > 10) or (not BuscarAutorizacion(str));

  if (i >= 10) then begin
    ShowMessage('Error generando numero unico de autorizacion');
    Result := '';
  end
  else
    Result := str;
end;

function TAutorizaciones.BuscarAutorizacion(const str: string): Boolean;
begin
  with dm.rsBuscarAutorizacion do begin
    Close();
    Parameters[0].Value := str;
    Open();
    Result := not Eof;
  end;
end;

procedure TAutorizaciones.BitBtn2Click(Sender: TObject);
var
  x: string;
begin
  inherited;
  if (rs.State in dsEditModes) then begin
    if rsIdAutorizacion.Value = '' then
      Exit;
    rs.Post();
  end;

  rs.Append();
  x := CreateUniqueString();
  if x <> '' then begin
    rsidAutorizacion.Value := x;
    rs.Post();
  end;
end;

procedure TAutorizaciones.BitBtn3Click(Sender: TObject);
begin
  inherited;
  Imprimir(rpt);
end;

procedure TAutorizaciones.cxCheckBox1PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  AbrirDatos();
end;

procedure TAutorizaciones.AbrirDatos;
begin
  with rs do begin
    Close();
    Parameters[1].Value := dm.UsuarioActual;
    Parameters[2].Value := cxCheckBox1.Checked;
    Open();
  end;
end;

end.

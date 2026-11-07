unit uMantClassRS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, cxLookAndFeelPainters, ImgList, ActnList, DB,
  Wwdatsrc, StdCtrls, cxButtons, Gradient, ADODB;

type
  TMantClassRS = class(TMantClass)
    btEditar: TcxButton;
    procedure FormCreate(Sender: TObject);
  private
    FAutoLocalizar: Boolean;
    FRecordSet: TADODataSet;
    { Private declarations }

  protected
    procedure doNuevo; override;
    procedure doEditar; override;
    procedure doGuardar; override;
    procedure doCancelar; override;
    procedure doBorrar; override;

    function AbrirDataSet(ads: TADODataSet; const id: Variant): Boolean;
    function Localizar(const id: Variant): Boolean; override;
  public
    { Public declarations }
    property AutoLocalizar: Boolean read FAutoLocalizar write FAutoLocalizar;
    property RecordSet: TADODataSet read FRecordSet write FRecordSet;

  end;

var
  MantClassRS: TMantClassRS;

implementation

uses Udata;

{$R *.dfm}

{ TMantClassRS }

function TMantClassRS.AbrirDataSet(ads: TADODataSet; const id: Variant): Boolean;
begin
  with ads do begin
    Close();
    Parameters[1].Value := id;
    Open();
  end;
  Result := not ads.Eof;
end;

procedure TMantClassRS.doBorrar;
begin
  inherited doBorrar();
  if ds.DataSet <> nil then
    ds.DataSet.Delete();
end;

procedure TMantClassRS.doCancelar;
begin
  inherited;
  if ds.DataSet <> nil then
    ds.DataSet.Cancel();
end;

procedure TMantClassRS.doEditar;
begin
  inherited;
  if ds.DataSet <> nil then
    ds.DataSet.Edit();
end;

procedure TMantClassRS.doGuardar;
var
  fld: TField;
begin
  inherited;
  if ds.DataSet <> nil then begin
    if ds.Dataset.State in dsEditModes then begin
      fld := ds.DataSet.FindField('Usuario');
      if fld <> nil then
        fld.Value := dm.UsuarioActual;

      ds.DataSet.Post();
    end;
  end;
end;

procedure TMantClassRS.doNuevo;
begin
  inherited;
  if not ds.DataSet.Active then
    Localizar(null);
    
  if ds.DataSet <> nil then
    ds.DataSet.Append();
end;


function TMantClassRS.Localizar(const id: Variant): Boolean;
begin
  if AutoLocalizar then
    Result := AbrirDataSet(RecordSet, id)
  else
    Result := False;
end;

procedure TMantClassRS.FormCreate(Sender: TObject);
begin
  inherited;
  AutoLocalizar := False;
  RecordSet := nil;
end;

end.

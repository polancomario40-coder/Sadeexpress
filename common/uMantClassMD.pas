unit uMantClassMD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, cxLookAndFeelPainters, ImgList, ActnList, DB,
  Wwdatsrc, StdCtrls, cxButtons, Gradient, ADODB;

type
  TMantClassMD = class(TMantClass)
    RS: TADODataSet;
    RSDet: TADODataSet;
    dsDet: TwwDataSource;
    btEditar: TcxButton;
    procedure RSDetNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure RSDetAfterPost(DataSet: TDataSet);
    procedure AGuardarExecute(Sender: TObject);
  private
    FMasterKeyField: string;
    FDetailKeyField: string;
    FActualizarTarde: Boolean;
    procedure SetMasterKeyField(const Value: string);

    { Private declarations }
  protected
    procedure doNuevo; override;
    procedure doEditar; override;
    procedure doGuardar; override;
    procedure doCancelar; override;
    procedure doBorrar; override;
    procedure doPrint; override;

    procedure AbrirMDDataSet(const id: Variant);
    procedure AbrirSingleDataSet(dset: TADODataset; const id: Variant);
    procedure CalcularTotales; virtual;
  public
    { Public declarations }
    property MasterKeyField: string read FMasterKeyField write SetMasterKeyField;
    property DetailKeyField: string read FDetailKeyField write FDetailKeyField;
    property ActualizarDetalleTarde: Boolean read FActualizarTarde write FActualizarTarde default False;
  end;

var
  MantClassMD: TMantClassMD;

implementation

uses UUtiles, Udata;

{$R *.dfm}

procedure TMantClassMD.AbrirSingleDataSet(dset: TADODataset; const id: Variant);
begin
  with dset do begin
    Close();
    Parameters[1].Value := id;
    Open();
  end;
end;


procedure TMantClassMD.AbrirMDDataSet(const id: Variant);
begin
  with rs do begin
    Close();
    Parameters[1].Value := id;
    Open();
  end;

  with rsDet do begin
    Close();
    Parameters[1].Value := id;
    Open();
  end;
end;

procedure TMantClassMD.doBorrar;
begin
  inherited;
  rsDet.First();
  while not rsDet.Eof do
    rsDet.Delete();

  rs.Delete();

  rsDet.UpdateBatch();
  rs.UpdateBatch();
end;

procedure TMantClassMD.doCancelar;
begin
  inherited;
  rsDet.CancelBatch();
  rs.CancelBatch();
  dsDet.AutoEdit := False;   
end;

procedure TMantClassMD.doEditar;
begin
  inherited;
  rs.Edit();
  dsDet.AutoEdit := True;
end;

procedure TMantClassMD.doGuardar;
begin
  inherited;

  if rs.State in dsEditModes then
    rs.Post();

  if rsDet.State in dsEditModes then
    rsDet.Post();
    
  if ActualizarDetalleTarde then
    DetalleUpdate(rsDet,rs.FieldByName(MasterKeyField).Value,DetailKeyField);
  rs.UpdateBatch();
  rsDet.UpdateBatch();
  dsDet.AutoEdit := False;
end;

procedure TMantClassMD.doNuevo;
begin
  inherited;
  dsDet.AutoEdit := True;
  try
    rs.CancelBatch();
    rsdet.CancelBatch();
  except
    on e: Exception do
      showmessage(E.message);
  end;
  Localizar(NULL);
  rs.Append();
end;

procedure TMantClassMD.doPrint;
begin
  inherited;

end;

procedure TMantClassMD.RSDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  if (MasterKeyField <> '') and not ActualizarDetalleTarde then
    rsDet.FieldByName(DetailKeyField).Value := rs.FieldByName(MasterKeyField).Value;
end;

procedure TMantClassMD.FormCreate(Sender: TObject);
begin
  inherited;
  ActualizarDetalleTarde := False;
  rsDet.Open();
end;

procedure TMantClassMD.RSDetAfterPost(DataSet: TDataSet);
begin
  inherited;
  if appEstado <> appBrowse then
    CalcularTotales();
end;

procedure TMantClassMD.CalcularTotales;
begin
  // nothing to see here...Move along!
end;

procedure TMantClassMD.SetMasterKeyField(const Value: string);
begin
  if (FDetailKeyField = '') or (FDetailKeyField = FMasterKeyField) then
    DetailKeyField := Value;

  FMasterKeyField := Value;
end;

procedure TMantClassMD.AGuardarExecute(Sender: TObject);
var
  fld: TField;
begin
  if ds.Dataset.State in dsEditModes then begin
    fld := ds.DataSet.FindField('Usuario');
    if fld <> nil then fld.Value := dm.UsuarioActual;
  end;

  inherited;
end;

end.

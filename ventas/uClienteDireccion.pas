unit uClienteDireccion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, ADODB, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxTextEdit, cxDBEdit,
  StdCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxLabel, cxDBLabel, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLookAndFeelPainters,
  cxButtons;

type
  TClienteDireccion = class(TFForm)
    rsClienteAct: TADODataSet;
    dsClienteAct: TDataSource;
    rsDir: TADODataSet;
    rsDiridClienteObra: TStringField;
    rsDiridCliente: TIntegerField;
    rsDirDireccionObra: TStringField;
    rsDirSectorObra: TStringField;
    rsDirCiudadObra: TStringField;
    rsDirTelefonoObra: TStringField;
    rsDirFaxObra: TStringField;
    rsDirCelularObra: TStringField;
    rsDirContactoObra: TStringField;
    rsDirActivoObra: TBooleanField;
    rsDiruidClienteObra: TGuidField;
    rsDiridZona: TStringField;
    rsZonaTransp: TADODataSet;
    rsZonaTranspidZona: TStringField;
    rsZonaTranspZona: TStringField;
    dsZonaTrans: TDataSource;
    cxDBLabel1: TcxDBLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1DireccionObra: TcxGridDBColumn;
    cxGridDBTableView1CiudadObra: TcxGridDBColumn;
    cxGridDBTableView1SectorObra: TcxGridDBColumn;
    cxGridDBTableView1ContactoObra: TcxGridDBColumn;
    cxGridDBTableView1TelefonoObra: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    edCod: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    btNew: TcxButton;
    btEdit: TcxButton;
    btSave: TcxButton;
    btCancel: TcxButton;
    btExit: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure btExitClick(Sender: TObject);
    procedure btNewClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure DSStateChange(Sender: TObject);
    procedure rsDirNewRecord(DataSet: TDataSet);
  private
    FIdCliente: Integer;
    procedure SetIdCliente(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property idCliente: Integer read FIdCliente write SetIdCliente;
  end;

var
  ClienteDireccion: TClienteDireccion;

function MostrarDireccionesCliente(const id: Integer): string;

implementation

uses Udata;

{$R *.dfm}

procedure TClienteDireccion.FormCreate(Sender: TObject);
begin
  inherited;
  rsZonaTransp.Open();
end;

procedure TClienteDireccion.btExitClick(Sender: TObject);
begin
  inherited;
  if rsDirIdClienteObra.AsString <> '' then
    ModalResult := mrOk
  else
    ModalResult := mrCancel;
end;

procedure TClienteDireccion.btNewClick(Sender: TObject);
begin
  inherited;
  rsDir.Append();
  edCod.SetFocus();
end;

procedure TClienteDireccion.btEditClick(Sender: TObject);
begin
  inherited;
  rsDir.Edit();
end;

procedure TClienteDireccion.btSaveClick(Sender: TObject);
begin
  inherited;
  if rsDir.State in dsEditModes then
    rsDir.Post();

end;

procedure TClienteDireccion.btCancelClick(Sender: TObject);
begin
  inherited;
  if rsDir.State in dsEditModes then
    rsDir.Post();
end;

procedure TClienteDireccion.DSStateChange(Sender: TObject);
var
  b: Boolean;
begin
  inherited;
  b := rsDir.State in dsEditModes;

  btNew.Enabled := not b;
  btEdit.Enabled := not b;
  btCancel.Enabled := b;
  btSave.Enabled := b;
  btExit.Enabled := not b;
  cxGrid2.Enabled := not b;
end;

procedure TClienteDireccion.SetIdCliente(const Value: Integer);
begin
  with rsClienteAct do begin
    Close();
    Parameters[1].Value := Value;
    Open();
    if Eof then
      raise Exception.Create('Este cliente no existe');
  end;
  with rsDir do begin
    Close();
    Parameters[1].Value := Value;
    Open();
  end;
  FidCliente := Value;
end;

procedure TClienteDireccion.rsDirNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsDirIdCliente.Value := idCliente;
  rsDirActivoObra.Value := True;
  rsDiruidClienteObra.AsGuid := dm.NewGuid();
end;

function MostrarDireccionesCliente(const id: Integer): string;
begin
  Result := '';
  with TClienteDireccion.Create(Application) do begin
    idCliente := id;
    if ShowModal() = mrOk then
      Result := rsDiridClienteObra.AsString;
    Release();
  end;
end;

end.

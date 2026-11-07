unit uViajeFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxControls, cxContainer, cxEdit, cxLabel, DB, ADODB,uutiles,
  cxDBLabel, StdCtrls, Mask, DBCtrls, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxMemo, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLookAndFeelPainters, cxButtons;

type
  TViajeFrame = class(TFrame)
    cxLabel1: TcxLabel;
    rsViaje: TADODataSet;
    rsViajeidViaje: TGuidField;
    rsViajeidViajeTipo: TStringField;
    rsViajeViaje: TStringField;
    rsViajeFecha: TDateTimeField;
    rsViajeidReferencia: TGuidField;
    rsViajeidTransportista: TStringField;
    rsViajeidPlanta: TStringField;
    rsViajeidZonaOrigen: TStringField;
    rsViajeidZona: TStringField;
    rsViajeDireccionEnvio: TStringField;
    rsViajeSectorEnvio: TStringField;
    rsViajeCiudadEnvio: TStringField;
    rsViajeTelefonoEnvio: TStringField;
    rsViajeFax: TStringField;
    rsViajeEmail: TStringField;
    dsViaje: TDataSource;
    cxDBLabel1: TcxDBLabel;
    Label2: TLabel;
    Label4: TLabel;
    deFecha: TcxDBDateEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    edSector: TcxDBTextEdit;
    Label15: TLabel;
    edCiudad: TcxDBTextEdit;
    Label16: TLabel;
    edTel: TcxDBTextEdit;
    Label17: TLabel;
    edEmail: TcxDBTextEdit;
    Label18: TLabel;
    edFax: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
    cxDBMemo1: TcxDBMemo;
    dsZona: TDataSource;
    rsZona: TADODataSet;
    rsZonaidZona: TStringField;
    rsZonaZona: TStringField;
    rsTransportista: TADODataSet;
    rsTransportistaidTransportista: TStringField;
    rsTransportistaTransportista: TStringField;
    rsTransportistaTelefono: TStringField;
    rsTransportistaST: TStringField;
    dsTransportista: TDataSource;
    rsChofer: TADODataSet;
    rsChoferidTransportistaChofer: TGuidField;
    rsChoferidTransportista: TStringField;
    rsChoferTransportistaChofer: TStringField;
    rsChoferLicenciaVence: TDateTimeField;
    rsChoferStatus: TStringField;
    dsChofer: TDataSource;
    rsTransEquipos: TADODataSet;
    rsTransEquiposidTransportistaEquipo: TGuidField;
    rsTransEquiposTransportistaEquipo: TStringField;
    rsTransEquiposidTransportista: TStringField;
    rsTransEquiposPlacaNo: TStringField;
    rsTransEquiposPlacaVence: TDateTimeField;
    rsTransEquiposStatus: TStringField;
    dsTransEquipos: TDataSource;
    Plantas: TADODataSet;
    PlantasidPlanta: TStringField;
    PlantasPlanta: TStringField;
    PlantasActivo: TBooleanField;
    dsPlantas: TDataSource;
    dsTipo: TDataSource;
    rsTipos: TADODataSet;
    rsTiposidViajeTipo: TStringField;
    rsTiposViajeTipo: TStringField;
    PlantasidZona: TStringField;
    rsViajeidTransportistaChofer: TGuidField;
    rsViajeidTransportistaEquipo: TGuidField;
    cxButton1: TcxButton;
    procedure rsViajeNewRecord(DataSet: TDataSet);
    procedure rsViajeidTransportistaValidate(Sender: TField);
    procedure rsViajeidPlantaValidate(Sender: TField);
    procedure cxButton1Click(Sender: TObject);
  private
    FEstado: TappEstado;
    FFechaReferencia: TDateTime;
    FidReferencia: Variant;
    procedure AbrirChoferes(const idTransportista: Variant);
    procedure AbrirEquipos(const idTransportista: Variant);

    { Private declarations }
  protected
    function Localizar(const id: Variant): boolean;
    function LocalizarPorRef(const idref: variant): Boolean;
    procedure SetReferencia(const Value: Variant);
    procedure SetEstado(const Value: TAppEstado);
  public
    { Public declarations }
    property IdReferencia: Variant read FidReferencia write SetReferencia;
    property FechaReferencia: TDateTime read FFechaReferencia write FFechaReferencia;
    property Estado: TappEstado read FEstado;

    procedure Save;
    procedure Delete;
    procedure Cancel;
    procedure Edit;
    procedure ActualizarDireccion(const dir, ciudad, sector, fax, tel,
      zona,email: string);

    constructor Create(Aowner: TComponent); override;
  end;

implementation

uses Udata;

{$R *.dfm}

procedure TViajeFrame.AbrirChoferes(const idTransportista: Variant);
begin
  with rsChofer do begin
    Close();
    if idTransportista <> null then begin
      Parameters[1].Value := idTransportista;
      Open();
    end;
  end;
end;

procedure TViajeFrame.AbrirEquipos(const idTransportista: Variant);
begin
  with rsTransEquipos do begin
    Close();
    if idTransportista <> null then begin
      Parameters[1].Value := idTransportista;
      Open();
    end;
  end;
end;

procedure TViajeFrame.Cancel;
begin
  rsViaje.Cancel();
  rsViaje.CancelBatch();
  SetEstado(appbrowse);
end;

procedure TViajeFrame.Delete;
begin
  if Estado <> appBrowse then
    Cancel();
  if not rsviaje.IsEmpty() then
    rsViaje.Delete();
end;

procedure TViajeFrame.Edit;
begin
  if Estado = appBrowse then begin
    if rsViaje.IsEmpty then begin
      rsViaje.Append();
      SetEstado(appInsert);
    end
    else begin
      rsViaje.Edit();
      SetEstado(appEdit);
    end;
  end;
end;

function TViajeFrame.Localizar(const id: Variant): boolean;
begin
  rsViaje.Close();
  if rsviaje.CommandText <> 'lgRSViaje' then
    rsViaje.CommandText := 'lgRSViaje';
  rsViaje.Parameters[1].Value := id;
  rsViaje.Open();
  Result := not rsViaje.Eof;
end;

function TViajeFrame.LocalizarPorRef(const idref: variant): Boolean;
begin
  rsViaje.Close();
  if rsViaje.CommandText <> 'lgRSViajePorRef' then
    rsViaje.CommandText := 'lgRSViajePorRef';
  rsViaje.Parameters[1].Value := idref;
  rsViaje.Open();

  AbrirChoferes(rsViajeIdtransportista.Value);
  AbrirEquipos(rsViajeIdtransportista.Value);

  Result := not rsViaje.Eof;
end;

procedure TViajeFrame.rsViajeNewRecord(DataSet: TDataSet);
begin
  rsviajeidViaje.asGuid := dm.NewGuid();
  rsViajeFecha.Value := FechaReferencia;
end;

procedure TViajeFrame.Save;
begin
  if Estado = appBrowse then
    Exit;

 { if rsViajeidTransportista.IsNull then
    raise Exception.Create('El transportista requiere un valor');

  if rsViajeidTransportistaEquipo.IsNull then
    raise Exception.Create('El equipo requiere un valor');

  if rsViajeidTransportistaChofer.IsNull then
    raise Exception.Create('El chofer requiere un valor');
   }
  if (rsViaje.State in dsEditModes) then
    rsviaje.Edit();

  rsViajeIdReferencia.Value := IdReferencia;

  if (Estado = appInsert) and (rsViajeviaje.AsString = '') then begin
    rsViajeViaje.Asstring := dm.GetNextCounterStr('LG_VIAJE');
  end;
  rsViaje.Post();
  rsViaje.UpdateBatch();
  SetEstado(appbrowse);
end;

procedure TViajeFrame.SetEstado(const Value: TAppEstado);
begin
  FEstado := Value;
  dsViaje.AutoEdit := FEstado <> Appbrowse;
  cxButton1.Enabled := FEstado <> Appbrowse;
end;

procedure TViajeFrame.SetReferencia(const Value: Variant);
begin
  if FIdReferencia <> Value then begin
    FidReferencia := Value;
    LocalizarPorRef(Value);
    SetEstado(appbrowse);
  end;
end;

procedure TViajeFrame.rsViajeidTransportistaValidate(Sender: TField);
begin
  if not rsViajeIdTransportista.IsNull then begin
    AbrirChoferes(rsViajeIdTransportista.Value);
    AbrirEquipos(rsViajeIdTransportista.Value);
  end;
end;

constructor TViajeFrame.Create(Aowner: TComponent);
begin
  inherited Create(Aowner);

  rsTipos.Open();
  rsZona.Open();
  Plantas.Open();
  rsTransportista.Open();
  AbrirChoferes(rsTransportistaIdtransportista.Value);
  AbrirEquipos(rsTransportistaIdtransportista.Value);
end;

procedure TViajeFrame.ActualizarDireccion(const dir,ciudad, sector, fax, tel, zona,email: string);
begin
  if Estado = appBrowse then
    Edit();
  rsViajeDireccionEnvio.Value := dir;
  rsViajeCiudadEnvio.Value := ciudad;
  rsViajeSectorEnvio.Value := sector;
  rsViajeFax.value := fax;
  rsViajetelefonoEnvio.Value := tel;
  if zona <> '' then
    rsViajeIdZona.Value := zona
  else
    rsViajeIdZona.Clear();
    
  rsViajeEmail.Value := email;
end;

procedure TViajeFrame.rsViajeidPlantaValidate(Sender: TField);
begin
  if Plantas.Locate('idPlanta',rsViajeidPlanta.Value,[]) then begin
    if not PlantasIdZona.IsNull then
      rsViajeidZonaOrigen.Value := PlantasIdZona.Value;
  end;
end;

procedure TViajeFrame.cxButton1Click(Sender: TObject);
begin
  rsViajeIdtransportista.Clear();
  rsViajeidTransportistaChofer.Clear();
  rsViajeidTransportistaEquipo.Clear();
  AbrirChoferes(NULL);
  AbrirEquipos(NULL);
end;

end.

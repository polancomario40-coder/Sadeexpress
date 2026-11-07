unit uCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformmant2, StdCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, DB,
  ADODB, ActnList, ImgList, Wwdatsrc, wwSpeedButton, wwDBNavigator,
  ExtCtrls, wwclearpanel, dxExEdtr, dxDBEdtr, uformmant1, Grids, Wwdbigrd,
  Wwdbgrid, cxLookAndFeelPainters, cxButtons, cxPC, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxLabel,
  cxMemo, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxButtonEdit, cxCheckBox, Mask, DBCtrls;

type
  TCliente = class(Tfformmant2)
    RSidCliente: TIntegerField;
    RSCliente: TStringField;
    RSContacto: TStringField;
    RSDireccion: TStringField;
    RSCiudad: TStringField;
    RSTelefono: TStringField;
    RSFax: TStringField;
    RSBeeper: TStringField;
    RSEMail: TStringField;
    RSLimiteCredito: TBCDField;
    RSidClienteTipo: TIntegerField;
    RSidClienteStatus: TIntegerField;
    RSUidCliente: TGuidField;
    RSidEmpleado: TIntegerField;
    ClienteStatus: TADODataSet;
    Empleado: TADODataSet;
    dsEmpleado: TDataSource;
    dsClienteStatus: TDataSource;
    ClienteTipo: TADODataSet;
    dsClienteTipo: TDataSource;
    RSSector: TStringField;
    RSRNC_Cedula: TStringField;
    RSDetidClienteObra: TStringField;
    RSDetidCliente: TIntegerField;
    RSDetDireccionObra: TStringField;
    RSDetSectorObra: TStringField;
    RSDetCiudadObra: TStringField;
    RSDetTelefonoObra: TStringField;
    RSDetFaxObra: TStringField;
    RSDetCelularObra: TStringField;
    RSDetContactoObra: TStringField;
    RSDetActivoObra: TBooleanField;
    RSidClienteGrupo: TIntegerField;
    RSDescuento: TFloatField;
    ListaPrecio: TADODataSet;
    dsListaPrecio: TDataSource;
    RSidListaPrecio: TStringField;
    RSCondicion: TIntegerField;
    RSFechaActivo: TDateTimeField;
    RSFechaInactivo: TDateTimeField;
    TipoTasa: TADODataSet;
    TipoTasaidTasaTipo: TStringField;
    TipoTasaTasaTipo: TStringField;
    TipoTasarowguid: TGuidField;
    RSidTasaTipo: TStringField;
    dsTipotasa: TDataSource;
    RSGrupo: TStringField;
    RSPassword: TStringField;
    RSUserName: TStringField;
    qryGrupo: TADOQuery;
    dsGrupo: TDataSource;
    ClienteTipoidClienteTipo: TIntegerField;
    ClienteTipoClienteTipo: TStringField;
    ClienteTipoNoPagaItbis: TBooleanField;
    ClienteTipoUidClienteTipo: TGuidField;
    Zona: TADODataSet;
    ZonaidZona: TStringField;
    ZonaZona: TStringField;
    ZonaidEmpleado: TIntegerField;
    dsZona: TDataSource;
    RSidZona: TStringField;
    qryCondicion: TADOQuery;
    qryCondicionidCondicion: TStringField;
    qryCondicionCondicion: TStringField;
    qryCondicionCredito: TBooleanField;
    qryCondicionDias: TIntegerField;
    qryCondicionPrecioContado: TBooleanField;
    dsCondicion: TDataSource;
    RSidCondicion: TStringField;
    RSComisionFactor: TBCDField;
    RSidMoneda: TIntegerField;
    dsMoneda: TDataSource;
    RSNotas: TStringField;
    RSNumeroSuplidor: TStringField;
    qrysvGrupo: TADOQuery;
    qrysvGrupoIdGrupo: TStringField;
    qrysvGrupoGrupo: TStringField;
    dsSvGrupo: TDataSource;
    RSidClienteParent: TIntegerField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label6: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    Label29: TLabel;
    Label28: TLabel;
    dxDBEdit1: TcxDBTextEdit;
    dxDBEdit2: TcxDBTextEdit;
    dxDBEdit9: TcxDBTextEdit;
    dxDBEdit10: TcxDBTextEdit;
    dxDBLookupEdit1: TcxDBLookupComboBox;
    dxDBLookupEdit2: TcxDBLookupComboBox;
    dxDBEdit11: TcxDBTextEdit;
    dxDBDateEdit1: TcxDBDateEdit;
    dxDBDateEdit2: TcxDBDateEdit;
    dxDBEdit6: TcxDBTextEdit;
    dxDBLookupEdit7: TcxDBLookupComboBox;
    dxDBLookupEdit8: TcxDBLookupComboBox;
    dxDBMemo1: TcxDBMemo;
    dxDBEdit14: TcxDBButtonEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    Shape1: TShape;
    Label23: TLabel;
    dxDBLookupEdit5: TcxDBLookupComboBox;
    Label26: TLabel;
    dxDBEdit16: TcxDBTextEdit;
    Label25: TLabel;
    dxDBEdit15: TcxDBTextEdit;
    cxTabSheet3: TcxTabSheet;
    cxLabel2: TcxLabel;
    Shape2: TShape;
    Label3: TLabel;
    dxDBEdit3: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxLabel3: TcxLabel;
    Shape3: TShape;
    cxLabel4: TcxLabel;
    Shape4: TShape;
    Label17: TLabel;
    dxDBEdit13: TcxDBTextEdit;
    cxButton1: TcxButton;
    limCr: TcxDBTextEdit;
    dxDBLookupEdit6: TcxDBLookupComboBox;
    Label21: TLabel;
    Label18: TLabel;
    dxDBLookupEdit3: TcxDBLookupComboBox;
    dxDBEdit18: TcxDBTextEdit;
    Label30: TLabel;
    Label11: TLabel;
    lkEmpleado: TcxDBLookupComboBox;
    dxDBLookupEdit9: TcxDBLookupComboBox;
    Label32: TLabel;
    Label27: TLabel;
    dxDBEdit12: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    Shape5: TShape;
    Label31: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label33: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxLabel6: TcxLabel;
    Shape6: TShape;
    cxLabel7: TcxLabel;
    Shape7: TShape;
    rsClienteContacto: TADODataSet;
    rsClienteContactoidClienteContacto: TGuidField;
    rsClienteContactoidCliente: TIntegerField;
    rsClienteContactoNombre: TStringField;
    rsClienteContactoTelefono: TStringField;
    rsClienteContactoemail: TStringField;
    rsClienteContactoPuesto: TStringField;
    rsClienteContactoFechaNacimiento: TDateTimeField;
    dsContacto: TDataSource;
    cxGrid1DBTableView1Nombre: TcxGridDBColumn;
    cxGrid1DBTableView1Telefono: TcxGridDBColumn;
    cxGrid1DBTableView1email: TcxGridDBColumn;
    cxGrid1DBTableView1Puesto: TcxGridDBColumn;
    cxGrid1DBTableView1FechaNacimiento: TcxGridDBColumn;
    RSRepresentante: TStringField;
    RSRepresentanteCedula: TStringField;
    RSDetidZona: TStringField;
    rsZonaTransp: TADODataSet;
    rsZonaTranspidZona: TStringField;
    rsZonaTranspZona: TStringField;
    dsZonaTrans: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1idClienteObra: TcxGridDBColumn;
    cxGridDBTableView1DireccionObra: TcxGridDBColumn;
    cxGridDBTableView1SectorObra: TcxGridDBColumn;
    cxGridDBTableView1TelefonoObra: TcxGridDBColumn;
    cxGridDBTableView1CelularObra: TcxGridDBColumn;
    cxGridDBTableView1FaxObra: TcxGridDBColumn;
    cxGridDBTableView1ActivoObra: TcxGridDBColumn;
    cxGridDBTableView1ContactoObra: TcxGridDBColumn;
    cxGridDBTableView1CiudadObra: TcxGridDBColumn;
    cxGridDBTableView1idZona: TcxGridDBColumn;
    RSDetClienteObra: TStringField;
    cxGridDBTableView1ClienteObra: TcxGridDBColumn;
    Label8: TLabel;
    Label22: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    RSfecnac: TDateTimeField;
    Clienteact: TADODataSet;
    ClienteactidCliente: TIntegerField;
    ClienteactCliente: TStringField;
    ClienteactTelefono: TStringField;
    ClienteactEMail: TStringField;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RSNewRecord(DataSet: TDataSet);
    procedure RSDetNewRecord(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure dxDBEdit1Enter(Sender: TObject);
    procedure dxDBEdit1Exit(Sender: TObject);
    procedure dxDBEdit14PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure rsClienteContactoNewRecord(DataSet: TDataSet);
    procedure ALocalizarExecute(Sender: TObject);
    procedure AEditarExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure ANuevoExecute(Sender: TObject);
    procedure cxGrid1Enter(Sender: TObject);
    procedure RSAfterScroll(DataSet: TDataSet);
    procedure cxGrid2Enter(Sender: TObject);
    procedure cxGrid2Exit(Sender: TObject);
    procedure dxDBEdit7Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
  private
    procedure GuardarContactos;
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure UserAutoCodigo; override;
    procedure browsebotonstate; override;
    procedure editbotonstate; override;
    function PermiteNuloTelFec: Boolean;
    procedure newbotonstate; override;
  end;

var
  Cliente: TCliente;

implementation

uses Udata, uBusqueda, UUtiles;

{$R *.dfm}


function TCliente.PermiteNuloTelFec: Boolean;
var
  v: Variant;
  s: string;
begin
  s := Trim(dm.GetDefaultStr('Client_EDIT_CLI'));
  if s = '' then begin
    v := dm.GetDefault('Client_EDIT_CLI');
    s := Trim(VarToStr(v));
  end;
  if s = '' then begin
    try
      dm.LoadDefaultsCache;
      s := Trim(dm.GetDefaultStr('Client_EDIT_CLI'));
      if s = '' then s := Trim(VarToStr(dm.GetDefault('Client_EDIT_CLI')));
    except end;
  end;
  if s = '' then begin
    try
      with dm.GetDataSet('SELECT CAST(Valor as varchar(50)) as Valor FROM Defaults WHERE Clave = ''Client_EDIT_CLI''', Null) do
      try
        if not IsEmpty then
          s := Trim(FieldByName('Valor').AsString);
      finally
        Free;
      end;
    except end;
  end;
  Result := (s = '0');
end;

procedure TCliente.UserAutoCodigo;
begin
  if rsIdCliente.isnull then
    rsidCliente.Value := dm.GetNextCounterInt ('CLIENTE');
end;

procedure TCliente.FormCreate(Sender: TObject);
begin
  MasterField := 'idCliente';
  DetailField := 'idCliente';
  inherited;
  DetalleObligatorio := false;
  spName := 'FindCliente';
  Busqfield := 'idCliente';
  tfBusqueda := TBusqueda;
  OcultarC1 := false;    //oculta la columna 1 en la busqueda
  ClienteStatus.Open;
  ClienteTipo.Open;
  Empleado.Open;
  ListaPrecio.Open;
  TipoTasa.Open();
  Zona.Open;
  qryCondicion.Open();
  qryGrupo.Open();
  qrySvGrupo.Open();
  rsZonaTransp.Open();

  if PermiteNuloTelFec then begin
    RSTelefono.Required := False;
    RSfecnac.Required := False;
  end else begin
    RSTelefono.Required := True;
    RSfecnac.Required := True;
  end;
end;

procedure TCliente.FormDestroy(Sender: TObject);
begin
  inherited;
  ClienteStatus.close;
  ClienteTipo.close;
  Empleado.close;
  ListaPrecio.Close;
end;

procedure TCliente.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsidClienteStatus.Value := 1;
  rsidClienteTipo.Value := 1;
  rsUidCliente.AsGuid := dm.NewGuid;
  rsLimiteCredito.Value := 0.00;
  RSFechaActivo.Value := dm.DBFecha();
  //rsidEmpleado.Value :=4;
  rsidCondicion.Value:='Contado';


  rsIdMoneda.AsInteger := dm.MonedaLegal();
end;

procedure TCliente.RSDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsdetactivoobra.Value := true;
  rsdetDireccionObra.Value := '';
  rsdetSectorObra.Value := '';
  rsdetCiudadObra.Value := '';
  rsdetContactoObra.Value := '';
  rsdetTelefonoObra.Value := '';
end;

procedure TCliente.cxButton1Click(Sender: TObject);
begin
  inherited;
  if dm.Tienepermiso(pAprobar, Permisos,'Cambios Limite Credito de Cliente', rsidcliente.AsString ) then
  begin
    if not(rsidcliente.IsNull) then begin
      if appestado = appBrowse then Aeditar.Execute;
      limcr.Enabled := true;
      limcr.SetFocus;
    end;
  end;

end;

procedure TCliente.dxDBEdit1Enter(Sender: TObject);
begin
  inherited;
 if appestado = appbrowse then
     ds.AutoEdit := true;
end;

procedure TCliente.dxDBEdit1Exit(Sender: TObject);
var
  buscar : variant;
begin
  inherited;
  if appestado = appbrowse then
  begin
    with (sender as TcxDBTextEdit) do
    begin
       buscar := rs.Fieldbyname(DataBinding.datafield).value;
       DataBinding.DataSource.DataSet.cancel;
       Localizar(buscar);
    end;
    ds.AutoEdit := false;
  end;
end;

procedure TCliente.dxDBEdit14PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  x : variant;
begin
  inherited;
  if appestado = appbrowse then
    exit;
  x := fbuscar(TBusqueda,'idCliente',false,'FindCliente');
  if x <> Null then
  begin
    RSidClienteParent.Value := x;
  end;
end;

procedure TCliente.rsClienteContactoNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsClienteContactoidClienteContacto.AsGuid := dm.NewGuid();
end;

procedure TCliente.ALocalizarExecute(Sender: TObject);
begin
  inherited;

{  with rsClienteContacto do begin
    Close();
    Parameters[1].Value := rsIdCliente.Value;
    Open();
  end;  }
end;

procedure TCliente.AEditarExecute(Sender: TObject);
begin
  inherited;

  dsContacto.AutoEdit := True;
end;

procedure TCliente.AGuardarExecute(Sender: TObject);
 Var   buscar1 : variant;
       buscar2 : variant;
begin

  if PermiteNuloTelFec then begin
    if (Trim(rsTelefono.AsString) = '') or (rsTelefono.AsString = '   -   -    ') or (Trim(rsTelefono.AsString) = '--') then
      rsTelefono.Clear;
    if (not rsfecnac.IsNull) and ((rsfecnac.Value = 0) or (rsfecnac.AsDateTime <= StrToDateDef('01/01/1900', 0))) then
      rsfecnac.Clear;
  end;

  if (appestado = appInsert)  then begin
    if (not rsTelefono.IsNull) and (Trim(rsTelefono.AsString) <> '') and (not rsfecnac.IsNull) then begin
       //if   DBEdit1.EditText<>'   -   -    ' then begin
       buscar1 := rsTelefono.value;
       buscar2 := rsfecnac.value;

       ClienteAct.Close;
       ClienteAct.Parameters[1].Value:=buscar1;
       ClienteAct.Parameters[2].Value:=buscar2;
       ClienteAct.open;
       if not(ClienteAct.IsEmpty) then
         begin
         ShowMessage('Cliente Existe');
         ACancelar.Execute();
         rs.close;
         rs.parameters[1].Value :=ClienteActidcliente.Value;
         rs.Open;
         Exit;
         end;
         end;
        //end;
    end;


inherited;

  GuardarContactos();
end;

procedure TCliente.GuardarContactos;
begin
  with rsClienteContacto do begin
    First();
    while not eof do begin
      Edit();
      rsClienteContactoIdCliente.Value := rsIdCliente.Value;
      Post();

      Next();
    end;
    UpdateBatch();
  end;
  dsContacto.AutoEdit := False;
end;

procedure TCliente.ACancelarExecute(Sender: TObject);
begin
  inherited;
  dsContacto.AutoEdit := False;
  rsClienteContacto.CancelBatch();
end;

procedure TCliente.ANuevoExecute(Sender: TObject);
begin
  inherited;
  rsClienteContacto.Close();
  rsClienteContacto.Parameters[1].Value := -1;
  rsClienteContacto.Open();
  dsContacto.AutoEdit := True;
end;

procedure TCliente.cxGrid1Enter(Sender: TObject);
begin
  inherited;
  if appEstado <> appBrowse then begin
    if rsClienteContacto.RecordCount = 0 then
      rsClienteContacto.Append();
  end;
end;

procedure TCliente.RSAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with rsClienteContacto do begin
    Close();
    Parameters[1].Value := rsIdCliente.Value;
    Open();
  end;
end;

procedure TCliente.cxGrid2Enter(Sender: TObject);
begin
  inherited;
  if appEstado <> appBrowse then begin
    Enter2Tab := False;
    if rsDet.RecordCount = 0 then
      rsDet.Append();
  end;
end;

procedure TCliente.cxGrid2Exit(Sender: TObject);
begin
  inherited;
  Enter2Tab := True;
end;

procedure TCliente.browsebotonstate;
begin
  inherited;
  CxGridReadOnly(true,cxGrid1);
  CxGridReadOnly(true,cxGrid2);

end;

procedure TCliente.editbotonstate;
begin
  inherited;
  CxGridReadOnly(False,cxGrid1);
  CxGridReadOnly(False,cxGrid2);
  RSTelefono.Required := not PermiteNuloTelFec;
  RSfecnac.Required := not PermiteNuloTelFec;
end;

procedure TCliente.newbotonstate;
begin
  inherited;
  CxGridReadOnly(False,cxGrid1);
  CxGridReadOnly(False,cxGrid2);
  RSTelefono.Required := not PermiteNuloTelFec;
  RSfecnac.Required := not PermiteNuloTelFec;
end;

procedure TCliente.dxDBEdit7Exit(Sender: TObject);
var
   buscar : variant;
begin
  inherited;
  if (appestado = appInsert) or (appestado = appEdit) then begin
    if (not rsTelefono.IsNull) and (Trim(rsTelefono.AsString) <> '') and (rsTelefono.AsString <> '   -   -    ') then begin
      buscar := rsTelefono.value;
      ClienteAct.Close;
      ClienteAct.Parameters[1].Value := buscar;
      ClienteAct.open;
      if not(ClienteAct.IsEmpty) then
      begin
        ShowMessage('Cliente Existe');
        ACancelar.Execute();
        rs.close;
        rs.parameters[1].Value := ClienteActidcliente.Value;
        rs.Open;
        Exit;
      end;
    end;
  end;
end;

procedure TCliente.DBEdit1Exit(Sender: TObject);
var
   buscar : variant;
begin
  inherited;
 { if (appestado = appInsert) or (appestado = appEdit)  then begin
       if   DBEdit1.EditText<>'   -   -    ' then begin
       if (not rsTelefono.IsNull) and (Trim(rsTelefono.AsString) <> '') and (rsTelefono.AsString <> '   -   -    ') then begin
         buscar := rsTelefono.value;
       ClienteAct.Close;
       ClienteAct.Parameters[1].Value:=buscar;
       ClienteAct.open;
       if not(ClienteAct.IsEmpty) then
         begin
         ShowMessage('Cliente Existe');
         ACancelar.Execute();
         rs.close;
         rs.parameters[1].Value :=ClienteActidcliente.Value;
         rs.Open;
         Exit;
         end;
       end;
    end;
           }

end;

end.

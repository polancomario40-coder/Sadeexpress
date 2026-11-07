unit uGestionCobros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, dxEditor, dxExEdtr, dxEdLib, dxDBELib, dxCntner,
  Buttons, kbmMemTable, StdCtrls, ExtCtrls, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid, ADODB, DateUtils, ppCtrls, ppVar, ppPrnabl, ppClass,
  ppBands, ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe,
  uform, Wwdatsrc, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, cxCurrencyEdit, cxCheckBox, cxButtonEdit,
  cxLookAndFeelPainters, cxButtons, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, myChkBox, cxLabel, ppParameter, Menus;

type
  TGestionCobros = class(TFForm)
    mCliente: TkbmMemTable;
    mClienteFecha: TDateTimeField;
    mClienteidCliente: TIntegerField;
    mClienteNombre: TStringField;
    mClienteTelefono: TStringField;
    mClienteDireccion: TStringField;
    mClienteBalance: TCurrencyField;
    mClienteFechaUltCargo: TDateField;
    mClienteTipoUltCargo: TStringField;
    mClienteRefUltCargo: TStringField;
    mClienteMtoUltCargo: TCurrencyField;
    mClienteFechaUltPago: TDateField;
    mClienteRefUltPago: TStringField;
    mClienteMtoUltPago: TCurrencyField;
    rsEstado: TADODataSet;
    dsEstado: TDataSource;
    plCliente: TppDBPipeline;
    Report: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
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
    ppLine1: TppLine;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppSummaryBand1: TppSummaryBand;
    ppLabel10: TppLabel;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppDBText16: TppDBText;
    ppLabel15: TppLabel;
    ppDBText17: TppDBText;
    ppLabel16: TppLabel;
    ppDBText18: TppDBText;
    ppLabel17: TppLabel;
    ppDBText19: TppDBText;
    ppLabel18: TppLabel;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppLabel11: TppLabel;
    ppDBText12: TppDBText;
    ppLabel12: TppLabel;
    ppDBText14: TppDBText;
    ppLabel14: TppLabel;
    ppDBText15: TppDBText;
    ppLabel19: TppLabel;
    ppShape7: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBText13: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    rsDatosEstado: TADODataSet;
    rsDatosEstadoBalance: TBCDField;
    rsDatosEstadoFecUltCargo: TDateTimeField;
    rsDatosEstadoRefUltCargo: TStringField;
    rsDatosEstadoTipoUltCargo: TStringField;
    rsDatosEstadoMtoUltCargo: TBCDField;
    rsDatosEstadoFecUltPago: TDateTimeField;
    rsDatosEstadoRefUltPago: TStringField;
    rsDatosEstadoMtoUltPago: TBCDField;
    ClienteAct: TADODataSet;
    ClienteActidCliente: TIntegerField;
    ClienteActCliente: TStringField;
    ClienteActContacto: TStringField;
    ClienteActLimiteCredito: TBCDField;
    ClienteActActivo: TBooleanField;
    ClienteActidEmpleado: TIntegerField;
    ClienteActDireccion: TStringField;
    ClienteActSector: TStringField;
    ClienteActCiudad: TStringField;
    ClienteActTelefono: TStringField;
    ClienteActNoPagaItbis: TBooleanField;
    rsEstadoLinea: TIntegerField;
    rsEstadoTipo: TStringField;
    rsEstadoidCXC: TGuidField;
    rsEstadoReferencia: TStringField;
    rsEstadoFecha: TDateTimeField;
    rsEstadoValor: TBCDField;
    rsEstadoPagado: TBCDField;
    rsEstadoPendiente: TBCDField;
    mClientePorDist: TBCDField;
    rsDatosEstadoPorDist: TBCDField;
    ppLabel13: TppLabel;
    ppDBText7: TppDBText;
    StyleController: TdxEditStyleController;
    rsEstadoMoneda: TStringField;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText22: TppDBText;
    rsEstadoValorReal: TBCDField;
    rsEstadoPagadoReal: TBCDField;
    rsEstadoidMoneda: TIntegerField;
    rsEstadoPendienteReal: TBCDField;
    plEstado: TppDBPipeline;
    ppDBText27: TppDBText;
    rsEstadoVencimiento: TDateTimeField;
    ppDBText28: TppDBText;
    ppLabel8: TppLabel;
    rsEstadoNCF: TStringField;
    ppLabel20: TppLabel;
    ppDBText23: TppDBText;
    rsEstadoidcliente: TIntegerField;
    rsEstadocliente: TStringField;
    rsEstadodiasVencido: TIntegerField;
    dsClientesDeuda: TDataSource;
    rsClientesDeuda: TADODataSet;
    rsClientesDeudaidAgingCXC: TGuidField;
    rsClientesDeudaFecha: TDateTimeField;
    rsClientesDeudaidCliente: TIntegerField;
    rsClientesDeudaCliente: TStringField;
    rsClientesDeudaDe1a30: TBCDField;
    rsClientesDeudaDe31a45: TBCDField;
    rsClientesDeudaDe46a60: TBCDField;
    rsClientesDeudaDe61a90: TBCDField;
    rsClientesDeudaDe91oMas: TBCDField;
    rsNotas: TADODataSet;
    dsNotas: TDataSource;
    rsNotasidNota: TGuidField;
    rsNotasFechaRegistro: TDateTimeField;
    rsNotasFechaAgenda: TDateTimeField;
    rsNotasTipoNota: TStringField;
    rsNotasNota: TStringField;
    rsNotasidCliente: TIntegerField;
    rsNotasUsuario: TStringField;
    rsNotasAgendar: TBooleanField;
    rsNotasCerrada: TBooleanField;
    rsNotasCerradaPor: TStringField;
    rsNotasFechaCerrada: TDateTimeField;
    rsClientesDeudaBalanceTotal: TBCDField;
    rsClientesDeudaidNota: TGuidField;
    rsClientesDeudaNota: TStringField;
    rsClientesDeudaFechaAgenda: TDateTimeField;
    rsClientesDeudaAgendar: TBooleanField;
    rsClientesDeudaHoyNoAgendado: TIntegerField;
    rsClientesDeudaAgendadoOtroDia: TIntegerField;
    rsRPTAgenda: TADODataSet;
    rsRPTAgendaidNota: TGuidField;
    rsRPTAgendaFechaRegistro: TDateTimeField;
    rsRPTAgendaFechaAgenda: TDateTimeField;
    rsRPTAgendaTipoNota: TStringField;
    rsRPTAgendaNota: TStringField;
    rsRPTAgendaidCliente: TIntegerField;
    rsRPTAgendaUsuario: TStringField;
    rsRPTAgendaAgendar: TBooleanField;
    rsRPTAgendaCerrada: TBooleanField;
    rsRPTAgendaCerradaPor: TStringField;
    rsRPTAgendaFechaCerrada: TDateTimeField;
    rsRPTAgendaCliente: TStringField;
    rsRPTAgendaDireccion: TStringField;
    rsRPTAgendaTelefono: TStringField;
    dsAgendaRPT: TDataSource;
    rsTiposNota: TADODataSet;
    dsTiposNota: TDataSource;
    rsTiposNotaIdTipoNota: TStringField;
    rsTiposNotaTipoNota: TStringField;
    rsTiposNotaInformacion: TBooleanField;
    rsTiposNotaAgendar: TBooleanField;
    dbp_agenda: TppDBPipeline;
    rptAgenda: TppReport;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText24: TppDBText;
    ppDBText31: TppDBText;
    ppDBText35: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppShape9: TppShape;
    ppLabel21: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppDBText40: TppDBText;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel28: TppLabel;
    ppLine2: TppLine;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppLabel30: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    PopupMenu1: TPopupMenu;
    VerCliente1: TMenuItem;
    EstadodeCuenta1: TMenuItem;
    AntiguedaddeSaldos1: TMenuItem;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView1Nombre: TcxGridDBColumn;
    cxGrid1DBTableView1A30: TcxGridDBColumn;
    cxGrid1DBTableView1A60: TcxGridDBColumn;
    cxGrid1DBTableView1A90: TcxGridDBColumn;
    cxGrid1DBTableView1AMas90: TcxGridDBColumn;
    cxGridDBTableView2DBColumn1: TcxGridDBColumn;
    cxGridDBTableView2DBColumn2: TcxGridDBColumn;
    cxGridDBTableView2DBColumn3: TcxGridDBColumn;
    cxGridDBTableView2DBColumn4: TcxGridDBColumn;
    cxGridDBTableView2DBColumn5: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    btnActualizar: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    vercliente: TcxButton;
    estadocta: TcxButton;
    antsaldos: TcxButton;
    cxTabSheet2: TcxTabSheet;
    Label12: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn6: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn7: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn8: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn9: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn10: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    GroupBox3: TGroupBox;
    Shape8: TShape;
    Shape5: TShape;
    Label15: TLabel;
    Label9: TLabel;
    Shape6: TShape;
    Label5: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Shape10: TShape;
    Label13: TLabel;
    Label11: TLabel;
    Shape9: TShape;
    Label14: TLabel;
    Shape7: TShape;
    Shape3: TShape;
    dxDBEdit13: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    dxDBEdit11: TdxDBEdit;
    dxDBEdit12: TdxDBEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    cxTabSheet3: TcxTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    cxButton1: TcxButton;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3FechaAgenda: TcxGridDBColumn;
    cxGridDBTableView3TipoNota: TcxGridDBColumn;
    cxGridDBTableView3Cliente: TcxGridDBColumn;
    cxGridDBTableView3Telefono: TcxGridDBColumn;
    cxGridDBTableView3Nota: TcxGridDBColumn;
    cxGridDBTableView3Cerrada: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    luTipo: TcxLookupComboBox;
    cxButton2: TcxButton;
    deDesde: TcxDateEdit;
    deHasta: TcxDateEdit;
    cxButton7: TcxButton;
    procedure mClienteNewRecord(DataSet: TDataSet);
    procedure mClienteidClienteValidate(Sender: TField);
    procedure ppShape2Print(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure rsEstadoAfterScroll(DataSet: TDataSet);
    procedure rsClientesDeudaAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure btnActualizarClick(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure verclienteClick(Sender: TObject);
    procedure estadoctaClick(Sender: TObject);
    procedure antsaldosClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    procedure AbrirEstado;
    function BuscarCliente(const idCli: Integer): Boolean;
    procedure BuscaUltimoPago;
    procedure BuscaNotasCliente;
    procedure MostrarAgenda;
    { Private declarations }
  public
    procedure DoShowstate; override;
    { Public declarations }
  end;

var
  GestionCobros     : TGestionCobros;

implementation

uses uData, UUtiles, uBusqueda, uCXC, uNotasGestionCobros,
  uRecibo, uCliente, uEstadoCuenta, uEstadoCuentaPend, ucxcAging;

{$R *.dfm}

procedure TGestionCobros.AbrirEstado;
begin
  with rsEstado do begin
    Close();
    Parameters[1].Value := rsClientesDeudaidCliente.Value;
    Open();
  end;
end;

procedure TGestionCobros.mClienteNewRecord(DataSet: TDataSet);
begin
  inherited;
  mClienteFecha.Value := Date;
end;

procedure TGestionCobros.mClienteidClienteValidate(Sender: TField);
begin
  inherited;

  if mClienteIdCliente.AsInteger = 0 then begin
    mClienteNombre.Asstring := '';
    mClienteDireccion.Asstring := '';
    mClienteTelefono.Asstring := '';
  end
  else if BuscarCliente(mClienteIdCliente.AsInteger) then begin
    mClienteNombre.Asstring := ClienteActCliente.AsString;
    mClienteDireccion.Asstring := ClienteActDireccion.Asstring;
    mClienteTelefono.Asstring := ClienteActTelefono.Asstring;
  end
  else
    raise Exception.Create('Este cliente no existe!');
end;

procedure TGestionCobros.ppShape2Print(Sender: TObject);
begin
  inherited;
  ppShape2.Visible := not ppShape2.Visible;
end;

function TGestionCobros.BuscarCliente(const idCli: Integer): Boolean;
begin
  with ClienteAct do begin
    Close();
    Parameters[1].Value := idCli;
    Open();

    Result := not Eof;
  end;
end;


procedure TGestionCobros.DoShowstate;
begin
  inherited;
end;

procedure TGestionCobros.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if not rsEstadoidCxc.isNull then begin
    ModalShow(TCxC, ShowFind, rsEstadoidCxc.Value, ' idCxc', true);
  end;
end;

procedure TGestionCobros.BuscaUltimoPago;
begin
  inherited;

  if rsEstadoidcliente.AsInteger > 0 then begin
    if not (mCliente.State in dsEditModes) then
      mCliente.Edit();

    mClienteIdCliente.AsInteger := rsEstadoidcliente.AsInteger;

    with rsDatosEstado do begin
      Close();
      Parameters[1].Value := mClienteIdCliente.AsInteger;
      Parameters[2].Value := DateOf(mClienteFecha.AsDateTime);
      Open();

      if not (mCliente.State in dsEditModes) then
        mCliente.Edit();

      if FieldByName('Balance').IsNull then
        mClienteBalance.AsCurrency := 0
      else
        mClienteBalance.AsCurrency := FieldByName('Balance').AsCurrency;

      if FieldByName('PorDist').IsNull then
        mClientePorDist.AsCurrency := 0
      else
        mClientePorDist.AsCurrency := FieldByName('PorDist').AsCurrency;

      if FieldByName('FecUltCargo').isNull then
        mClienteFechaUltCargo.Clear()
      else
        mClienteFechaUltCargo.AsDateTime := FieldByName('FecUltCargo').AsDateTime;

      if FieldByName('RefUltCargo').isNull then
        mClienteRefUltCargo.Clear()
      else
        mClienteRefUltCargo.AsString := FieldByName('RefUltCargo').Asstring;

      if FieldByName('TipoUltCargo').isNull then
        mClienteTipoUltCargo.Clear()
      else
        mClienteTipoUltCargo.AsString := FieldByName('TipoUltCargo').Asstring;

      if FieldByName('MtoUltCargo').isNull then
        mClienteMtoUltCargo.Clear()
      else
        mClienteMtoUltCargo.AsCurrency := FieldByName('MtoUltCargo').AsCurrency;

      if FieldByName('FecUltPago').isNull then
        mClienteFechaUltPago.Clear()
      else
        mClienteFechaUltPago.AsDateTime := FieldByName('FecUltPago').AsDateTime;

      if FieldByName('RefUltPago').isNull then
        mClienteRefUltCargo.Clear()
      else
        mClienteRefUltPago.AsString := FieldByName('RefUltPago').Asstring;

      if FieldByName('MtoUltPago').isNull then
        mClienteMtoUltPago.Clear()
      else
        mClienteMtoUltPago.AsCurrency := FieldByName('MtoUltPago').AsCurrency;
    end;
  end;
end;

procedure TGestionCobros.rsEstadoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  BuscaUltimoPago;
end;

procedure TGestionCobros.BuscaNotasCliente;
begin
  rsNotas.Close;
  rsNotas.Parameters[1].Value := rsClientesDeudaidCliente.Value;
  rsNotas.Open;
end;

procedure TGestionCobros.rsClientesDeudaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  BuscaNotasCliente;
  rsEstado.Close;
end;

procedure TGestionCobros.FormCreate(Sender: TObject);
begin
  inherited;
  rsTiposNota.Open();
  deDesde.date := dm.FechaDesde;
  deHasta.Date := dm.FechaHasta;
end;

procedure TGestionCobros.cxButton1Click(Sender: TObject);
begin
  inherited;
  MostrarAgenda();
end;

procedure TGestionCobros.MostrarAgenda();
begin

  with rsRPTAgenda do begin
    Close();
    if luTipo.EditValue = NULL then
      Parameters[1].Value := NULL
    else
      Parameters[1].Value := luTipo.EditValue;
    Parameters[2].Value := deDesde.Date;
    Parameters[3].Value := deHasta.Date;
    Open();
  end;
end;


procedure TGestionCobros.cxButton2Click(Sender: TObject);
begin
  inherited;
  ImprimirReporte(rptAgenda);
end;

procedure TGestionCobros.cxButton4Click(Sender: TObject);
begin
  inherited;
  if rsClientesDeuda.Active and (not rsClientesDeuda.IsEmpty) then
    ModalShow(TCXC, showInsert,rsClientesDeudaidCliente.Value, 'IdCliente')
  else
    ModalShow(TCXC);
end;

procedure TGestionCobros.btnActualizarClick(Sender: TObject);
var
  id: Integer;
begin
  inherited;

  try
    Screen.Cursor := crSQLWait;

    if rsClientesDeuda.Active and (not rsClientesDeuda.IsEmpty) then
      id := rsClientesDeudaidCliente.Value
    else
      id := 0;

    rsClientesDeuda.Close;
    rsClientesDeuda.Parameters[1].Value := Now;
    rsClientesDeuda.Open;

    if id <> 0 then
      rsClientesDeuda.Locate('idcliente',id,[]);
  finally
    Screen.Cursor := crDefault;
  end;

end;

procedure TGestionCobros.cxButton8Click(Sender: TObject);
begin
  inherited;
  if rsClientesDeuda.active and rsClientesDeuda.IsEmpty then
    raise exception.create('No hay clientes seleccionados');

  ModalShow(TNotasGestionCobros, Showinsert, rsClientesDeudaidCliente.Value, 'idCliente', True);

  btnActualizarClick(Sender);
end;

procedure TGestionCobros.cxButton9Click(Sender: TObject);
begin
  inherited;

  if not Confirmar('Seguro deseas cerrar la nota?') then Exit;

  if (Not(rsClientesDeuda.Active) or (rsClientesDeudaidNota.IsNull)) then
    Exit;

  try
    dm.Coneccion.Execute('UPDATE cxcNotasGestionCobros ' +
      ' SET cerrada = 1, cerradaPor = ' + QuotedStr(dm.UsuarioActual()) + ', fechaCerrada = GETDATE()' +
      ' WHERE idNota = ' + QuotedStr(rsClientesDeudaidNota.AsString));

    btnActualizarClick(Sender);
  except
    MessageDlg('ERROR : Cerrando la nota', mtError, [mbOK], 0);
  end;
end;

procedure TGestionCobros.cxButton11Click(Sender: TObject);
begin
  inherited;
  if (rsEstado.Active) and (rsEstado.RecordCount > 0) then
  begin
    rsEstado.DisableControls;
    rsEstado.Sort := 'Moneda, Fecha';
    SendRPTEmail('', 'Estado de cuentas por cobrar', 'Anexo el estado de su cuenta con nuestra empresa', mClienteidCliente.AsString, Report);
    rsEstado.Sort := '';
    rsEstado.EnableControls;
  end;
end;

procedure TGestionCobros.cxButton12Click(Sender: TObject);
begin
  inherited;
  if (rsEstado.Active) and (rsEstado.RecordCount > 0) then
  begin
    rsEstado.DisableControls;
    rsEstado.Sort := 'Moneda, Fecha';
    Report.Print();
    rsEstado.Sort := '';
    rsEstado.EnableControls;
  end;
end;

procedure TGestionCobros.cxButton13Click(Sender: TObject);
begin
  inherited;

  try
    Screen.Cursor := crSQLWait;

    if ((rsClientesDeuda.Active) and (rsClientesDeuda.RecordCount > 0)) then
    begin
      AbrirEstado();

      mCliente.Open();
      mCliente.Append();

      cxPageControl1.ActivePage := cxTabSheet2;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TGestionCobros.cxButton7Click(Sender: TObject);
begin
  inherited;
  if not Confirmar('Seguro deseas cerrar la nota?') then Exit;
  
  if (Not(rsRPTAgenda.Active) or (rsRPTAgendaidNota.IsNull)) then
    Exit;

  try
    dm.Coneccion.Execute('UPDATE cxcNotasGestionCobros ' +
      ' SET cerrada = 1, cerradaPor = ' + QuotedStr(dm.UsuarioActual()) + ', fechaCerrada = GETDATE()' +
      ' WHERE idNota = ' + QuotedStr(rsRPTAgendaidNota.AsString));
    MostrarAgenda();
  except
    MessageDlg('ERROR : Cerrando la nota', mtError, [mbOK], 0);
  end;
end;

procedure TGestionCobros.verclienteClick(Sender: TObject);
begin
  inherited;
  if not (rsClientesDeudaidCliente.IsNull) then
    modalshow(tcliente, showfind, rsClientesDeudaidCliente.value, 'idCliente', false);
end;

procedure TGestionCobros.estadoctaClick(Sender: TObject);
begin
  inherited;
  if not (rsClientesDeudaidCliente.IsNull) then
    ModalShow(TEstadoCuentaPend, showprint, rsClientesDeudaidCliente.value, 'idCliente', false);

end;

procedure TGestionCobros.antsaldosClick(Sender: TObject);
begin
  inherited;
 if not (rsClientesDeudaidCliente.IsNull) then
    ModalShow(TAgingCXC, showprint, rsClientesDeudaidCliente.value, 'idCliente', false);
end;

procedure TGestionCobros.cxButton3Click(Sender: TObject);
begin
  inherited;
  if rsClientesDeuda.Active and (not rsClientesDeuda.IsEmpty) then
    ModalShow(TRecibo, showInsert,rsClientesDeudaidCliente.Value, 'IdCliente')
  else
    ModalShow(TRecibo);
end;

end.


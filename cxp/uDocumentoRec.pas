unit uDocumentoRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClassMD, cxLookAndFeelPainters, DB, ADODB, ImgList,
  ActnList, Wwdatsrc, StdCtrls, cxButtons, Gradient, cxCheckBox, cxDBEdit,
  cxMemo, cxCurrencyEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxPC, cxSpinEdit, uCodifCtas, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxCalendar,dateutils;

type
  TDocumentoRec = class(TMantClassMD)
    RSidDocumento: TGuidField;
    RSidSuplidor: TIntegerField;
    RSSuplidor: TStringField;
    RSRNC: TStringField;
    RSidTipoIdentificacion: TStringField;
    RSidClaseGasto: TStringField;
    RSConcepto: TStringField;
    RSValor: TBCDField;
    RSidMoneda: TIntegerField;
    RSTasa: TBCDField;
    RSUsarTasaDia: TBooleanField;
    RSCodifManual: TBooleanField;
    RSMostrarEnCXP: TBooleanField;
    RSReferencia: TStringField;
    RSDias: TIntegerField;
    RSOrdenCompra: TStringField;
    RSidOrdenCompra: TGuidField;
    RSidCuenta: TStringField;
    RSMontoImpuestos: TBCDField;
    RSMontoRetenciones: TBCDField;
    RSStatus: TStringField;
    RSDesde: TDateTimeField;
    RSHasta: TDateTimeField;
    RSGenerarDia: TIntegerField;
    Label4: TLabel;
    beSuplidor: TcxDBButtonEdit;
    edNombre: TcxDBTextEdit;
    edDir: TcxDBTextEdit;
    Label13: TLabel;
    luTipoID: TcxDBLookupComboBox;
    Label12: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    edTel1: TcxDBTextEdit;
    edTel2: TcxDBTextEdit;
    Label1: TLabel;
    Label5: TLabel;
    luMoneda: TcxDBLookupComboBox;
    Label3: TLabel;
    edValor: TcxDBCurrencyEdit;
    Label2: TLabel;
    edRef: TcxDBTextEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    Label10: TLabel;
    luClase: TcxDBLookupComboBox;
    cxDBMemo1: TcxDBMemo;
    Label11: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    Label17: TLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    Label18: TLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    Label6: TLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    seGenDia: TcxDBSpinEdit;
    Label7: TLabel;
    frCodifCtas1: TfrCodifCtas;
    RSDetidDocumentoRecRetencion: TGuidField;
    RSDetidDocumento: TGuidField;
    RSDetidRetencion: TIntegerField;
    RSDetRetencion: TStringField;
    RSDetPorcentaje: TFloatField;
    GridRets: TcxGrid;
    tvRetenciones: TcxGridDBTableView;
    GridRetsCodigo: TcxGridDBColumn;
    GridRetsRetencion: TcxGridDBColumn;
    GridRetsPorc: TcxGridDBColumn;
    GridRetsMonto: TcxGridDBColumn;
    glRetenciones: TcxGridLevel;
    RSDetMonto: TBCDField;
    Label8: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label9: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    rsSuplidorAct: TADODataSet;
    rsSuplidorActidSuplidor: TIntegerField;
    rsSuplidorActNombre: TStringField;
    rsSuplidorActDireccion: TStringField;
    rsSuplidorActCiudad: TStringField;
    rsSuplidorActProvincia: TStringField;
    rsSuplidorActPais: TStringField;
    rsSuplidorActTelefono1: TStringField;
    rsSuplidorActTelefono2: TStringField;
    rsSuplidorActLimiteCredito: TBCDField;
    rsSuplidorActDiasCredito: TIntegerField;
    rsSuplidorActTipoSuplidor: TIntegerField;
    rsSuplidorActRNC: TStringField;
    rsSuplidorActFechaIngreso: TDateTimeField;
    rsSuplidorActEstatus: TBooleanField;
    rsSuplidorActEMail: TStringField;
    rsSuplidorActContacto: TStringField;
    rsSuplidorActTelContacto: TStringField;
    rsSuplidorActFax: TStringField;
    rsSuplidorActCod: TStringField;
    rsSuplidorActidMoneda: TIntegerField;
    rsSuplidorActTipoImpuesto: TIntegerField;
    rsSuplidorActidCuenta: TStringField;
    rsSuplidorActMostrarEnCXP: TBooleanField;
    rsSuplidorActAbrev: TStringField;
    rsSuplidorActidAuxiliar: TStringField;
    rsSuplidorActidTipoIdentificacion: TStringField;
    rsSuplidorActPedirNCF: TStringField;
    rsSuplidorActFormaPago: TStringField;
    rsSuplidorActUidcxpSuplidores: TGuidField;
    rsSuplidorActidSuplidorParent: TIntegerField;
    dsSuplidorAct: TDataSource;
    rsTiposRets: TADODataSet;
    rsTiposRetsidRetencion: TIntegerField;
    rsTiposRetsRetencion: TStringField;
    rsTiposRetsPorcentaje: TFloatField;
    rsTiposRetsidCuenta: TStringField;
    rsClaseGasto: TADODataSet;
    rsClaseGastoidClasegasto: TStringField;
    rsClaseGastoClaseGasto: TStringField;
    dsRets: TDataSource;
    dsclaseGasto: TDataSource;
    cxDBCheckBox3: TcxDBCheckBox;
    rsTipoDocID: TADODataSet;
    rsTipoDocIDidTipoIdentificacion: TStringField;
    rsTipoDocIDTipoIdentificacion: TStringField;
    dsTipoId: TDataSource;
    rsTipoImpuesto: TADODataSet;
    dsTipoImp: TDataSource;
    Label14: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    RSidTipoImpuesto: TIntegerField;
    RSPorcImpuesto: TFloatField;
    rsTipoImpuestoTipoImpuesto: TIntegerField;
    rsTipoImpuestoDescripcion: TStringField;
    rsTipoImpuestoPorcentaje: TBCDField;
    rsTipoImpuestoTitulo: TStringField;
    rsTipoImpuestoidCuenta: TStringField;
    rsTipoImpuestoAutoIncluir: TBooleanField;
    rsTipoImpuestoUidTipoImpuesto: TGuidField;
    rsTipoImpuestoITBIS: TBooleanField;
    rsTipoImpuestoActivo: TBooleanField;
    rsBuscarCtaSup: TADODataSet;
    rsBuscarCtaSupidSuplidor: TIntegerField;
    rsBuscarCtaSupidMoneda: TIntegerField;
    rsBuscarCtaSupidCuenta: TStringField;
    rsbuscarOCPorNumero: TADODataSet;
    rsbuscarOCPorNumeroidOrden: TGuidField;
    rsBuscarOCPorID: TADODataSet;
    rsBuscarOCPorIDNumero: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure RSidSuplidorValidate(Sender: TField);
    procedure RSidMonedaValidate(Sender: TField);
    procedure beSuplidorPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure RSDetidRetencionValidate(Sender: TField);
    procedure RSDetMontoValidate(Sender: TField);
    procedure RSDetPorcentajeValidate(Sender: TField);
    procedure RSidTipoImpuestoValidate(Sender: TField);
    procedure RSPorcImpuestoValidate(Sender: TField);
    procedure RSValorValidate(Sender: TField);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure RSidOrdenCompraValidate(Sender: TField);
    procedure RSOrdenCompraValidate(Sender: TField);
    procedure GridRetsEnter(Sender: TObject);
    procedure GridRetsCodigoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    FLoading: Boolean;
    function validarSuplidor(const idSuplidor: Integer): Boolean;
    procedure CodificarDocumento;
    procedure RecalcularImpuestos;
    function BuscarCuentasSuplidor(const idSup, idMon: Integer): string;
    function BuscarOC(const ref: variant; tipo: char): variant;
  protected
    function Localizar(const id: Variant): Boolean; override;
    procedure doNuevo; override;
    procedure doCancelar; override;
    procedure doGuardar; override;
    procedure doBorrar; override;
    procedure doEditar; override;

    procedure RecalcularRetenciones;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DocumentoRec: TDocumentoRec;

implementation

uses Udata, uMantClass, uBusquedaDX, UUtiles, uListaSups, uBusquedaRangoDX;

{$R *.dfm}

procedure TDocumentoRec.doBorrar;
begin
  inherited;
  frCodifCtas1.BorrarTodas();
  frCodifCtas1.GuardarCodificacion();
end;

procedure TDocumentoRec.doCancelar;
begin
  inherited;
  frCodifCtas1.GUIDDocumento := rsIdDocumento.Value;
  frCodifCtas1.isReadOnly := True;
end;

procedure TDocumentoRec.doEditar;
begin
  inherited;
    frCodifCtas1.isReadOnly := False;
end;

procedure TDocumentoRec.doGuardar;
begin
  inherited;
  frCodifCtas1.GuardarCodificacion();
  frCodifCtas1.isReadOnly := True;
end;

procedure TDocumentoRec.doNuevo;
begin
  inherited;
  rsIdDocumento.AsGuid := dm.NewGuid();
  rsStatus.Value := 'ACTIVO';
  RSDias.Value := 0;
  RSGenerarDia.Value := 15;
  frCodifCtas1.GUIDDocumento := rsidDocumento.Value;
  frCodifCtas1.isReadOnly := False;
  rsMostrarEnCXP.Value := True;
  RSCodifManual.Value := True;
  rsdesde.Value := dm.DBFecha();
  rsHasta.Value := IncYear(rsDesde.Value,1);
  RSUsarTasaDia.Value := True;
  rsidMoneda.Value := dm.MonedaLegal();
  rsMontoRetenciones.Value := 0;
  RSMontoImpuestos.Value := 0;
end;

procedure TDocumentoRec.FormCreate(Sender: TObject);
begin
  inherited;
  rsClaseGasto.Open();
  rsTiposRets.Open();
  rsTipoImpuesto.Open();
  if not (dm.Moneda.Active) then
    dm.Moneda.Open();

  rsTipoDocID.Open();

  MasterKeyField := 'idDocumento';
  DetailKeyField := MasterKeyField;

  BusqField := 'idDocumento';
  spName := 'cxpDocumentoRecFind';
  TFBusqueda := TBusquedaDX;
  OcultarC1 := true;
  FLoading := false;
end;

function TDocumentoRec.validarSuplidor(const idSuplidor:Integer):Boolean;
begin
  with rsSuplidorAct do begin
    Close();
    parameters[0].Value := idsuplidor;
    Open();
    Result := not Eof;
  end;
end;

function TDocumentoRec.Localizar(const id:Variant):Boolean;
begin
  AbrirMDDataSet(id);
  Result := not rs.Eof;
  if not Result then
    frCodifCtas1.GUIDDocumento := null
  else
    frCodifCtas1.GUIDDocumento := RSidDocumento.Value;

   frCodifCtas1.isReadOnly := True;
   ValidarSuplidor(rsIdSuplidor.AsInteger);
end;

function TDocumentoRec.BuscarCuentasSuplidor(const idSup,
  idMon: Integer): string;
begin
  with rsBuscarCtaSup do begin
    Close();
    Parameters[1].Value := idSup;
    Parameters[2].Value := idMon;
    Open();

    if Eof then
      Result := ''
    else
      Result := rsBuscarCtaSupIdCuenta.Asstring;
  end;
end;

procedure TDocumentoRec.RSidSuplidorValidate(Sender: TField);
begin
  inherited;
  if not validarSuplidor(rsIdsuplidor.Value) then
    raise Exception.Create('Este suplidor no existe');

  if rsSuplidorActEstatus.Value = false then
    raise Exception.Create('Este suplidor esta inactivo');

  if rsIdSuplidor.Value = 0 then begin
    rsSuplidor.Clear();
    RSRNC.Clear();
    RSidTipoIdentificacion.Value := '01';
  end
  else begin
    rsSuplidor.Value := rsSuplidorActNombre.Value;
    rsRNC.Value := rsSuplidorActRNC.Value;
    RSidTipoIdentificacion.Value := rsSuplidorActidTipoIdentificacion.Value;
    rsIdMoneda.Value := rsSuplidorActidMoneda.Value;
  end;
end;

procedure TDocumentoRec.RSidMonedaValidate(Sender: TField);
begin
  inherited;
  if rsidMoneda.Value = dm.MonedaLegal() then
    rsTasa.Value := 1
  else
    rsTasa.Value := dm.TasaActual(rsidMoneda.value);

  rsidCuenta.Value := BuscarCuentasSuplidor(rsIdSuplidor.Value, rsidMoneda.Value);
  CodificarDocumento();
end;

procedure TDocumentoRec.beSuplidorPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  i: Integer;
begin
  inherited;
  if appEstado in [appEdit, appInsert] then begin
    i := BuscarSuplidor();
    if i > 0 then begin
      if not (rs.State in dsEditModes) then
        rs.Edit();

      rsIdSuplidor.AsInteger := i;

      SelectNext(ActiveControl,True,True);
    end;
  end;
end;

procedure TDocumentoRec.RSDetidRetencionValidate(Sender: TField);
begin
  inherited;
  if not rsTiposRets.Locate('idRetencion',rsDetIdRetencion.AsInteger,[]) then
    raise Exception.Create('Esta retencion no existe')
  else begin
    rsDetRetencion.Value := rsTiposRetsRetencion.Value;
    rsDetPorcentaje.Value := rsTiposRetsPorcentaje.Value;
  end;
end;

procedure TDocumentoRec.RSDetMontoValidate(Sender: TField);
begin
  inherited;
  if rsDetPorcentaje.AsFloat <> ((rsDetMonto.AsCurrency / rsValor.AsCurrency) * 100) then
    rsDetPorcentaje.AsFloat := (rsDetMonto.AsCurrency / rsValor.AsCurrency) * 100;
end;

procedure TDocumentoRec.RSDetPorcentajeValidate(Sender: TField);
begin
  inherited;
  if rsDetMonto.AsCurrency <> ((rsDetPorcentaje.AsFloat / 100.00) * rsValor.AsCurrency) then
    rsDetMonto.AsCurrency := (rsDetPorcentaje.AsFloat / 100.00) * rsValor.AsCurrency;
end;

procedure TDocumentoRec.RSidTipoImpuestoValidate(Sender: TField);
begin
  inherited;
  if rsTipoImpuesto.Locate('TipoImpuesto',rsidTipoImpuesto.Value,[]) then
    rsPorcImpuesto.Value := rsTipoImpuestoPorcentaje.Value
  else
    rsPorcImpuesto.Value := 0;
end;

procedure TDocumentoRec.RecalcularImpuestos;
begin
  RSMontoImpuestos.Value := RSValor.AsCurrency - (rsValor.AsCurrency / (1 + (rsPorcImpuesto.AsFloat / 100.00)));
end;

procedure TDocumentoRec.RSPorcImpuestoValidate(Sender: TField);
begin
  inherited;
  RecalcularImpuestos();
  CodificarDocumento();
end;

procedure TDocumentoRec.CodificarDocumento;
begin
  if appEstado = appbrowse then
    Exit;

  frCodifCtas1.BorrarAutomaticas();
  frCodifCtas1.AgregarLinea(rsIdCuenta.Value,'',2,rsValor.AsCurrency,True);

  if (rsPorcImpuesto.Value > 0) then begin
    rsTipoImpuesto.Locate('tipoImpuesto',rsidTipoImpuesto.Value,[]);
    frCodifCtas1.AgregarLinea(rsTipoImpuestoIdCuenta.Value, '', 1, RSMontoImpuestos.Value,True);
  end;
  //frCodifCtas1.AgregarLinea('','',1,rsValor.AsCurrency - rsMontoImpuestos.Value, false);
end;

procedure TDocumentoRec.RSValorValidate(Sender: TField);
begin
  inherited;
  RecalcularImpuestos();
  RecalcularRetenciones();
  CodificarDocumento();
end;

procedure TDocumentoRec.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  x: Variant;
begin
  inherited;
  if appEstado <> appBrowse then begin
    x := TBusquedaRangoDX.Buscar('idOrden',True,'ocBuscarOrdenesRango');
    if x <> NULL then begin
      if not (rs.State in dsEditModes) then
        rs.Edit();
      rsIdOrdenCompra.Value := x;
      SelectNext(ActiveControl,True,True);
    end;
  end;
end;

procedure TDocumentoRec.RSidOrdenCompraValidate(Sender: TField);
var
  y: Variant;
begin
  inherited;
  y := BuscarOC(rsidOrdenCompra.Value,'I');
  if (y <> null) and (y <> RSOrdenCompra.Value) then
    rsOrdenCompra.Value := y;
end;

function TDocumentoRec.BuscarOC(const ref: variant; tipo: char): variant;
begin
  if tipo = 'I' then begin
    with rsbuscarOCPorID do begin
      Close();
      parameters[0].Value := ref;
      Open();
      if Eof then
        Result := NULL
      else
        Result := Fields[0].Value;
    end;
  end
  else begin
     with rsbuscarOCPorNumero do begin
      Close();
      parameters[0].Value := ref;
      Open();
      if Eof then
        Result := NULL
      else
        Result := Fields[0].Value;
    end;
  end;
end;

procedure TDocumentoRec.RSOrdenCompraValidate(Sender: TField);
var
  y: Variant;
begin
  inherited;
  y := BuscarOC(rsOrdenCompra.Value,'N');
  if (y <> null) and (y <> RSidOrdenCompra.Value) then
    rsidOrdenCompra.Value := y;
end;

procedure TDocumentoRec.GridRetsEnter(Sender: TObject);
begin
  inherited;
  if (appEstado <> appbrowse) and (rsDet.RecordCount = 0) then
    rsDet.Append();
end;

procedure TDocumentoRec.GridRetsCodigoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
 id: Variant;
begin
  inherited;
  if appEstado <> appBrowse then begin
    id := TBusquedaDX.Buscar('idRetencion',True,'cxpListaRetenciones');
    if id <> NULL then begin
      if not (rsDet.State in dsEditModes) then
        rsDet.Edit();

      rsDetidRetencion.Value := id;
    end;
  end;
end;

procedure TDocumentoRec.RecalcularRetenciones;
begin
  with rsDet do begin
    DisableControls();
    FLoading := true;
    try
      First();
      while not Eof do begin
        Edit();
        RSDetMonto.Value := (rsDetPorcentaje.AsFloat / 100.00) * rsValor.AsCurrency;
        Post();
        Next();
      end;
      First();
    finally
      EnableControls();
      FLoading := False;
    end;
  end;
end;

end.

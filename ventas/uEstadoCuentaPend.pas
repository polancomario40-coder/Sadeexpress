unit uEstadoCuentaPend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, dxEditor, dxExEdtr, dxEdLib, dxDBELib, dxCntner,
  Buttons, kbmMemTable, StdCtrls, ExtCtrls, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid, ADODB, DateUtils, ppCtrls, ppVar, ppPrnabl, ppClass,
  ppBands, ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe,
  uform, Wwdatsrc, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCalendar, cxDBEdit, ppParameter, ppDesignLayer;

type
  TEstadoCuentaPend = class(TFForm)
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
    Label1: TLabel;
    sbLocCliente: TSpeedButton;
    Label4: TLabel;
    SpeedButton8: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Shape5: TShape;
    Label9: TLabel;
    Shape6: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Shape8: TShape;
    Label10: TLabel;
    Shape10: TShape;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Shape7: TShape;
    Label3: TLabel;
    Shape3: TShape;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBDateEdit1: TcxDBDateEdit;
    Grid: TdxDBGrid;
    GridLinea: TdxDBGridMaskColumn;
    GridTipo: TdxDBGridMaskColumn;
    GridReferencia: TdxDBGridMaskColumn;
    GridFecha: TdxDBGridDateColumn;
    GridValor: TdxDBGridCurrencyColumn;
    GridPagado: TdxDBGridCurrencyColumn;
    GridPendiente: TdxDBGridCurrencyColumn;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    dxDBEdit11: TdxDBEdit;
    dxDBEdit12: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
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
    Label15: TLabel;
    dxDBEdit13: TdxDBEdit;
    mClientePorDist: TBCDField;
    rsDatosEstadoPorDist: TBCDField;
    ppLabel13: TppLabel;
    ppDBText7: TppDBText;
    Shape2: TShape;
    Shape1: TShape;
    Label2: TLabel;
    StyleController: TdxEditStyleController;
    rsEstadoMoneda: TStringField;
    GridMoneda: TdxDBGridColumn;
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
    GridVencimiento: TdxDBGridDateColumn;
    ppDBText28: TppDBText;
    ppLabel8: TppLabel;
    rsEstadoNCF: TStringField;
    GridColumn10: TdxDBGridColumn;
    ppLabel20: TppLabel;
    ppDBText23: TppDBText;
    SpeedButton1: TSpeedButton;
    luDireccion: TcxLookupComboBox;
    rsDirecciones: TADODataSet;
    rsDireccionesidClienteObra: TStringField;
    rsDireccionesClienteObra: TStringField;
    ppVariable1: TppVariable;
    dsDirs: TwwDataSource;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    procedure rsEstadoCalcFields(DataSet: TDataSet);
    procedure mClienteNewRecord(DataSet: TDataSet);
    procedure mClienteidClienteValidate(Sender: TField);
    procedure mClienteFechaValidate(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ppShape2Print(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure sbLocClienteClick(Sender: TObject);
    procedure dxDBDateEdit1Change(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure luDireccionPropertiesEditValueChanged(Sender: TObject);
  private
    procedure AbrirEstado;
    function BuscarCliente(const idCli: Integer): Boolean;
    function Localizar(const id: Variant): Boolean;
    procedure Imprimir;
    { Private declarations }
  public
    { Public declarations }
    procedure doShowState; override;
  end;

var
  EstadoCuentaPend: TEstadoCuentaPend;

implementation

uses uData, UUtiles, uBusqueda, uCXC;

{$R *.dfm}

procedure TEstadoCuentaPend.rsEstadoCalcFields(DataSet: TDataSet);
begin
  inherited;
//  rsEstadocValor.AsCurrency := rsEstadoDebito.AsCurrency - rsEstadoCredito.AsCurrency;
end;

procedure TEstadoCuentaPend.AbrirEstado;
begin
  with rsEstado do begin
    Close();
    Parameters[1].Value := mClienteIdCliente.AsInteger;
    Parameters[2].Value := DateOf(mClienteFecha.AsDateTime);
    Parameters[3].Value := luDireccion.EditValue;

    Open();
  end;
  with rsDatosEstado do begin
    Close();
    Parameters[1].Value := mClienteIdCliente.AsInteger;
    Parameters[2].Value := DateOf(mClienteFecha.AsDateTime);
    Parameters[3].Value := luDireccion.EditValue;
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

procedure TEstadoCuentaPend.mClienteNewRecord(DataSet: TDataSet);
begin
  inherited;
  mClienteFecha.Value := DateOf(dm.FechaHoy);
end;

procedure TEstadoCuentaPend.mClienteidClienteValidate(Sender: TField);
begin
  inherited;

  rsDirecciones.Close();
  if mClienteIdCliente.AsInteger = 0 then begin
     mClienteNombre.Asstring := '';
     mClienteDireccion.Asstring := '';
     mClienteTelefono.Asstring := '';
  end
  else if BuscarCliente(mClienteIdCliente.AsInteger) then begin
     mClienteNombre.Asstring := ClienteActCliente.AsString;
     mClienteDireccion.Asstring := ClienteActDireccion.Asstring;
     mClienteTelefono.Asstring := ClienteActTelefono.Asstring;

     rsDirecciones.Parameters[0].Value := mClienteIdCliente.Value;
     rsDirecciones.Open();

     if luDireccion.EditValue <> NULL then
       luDireccion.EditValue := NULL
     else
       AbrirEstado();
  end
  else
    raise Exception.Create('Este cliente no existe!');
end;

procedure TEstadoCuentaPend.mClienteFechaValidate(Sender: TField);
begin
  inherited;
  if mClienteidCliente.AsInteger > 0 then
    AbrirEstado();
end;

procedure TEstadoCuentaPend.FormCreate(Sender: TObject);
begin
  inherited;
  luDireccion.Visible := dm.GetDefaultStr('USAR_SUBCLIENTES') = '1';
  mCliente.Open();
  mCliente.Append();
end;

procedure TEstadoCuentaPend.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  rsEstado.DisableControls;
  rsEstado.Sort := 'Moneda, Fecha';
  SendRPTEmail('','Estado de cuentas por cobrar','Anexo el estado de su cuenta con nuestra empresa',mClienteidCliente.AsString,Report);
  rsEstado.Sort := '';
  rsEstado.EnableControls;
end;

procedure TEstadoCuentaPend.ppShape2Print(Sender: TObject);
begin
  inherited;
  ppShape2.Visible := not ppShape2.Visible;
end;

procedure TEstadoCuentaPend.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  Imprimir();
end;

procedure TEstadoCuentaPend.Imprimir();
begin
  rsEstado.DisableControls;
  rsEstado.Sort := 'Moneda, Fecha';
  Report.Print();
  rsEstado.Sort := '';
  rsEstado.EnableControls;
end;

procedure TEstadoCuentaPend.sbLocClienteClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;

  i := fbuscar(TBusqueda, 'idCliente', False, 'FindCliente');
  if i > 0 then begin
    if not (mCliente.State in dsEditModes) then
      mCliente.Edit();
    mClienteIdCliente.AsInteger := i;
  end;
end;

function TEstadoCuentaPend.BuscarCliente(const idCli: Integer): Boolean;
begin
  with ClienteAct do begin
    Close();
    Parameters[1].Value := idCli;
    Open();

    Result := not Eof;
  end;
end;


procedure TEstadoCuentaPend.dxDBDateEdit1Change(Sender: TObject);
begin
  inherited;
  dm.FechaHoy := mClienteFecha.Value;
end;

procedure TEstadoCuentaPend.GridDblClick(Sender: TObject);
begin
  inherited;
  if not rsEstadoidCxc.isNull then begin
    ModalShow(TCxC, ShowFind, rsEstadoidCxc.Value, ' idCxc' , true);
  end;

end;

procedure TEstadoCuentaPend.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TEstadoCuentaPend.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  Value := luDireccion.Text;
end;

procedure TEstadoCuentaPend.luDireccionPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  AbrirEstado();
end;

function TEstadoCuentaPend.Localizar(const id: Variant): Boolean;
begin
  Result := BuscarCliente(id);
  if Result then begin
    try
      mClienteIdCliente.Value := id;
    except
      Result := false;
    end;
  end;
end;

procedure TEstadoCuentaPend.doShowState;
begin
  inherited;
  If (ShowState = showPrint) and (dm.Tienepermiso(pImprimir, SegName,'Imprimir','')) Then
  begin
    If (XValue <> Null) and Localizar(XValue) then
    begin
       Imprimir();
       if XCloseonSave then xShow := false;
    end;
  end;
end;

end.

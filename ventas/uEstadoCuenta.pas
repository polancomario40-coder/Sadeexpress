unit uEstadoCuenta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, dxEditor, dxExEdtr, dxEdLib, dxDBELib, dxCntner,
  Buttons, kbmMemTable, StdCtrls, ExtCtrls, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid, ADODB, DateUtils, ppCtrls, ppVar, ppPrnabl, ppClass,
  ppBands, ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe,
  uform, Wwdatsrc, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, ppParameter;

type
  TEstadoCuenta = class(TFForm)
    mCliente: TkbmMemTable;
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
    rsEstadocValor: TCurrencyField;
    plEstado: TppDBPipeline;
    plCliente: TppDBPipeline;
    Report: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
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
    ppLabel8: TppLabel;
    ppLine1: TppLine;
    ppLabel9: TppLabel;
    ppDBText7: TppDBText;
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
    rsDatosEstado: TADODataSet;
    rsDatosEstadoBalance: TBCDField;
    rsDatosEstadoFecUltCargo: TDateTimeField;
    rsDatosEstadoRefUltCargo: TStringField;
    rsDatosEstadoTipoUltCargo: TStringField;
    rsDatosEstadoMtoUltCargo: TBCDField;
    rsDatosEstadoFecUltPago: TDateTimeField;
    rsDatosEstadoRefUltPago: TStringField;
    rsDatosEstadoMtoUltPago: TBCDField;
    mClienteDesde: TDateField;
    mClienteHasta: TDateField;
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
    Label12: TLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dtDesde: TcxDBDateEdit;
    Grid: TdxDBGrid;
    GridLinea: TdxDBGridMaskColumn;
    GridTipo: TdxDBGridMaskColumn;
    GrididTrans: TdxDBGridMaskColumn;
    GrididDocumento: TdxDBGridMaskColumn;
    GridDocumento: TdxDBGridMaskColumn;
    GridFecha: TdxDBGridDateColumn;
    GridDebito: TdxDBGridCurrencyColumn;
    GridCredito: TdxDBGridCurrencyColumn;
    GridBalance: TdxDBGridCurrencyColumn;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    dxDBEdit11: TdxDBEdit;
    dxDBEdit12: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dtHasta: TcxDBDateEdit;
    rsEstadoLinea: TIntegerField;
    rsEstadoTipo: TStringField;
    rsEstadoidCXC: TGuidField;
    rsEstadoDocumento: TStringField;
    rsEstadoFecha: TDateTimeField;
    rsEstadoDebito: TBCDField;
    rsEstadoCredito: TBCDField;
    rsEstadoBalance: TBCDField;
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
    rsDatosEstadoPorDist: TBCDField;
    mClientePorDist: TBCDField;
    ppLabel13: TppLabel;
    ppDBText13: TppDBText;
    Label15: TLabel;
    dxDBEdit13: TdxDBEdit;
    ppDBText20: TppDBText;
    ppDBText25: TppDBText;
    ppDBText21: TppDBText;
    ppDBText26: TppDBText;
    ppDBText22: TppDBText;
    Label2: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    StyleController: TdxEditStyleController;
    rsEstadoVencimiento: TDateTimeField;
    GridVencimiento: TdxDBGridDateColumn;
    ppLabel1: TppLabel;
    ppDBText23: TppDBText;
    GridColumn11: TdxDBGridColumn;
    rsEstadoNCF: TStringField;
    rsEstadoMoneda: TStringField;
    rsEstadoTasa: TFloatField;
    GridColumn12: TdxDBGridColumn;
    ppLabel20: TppLabel;
    ppDBText24: TppDBText;
    ppDBText27: TppDBText;
    ppLabel21: TppLabel;
    SpeedButton1: TSpeedButton;
    procedure rsEstadoCalcFields(DataSet: TDataSet);
    procedure mClienteNewRecord(DataSet: TDataSet);
    procedure mClienteidClienteValidate(Sender: TField);
    procedure mClienteFechaValidate(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure ppShape2Print(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure sbLocClienteClick(Sender: TObject);
    procedure dxDBEdit2DblClick(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    FLoading: Boolean;
    procedure AbrirEstado;
    function BuscarCliente(const idCli: Integer): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EstadoCuenta: TEstadoCuenta;

implementation

uses Udata, UUtiles, uBusqueda, uCliente, uCXC;

{$R *.dfm}

procedure TEstadoCuenta.rsEstadoCalcFields(DataSet: TDataSet);
begin
  inherited;
  rsEstadocValor.AsCurrency := (rsEstadoDebito.AsCurrency * rsEstadoTasa.AsFloat) - (rsEstadoCredito.AsCurrency  * rsEstadoTasa.AsFloat);
end;

procedure TEstadoCuenta.AbrirEstado;
begin
  with rsEstado do begin
    Close();
    Parameters[1].Value := mClienteIdCliente.AsInteger;
    Parameters[2].Value := DateOf(mClienteDesde.AsDateTime);
    Parameters[3].Value := DateOf(mClienteHasta.AsDateTime);
    Open();
  end;

  with rsDatosEstado do begin
    Close();
    Parameters[1].Value := mClienteIdCliente.AsInteger;
    Parameters[2].Value := DateOf(mClienteHasta.AsDateTime);
    Parameters[3].Value := NULL;
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
      mClienteRefUltPago.AsString := FieldByName('RefUltPago').AsString;

    if FieldByName('MtoUltPago').isNull then
      mClienteMtoUltPago.Clear()
    else
      mClienteMtoUltPago.AsCurrency := FieldByName('MtoUltPago').AsCurrency;
  end;
end;

procedure TEstadoCuenta.mClienteNewRecord(DataSet: TDataSet);
begin
  inherited;
  mClienteDesde.AsDateTime := StartOfTheMonth(Date());
  mClienteHasta.AsDateTime := Date();
end;

procedure TEstadoCuenta.mClienteidClienteValidate(Sender: TField);
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
     AbrirEstado();
  end
  else
    raise Exception.Create('Este cliente no existe!');
end;

procedure TEstadoCuenta.mClienteFechaValidate(Sender: TField);
begin
  inherited;
  if (not FLoading) and (mClienteidCliente.AsInteger > 0) then
    AbrirEstado();
end;

procedure TEstadoCuenta.FormCreate(Sender: TObject);
begin
  inherited;
  FLoading := False;
  mCliente.Open();
  mCliente.Append();
end;

procedure TEstadoCuenta.ppShape2Print(Sender: TObject);
begin
  inherited;
  ppShape2.Visible := not ppShape2.Visible;
end;

procedure TEstadoCuenta.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  Imprimir(Report);
end;

procedure TEstadoCuenta.sbLocClienteClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  FLoading := True;
  try
    i := fbuscar(TBusqueda, 'idCliente', False, 'FindCliente');
    //i := BuscarCliente();
    if i > 0 then begin
      if not (mCliente.State in dsEditModes) then
        mCliente.Edit();
      mClienteIdCliente.AsInteger := i;

      AbrirEstado();
    end;
  finally
    FLoading := False;
  end;
end;

function TEstadoCuenta.BuscarCliente(const idCli: Integer): Boolean;
begin
  with ClienteAct do begin
    Close();
    Parameters[1].Value := idCli;
    Open();

    Result := not Eof;
  end;
end;

procedure TEstadoCuenta.dxDBEdit2DblClick(Sender: TObject);
begin
  inherited;
 if not(mclienteidcliente.isnull) then
    Modalshow(TCliente, ShowFind, mclienteidcliente.Value, '',true);
end;

procedure TEstadoCuenta.GridDblClick(Sender: TObject);
begin
  inherited;
  if not rsEstadoidCxc.isNull then begin
    ModalShow(TCxC, ShowFind, rsEstadoidCxc.Value, ' idCxc' , true);
  end;

end;

procedure TEstadoCuenta.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TEstadoCuenta.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  rsEstado.DisableControls;
  rsEstado.Sort := 'Moneda, Fecha';
  SendRPTEmail('','Estado de cuentas por cobrar historico','Anexo el estado de su cuenta con nuestra empresa',mClienteidCliente.AsString,Report);
  rsEstado.Sort := '';
  rsEstado.EnableControls;
end;

end.

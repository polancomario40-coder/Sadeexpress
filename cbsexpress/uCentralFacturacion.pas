unit uCentralFacturacion;

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
  TCentralFacturacion = class(TFForm)
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
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    vercliente: TcxButton;
    estadocta: TcxButton;
    cxTabSheet2: TcxTabSheet;
    Label12: TLabel;
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
    rsClientes: TADODataSet;
    dsClientes: TDataSource;
    rsClientesidCliente: TIntegerField;
    rsClientesCliente: TStringField;
    rsClientesContacto: TStringField;
    rsClientesTelefono: TStringField;
    rsClientesEMail: TStringField;
    rsClientesRNC_Cedula: TStringField;
    cxGridDBTableView2idCliente: TcxGridDBColumn;
    cxGridDBTableView2Cliente: TcxGridDBColumn;
    cxGridDBTableView2Contacto: TcxGridDBColumn;
    cxGridDBTableView2Telefono: TcxGridDBColumn;
    cxGridDBTableView2EMail: TcxGridDBColumn;
    cxGridDBTableView2RNC_Cedula: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxButton1: TcxButton;
    cxButton7: TcxButton;
    GroupBox1: TGroupBox;
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Shape4: TShape;
    Label4: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Shape11: TShape;
    Label21: TLabel;
    Label22: TLabel;
    Shape12: TShape;
    Label23: TLabel;
    Shape13: TShape;
    Shape14: TShape;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit14: TdxDBEdit;
    dxDBEdit15: TdxDBEdit;
    dxDBEdit16: TdxDBEdit;
    dxDBEdit17: TdxDBEdit;
    dxDBEdit18: TdxDBEdit;
    cxButton2: TcxButton;
    cxButton5: TcxButton;
    cxButton8: TcxButton;
    cxTabSheet3: TcxTabSheet;
    cxPageControl2: TcxPageControl;
    cxTabSheet4: TcxTabSheet;
    GroupBox2: TGroupBox;
    Shape15: TShape;
    Shape16: TShape;
    Label24: TLabel;
    Label25: TLabel;
    Shape17: TShape;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Shape18: TShape;
    Label32: TLabel;
    Label33: TLabel;
    Shape19: TShape;
    Label34: TLabel;
    Shape20: TShape;
    Shape21: TShape;
    dxDBEdit19: TdxDBEdit;
    dxDBEdit20: TdxDBEdit;
    dxDBEdit21: TdxDBEdit;
    dxDBEdit22: TdxDBEdit;
    dxDBEdit23: TdxDBEdit;
    dxDBEdit24: TdxDBEdit;
    dxDBEdit25: TdxDBEdit;
    dxDBEdit26: TdxDBEdit;
    dxDBEdit27: TdxDBEdit;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    cxButton14: TcxButton;
    cxButton15: TcxButton;
    cxButton16: TcxButton;
    cxButton17: TcxButton;
    cxButton18: TcxButton;
    cxTabSheet5: TcxTabSheet;
    cxButton19: TcxButton;
    cxGrid4: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    cxButton20: TcxButton;
    cxButton21: TcxButton;
    cxTabSheet6: TcxTabSheet;
    rsEvaluaciones: TADODataSet;
    dsEvaluaciones: TDataSource;
    rsEvaluacionesidEvaluacion: TGuidField;
    rsEvaluacionesidCliente: TIntegerField;
    rsEvaluacionesFecha: TDateTimeField;
    rsEvaluacionesMontura: TStringField;
    rsEvaluacionesColorCristal: TStringField;
    rsEvaluacionesObservaciones: TStringField;
    rsEvaluacionesReferencia: TStringField;
    rsEvaluacionesNotaReferencia: TStringField;
    cxGridDBTableView4Fecha: TcxGridDBColumn;
    cxGridDBTableView4Montura: TcxGridDBColumn;
    cxGridDBTableView4ColorCristal: TcxGridDBColumn;
    cxGridDBTableView4Observaciones: TcxGridDBColumn;
    cxGridDBTableView4Referencia: TcxGridDBColumn;
    cxGridDBTableView4NotaReferencia: TcxGridDBColumn;
    cxButton22: TcxButton;
    cxButton6: TcxButton;
    cxButton13: TcxButton;
    cxButton23: TcxButton;
    cxButton24: TcxButton;
    Button1: TButton;
    cxButton25: TcxButton;
    cxGridDBTableView2DBColumn1: TcxGridDBColumn;
    rsClientesBeeper: TStringField;
    Button2: TButton;
    buscar: TcxTextEdit;
    cxButton26: TcxButton;
    cxTabSheet7: TcxTabSheet;
    cxTabSheet8: TcxTabSheet;
    Label35: TLabel;
    GroupBox4: TGroupBox;
    Shape22: TShape;
    Shape23: TShape;
    Label36: TLabel;
    Label37: TLabel;
    Shape24: TShape;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Shape25: TShape;
    Label44: TLabel;
    Label45: TLabel;
    Shape26: TShape;
    Label46: TLabel;
    Shape27: TShape;
    Shape28: TShape;
    dxDBEdit28: TdxDBEdit;
    dxDBEdit29: TdxDBEdit;
    dxDBEdit30: TdxDBEdit;
    dxDBEdit31: TdxDBEdit;
    dxDBEdit32: TdxDBEdit;
    dxDBEdit33: TdxDBEdit;
    dxDBEdit34: TdxDBEdit;
    dxDBEdit35: TdxDBEdit;
    dxDBEdit36: TdxDBEdit;
    cxGrid5: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    cxButton27: TcxButton;
    cxButton28: TcxButton;
    cxButton29: TcxButton;
    cxButton30: TcxButton;
    cxButton31: TcxButton;
    cxGrid6: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    dsProforma: TDataSource;
    rsProforma: TADODataSet;
    cxGridDBColumn34: TcxGridDBColumn;
    cxButton32: TcxButton;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    rsSucursal: TADODataSet;
    rsSucursalidCentroCosto: TGuidField;
    rsSucursalCentroCosto: TStringField;
    luSucursal: TcxLookupComboBox;
    Label47: TLabel;
    dsSucursal: TwwDataSource;
    cxButton33: TcxButton;
    rsProformaLinea: TIntegerField;
    rsProformaTipo: TStringField;
    rsProformaidcliente: TIntegerField;
    rsProformaidCXC: TGuidField;
    rsProformaReferencia: TStringField;
    rsProformaFecha: TDateTimeField;
    rsProformaVencimiento: TDateTimeField;
    rsProformadiasVencido: TIntegerField;
    rsProformaValor: TBCDField;
    rsProformaValorReal: TBCDField;
    rsProformaPagado: TBCDField;
    rsProformaPagadoReal: TBCDField;
    rsProformaidMoneda: TIntegerField;
    rsProformaPendiente: TBCDField;
    rsProformaPendienteReal: TBCDField;
    rsProformaMoneda: TStringField;
    rsProformaNCF: TStringField;
    cxButton34: TcxButton;
    rsFacturas: TADODataSet;
    rsFacturasidFactura: TGuidField;
    rsFacturasFactura: TStringField;
    rsFacturasCompFiscal: TStringField;
    rsFacturasFechaVenceNCF: TDateTimeField;
    rsFacturasTipoDocumento: TStringField;
    dsFacturas: TDataSource;
    rsFacturasidCliente: TIntegerField;
    rsFacturasTipoNCF: TStringField;
    cmdProforma: TADOCommand;
    rsProformacliente: TStringField;
    cxButton35: TcxButton;
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
    procedure cxButton11Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure verclienteClick(Sender: TObject);
    procedure estadoctaClick(Sender: TObject);
    procedure antsaldosClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure rsClientesAfterScroll(DataSet: TDataSet);
    procedure cxGridDBTableView2CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton19Click(Sender: TObject);
    procedure cxButton20Click(Sender: TObject);
    procedure cxButton24Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxButton25Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cxButton26Click(Sender: TObject);
    procedure cxButton22Click(Sender: TObject);
    procedure cxButton33Click(Sender: TObject);
    procedure cxButton34Click(Sender: TObject);
    procedure cxButton23Click(Sender: TObject);
    procedure cxButton35Click(Sender: TObject);
  private
    procedure AbrirEstado;
    function BuscarCliente(const idCli: Integer): Boolean;
    procedure BuscaUltimoPago;
    procedure BuscaNotasCliente;
    { Private declarations }
  public
    procedure DoShowstate; override;
    { Public declarations }
  end;

var
  CentralFacturacion     : TCentralFacturacion;

implementation

uses uData, UUtiles, uBusqueda, uCXC, uNotasGestionCobros,
  uRecibo, uCliente, uEstadoCuenta, uEstadoCuentaPend, ucxcAging, uFactura,
  uOpticaEvaluacion, uCuadreCaja, uGastosMenores, uOrdComp;

{$R *.dfm}

procedure TCentralFacturacion.AbrirEstado;
begin
  with rsEstado do begin
    Close();
    Parameters[1].Value := rsClientesidCliente.Value;
    Open();
  end;
end;

procedure TCentralFacturacion.mClienteNewRecord(DataSet: TDataSet);
begin
  inherited;
  mClienteFecha.Value := Date;
end;

procedure TCentralFacturacion.mClienteidClienteValidate(Sender: TField);
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

procedure TCentralFacturacion.ppShape2Print(Sender: TObject);
begin
  inherited;
  ppShape2.Visible := not ppShape2.Visible;
end;

function TCentralFacturacion.BuscarCliente(const idCli: Integer): Boolean;
begin
  with ClienteAct do begin
    Close();
    Parameters[1].Value := idCli;
    Open();

    Result := not Eof;
  end;
end;


procedure TCentralFacturacion.DoShowstate;
begin
  inherited;
end;

procedure TCentralFacturacion.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if not rsEvaluacionesidEvaluacion.isNull then begin
    ModalShow(TOpticaEvaluacion, ShowFind, rsEvaluacionesidEvaluacion.value,'idEvaluacion', true);
  end;
end;

procedure TCentralFacturacion.BuscaUltimoPago;
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

procedure TCentralFacturacion.rsEstadoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  BuscaUltimoPago;
end;

procedure TCentralFacturacion.BuscaNotasCliente;
begin
  rsNotas.Close;
  rsNotas.Parameters[1].Value := rsClientesidCliente.Value;
  rsNotas.Open;
end;

procedure TCentralFacturacion.rsClientesDeudaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  BuscaNotasCliente;
  rsEstado.Close;
end;

procedure TCentralFacturacion.FormCreate(Sender: TObject);
begin
  inherited;
   rsTiposNota.Open();
   rsClientes.Open();
   rsEstado.Open();
   rsClientes.Close;
   rsClientes.Parameters[1].Value:='@@@';
   rsClientes.Open;

   rsSucursal.Open();
   luSucursal.EditValue  := dm.GetPCSetting('ALMACENDEFAULT');
   if dm.TienePermiso(pAprobar, Permisos) then luSucursal.Enabled:=True;


end;

procedure TCentralFacturacion.cxButton1Click(Sender: TObject);
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




procedure TCentralFacturacion.cxButton2Click(Sender: TObject);
begin
  inherited;
  ImprimirReporte(rptAgenda);
end;

procedure TCentralFacturacion.cxButton4Click(Sender: TObject);
begin
  inherited;
  if rsClientes.Active and (not rsClientes.IsEmpty) then
    ModalShow(TCXC, showInsert,rsClientesidCliente.Value, 'IdCliente')
  else
    ModalShow(TCXC);
end;

procedure TCentralFacturacion.btnActualizarClick(Sender: TObject);
var
  id: Integer;
begin
  inherited;
  try
    Screen.Cursor := crSQLWait;
  // if ((rsClientes.Active) and (rsClientes.RecordCount > 0)) then
    //begin
      //AbrirEstado();

      //mCliente.Open();
      //mCliente.Append();
        
      rsProforma.Close;
      rsProforma.Parameters[1].Value:=luSucursal.EditValue;
   //   rsProforma.Parameters[2].Value:=rsClientesidCliente.Value;
      rsProforma.Open;


    // end;

  finally
    Screen.Cursor := crDefault;
  end;

  //BuscaUltimoPago;


end;

procedure TCentralFacturacion.cxButton11Click(Sender: TObject);
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

procedure TCentralFacturacion.cxButton12Click(Sender: TObject);
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

procedure TCentralFacturacion.cxButton13Click(Sender: TObject);
begin
  inherited;
  if rsEstadoTipo.Value = 'RC' then begin
   //ModalShow(TRecibo, showFind,rsEstadoidCxC.Value, 'IdRecibo') ;
   if rsEstado.Active and (not rsEstado.IsEmpty) then
    ModalShow(TRecibo, showFind,rsEstadoidCxC.Value, 'IdRecibo')
   else
    ModalShow(TRecibo);
   end
   else showmessage('Tipo de Documento no es un Recibo') ;


end;

procedure TCentralFacturacion.cxButton7Click(Sender: TObject);
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

procedure TCentralFacturacion.verclienteClick(Sender: TObject);
var
  id: Integer;
begin
  inherited;


   try
    Screen.Cursor := crSQLWait;

    if rsClientes.Active and (not rsClientes.IsEmpty) then
      id := rsClientesidCliente.Value
    else
      id := 0;
    //modalshow(tcliente, showfind, rsClientesidCliente.value, 'idCliente', false);
     id := ModalShowResult(TCliente, showInsert, rsClientesidCliente.Value, '', True,'idCliente') ;

    if id <> 0 then begin
       // rsClientes.Close;
      //rsClientes.Open;
      //rsClientes.Locate('idcliente',id,[]);
      buscar.Text:=''; //Inttostr(id);
      ModalShow(TFactura, showInsert, id, 'idCliente', True);
      rsClientes.Close;
      rsClientes.Parameters[2].Value:=id;
      rsClientes.Open;
      end;


    finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TCentralFacturacion.estadoctaClick(Sender: TObject);
begin
  inherited;
  if not (rsClientesidCliente.IsNull) then
    ModalShow(TFactura, showInsert, rsClientesidCliente.value, 'idCliente', false);

end;

procedure TCentralFacturacion.antsaldosClick(Sender: TObject);
begin
  inherited;
 if not (rsClientesidCliente.IsNull) then
    ModalShow(TAgingCXC, showprint, rsClientesidCliente.value, 'idCliente', false);
end;

procedure TCentralFacturacion.cxButton3Click(Sender: TObject);
begin
  inherited;
  if (rsClientes.Active and (not rsClientes.IsEmpty)) then
    ModalShow(TRecibo, showInsert,rsClientesidCliente.Value, 'IdCliente')
  else
    ModalShow(TRecibo);
end;

procedure TCentralFacturacion.cxButton6Click(Sender: TObject);
begin
  inherited;
  if not (rsClientesidCliente.IsNull) then
    ModalShow(TCliente, showFind, rsClientesidCliente.value, 'idCliente', false);

  end;

procedure TCentralFacturacion.cxButton5Click(Sender: TObject);
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

procedure TCentralFacturacion.cxButton8Click(Sender: TObject);
begin
  inherited;
   rsClientes.Close;
   rsClientes.Parameters[1].Value:=buscar.Text;
   rsClientes.Open;

end;

procedure TCentralFacturacion.rsClientesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  mcliente.close;
  mcliente.Open;
end;

procedure TCentralFacturacion.cxGridDBTableView2CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
   if not (rsClientesidCliente.IsNull) then
    ModalShow(TFactura, showInsert, rsClientesidCliente.value, 'idCliente', false);

end;

procedure TCentralFacturacion.cxButton19Click(Sender: TObject);
begin
  inherited;
    rsEvaluaciones.Close;
    rsEvaluaciones.Parameters[1].Value:=rsClientesidCliente.Value;
    rsEvaluaciones.Open;
end;

procedure TCentralFacturacion.cxButton20Click(Sender: TObject);
begin
  inherited;
    ModalShow(TOpticaEvaluacion, showInsert,rsClientesidCliente.Value, 'IdCliente') ;

    rsEvaluaciones.Close;
    rsEvaluaciones.Parameters[1].Value:=rsClientesidCliente.Value;
    rsEvaluaciones.Open;
end;



procedure TCentralFacturacion.cxButton24Click(Sender: TObject);
begin
  inherited;
  if rsEstadoTipo.Value = 'FT' Then begin
  if rsEstado.Active and (not rsEstado.IsEmpty) then
    ModalShow(TFactura, showFind,rsEstadoidCxC.Value, 'IdFactura')
  else
    ModalShow(TFactura);
  end
  else showmessage('Tipo de Documento no es una Factura') ;
end;

procedure TCentralFacturacion.Button1Click(Sender: TObject);
begin
  inherited;
   ModalShow(TCuadreCaja);
end;

procedure TCentralFacturacion.cxButton25Click(Sender: TObject);
var
  id: Integer;
begin
  inherited;


   try
    Screen.Cursor := crSQLWait;

    if rsClientes.Active and (not rsClientes.IsEmpty) then
      id := rsClientesidCliente.Value
    else
      id := 0;
    //modalshow(tcliente, showfind, rsClientesidCliente.value, 'idCliente', false);
     id := ModalShowResult(TCliente, showInsert, rsClientesidCliente.Value, '', True,'idCliente') ;

    if id <> 0 then
       // rsClientes.Close;
      //rsClientes.Open;
      //rsClientes.Locate('idcliente',id,[]);
      ModalShow(TOpticaEvaluacion, showInsert, id, 'idCliente', True);

      ModalShow(TFactura, showInsert, id, 'idCliente', True);
      buscar.Text:=''; //Inttostr(id);
      rsClientes.Close;
      rsClientes.Parameters[2].Value:=id;
      rsClientes.Open;


    finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TCentralFacturacion.Button2Click(Sender: TObject);
begin
  inherited;
    ModalShow(TGastosMenores);
end;

procedure TCentralFacturacion.cxButton26Click(Sender: TObject);
begin
  inherited;
   if not (rsClientesidCliente.IsNull) then
    ModalShow(TOrdComP, showInsert, rsClientesidCliente.value, 'idCliente', false);

end;

procedure TCentralFacturacion.cxButton22Click(Sender: TObject);
  var
  id: Integer;
begin
  inherited;
  try
    Screen.Cursor := crSQLWait;

    if ((rsClientes.Active) and (rsClientes.RecordCount > 0)) then
    begin
      AbrirEstado();

      mCliente.Open();
      mCliente.Append();

    end;
  finally
    Screen.Cursor := crDefault;
  end;

  BuscaUltimoPago;


end;

procedure TCentralFacturacion.cxButton33Click(Sender: TObject);
begin
  inherited;
if (rsProformaidCliente.value<>0) then
    ModalShow(TRecibo, showInsert,rsProformaidCliente.value, 'IdCliente')
  else
    ModalShow(TRecibo);


      rsProforma.Close;
      rsProforma.Parameters[1].Value:=luSucursal.EditValue;
      rsProforma.Open;
end;

procedure TCentralFacturacion.cxButton34Click(Sender: TObject);
var
  //v: Variant;
  sec : TSecuenciaNCF;
begin
  inherited;



   if rsProformaPendiente.Value=0 then
   begin
   
    rsFacturas.Close;
    rsFacturas.Parameters[1].Value:=rsProformaidCXC.Value;
    rsFacturas.Open;
   if rsFacturasCompFiscal.Asstring = ''  then
         begin
         sec := dm.GetCompFiscal(ComputerName(), rsFacturasTipoNCF.AsString);
         if sec.Cancelado = False then
          begin

            cmdProforma.Parameters[1].Value:=rsFacturasidFactura.Value;
            cmdProforma.Parameters[2].Value:=sec.secuencia;;
            cmdProforma.Parameters[3].Value:=sec.VencimientoNCF;
            cmdProforma.Execute;

            if not (rsFacturasidcliente.IsNull) then
             ModalShow(TFactura, showFind,rsFacturasidFactura.value, 'IdFactura');

           rsProforma.Close;
           rsProforma.Parameters[1].Value:=luSucursal.EditValue;
           rsProforma.Open;
         end
         else
            raise Exception.Create('No se genero la secuencia de comprobantes fiscales, verifique que tenga disponible..');
         end

    end
    else
    raise Exception.Create('Tiene Balance Pendiente, debe realizar saldo antes de convertir en factura');

   end;

procedure TCentralFacturacion.cxButton23Click(Sender: TObject);
  var
  id: Integer;
begin
  inherited;
  try
    Screen.Cursor := crSQLWait;

    if ((rsClientes.Active) and (rsClientes.RecordCount > 0)) then
    begin
      AbrirEstado();

      mCliente.Open();
      mCliente.Append();

    end;
  finally
    Screen.Cursor := crDefault;
  end;

  BuscaUltimoPago;


end;

procedure TCentralFacturacion.cxButton35Click(Sender: TObject);
begin
  inherited;
  if (rsProformaidCliente.value<>0) then
    ModalShow(Tcxc, showInsert,rsProformaidCliente.value, 'IdCliente')
  else
    ModalShow(Tcxc);


      rsProforma.Close;
      rsProforma.Parameters[1].Value:=luSucursal.EditValue;
      rsProforma.Open;
end;

end.


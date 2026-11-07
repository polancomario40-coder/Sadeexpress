unit UEmpleado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Wwdatsrc, ActnList, ComCtrls, Buttons, ExtCtrls,
  StdCtrls, DBCtrls, Mask, wwdblook, wwdbedit, wwDialog, wwidlg, Wwlocate,
  Grids, Wwdbigrd, Wwdbgrid, Menus, ExtDlgs, uformmant1, ADODB, ImgList,
  wwSpeedButton, wwDBNavigator, wwclearpanel, dxCntner, dxExEdtr, dxEdLib,
  dxDBELib, jpeg, StrUtils, wwdbdatetimepicker, ppCtrls, ppPrnabl, ppClass,
  ppDB, ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe,
  cxLookAndFeelPainters, cxButtons, myChkBox, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxDBEdit, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxPC, cxImage, cxMaskEdit, cxCalendar,
  cxGroupBox, Gradient, cxImageComboBox, ppVar, ppStrtch, ppMemo,
  ppParameter;

type
  TEmpleado = class(Tfformmant1)
    OpenD: TOpenPictureDialog;
    RSEmpleadoID: TIntegerField;
    RSDepartamentoID: TIntegerField;
    RSSecionID: TIntegerField;
    RSNombre: TStringField;
    RSApellido: TStringField;
    RSCedula: TStringField;
    RSPosicion: TStringField;
    RSSueldo: TBCDField;
    RSInicio: TDateTimeField;
    RSFin: TDateTimeField;
    RSNacimiento: TDateTimeField;
    RSSexo: TStringField;
    RSEstadoCivil: TStringField;
    RSDireccion: TStringField;
    RSCiudad: TStringField;
    RSTelefono1: TStringField;
    RSTelefono2: TStringField;
    RSTipoCuenta: TStringField;
    RSNumeroCuenta: TStringField;
    RSSueldoFijo: TBooleanField;
    RSActivo: TBooleanField;
    RSSS: TBooleanField;
    RSISR: TBooleanField;
    RSPuntoA: TBCDField;
    RSPuntoB: TBCDField;
    RSPuntoC: TBCDField;
    RSHorasDia: TBCDField;
    RSNumeroSS: TStringField;
    RSTelefonoEmergencia: TStringField;
    RSCantidadHijos: TSmallintField;
    RSFoto: TBlobField;
    RSNacionalidad: TStringField;
    RSDependientes: TSmallintField;
    RSTipoNominaID: TIntegerField;
    RSTipoDocumento: TStringField;
    RSSueldoMes: TBCDField;
    RSidHorario: TStringField;
    RSidEmpleado: TGuidField;
    RSesVendedor: TBooleanField;
    RSidEmpleadoRoll: TStringField;
    RSEmpleado: TStringField;
    RSAFP: TBooleanField;
    bPrint: TwwNavButton;
    RSARS: TBooleanField;
    RSSueldoHora: TBooleanField;
    Label1: TLabel;
    PopupMenu1: TPopupMenu;
    Copiar1: TMenuItem;
    EmpleadoRoll: TADODataSet;
    EmpleadoRollidEmpleadoRoll: TStringField;
    EmpleadoRollEmpleadoRoll: TStringField;
    EmpleadoRollSueldoHora: TBCDField;
    Horario: TADODataSet;
    Label28: TLabel;
    RSCodExterno: TStringField;
    HistoricoSalario: TADODataSet;
    DsHistoricoSalario: TDataSource;
    TransEmpleado: TADODataSet;
    TransEmpleadoEmpleadoID: TIntegerField;
    TransEmpleadoApellido: TStringField;
    TransEmpleadoNombre: TStringField;
    TransEmpleadoTipoTransaccionID: TIntegerField;
    TransEmpleadoTipoTransaccion: TStringField;
    TransEmpleadoValor: TBCDField;
    TransEmpleadoCantidad: TBCDField;
    dsTransEmpleado: TDataSource;
    rptTransEmpleado: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
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
    ppDBText7: TppDBText;
    ResumenTrans: TAction;
    TransEmpleadoDesde: TDateTimeField;
    TransEmpleadoHasta: TDateTimeField;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    TransEmpleadoDebito: TBooleanField;
    plTransEmpleado: TppDBPipeline;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel10: TppLabel;
    ppLine1: TppLine;
    DSCambioSalario: TDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxButton2: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    DBImage1: TcxDBImage;
    cxPageControl1: TcxPageControl;
    tsDatosEmpresa: TcxTabSheet;
    tsHistoricoSalario: TcxTabSheet;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label24: TLabel;
    Label23: TLabel;
    Label27: TLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBTextEdit20: TcxDBTextEdit;
    lkTipo: TcxDBLookupComboBox;
    dsTipoEmpleado: TDataSource;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxButton3: TcxButton;
    dsDepartamento: TDataSource;
    dsSeccion: TDataSource;
    lkDepartamento: TcxDBLookupComboBox;
    lkSeccion: TcxDBLookupComboBox;
    dsEmpleadoRoll: TDataSource;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    dsHorario: TDataSource;
    tsBanco: TcxTabSheet;
    Label22: TLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    Gradient1: TGradient;
    Gradient2: TGradient;
    Label25: TLabel;
    Shape1: TShape;
    RSIdBanco: TGuidField;
    RSTipoNotificacionBanco: TStringField;
    RSDireccionNotificacionBanco: TStringField;
    rsBancosDestino: TADODataSet;
    rsBancosDestinoIdBancoDestino: TStringField;
    rsBancosDestinoBancoDestino: TStringField;
    rsBancosDestinoDigitoVerificacion: TStringField;
    dsBancoDestino: TDataSource;
    Label26: TLabel;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    Label29: TLabel;
    cxDBImageComboBox1: TcxDBImageComboBox;
    RSTipoCuentaDestino: TStringField;
    cxDBImageComboBox2: TcxDBImageComboBox;
    cxDBTextEdit21: TcxDBTextEdit;
    Label30: TLabel;
    Label31: TLabel;
    RSIdBancoDestino: TStringField;
    cxDBCheckBox8: TcxDBCheckBox;
    RSGarantizado: TBooleanField;
    EmpleadoCodExternoAct: TADOStoredProc;
    EmpleadoCodExternoActEmpleadoID: TIntegerField;
    EmpleadoCodExternoActEmpleado: TStringField;
    HistoricoSalarioFecha: TDateTimeField;
    HistoricoSalarioTotalNormal: TBCDField;
    HistoricoSalarioTotalNocturna: TBCDField;
    HistoricoSalarioTotalExtra: TBCDField;
    HistoricoSalarioTotalDoble: TBCDField;
    HistoricoSalarioOtrosIngresos: TBCDField;
    HistoricoSalarioBruto: TBCDField;
    HistoricoSalarioSS: TBCDField;
    HistoricoSalarioAFP: TBCDField;
    HistoricoSalarioIR: TBCDField;
    HistoricoSalarioOtrosDescuentos: TBCDField;
    HistoricoSalarioTDescuentos: TBCDField;
    HistoricoSalarioNeto: TBCDField;
    cxGridDBTableView1Fecha: TcxGridDBColumn;
    cxGridDBTableView1TotalNormal: TcxGridDBColumn;
    cxGridDBTableView1TotalNocturna: TcxGridDBColumn;
    cxGridDBTableView1TotalExtra: TcxGridDBColumn;
    cxGridDBTableView1TotalDoble: TcxGridDBColumn;
    cxGridDBTableView1OtrosIngresos: TcxGridDBColumn;
    cxGridDBTableView1Bruto: TcxGridDBColumn;
    cxGridDBTableView1SS: TcxGridDBColumn;
    cxGridDBTableView1AFP: TcxGridDBColumn;
    cxGridDBTableView1IR: TcxGridDBColumn;
    cxGridDBTableView1OtrosDescuentos: TcxGridDBColumn;
    cxGridDBTableView1TDescuentos: TcxGridDBColumn;
    cxGridDBTableView1Neto: TcxGridDBColumn;
    Auxiliar: TADODataSet;
    AuxiliaridEmpleado: TIntegerField;
    AuxiliaridCuenta: TStringField;
    AuxiliaridAuxiliar: TStringField;
    AuxiliarAuxiliar: TStringField;
    dsAuxiliar: TDataSource;
    tsAuxiliares: TcxTabSheet;
    GridAux: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2idEmpleado: TcxGridDBColumn;
    cxGridDBTableView2idCuenta: TcxGridDBColumn;
    cxGridDBTableView2idAuxiliar: TcxGridDBColumn;
    cxGridDBTableView2Auxiliar: TcxGridDBColumn;
    spAccionesEmpleado: TADOStoredProc;
    dsRpt: TDataSource;
    plRpt: TppDBPipeline;
    rpt: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLabel31: TppLabel;
    ppDBText10: TppDBText;
    ppDetailBand4: TppDetailBand;
    ppShape13: TppShape;
    ppLabel32: TppLabel;
    ppShape14: TppShape;
    ppLabel33: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel39: TppLabel;
    ppShape15: TppShape;
    ppLabel40: TppLabel;
    ppDBText17: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText27: TppDBText;
    ppLabel42: TppLabel;
    ppFooterBand4: TppFooterBand;
    ppLine4: TppLine;
    ppDBImage2: TppDBImage;
    ppSystemVariable1: TppSystemVariable;
    ppDBText11: TppDBText;
    ppLabel12: TppLabel;
    spAccionesEmpleadoEmpleadoID: TIntegerField;
    spAccionesEmpleadoEmpleado: TStringField;
    spAccionesEmpleadocedula: TStringField;
    spAccionesEmpleadoEmpleadoRoll: TStringField;
    spAccionesEmpleadoDepartamento: TStringField;
    spAccionesEmpleadoSeccion: TStringField;
    spAccionesEmpleadoInicio: TDateTimeField;
    spAccionesEmpleadoFoto: TBlobField;
    spAccionesEmpleadoNaturalezaAccion: TStringField;
    spAccionesEmpleadoMotivo: TStringField;
    spAccionesEmpleadoFecha: TDateTimeField;
    spAccionesEmpleadoFechaProceso: TDateTimeField;
    ppDBMemo1: TppDBMemo;
    ppLabel13: TppLabel;
    ppDBText12: TppDBText;
    wwDBNavigator1Button: TwwNavButton;
    RSAgenteRetencion: TStringField;
    Gradient3: TGradient;
    Label32: TLabel;
    Label33: TLabel;
    cxDBTextEdit22: TcxDBTextEdit;
    cxDBImageComboBox3: TcxDBImageComboBox;
    Departamento: TADODataSet;
    Seccion: TADODataSet;
    TipoEmpleado: TADOTable;
    RSidPersonal: TIntegerField;
    plHistoricoSalario: TppDBPipeline;
    rptHistoricoSalario: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppShape1: TppShape;
    ppLine3: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel16: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppShape3: TppShape;
    ppLabel17: TppLabel;
    ppDBText16: TppDBText;
    plEmpleado: TppDBPipeline;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    Empleados: TADODataSet;
    EmpleadosTipoEmpleado: TStringField;
    EmpleadosDepartamento: TStringField;
    EmpleadosSeccion: TStringField;
    EmpleadosEmpleadoID: TIntegerField;
    EmpleadosNombre: TStringField;
    EmpleadosApellido: TStringField;
    EmpleadosCedula: TStringField;
    EmpleadosInicio: TDateTimeField;
    EmpleadosFin: TDateTimeField;
    EmpleadosTelefono1: TStringField;
    EmpleadosNacimiento: TDateTimeField;
    EmpleadosNumeroCuenta: TStringField;
    EmpleadosSueldoFijo: TBooleanField;
    EmpleadosNumeroSS: TStringField;
    EmpleadosEmpleadoRoll: TStringField;
    EmpleadosActivos: TStringField;
    EmpleadosTipoEmpleadoID: TAutoIncField;
    EmpleadosDepartamentoID: TIntegerField;
    EmpleadosSeccionID: TIntegerField;
    EmpleadosSueldo: TBCDField;
    EmpleadosSueldoMes: TBCDField;
    RptEmpleados: TppReport;
    ppTitleBand3: TppTitleBand;
    ppLabel97: TppLabel;
    ppDBText103: TppDBText;
    ppSystemVariable4: TppSystemVariable;
    ppDBText240: TppDBText;
    ppHeaderBand6: TppHeaderBand;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppDBText110: TppDBText;
    ppDBText111: TppDBText;
    ppDBText112: TppDBText;
    ppDBText162: TppDBText;
    ppDBText164: TppDBText;
    ppFooterBand6: TppFooterBand;
    ppSystemVariable5: TppSystemVariable;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppShape4: TppShape;
    ppLabel56: TppLabel;
    ppDBText45: TppDBText;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppShape5: TppShape;
    ppLabel93: TppLabel;
    ppDBText46: TppDBText;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppShape24: TppShape;
    ppDBCalc57: TppDBCalc;
    ppLabel64: TppLabel;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppShape6: TppShape;
    ppLabel94: TppLabel;
    ppDBText47: TppDBText;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppShape16: TppShape;
    plempleados: TppDBPipeline;
    dsEmpleados: TDataSource;
    RSViatico: TBCDField;
    cxDBTextEdit6: TcxDBTextEdit;
    Label34: TLabel;
    ppLabel21: TppLabel;
    ppLine5: TppLine;
    ppDBMemo2: TppDBMemo;
    ppDBCalc1: TppDBCalc;
    ppLabel11: TppLabel;
    ppShape2: TppShape;
    ppSummaryBand2: TppSummaryBand;
    qryCedulaExiste: TADOQuery;
    wwDBNavigator1Button1: TwwNavButton;
    cxDBTextEdit23: TcxDBTextEdit;
    Label21: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label35: TLabel;
    rsSupervisor: TADODataSet;
    rsSupervisorEmpleadoID: TIntegerField;
    rsSupervisorEmpleado: TStringField;
    dsSuper: TDataSource;
    luSuper: TcxDBLookupComboBox;
    RSidSupervisor: TIntegerField;
    Label36: TLabel;
    cxDBTextEdit24: TcxDBTextEdit;
    Label37: TLabel;
    RSReferencia: TStringField;
    cxDBTextEdit25: TcxDBTextEdit;
    RSidNacionalidad: TStringField;
    RSTipoEmpleadoID: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure ALocalizarExecute(Sender: TObject);
    procedure AprintExecute(Sender: TObject);
    procedure RSNewRecord(DataSet: TDataSet);
    procedure DBEdit1Exit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure RSAfterScroll(DataSet: TDataSet);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RSHorasDiaValidate(Sender: TField);
    procedure ResumenTransExecute(Sender: TObject);
    procedure ABorrarExecute(Sender: TObject);
    procedure cxDBLookupComboBox2PropertiesCloseUp(Sender: TObject);
    procedure RSCodExternoValidate(Sender: TField);
    procedure AuxiliarNewRecord(DataSet: TDataSet);
    procedure AGuardarExecute(Sender: TObject);
    procedure AuxiliaridCuentaValidate(Sender: TField);
    procedure aImprimirAccionesExecute(Sender: TObject);
    procedure DBImage1DblClick(Sender: TObject);
    procedure cxDBLookupComboBox2PropertiesChange(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure RSCedulaValidate(Sender: TField);
    procedure RSidSupervisorValidate(Sender: TField);
    procedure RSBeforePost(DataSet: TDataSet);
    procedure RSSueldoHoraValidate(Sender: TField);
    procedure RSSueldoFijoValidate(Sender: TField);
  private
    Function ExisteCodExterno(CodigoExterno : String) : Boolean;
    Function CedulaExiste (Cedula : String) : Boolean;
  protected
    procedure UserAutocodigo; override;
    procedure browsebotonstate; override;
    procedure Editbotonstate; override;
    procedure Newbotonstate; override;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Empleado: TEmpleado;

implementation

uses Udata, UdataNom, UUtiles, uBusqEmpleado, uDMReportes, uParametros,
  uBusquedaDX, uBusquedaRangoDX, uVerImagen,
  uEmpleadoFindDX;

{$R *.dfm}

procedure TEmpleado.FormCreate(Sender: TObject);
begin
  inherited;
  LogField := 'EmpleadoID';
  empleadoroll.Open;
  horario.Open;
  rsBancosDestino.Open();
//  BusqColMaxSize := 40;
  tfBusqueda := TBusquedaDX;
  Busqfield := 'Empleadoid';
  spName := 'nomEmpleadoListDX';
  TipoEmpleado.Open();
  Departamento.Open();
  Seccion.Open();
  cxPageControl1.ActivePageIndex := 0;
  rsSupervisor.Open();
end;

procedure TEmpleado.ALocalizarExecute(Sender: TObject);
Var
  Resultado : Variant;
begin
//  inherited;
  Resultado := fBuscar(tEmpleadoFindDX, 'EmpleadoId', False, '');
  If Resultado <> Null Then
    Localizar(Resultado);
//  rs.Refresh;
  rsSupervisor.Requery();
end;

Procedure TEmpleado.UserAutocodigo;
Begin
    RSEmpleadoid.Value := DM.GetNextCounterInt('EMPLEADO');
end;

procedure TEmpleado.AprintExecute(Sender: TObject);
var
  a : string;
begin
  inherited;
  Empleados.Close;
  a := uppercase(inputbox('Status de Empleados a Listar','[A] Activos, [I] Inactivos','A'));
  if a = 'A' then
    Empleados.Parameters[1].Value := 1
  else if a = 'I' then
    Empleados.Parameters[1].Value := 0
  else
    raise exception.create('Parametro no válido');

//  if Empleados.active then Empleados.requery else Empleados.open;
  Empleados.Open();
  Imprimir(RptEmpleados);
  Empleados.close;
end;

procedure TEmpleado.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  rssueldofijo.Value := true;
  rssueldohora.Value := false;
  rsARS.Value := true;
  rsSS.value := false;
  rsAFP.Value := true;
  rsISR.value := true;
  rsActivo.Value := true;
  rsSexo.Value :=  'M';
  rsEstadoCivil.value := 'S';
  rsTipoDocumento.value := 'C';
  rsHorasDia.value := 8;
  rsInicio.value := dm.DBFecha;
  rsTipoEmpleadoID.value := 1;
  RSGarantizado.Value := False;
  RSTipoNotificacionBanco.Value := '0';
  RSViatico.Value := 0.00;
end;

procedure TEmpleado.DBEdit1Exit(Sender: TObject);
var
  buscar : integer;
begin
  inherited;
  if appestado = appbrowse then
  begin
    with (sender as TcxDbTextEdit) do
    begin
      buscar := SaveStrToInt(Text);
      DataBinding.DataSource.DataSet.Cancel;
//      DataSource.DataSet.cancel;
      Localizar(buscar);
    end;
    ds.AutoEdit := false;
  end;
end;


procedure TEmpleado.Button2Click(Sender: TObject);
var
  Bmp: TBitmap;
  Jpg: TJPEGImage;
  ext : string;
begin
  inherited;
  Bmp := TBitmap.Create;
  Jpg := TJPEGImage.Create;
  if appEstado In [AppEdit, AppInsert] Then
  Begin
    If Not (ds.State In [dsEdit, dsInsert]) Then ds.Edit;
    try
      If OpenD.Execute Then
      begin
        ext := lowercase(MidStr(OpenD.FileName, Pos('.',OpenD.FileName),10));
        if (ext = '.jpg') or (ext = '.jpeg') then
        begin
           Jpg.LoadFromFile(OpenD.FileName);
           Bmp.Assign(Jpg);
//           DBImage1.Picture.Bitmap.Assign(bmp);
          rsFoto.Assign(bmp);
        end
        else
        begin
//           DBImage1.Picture.LoadFromFile(OpenD.FileName);
          rsFoto.LoadFromFile(OpenD.FileName);
        end;
      end;
    finally
      Jpg.Free;
      Bmp.Free;
    end;
  end;
end;

procedure TEmpleado.Copiar1Click(Sender: TObject);
begin
  inherited;
  DBImage1.CopyToClipboard;
end;

procedure TEmpleado.FormDestroy(Sender: TObject);
begin
  inherited;
  empleadoroll.Close;
  horario.close;
end;

procedure TEmpleado.DBEdit1Enter(Sender: TObject);
begin
  inherited;
   if appestado = appbrowse then
   begin
      ds.AutoEdit := true;
   end;
end;

procedure TEmpleado.RSAfterScroll(DataSet: TDataSet);
begin
  inherited;
  HistoricoSalario.Parameters[1].Value := rsempleadoID.Value;
  if HistoricoSalario.active then HistoricoSalario.Requery() else HistoricoSalario.Open;

  Auxiliar.Parameters[1].Value := rsempleadoID.Value;
  if auxiliar.active then auxiliar.Requery() else auxiliar.Open;

end;

procedure TEmpleado.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (appestado = appbrowse) and (not(ds.AutoEdit)) then
  begin
    ds.AutoEdit := true;
  end;
end;

procedure TEmpleado.browsebotonstate;
begin
  inherited;
  APrint.enabled := true;
  GridAux.Enabled := true;
end;

procedure TEmpleado.RSHorasDiaValidate(Sender: TField);
begin
  inherited;
  if (sender.value <= 0) or (sender.value > 24) then
    raise exception.Create('La cantidad de horas por dia no es valido ');
end;

procedure TEmpleado.ResumenTransExecute(Sender: TObject);
begin
  inherited;
  if rsempleadoid.IsNull then
    raise exception.Create('Debe seleccionar un empleado');

   with TParametros.Create(self) do
   begin
       Paginas.Pages[0].TabVisible := True;
       Paginas.TabIndex := 0;
       try
         if Showmodal = mrok then
         begin
           TransEmpleado.Parameters[1].Value :=  Desde.date;
           TransEmpleado.Parameters[2].Value :=  Hasta.date;
           TransEmpleado.Parameters[3].Value :=  rsEmpleadoID.Value;
           if TransEmpleado.active then TransEmpleado.requery else TransEmpleado.Open;
           Imprimir(RptTransEmpleado);
         end;
       finally
         free;
       end;
   end;
end;

procedure TEmpleado.ABorrarExecute(Sender: TObject);
begin
  if application.MessageBox ('Esta seguro que desea borrar este empleado ?', 'Advertencia', MB_YESNO) = ID_YES then
  begin
    inherited;
  end;

end;

procedure TEmpleado.cxDBLookupComboBox2PropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if rs.State in dseditmodes then
    rsSecionID.Clear;
end;

function TEmpleado.ExisteCodExterno(CodigoExterno: String): Boolean;
begin
  With EmpleadoCodExternoAct, Parameters Do
  Begin
    Close();
    ParamByName('@CodExterno').Value := CodigoExterno;
    Open();

    If Not IsEmpty Then
    Begin
      ShowMessage('Este código externo ya esta asignado al empleado ' + IntToStr(EmpleadoCodExternoActEmpleadoID.Value) + ' - ' + EmpleadoCodExternoActEmpleado.Value);
      Result := False;
    End
    Else
      Result := True;
        
    Close();
  End;
end;

procedure TEmpleado.RSCodExternoValidate(Sender: TField);
begin
  inherited;
  If Not ExisteCodExterno(Sender.AsString) Then
    Abort;

end;

procedure TEmpleado.Editbotonstate;
begin
  inherited;
  APrint.enabled := false;
  GridAux.Enabled := true;
end;

procedure TEmpleado.Newbotonstate;
begin
  inherited;
  APrint.enabled := false;
  GridAux.enabled := true;
end;

procedure TEmpleado.AuxiliarNewRecord(DataSet: TDataSet);
begin
  inherited;
  AuxiliaridEmpleado.Value := rsEmpleadoid.value;
end;

procedure TEmpleado.AGuardarExecute(Sender: TObject);
begin
  if dm.GetDefaultStr('USAR_COD_EXTERNO') <> '0' then begin
    if RSCodExterno.Value = '' then begin
      if not Confirmar('El codigo externo esta vacio, quiere utilizar el mismo codigo del empleado') then
        Abort();
    end;
  end;
  inherited;
  DetalleUpdate(auxiliar, ds.DataSet.fieldbyname('Empleadoid').value, 'idempleado');
  BatchUpdateCancel(auxiliar, true);
  rsSupervisor.Requery();
end;

procedure TEmpleado.AuxiliaridCuentaValidate(Sender: TField);
var
  x : string;
begin
  inherited;
  if dm.ValidarCuenta(sender.value, x) then
    auxiliarauxiliar.Value := x
  else
    raise exception.create('La cuenta seleccionada es incorrecta');
end;

procedure TEmpleado.aImprimirAccionesExecute(Sender: TObject);
begin
  inherited;

  if rsempleadoid.IsNull then
    raise exception.Create('Debe seleccionar un empleado');

   with TParametros.Create(self) do
   begin
       Paginas.Pages[0].TabVisible := True;
       Paginas.TabIndex := 0;
       desde.date := rsinicio.value;

       try
         if Showmodal = mrok then
         begin
           spAccionesEmpleado.Parameters[1].Value :=  rsEmpleadoID.Value;
           spAccionesEmpleado.Parameters[2].Value :=  Desde.date;
           spAccionesEmpleado.Parameters[3].Value :=  Hasta.date;
           spAccionesEmpleado.close;
           spAccionesEmpleado.Open;
           Imprimir(rpt);
         end;
       finally
         free;
       end;
   end;

end;

procedure TEmpleado.DBImage1DblClick(Sender: TObject);
begin
  inherited;
  MostrarImagen(DBImage1.Picture);

end;

procedure TEmpleado.cxDBLookupComboBox2PropertiesChange(Sender: TObject);
begin
  inherited;
  Departamento.Locate('DepartamentoId', lkDepartamento.EditValue, []);
end;

procedure TEmpleado.cxButton4Click(Sender: TObject);
begin
  inherited;
  If rs.Active Then
    Imprimir(rptHistoricoSalario);
end;

procedure TEmpleado.RSCedulaValidate(Sender: TField);
begin
  inherited;
  If CedulaExiste(Sender.Value) Then
    ShowMessage('Esta cédula 0 pasaporte existe');
end;

function TEmpleado.CedulaExiste(Cedula: String): Boolean;
begin
  With qryCedulaExiste, Parameters Do
  Begin
    Close;
    ParamByName('Cedula').Value := Cedula;
    Open();
  End;
  Result := Not qryCedulaExiste.IsEmpty;
end;

procedure TEmpleado.RSidSupervisorValidate(Sender: TField);
begin
  inherited;
  if rsIdSupervisor.Value <> 0 then begin
    if rsIdSupervisor.Value = RSEmpleadoID.Value then
      raise Exception.Create('Un empleado no puede ser su propio supervisor');
  end;
end;

procedure TEmpleado.RSBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (dm.GetDefaultStr('USAR_COD_EXTERNO') <> '0') and (rsCodExterno.Value = '') then begin
    rsCodExterno.Value := rsEmpleadoID.AsString;
  end;
end;

procedure TEmpleado.RSSueldoHoraValidate(Sender: TField);
begin
  inherited;
  if (rsSueldoHora.Value) and (RSSueldoFijo.Value) then
    rsSueldoFijo.Value := False
  else if not rsSueldoFijo.Value then
    rsSueldoFijo.Value := True;
end;

procedure TEmpleado.RSSueldoFijoValidate(Sender: TField);
begin
  inherited;
  if (rsSueldoFijo.Value) and (RSSueldoHora.Value) then
    rsSueldoHora.Value := False
  else if not rsSueldoHora.Value then
    rsSueldoHora.Value := True;

end;

end.


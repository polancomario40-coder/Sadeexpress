unit UMenuGeneral;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ToolWin, ComCtrls, StdCtrls, Wwkeycb, Db, Grids, DBGrids,
  DBTables, Wwdatsrc, Wwdbigrd, Wwdbgrid, Wwtable, Menus, ActnList,
  ExtCtrls, ppViewr, UUtiles, ActnMan, ActnCtrls, ActnMenus, BandActn,
  wwdblook, XPStyleActnCtrls, Mask, wwdbedit, ADODB, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, dxExEdtr,
  dxDBTLCl, dxGrClms, dxDBGrid, dxTL, dxDBCtrl, dxCntner, variants,
  cxLookAndFeelPainters, cxButtons, dxEditor, dxEdLib, dxDBELib, Gradient,
  XPMan, jpeg, dxNavBarStyles, dxNavBarCollns, dxNavBarBase, dxNavBar,
  ImgList, ActnColorMaps, cxContainer, cxImage, Contnrs, Series, TeEngine,
  TeeProcs, Chart, Math, DBCtrls;

const
  TT_DEPOSITO = 1;
  TT_NCR = 4;
  TT_NDB = 5;
  TT_CKDEV = 6;

type
  TMenuGeneral = class(TForm)
    Acciones: TActionManager;
    Password: TAction;
    Salir: TAction;
    Seguridad: TAction;
    MenuBar: TActionMainMenuBar;
    Factura: TAction;
    Recibo: TAction;
    Setup: TAction;
    ProMov: TAction;
    Cliente: TAction;
    Producto: TAction;
    Cotizacion: TAction;
    OrdComp: TAction;
    CXC: TAction;
    EstadoCuenta: TAction;
    EstadoCuentaPend: TAction;
    AgingCXC: TAction;
    ReporteRemisiones: TAction;
    Fisico: TAction;
    InvExistencia: TAction;
    svEmpleado: TAction;
    FacturaList: TAction;
    ReciboList: TAction;
    Autorizaciones: TAction;
    VentasporCliente: TAction;
    CarteradeClientes: TAction;
    Almacen: TAction;
    VentaporVendedor: TAction;
    InvCierre: TAction;
    CreditosPorDistribuir: TAction;
    InvReq: TAction;
    CxcTipo: TAction;
    ReciboTipo: TAction;
    Marca: TAction;
    ListaPrecio: TAction;
    RptCxcList: TAction;
    Unidad: TAction;
    InvMovimiento: TAction;
    InvMovimientoProd: TAction;
    InvEntradasSalidas: TAction;
    InvEntSalDet: TAction;
    Devolucion: TAction;
    FacturaRec: TAction;
    GenerarFactRec: TAction;
    Tasa: TAction;
    CentroCostoTree: TAction;
    RPTFacturasXCobrador: TAction;
    LogsView: TAction;
    ProMovTipo: TAction;
    ClienteCondicion: TAction;
    ClienteGrupo: TAction;
    Zona: TAction;
    CambiarPrecios: TAction;
    XPManifest1: TXPManifest;
    ClienteTipo: TAction;
    ClienteRpt: TAction;
    PagoForma: TAction;
    CuadreCaja: TAction;
    DevolucionList: TAction;
    CotizacionList: TAction;
    VentasLineGrpProd: TAction;
    VentasporVendedor: TAction;
    CobrosporVendedor: TAction;
    VentaporClienteAnual: TAction;
    ConsultaRecibosDevueltos: TAction;
    VentaZonaGrupoAnual: TAction;
    NotInDataCollactor: TAction;
    PuntoReorden: TAction;
    ConsultaClienteLimiteCrBalance: TAction;
    VentasXGrupo12Meses: TAction;
    SelEmpresa: TAction;
    ImprimirEtiquetas: TAction;
    Codificacionfactura: TAction;
    lUsuario: TLabel;
    SetSegModeON: TAction;
    VentasdeProductosResumenMoneda: TAction;
    GrupoCliente: TAction;
    VentasPorProductos: TAction;
    ClasificacionTipoAnulacion: TAction;
    ToDgiiNcfVentas: TAction;
    VentasPorClienteSeg: TAction;
    CatalogoProductos: TAction;
    ProductoDetalle: TAction;
    MantAnotacion: TAction;
    ImageList1: TImageList;
    Empleado: TAction;
    transaccionDef: TAction;
    CxCEmpleados: TAction;
    Prestaciones: TAction;
    CreditoISR: TAction;
    Departamento: TAction;
    Horario: TAction;
    Tipo: TAction;
    EmpleadoRoll: TAction;
    EntradaDiario: TAction;
    ReporteConfiguracion: TAction;
    ReportesConfigurados: TAction;
    RptInfotep: TAction;
    RptSegAcc: TAction;
    RptIR4: TAction;
    RptT60: TAction;
    AFP: TAction;
    ToAFP: TAction;
    IR13: TAction;
    ResumenTransSeccion: TAction;
    ResumenTransDpto: TAction;
    ResTransXCliente: TAction;
    AcumuladoEmpleado: TAction;
    ListadoEmpleado: TAction;
    DGT3: TAction;
    DGT4: TAction;
    RPTNominaPeriodo: TAction;
    fMantSuplidores: TAction;
    MantSolicitudes: TAction;
    fMantDocumentos: TAction;
    ModificarCheque: TAction;
    GastosMenores: TAction;
    MantTipoSups: TAction;
    MantBancos: TAction;
    MantImpuestos: TAction;
    MantRetenciones: TAction;
    ListadoSuplidores: TAction;
    fAgingCXP: TAction;
    fRelacionCks: TAction;
    RelacionDocumentos: TAction;
    CreditosNoDistr: TAction;
    RemisionGastosDGII: TAction;
    ReporteItbisRet: TAction;
    fMarcarDepositos: TAction;
    fMarcarCks: TAction;
    MantConciliacion: TAction;
    DocumentoBanco: TAction;
    fDisponibilidad: TAction;
    TransXCuenta: TAction;
    fCksTransito: TAction;
    fDepsTransito: TAction;
    fCksPagados: TAction;
    MantConceptos: TAction;
    sd: TSaveDialog;
    MantEntrada: TAction;
    GenerarEntradas: TAction;
    CierreDiario: TAction;
    GenEDRecurrente: TAction;
    MantFactoresMes: TAction;
    fGenEDCierre: TAction;
    CatalogoCuentas: TAction;
    MantAuxiliares: TAction;
    CuentasPrima: TAction;
    fEditarEstados: TAction;
    MantFactores: TAction;
    MantDistribuciones: TAction;
    MantEDRecurrente: TAction;
    Periodo: TAction;
    BalanzaComprobacion: TAction;
    MayorGeneral: TAction;
    CuadreEntradas: TAction;
    ResumenEntradas: TAction;
    ImprimirEstados: TAction;
    HacerBackup: TAction;
    RestoreBackUp: TAction;
    MantNCR: TAction;
    PagoACH: TAction;
    bgImage: TcxImage;
    QuickList: TAction;
    GastosPorCentroCosto: TAction;
    ConfigurarPC: TAction;
    Retenciones: TAction;
    FactorDistrib: TAction;
    MantTransParaPrestaciones: TAction;
    FacturasAbiertas: TAction;
    MantActivos: TAction;
    MantCategoria: TAction;
    ListaActivos: TAction;
    MantUbicaciones: TAction;
    MantClases: TAction;
    MainActivos: TAction;
    GenDepreciacion: TAction;
    ReporteDepreciacion: TAction;
    DepResumido: TAction;
    ConsultaActivoDepreciacion: TAction;
    ListadoActivos: TAction;
    AjusteInf: TAction;
    RemisionManual: TAction;
    cxImage2: TcxImage;
    MantGrafico: TAction;
    Archivo608: TAction;
    MantNotasFacturas: TAction;
    GestionCobros: TAction;
    MantTipoIngreso: TAction;
    ToDgiiNcfVentas2018: TAction;
    RemisionGastosDGII2018: TAction;
    Archivo6082018: TAction;
    OpticaEvaluacion: TAction;
    Chart1: TChart;
    Series1: TBarSeries;
    Series2: TPieSeries;
    Series3: TFastLineSeries;
    dxNavBar1: TdxNavBar;
    dxNavBar1Group1: TdxNavBarGroup;
    dxNavBar1Group2: TdxNavBarGroup;
    dxNavBar1Group4: TdxNavBarGroup;
    biSalir: TdxNavBarItem;
    dxNavBar1Item1: TdxNavBarItem;
    dxNavBar1Item2: TdxNavBarItem;
    dxNavBar1StyleItem1: TdxNavBarStyleItem;
    dxNavBar1StyleItem2: TdxNavBarStyleItem;
    GroupHeaderStyle: TdxNavBarStyleItem;
    dxNavBar1StyleItem3: TdxNavBarStyleItem;
    dxNavBar1Item3: TdxNavBarItem;
    dxNavBar1Item4: TdxNavBarItem;
    dxNavBar1Item5: TdxNavBarItem;
    dxNavBar1Item6: TdxNavBarItem;
    dxNavBar1Item7: TdxNavBarItem;
    CentralFacturacion: TAction;
    dxNavBar1Item8: TdxNavBarItem;
    Action2: TAction;
    Action1: TAction;
    SelNomina: TAction;
    Label1: TLabel;
    CuadreCajaDiario: TAction;
    ModeloFiscal: TAction;
    DBImage1: TDBImage;
    procedure FormCreate(Sender: TObject);
    procedure PasswordExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure SeguridadExecute(Sender: TObject);
    procedure FacturaExecute(Sender: TObject);
    procedure ReciboExecute(Sender: TObject);
    procedure NegChange(Sender: TObject);
    procedure SetupExecute(Sender: TObject);
    procedure ProMovExecute(Sender: TObject);
    procedure ClienteExecute(Sender: TObject);
    procedure ProductoExecute(Sender: TObject);
    procedure CotizacionExecute(Sender: TObject);
    procedure OrdCompExecute(Sender: TObject);
    procedure CXCExecute(Sender: TObject);
    procedure EstadoCuentaExecute(Sender: TObject);
    procedure EstadoCuentaPendExecute(Sender: TObject);
    procedure AgingCXCExecute(Sender: TObject);
    procedure ReporteRemisionesExecute(Sender: TObject);
    procedure FisicoExecute(Sender: TObject);
    procedure InvExistenciaExecute(Sender: TObject);
    procedure FacturaListExecute(Sender: TObject);
    procedure ReciboListExecute(Sender: TObject);
    procedure AutorizacionesExecute(Sender: TObject);
    procedure VentasporClienteExecute(Sender: TObject);
    procedure CarteradeClientesExecute(Sender: TObject);
    procedure AlmacenExecute(Sender: TObject);
    procedure VentaporVendedorExecute(Sender: TObject);
    procedure InvCierreExecute(Sender: TObject);
    procedure CreditosPorDistribuirExecute(Sender: TObject);
    procedure InvReqExecute(Sender: TObject);
    procedure CxcTipoExecute(Sender: TObject);
    procedure ReciboTipoExecute(Sender: TObject);
    procedure MarcaExecute(Sender: TObject);
    procedure ListaPrecioExecute(Sender: TObject);
    procedure RptCxcListExecute(Sender: TObject);
    procedure UnidadExecute(Sender: TObject);
    procedure InvMovimientoExecute(Sender: TObject);
    procedure InvMovimientoProdExecute(Sender: TObject);
    procedure InvEntradasSalidasExecute(Sender: TObject);
    procedure InvEntSalDetExecute(Sender: TObject);
    procedure DevolucionExecute(Sender: TObject);
    procedure FacturaRecExecute(Sender: TObject);
    procedure GenerarFactRecExecute(Sender: TObject);
    procedure TasaExecute(Sender: TObject);
    procedure CentroCostoTreeExecute(Sender: TObject);
    procedure RPTFacturasXCobradorExecute(Sender: TObject);
    procedure LogsViewExecute(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ProMovTipoExecute(Sender: TObject);
    procedure ClienteCondicionExecute(Sender: TObject);
    procedure ClienteGrupoExecute(Sender: TObject);
    procedure ZonaExecute(Sender: TObject);
    procedure CambiarPreciosExecute(Sender: TObject);
    procedure ClienteTipoExecute(Sender: TObject);
    procedure ClienteRptExecute(Sender: TObject);
    procedure PagoFormaExecute(Sender: TObject);
    procedure CuadreCajaExecute(Sender: TObject);
    procedure DevolucionListExecute(Sender: TObject);
    procedure CotizacionListExecute(Sender: TObject);
    procedure VentasLineGrpProdExecute(Sender: TObject);
    procedure VentasporVendedorExecute(Sender: TObject);
    procedure CobrosporVendedorExecute(Sender: TObject);
    procedure VentaporClienteAnualExecute(Sender: TObject);
    procedure ConsultaRecibosDevueltosExecute(Sender: TObject);
    procedure VentaZonaGrupoAnualExecute(Sender: TObject);
    procedure NotInDataCollactorExecute(Sender: TObject);
    procedure PuntoReordenExecute(Sender: TObject);
    procedure ConsultaClienteLimiteCrBalanceExecute(Sender: TObject);
    procedure VentasXGrupo12MesesExecute(Sender: TObject);
    procedure SelEmpresaExecute(Sender: TObject);
    procedure ImprimirEtiquetasExecute(Sender: TObject);
    procedure CodificacionfacturaExecute(Sender: TObject);
    procedure AccionesExecute(Action: TBasicAction; var Handled: Boolean);
    procedure SetSegModeONExecute(Sender: TObject);
    procedure VentasdeProductosResumenMonedaExecute(Sender: TObject);
    procedure GrupoClienteExecute(Sender: TObject);
    procedure VentasPorProductosExecute(Sender: TObject);
    procedure ClasificacionTipoAnulacionExecute(Sender: TObject);
    procedure ToDgiiNcfVentasExecute(Sender: TObject);
    procedure VentasPorClienteSegExecute(Sender: TObject);
    procedure dxNavBar1Item5Click(Sender: TObject);
    procedure dxNavBar1Item6Click(Sender: TObject);
    procedure CatalogoProductosExecute(Sender: TObject);
    procedure ProductoDetalleExecute(Sender: TObject);
    procedure MantAnotacionExecute(Sender: TObject);
    procedure EmpleadoExecute(Sender: TObject);
    procedure svEmpleadoExecute(Sender: TObject);
    procedure AcumuladoEmpleadoExecute(Sender: TObject);
    procedure AFPExecute(Sender: TObject);
    procedure CreditoISRExecute(Sender: TObject);
    procedure CxCEmpleadosExecute(Sender: TObject);
    procedure DGT3Execute(Sender: TObject);
    procedure DGT4Execute(Sender: TObject);
    procedure EmpleadoRollExecute(Sender: TObject);
    procedure HorarioExecute(Sender: TObject);
    procedure IR13Execute(Sender: TObject);
    procedure ListadoEmpleadoExecute(Sender: TObject);
    procedure PrestacionesExecute(Sender: TObject);
    procedure ReporteConfigurableExecute(Sender: TObject);
    procedure ReportesConfiguradosExecute(Sender: TObject);
    procedure ResTransXClienteExecute(Sender: TObject);
    procedure ResumenTransDptoExecute(Sender: TObject);
    procedure ResumenTransSeccionExecute(Sender: TObject);
    procedure RptInfotepExecute(Sender: TObject);
    procedure RptIR4Execute(Sender: TObject);
    procedure RPTNominaPeriodoExecute(Sender: TObject);
    procedure RptSegAccExecute(Sender: TObject);
    procedure RptT60Execute(Sender: TObject);
    procedure SelNominaExecute(Sender: TObject);
    procedure TipoExecute(Sender: TObject);
    procedure ToAFPExecute(Sender: TObject);
    procedure TransaccionDefExecute(Sender: TObject);
    procedure VacacionesExecute(Sender: TObject);
    procedure DepartamentoExecute(Sender: TObject);
    procedure CreditosNoDistrExecute(Sender: TObject);
    procedure fAgingCXPExecute(Sender: TObject);
    procedure fMantDocumentosExecute(Sender: TObject);
    procedure fMantSuplidoresExecute(Sender: TObject);
    procedure fRelacionCksExecute(Sender: TObject);
    procedure GastosMenoresExecute(Sender: TObject);
    procedure ListadoSuplidoresExecute(Sender: TObject);
    procedure MantBancosExecute(Sender: TObject);
    procedure MantImpuestosExecute(Sender: TObject);
    procedure MantRetencionesExecute(Sender: TObject);
    procedure MantSolicitudesExecute(Sender: TObject);
    procedure MantTipoSupsExecute(Sender: TObject);
    procedure ModificarChequeExecute(Sender: TObject);
    procedure RelacionDocumentosExecute(Sender: TObject);
    procedure RemisionGastosDGIIExecute(Sender: TObject);
    procedure ReporteItbisRetExecute(Sender: TObject);
    procedure EntradaDiarioExecute(Sender: TObject);
    procedure fCksPagadosExecute(Sender: TObject);
    procedure fCksTransitoExecute(Sender: TObject);
    procedure fDepsTransitoExecute(Sender: TObject);
    procedure fDisponibilidadExecute(Sender: TObject);
    procedure fMarcarCksExecute(Sender: TObject);
    procedure fMarcarDepositosExecute(Sender: TObject);
    procedure MantConceptosExecute(Sender: TObject);
    procedure MantConciliacionExecute(Sender: TObject);
    procedure DocumentoBancoExecute(Sender: TObject);
    procedure TransXCuentaExecute(Sender: TObject);
    procedure BalanzaComprobacionExecute(Sender: TObject);
    procedure CatalogoCuentasExecute(Sender: TObject);
    procedure CierreDiarioExecute(Sender: TObject);
    procedure CuadreEntradasExecute(Sender: TObject);
    procedure CuentasPrimaExecute(Sender: TObject);
    procedure fEditarEstadosExecute(Sender: TObject);
    procedure GenEDRecurrenteExecute(Sender: TObject);
    procedure GenerarEntradasExecute(Sender: TObject);
    procedure HacerBackupExecute(Sender: TObject);
    procedure ImprimirEstadosExecute(Sender: TObject);
    procedure MantDistribucionesExecute(Sender: TObject);
    procedure MantEDRecurrenteExecute(Sender: TObject);
    procedure MantEntradaExecute(Sender: TObject);
    procedure MantFactoresExecute(Sender: TObject);
    procedure MantFactoresMesExecute(Sender: TObject);
    procedure MayorGeneralExecute(Sender: TObject);
    procedure PeriodoExecute(Sender: TObject);
    procedure RestoreBackUpExecute(Sender: TObject);
    procedure ResumenEntradasExecute(Sender: TObject);
    procedure MantNCRExecute(Sender: TObject);
    procedure PagoACHExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure QuickListExecute(Sender: TObject);
    procedure GastosPorCentroCostoExecute(Sender: TObject);
    procedure ConfigurarPCExecute(Sender: TObject);
    procedure RetencionesExecute(Sender: TObject);
    procedure FactorDistribExecute(Sender: TObject);
    procedure MantTransParaPrestacionesExecute(Sender: TObject);
    procedure FacturasAbiertasExecute(Sender: TObject);
    procedure MantActivosExecute(Sender: TObject);
    procedure MantUbicacionesExecute(Sender: TObject);
    procedure MantCategoriaExecute(Sender: TObject);
    procedure MantClasesExecute(Sender: TObject);
    procedure MainActivosExecute(Sender: TObject);
    procedure GenDepreciacionExecute(Sender: TObject);
    procedure ListaActivosExecute(Sender: TObject);
    procedure ReporteDepreciacionExecute(Sender: TObject);
    procedure DepResumidoExecute(Sender: TObject);
    procedure ConsultaActivoDepreciacionExecute(Sender: TObject);
    procedure ListadoActivosExecute(Sender: TObject);
    procedure AjusteInfExecute(Sender: TObject);
    procedure RemisionManualExecute(Sender: TObject);
    procedure fGenEDCierreExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MantGraficoExecute(Sender: TObject);
    procedure Archivo608Execute(Sender: TObject);
    procedure MantNotasFacturasExecute(Sender: TObject);
    procedure GestionCobrosExecute(Sender: TObject);
    procedure MantTipoIngresoExecute(Sender: TObject);
    procedure RemisionGastosDGII606Execute(Sender: TObject);
    procedure ToDgiiNcfVentas2018Execute(Sender: TObject);
    procedure RemisionGastosDGII2018Execute(Sender: TObject);
    procedure Archivo6082018Execute(Sender: TObject);
    procedure OpticaEvaluacionExecute(Sender: TObject);
    procedure CentralFacturacionExecute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure CuadreCajaDiarioExecute(Sender: TObject);
    procedure ModeloFiscalExecute(Sender: TObject);
  private
    Version: string;
    COMPUTER : string;
    ThreadList: TObjectList;
    numThreads: integer; // Numero de threads activos
    ConexionStr: string;

    { Private declarations }
    function ModalShowFunc(Tf: TFormClass): TModalResult;
    procedure RefrescarAcciones;
    procedure HabilitarAcciones;
    procedure CallSelEmpresa(TermOnCancel: Boolean);
    procedure ShowXMasIcons;
    procedure TerminarThread(Sender: TObject);
    procedure EjecutarSQLThread(AConnection, ASQL, nombre: string; tipoGrafico, posicion: integer);
    procedure EjecutarConsulta;
    procedure contruirGrafico(qryData: TADOQuery; _tipoGrafico,
      _posicion: integer; _nombre: string);
  public
    { Public declarations }
  end;

var
  MenuGeneral: TMenuGeneral;

implementation

uses UADOSQLThread, UPassWord, Udata, USeguridad,
  uFactura, uRecibo, uProMov, uSetup, uCliente,
  uProducto, uCotizacion, uOrdComp,
  uCXC, uEstadoCuenta, uEstadoCuentaPend,
  ucxcAging, uReporteRemisiones, uFisico, uReporteExistencias, uEmpleado,
  uDMRptVentas, uAutorizaciones, uAlmacen,
  UInvCierre, uInvReq, uCxcTipo, uReciboTipo,
  uMarca, uListaPrecio, uParametros, uUnidad, uInvExistencia,
  uInvMovimiento, uInvMovimientoProd, uInvEntSalDet, uCentroCosto,
  uDevolucion, uFacturaRec, uGenerarFactRec,
  uTasa, uCentroCostTree, uRPTFacturasXCobrador,
  uLogView, uReporteAplicacionPres, uProMovTipo,
  uClienteCondicion, uClienteGrupo, uZona, uCambiarPrecios,
  uClienteTipo, uClienteRpt, uClienteRptSelect,
  uPagoForma, uCuadreCaja, uFacturaList, uDevolucionList, uCotizacionList,
  uVentasLineGrpProd, uVentasporVendedor, uCobrosporVendedor,
  uVentasporClienteAnual,
  uConsultaRecibosDevueltos, uVentasZonaGrupoAnual,
  uNotInDataCollactor, uPuntoReorden, uConsultaClienteLimiteCrBalance,
  uVentasXGrupo12Meses, uMultiLogin, uSelEmpresa,
  udmRepository, uConsultaImprimirEtiquetas, uConsultaExcel,
  uConsultaRecibos, uGrupoClientes, uVentasPorProductos,
  uClasificacionTipoAnulacion, uToDgiiNcfVentas,
  uVentasPorClientesSeg, uFacturarPresupCXC, ucatalogoProductos,
  uProductoDetalle, uMantAnotacion, uCambiarPrecioMarca,
  uDMReportes, USelNomina, UdataNom,
  UDepartamento, UHorario, UTipo, UTransaccionDef,
  UCxCEmp, UCxCEmpleados, uEmpleadoRoll, uDMReportes2,
  uRptParams, uToAFP,
  uReportesConfigurados, uReporteConfig,
  uAcumuladoEmpleado, uCalcPrestaciones,
  uListadoEmpleados, uCreditoISR, uDGT4,
  uRPTNominaPeriodo, usvEmpleado,
  uMantDocumentos, uMantNCR, uMantSolicitudes,
  uAgingCXP, uRelacionDocumentos, uRelacionCks,
  uMantSuplidores, uMantBancos, uMantImpuestos,
  uMantTipoSups, uCreditosNoDistr,
  uMantRetenciones, uValidarSolicitudes, uReporteSuplidores,
  uRemisionGastosDGII, uMantBatchACH,
  uImprimirCert, uReporteItbisRet, uGastosMenores,
  uRPTOCPendientes, uEntradaDiario,
  uTransXCuenta, uMantConceptos,
  uMarcarCks, uMarcarDepositos, uCksTransito, uCksPagados, uDisponibilidad,
  uMantConcil, uPickIdtrans, uDepsTransito, udmBancos, uMantdocumentosBco,
  uMantEntrada, uCatTree, uTotalesCta, uGLInterface, uEstados,
  uEditarEstados, uListaMG, uResumenED, uListaDiario, uGenerarEDCierre,
  uCerrarPeriodo, uEstadoResultados, uBalanceGral, uResumen, uMantFactores,
  uMantDistribuciones, uMantFactoresMes, uImprimirEstados, ugldm,
  uRestoreBackUp, uMantEDRecurrente,
  uGenEDRecurrente, uMantCtaPrima, UCierreDiario, uGenerarEntradas,
  uPeriodos, uQuickList, uGastosPorCentroCosto, uConfigurarPC,
  uRetenciones, uFactorDistrib, uDocumentoBanco, uTransParaPrestaciones,
  uAutoMantGrid, uFacturasAbiertas, uMantActivos, uMantCategoria,
  udmActivos, uMantUbicaciones, uMantClases, uMainActivos, uReporteActivos,
  uConsultaActivoDepreciacion, uListadoActivos, uAjusteInf,
  uRemisionManual, uSeasonIconsForm, uMantGrafico, uArchivo608,
  uMantNotasFacturas, udgt3, uGestionCobros, uMantTipoIngreso,
  uRemisionGastosDGII606, uRemisionGastosDGII2018, uToDgiiNcfVentas2018,
  uArchivo6082018, uOpticaEvaluacion, uEvaluacion, uCentralFacturacion,
  uCentralEncuesta, uMantEncuestas, uCuadreCajaDiario, uModeloFiscal;

{$R *.DFM}

procedure TMenuGeneral.FormCreate(Sender: TObject);
var
  vCXPVencida: Integer;
begin
  ModalShow(tMultiLogin);
  lUsuario.Caption := dm.UsuarioActual;
  CallSelEmpresa(True);

  vCXPVencida := StrToIntDef(dm.GetDefaultStr('CXPVencida'), 0);
  if vCXPVencida = 1 then
    Application.MessageBox('Le solicitamos amablemente ponerse al dia con los pagos pendientes a la mayor brevedad posible para evitar la suspension del servicio.', 'Aviso de Pago', MB_OK + MB_ICONINFORMATION)
  else if vCXPVencida = 2 then
    Application.MessageBox('Aviso importante: El plazo para regularizar su cuenta esta proximo a vencer. ' +
      'De no recibirse el pago pendiente en los proximos dias, el acceso al sistema ERP SADE sera ' +
      'bloqueado temporalmente. La reactivacion del servicio tendra un costo de US$200.00, ademas ' +
      'del pago de los valores pendientes.', 'Urgente: Cuenta Vencida', MB_OK + MB_ICONWARNING)
  else if vCXPVencida >= 3 then
  begin
    Application.MessageBox('Su acceso al sistema ERP SADE ha sido suspendido por falta de pago. Para reactivar el servicio comuniquese con SADE.', 'Acceso Bloqueado', MB_OK + MB_ICONERROR);
    Application.Terminate;
  end;

  Version:= dm.GetDefaultStr('version');
  If Label1.Caption<>Version then
  ShowMessage('Version de la Aplicacion no Actualizada, descargue la ultima'+Version);

  computer := dm.GetPCSetting('computer');
  if (computer <> ComputerName()) and
     (LowerCase(Trim(dm.UsuarioActual)) <> 'cbsadmin') and
     (LowerCase(Trim(dm.UsuarioActual)) <> 'admin') then
  begin
    ShowMessage('Computadora no autorizada para este Sistema ' + ComputerName());
    Application.Terminate;
  end;

  ShowXMasIcons();
  EjecutarConsulta;
end;


procedure TMenuGeneral.ShowXMasIcons;
var
  sif: TSeasonIconsForm;
  pic: TPicture;
begin
  sif := TSeasonIconsForm.Create(Self);
  try
    pic := sif.GetSeasonLogo();
    if pic <> nil then begin
      bgImage.Picture.Assign(pic);
      //bgImage.Visible := True;
    end;

    pic := sif.GetSeasonCornerImage();
    if pic <> nil then begin
      cxImage2.Picture.Assign(pic);
      //cxImage2.Visible := True;
    end;
  finally
    sif.Release();
  end;

end;

procedure TMenuGeneral.PasswordExecute(Sender: TObject);
begin
  ModalShow(tMultiLogin);
  lUsuario.Caption := dm.UsuarioActual;
  CallSelEmpresa(True);
  RefrescarAcciones;
end;


procedure TMenuGeneral.SalirExecute(Sender: TObject);
begin
  Close;
end;

procedure TMenuGeneral.SeguridadExecute(Sender: TObject);
begin
  ModalShow(TSeguridad);
end;

procedure TMenuGeneral.FacturaExecute(Sender: TObject);
begin
  ModalShow(TFactura);
end;

procedure TMenuGeneral.ReciboExecute(Sender: TObject);
begin
  ModalShow(TRecibo);
end;

procedure TMenuGeneral.NegChange(Sender: TObject);
begin
  application.Title := dm.ConfiguracionTituloApp.AsString;
  self.Caption := application.Title;
end;

procedure TMenuGeneral.SetupExecute(Sender: TObject);
begin
  ModalShow(TSetup);
  dm.LoadDefaultsCache();
end;

procedure TMenuGeneral.ProMovExecute(Sender: TObject);
begin
  ModalShow(TProMov);
end;

procedure TMenuGeneral.ClienteExecute(Sender: TObject);
begin
  ModalShow(TCliente);
end;

procedure TMenuGeneral.ProductoExecute(Sender: TObject);
begin
  ModalShow(TProducto);
end;

procedure TMenuGeneral.CotizacionExecute(Sender: TObject);
begin
  ModalShow(TCotizacion);
end;

procedure TMenuGeneral.OrdCompExecute(Sender: TObject);
begin
  ModalShow(TOrdComp);
end;

procedure TMenuGeneral.CXCExecute(Sender: TObject);
begin
  ModalShow(TCxC)
end;

procedure TMenuGeneral.EstadoCuentaExecute(Sender: TObject);
begin
  ModalShow(TEstadoCuenta);
end;

procedure TMenuGeneral.EstadoCuentaPendExecute(Sender: TObject);
begin
  ModalShow(TEstadoCuentaPend);
end;

procedure TMenuGeneral.AgingCXCExecute(Sender: TObject);
begin
  ModalShow(TAgingCXC)
end;

procedure TMenuGeneral.ReporteRemisionesExecute(Sender: TObject);
begin
  ModalShow(TReporteRemisiones)
end;

procedure TMenuGeneral.FisicoExecute(Sender: TObject);
begin
  ModalShow(TFisico);
end;

procedure TMenuGeneral.InvExistenciaExecute(Sender: TObject);
begin
  ModalShow(TInvExistencia);
end;

procedure TMenuGeneral.FacturaListExecute(Sender: TObject);
begin
  ModalShow(TFacturaList);
end;

procedure TMenuGeneral.ReciboListExecute(Sender: TObject);
begin
  ModalShow(tConsultaRecibos);
end;

procedure TMenuGeneral.AutorizacionesExecute(Sender: TObject);
begin
  ModalShow(Tautorizaciones);
end;

procedure TMenuGeneral.VentasporClienteExecute(Sender: TObject);
begin
  if (DMRptVentas = nil) then application.CreateForm(TDMRptVentas, DMRptVentas);

  DMRptVentas.VentasporCliente.close;
  with TParametros.Create(self) do
  begin
    Paginas.Pages[0].TabVisible := True;
    Paginas.Pages[5].TabVisible := True;
    Paginas.Pages[12].TabVisible := True;

    Paginas.TabIndex := 0;
    try
      if Showmodal = mrok then
      begin
        DMRptVentas.VentasporCliente.Parameters[1].Value := savestrtoint(Cliente.text);
        DMRptVentas.VentasporCliente.Parameters[2].Value := Desde.date;
        DMRptVentas.VentasporCliente.Parameters[3].Value := Hasta.date;
        if Producto.text = '' then
          DMRptVentas.VentasporCliente.Parameters[4].Value := Null
        else
          DMRptVentas.VentasporCliente.Parameters[4].Value := Producto.text;
        DMRptVentas.VentasporCliente.open;
        uutiles.ImprimirReporte(DMRptVentas.RptVentasporCliente);
        DMRptVentas.VentasporCliente.close;
      end;
    finally
      free;
    end;
  end;

end;

procedure TMenuGeneral.CarteradeClientesExecute(Sender: TObject);
begin

  if (DMRptVentas = nil) then application.CreateForm(TDMRptVentas, DMRptVentas);

  DMRptVentas.Cartera.close;
  with TParametros.Create(self) do
  begin
       //Paginas.Pages[0].TabVisible := True;
    Paginas.Pages[6].TabVisible := True;
    Paginas.TabIndex := 0;
    try
      if Showmodal = mrok then
      begin
        DMRptVentas.Cartera.Parameters[1].Value := savestrtoint(Vendedor.text);
        DMRptVentas.Cartera.open;
        uutiles.ImprimirReporte(DMRptVentas.RptCartera);
        DMRptVentas.Cartera.close;
      end;
    finally
      free;
    end;
  end;

end;

procedure TMenuGeneral.AlmacenExecute(Sender: TObject);
begin
  ModalShow(TAlmacen);
end;

procedure TMenuGeneral.VentaporVendedorExecute(Sender: TObject);
begin
  if (DMRptVentas = nil) then application.CreateForm(TDMRptVentas, DMRptVentas);

  DMRptVentas.VentasporVendedor.close;
  with TParametros.Create(self) do
  begin
    Paginas.Pages[0].TabVisible := True;
    Paginas.Pages[6].TabVisible := True;
    Paginas.TabIndex := 0;
    try
      if Showmodal = mrok then
      begin
        DMRptVentas.VentasporVendedor.Parameters[1].Value := Desde.date;
        DMRptVentas.VentasporVendedor.Parameters[2].Value := Hasta.date;
        DMRptVentas.VentasporVendedor.Parameters[3].Value := savestrtoint(Vendedor.text);
        DMRptVentas.VentasporVendedor.open;
        uutiles.ImprimirReporte(DMRptVentas.RptVentasporVendedor);
        DMRptVentas.VentasporVendedor.close;
      end;
    finally
      free;
    end;
  end;

end;

procedure TMenuGeneral.InvCierreExecute(Sender: TObject);
begin
  ModalShow(TInvCierre);
end;

procedure TMenuGeneral.CreditosPorDistribuirExecute(Sender: TObject);
begin
  if (DMRptVentas = nil) then application.CreateForm(TDMRptVentas, DMRptVentas);

  DMRptVentas.CreditoPorDistribuir.close;
  with TParametros.Create(self) do
  begin
    Paginas.Pages[0].TabVisible := True;
    Paginas.Pages[5].TabVisible := True;
    Paginas.TabIndex := 0;
    try
      if Showmodal = mrok then
      begin
        DMRptVentas.CreditoPorDistribuir.Parameters[1].Value := Desde.date;
        DMRptVentas.CreditoPorDistribuir.Parameters[2].Value := Hasta.date;
        DMRptVentas.CreditoPorDistribuir.Parameters[3].Value := savestrtoint(Cliente.text);
        DMRptVentas.CreditoPorDistribuir.open;
        uutiles.ImprimirReporte(DMRptVentas.RptCreditoPorDistribuir);
        DMRptVentas.CreditoPorDistribuir.close;
      end;
    finally
      free;
    end;
  end;

end;

procedure TMenuGeneral.InvReqExecute(Sender: TObject);
begin
  ModalShow(TInvReq);
end;

procedure TMenuGeneral.CxcTipoExecute(Sender: TObject);
begin
  ModalShow(TCxcTipo);
end;

procedure TMenuGeneral.ReciboTipoExecute(Sender: TObject);
begin
  ModalShow(TReciboTipo);
end;

procedure TMenuGeneral.MarcaExecute(Sender: TObject);
begin
  ModalShow(TMarca);
end;

procedure TMenuGeneral.ListaPrecioExecute(Sender: TObject);
begin
  ModalShow(TListaPrecio);
end;

procedure TMenuGeneral.RptCxcListExecute(Sender: TObject);
begin
  if (DMRptVentas = nil) then application.CreateForm(TDMRptVentas, DMRptVentas);

  DMRptVentas.CxcList.close;
  with TParametros.Create(self) do
  begin
    Paginas.Pages[0].TabVisible := True;
    Paginas.Pages[8].TabVisible := True;
    Paginas.TabIndex := 0;
    if Showmodal = mrok then
    begin
      DMRptVentas.CxcList.Parameters[1].Value := Desde.date;
      DMRptVentas.CxcList.Parameters[2].Value := Hasta.date;
      DMRptVentas.CxcList.Parameters[3].Value := CxCDoc.EditValue;
      DMRptVentas.CxcList.open;
      uutiles.ImprimirReporte(DMRptVentas.RptCxcList);
      DMRptVentas.CxcList.close;
    end;
    free;
  end;


end;

procedure TMenuGeneral.UnidadExecute(Sender: TObject);
begin
  ModalShow(TUnidad);
end;

procedure TMenuGeneral.InvMovimientoExecute(Sender: TObject);
begin
  ModalShow(TInvMovimiento);
end;

procedure TMenuGeneral.InvMovimientoProdExecute(Sender: TObject);
begin
  ModalShow(TInvMovimientoProd);
end;

procedure TMenuGeneral.InvEntradasSalidasExecute(Sender: TObject);
begin
  if (DMRptVentas = nil) then application.CreateForm(TDMRptVentas, DMRptVentas);

  DMRptVentas.InvEntradasSalidas.close;
  with TParametros.Create(self) do
  begin
    Paginas.Pages[0].TabVisible := True;
    Paginas.Pages[11].TabVisible := True;
    Paginas.TabIndex := 0;
    try
      if Showmodal = mrok then
      begin
        DMRptVentas.InvEntradasSalidas.close;
        DMRptVentas.InvEntradasSalidas.Parameters[1].Value := Desde.date;
        DMRptVentas.InvEntradasSalidas.Parameters[2].Value := Hasta.date;
        DMRptVentas.InvEntradasSalidas.Parameters[3].Value := EntSal.EditValue;
        DMRptVentas.InvEntradasSalidas.open;
        uutiles.ImprimirReporte(DMRptVentas.RptInvEntradasSalidas);
        DMRptVentas.InvEntradasSalidas.close;
      end;
    finally
      free;
    end;
  end;

end;

procedure TMenuGeneral.InvEntSalDetExecute(Sender: TObject);
begin
  ModalShow(TInvEntSalDet);
end;

procedure TMenuGeneral.DevolucionExecute(Sender: TObject);
begin
  ModalShow(TDevolucion);
end;

procedure TMenuGeneral.FacturaRecExecute(Sender: TObject);
begin
  ModalShow(TFacturaRec);
end;

procedure TMenuGeneral.GenerarFactRecExecute(Sender: TObject);
begin
  ModalShow(TGenerarFactRec);
end;

procedure TMenuGeneral.TasaExecute(Sender: TObject);
begin
  ModalShow(TTasa);
end;

procedure TMenuGeneral.CentroCostoTreeExecute(Sender: TObject);
begin
  ModalShow(TCentroCostoTree);
end;

procedure TMenuGeneral.RPTFacturasXCobradorExecute(Sender: TObject);
begin
  ModalShow(TRPTFacturasXCobrador);
end;

procedure TMenuGeneral.LogsViewExecute(Sender: TObject);
begin
  ModalShow(TLogsView);
end;

procedure TMenuGeneral.SpeedButton4Click(Sender: TObject);
begin
  ModalShow(TProMov, ShowInsert, true, 'Salida', false);
end;

procedure TMenuGeneral.SpeedButton3Click(Sender: TObject);
begin
  ModalShow(TProMov, ShowInsert, false, 'Salida', false);
end;

procedure TMenuGeneral.ProMovTipoExecute(Sender: TObject);
begin
  ModalShow(TProMovTipo);
end;

procedure TMenuGeneral.ClienteCondicionExecute(Sender: TObject);
begin
  ModalShow(tClienteCondicion);
end;

procedure TMenuGeneral.ClienteGrupoExecute(Sender: TObject);
begin
  ModalShow(tClienteGrupo);
end;

procedure TMenuGeneral.ZonaExecute(Sender: TObject);
begin
  ModalShow(TZona);
end;

procedure TMenuGeneral.CambiarPreciosExecute(Sender: TObject);
begin
  ModalShow(TCambiarPrecios);
end;

procedure TMenuGeneral.ClienteTipoExecute(Sender: TObject);
begin
  ModalShow(TClienteTipo);
end;

procedure TMenuGeneral.ClienteRptExecute(Sender: TObject);
begin
  ModalShow(TClienteRpt);
end;

procedure TMenuGeneral.PagoFormaExecute(Sender: TObject);
begin
  Modalshow(TPagoForma);
end;

procedure TMenuGeneral.CuadreCajaExecute(Sender: TObject);
begin
  ModalShow(TCuadreCaja);
end;

procedure TMenuGeneral.DevolucionListExecute(Sender: TObject);
begin
  ModalShow(TDevolucionList);
end;

procedure TMenuGeneral.CotizacionListExecute(Sender: TObject);
begin
  ModalShow(TCotizacionList);
end;

procedure TMenuGeneral.VentasLineGrpProdExecute(Sender: TObject);
begin
  ModalShow(TVentasLineGrpProd);
end;

procedure TMenuGeneral.VentasporVendedorExecute(Sender: TObject);
begin
  Modalshow(TVentasporVendedor);
end;

procedure TMenuGeneral.CobrosporVendedorExecute(Sender: TObject);
begin
  ModalShow(TCobrosporVendedor);
end;

procedure TMenuGeneral.VentaporClienteAnualExecute(Sender: TObject);
begin
  ModalShow(TVentaporClienteAnual);
end;

procedure TMenuGeneral.ConsultaRecibosDevueltosExecute(Sender: TObject);
begin
  ModalShow(tConsultaRecibosDevueltos);
end;

procedure TMenuGeneral.VentaZonaGrupoAnualExecute(Sender: TObject);
begin
  ModalShow(TVentaZonaGrupoAnual);
end;

procedure TMenuGeneral.NotInDataCollactorExecute(Sender: TObject);
begin
  ModalShow(tNotInDataCollactor);
end;

procedure TMenuGeneral.PuntoReordenExecute(Sender: TObject);
begin
  ModalShow(TPuntoReorden);
end;

procedure TMenuGeneral.ConsultaClienteLimiteCrBalanceExecute(
  Sender: TObject);
begin
  ModalShow(tConsultaClienteLimiteCrBalance);
end;

procedure TMenuGeneral.VentasXGrupo12MesesExecute(Sender: TObject);
begin
  ModalShow(tVentasXGrupo12Meses);
end;

procedure TMenuGeneral.RefrescarAcciones;
var
  i: Integer;
begin
  application.Title := dm.ConfiguracionTituloApp.AsString;
  self.Caption := application.Title;

  for i := 0 to acciones.ActionCount - 1 do
  begin
    if TAction(acciones.Actions[i]).Tag <> 5 then //las acciones de salir y logoff no deben verificar seguridad
      TAction(acciones.Actions[i]).enabled := (dm.TienepermisoShow(pAbrir, (dm.apppermisos(acciones.Actions[i].name,
        (acciones.Actions[i] as Taction).Caption,
        (acciones.Actions[i] as Taction).Category))));
  end;
end;

procedure TMenuGeneral.SelEmpresaExecute(Sender: TObject);
begin
  CallSelEmpresa(False);
end;

procedure TMenuGeneral.ImprimirEtiquetasExecute(Sender: TObject);
begin
  ModalShow(tImprimirEtiquetas);
end;

procedure TMenuGeneral.CodificacionfacturaExecute(Sender: TObject);
begin
  MostrarConsultaExcel('svSoporteEntradaContVentas');
end;

procedure TMenuGeneral.CallSelEmpresa(TermOnCancel: Boolean);
begin
  ConexionStr := BuscarConStrEmpresa(dmRepository.UsuarioActual, TermOnCancel);
  if (TermOnCancel) and (ConexionStr = '') then
    Application.Terminate;
  if ConexionStr <> '' then
  begin
    dm.AbrirCompania(ConexionStr);
    RefrescarAcciones;
  end;
end;

procedure TMenuGeneral.AccionesExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  if (SetSegModeON.Checked) and (Action.Tag <> 5) then begin
    ModalShow(TSeguridad, ShowFind, Action.Name, 'Objeto', false);
    Handled := true;
  end;
end;

procedure TMenuGeneral.SetSegModeONExecute(Sender: TObject);
begin
  if dm.Tienepermiso(pAbrir, dm.apppermisos('Seguridad'), 'Acceso de Seguridad') then
    SetSegModeON.Checked := not (SetSegModeON.Checked);
  if SetSegModeON.Checked then
    HabilitarAcciones
  else
    RefrescarAcciones;
end;

procedure TMenuGeneral.VentasdeProductosResumenMonedaExecute(
  Sender: TObject);
begin

  if (DMRptVentas = nil) then application.CreateForm(TDMRptVentas, DMRptVentas);

  DMRptVentas.VentasdeProductosResumenM.close;
  with TParametros.Create(self) do
  begin
    Paginas.Pages[0].TabVisible := True;
    Paginas.TabIndex := 0;
    if Showmodal = mrok then
    begin
      DMRptVentas.VentasdeProductosResumenM.Parameters[1].Value := Desde.date;
      DMRptVentas.VentasdeProductosResumenM.Parameters[2].Value := Hasta.date;
      DMRptVentas.VentasdeProductosResumenM.open;
      uutiles.ImprimirReporte(DMRptVentas.RptVentasdeProductosResumenM);
      DMRptVentas.VentasdeProductosResumenM.close;
    end;
    free;
  end;
end;

procedure TMenuGeneral.GrupoClienteExecute(Sender: TObject);
begin
  ModalShow(tGrupoCliente);
end;

procedure TMenuGeneral.VentasPorProductosExecute(Sender: TObject);
begin
  ModalShow(tVentasPorProductos);
end;

procedure TMenuGeneral.ClasificacionTipoAnulacionExecute(Sender: TObject);
begin
  ModalShow(tClasificacionTipoAnulacion);
end;

procedure TMenuGeneral.ToDgiiNcfVentasExecute(Sender: TObject);
begin
  ModalShow(tToDgiiNcfVentas);
end;

procedure TMenuGeneral.HabilitarAcciones;
var
  i: Integer;
begin
  for i := 0 to acciones.ActionCount - 1 do
  begin
    if TAction(acciones.Actions[i]).Tag <> 5 then //las acciones de salir y logoff no deben verificar seguridad
      TAction(acciones.Actions[i]).enabled := True;
  end;
end;

procedure TMenuGeneral.VentasPorClienteSegExecute(Sender: TObject);
begin
  ModalShow(tVentasPorClienteSeg);
end;

procedure TMenuGeneral.dxNavBar1Item5Click(Sender: TObject);
begin
  ModalShow(TProMov, ShowInsert, true, 'Salida', false);
end;

procedure TMenuGeneral.dxNavBar1Item6Click(Sender: TObject);
begin
  ModalShow(TProMov, ShowInsert, false, 'Salida', false);
end;

procedure TMenuGeneral.CatalogoProductosExecute(Sender: TObject);
begin
  ModalShow(TCatalogoProductos);
end;

procedure TMenuGeneral.ProductoDetalleExecute(Sender: TObject);
begin
  ModalShow(TProductoDetalle);
end;

procedure TMenuGeneral.MantAnotacionExecute(Sender: TObject);
begin
  ModalShow(TmantAnotacion);
end;

procedure TMenuGeneral.SelNominaExecute(Sender: TObject);
begin
  ModalShow(TSelNomina);
end;

procedure TMenuGeneral.HorarioExecute(Sender: TObject);
begin
  ModalShow(THorario);
end;

procedure TMenuGeneral.TipoExecute(Sender: TObject);
begin
  ModalShow(TTipo);
end;

procedure TMenuGeneral.TransaccionDefExecute(Sender: TObject);
begin
  ModalShow(TtransaccionDef);
end;

procedure TMenuGeneral.CxCEmpleadosExecute(Sender: TObject);
begin
  ModalShow(TCxCEmpleados);
end;

procedure TMenuGeneral.EmpleadoRollExecute(Sender: TObject);
begin
  ModalShow(TEmpleadoRoll);
end;

procedure TMenuGeneral.RptT60Execute(Sender: TObject);
begin
  if (dmReportes2 = nil) then application.CreateForm(TdmReportes2, dmReportes2);
  if (RptParams = nil) then application.CreateForm(TRptParams, RptParams);

  with RptParams do
  begin
    if Showmodal = mrok then
    begin
      if (dmReportes2 = nil) then application.CreateForm(TdmReportes2, dmReportes2);
      dmReportes2.T60.Parameters[1].Value := Desde.date;
      dmReportes2.T60.Parameters[2].value := tn.KeyValue;
      dmReportes2.T60.Parameters[3].value := te.KeyValue;
      if dmReportes2.T60.active then dmReportes2.T60.requery else dmReportes2.T60.Open;
      uutiles.ImprimirReporte(dmReportes2.rptT60);
    end;
    hide;
  end;

end;

procedure TMenuGeneral.RptInfotepExecute(Sender: TObject);
begin
  if (dmReportes2 = nil) then application.CreateForm(TdmReportes2, dmReportes2);
  if (RptParams = nil) then application.CreateForm(TRptParams, RptParams);

  with RptParams do
  begin
    if Showmodal = mrok then
    begin
      if (dmReportes2 = nil) then application.CreateForm(TdmReportes2, dmReportes2);
      dmReportes2.Infotep.Parameters[1].Value := Desde.date;
      dmReportes2.Infotep.Parameters[2].value := tn.KeyValue;
      dmReportes2.Infotep.Parameters[3].value := te.KeyValue;
      if dmReportes2.Infotep.active then dmReportes2.Infotep.requery else dmReportes2.Infotep.Open;
      uutiles.ImprimirReporte(dmReportes2.rptInfotep);

    end;
    hide;
  end;

end;

procedure TMenuGeneral.RptSegAccExecute(Sender: TObject);
begin
  if (dmReportes2 = nil) then application.CreateForm(TdmReportes2, dmReportes2);
  if (RptParams = nil) then application.CreateForm(TRptParams, RptParams);

  with RptParams do
  begin
    if Showmodal = mrok then
    begin
      if (dmReportes2 = nil) then application.CreateForm(TdmReportes2, dmReportes2);
      dmReportes2.SegAcc.Parameters[1].Value := Desde.date;
      dmReportes2.SegAcc.Parameters[2].value := tn.KeyValue;
      dmReportes2.SegAcc.Parameters[3].value := te.KeyValue;
      if dmReportes2.SegAcc.active then dmReportes2.SegAcc.requery else dmReportes2.SegAcc.Open;
      uutiles.ImprimirReporte(dmReportes2.rptSegAcc);
    end;
    hide;
  end;
end;

procedure TMenuGeneral.RptIR4Execute(Sender: TObject);
begin
  if (dmReportes2 = nil) then application.CreateForm(TdmReportes2, dmReportes2);
  if (RptParams = nil) then application.CreateForm(TRptParams, RptParams);

  with RptParams do
  begin
    if Showmodal = mrok then
    begin
      if (dmReportes2 = nil) then application.CreateForm(TdmReportes2, dmReportes2);
      dmReportes2.IR4.Close();
      dmReportes2.IR4.Parameters[1].Value := Desde.date;
      dmReportes2.IR4.Parameters[2].value := tn.KeyValue;
      dmReportes2.IR4.Parameters[3].value := te.KeyValue;
      dmReportes2.IR4.Open;
      uutiles.ImprimirReporte(dmReportes2.rptIR4);
    end;
    hide;
  end;
end;

procedure TMenuGeneral.AFPExecute(Sender: TObject);
begin
  if (dmReportes2 = nil) then application.CreateForm(TdmReportes2, dmReportes2);
  if (RptParams = nil) then application.CreateForm(TRptParams, RptParams);

  with RptParams do
  begin
    if Showmodal = mrok then
    begin
      if (dmReportes2 = nil) then application.CreateForm(TdmReportes2, dmReportes2);
      dmReportes2.AFP.Parameters[1].Value := Desde.date;
      dmReportes2.AFP.Parameters[2].value := tn.KeyValue;
      dmReportes2.AFP.Parameters[3].value := te.KeyValue;
      if dmReportes2.IR4.active then dmReportes2.IR4.requery else dmReportes2.AFP.Open;
      uutiles.ImprimirReporte(dmReportes2.rptAFP);
         //Reportes2;
    end;
    hide;
  end;
end;

procedure TMenuGeneral.VacacionesExecute(Sender: TObject);
begin
  if (dmReportes2 = nil) then application.CreateForm(TdmReportes2, dmReportes2);
  with TParametros.Create(self) do
  begin
    Paginas.Pages[0].TabVisible := True;
//       Paginas.Pages[5].TabVisible := True;
    Paginas.TabIndex := 0;
    try
      if Showmodal = mrok then
      begin
        if (dmReportes2 = nil) then application.CreateForm(TdmReportes2, dmReportes2);
        dmReportes2.Vacaciones.Parameters[1].Value := Desde.date;
        dmReportes2.Vacaciones.Parameters[2].Value := Hasta.date;
        if dmReportes2.Vacaciones.active then dmReportes2.Vacaciones.requery else dmReportes2.Vacaciones.Open;
        uutiles.ImprimirReporte(dmReportes2.RPTVacaciones);
      end;
    finally
      free;
    end;
  end;

end;

procedure TMenuGeneral.ToAFPExecute(Sender: TObject);
begin
  ModalShow(TToAFP);
end;

procedure TMenuGeneral.IR13Execute(Sender: TObject);
begin
  if (dmReportes2 = nil) then application.CreateForm(TdmReportes2, dmReportes2);
  with TParametros.Create(self) do
  begin
    Paginas.Pages[0].TabVisible := True;
    Paginas.TabIndex := 0;
    try
      if Showmodal = mrok then
      begin
        if (dmReportes2 = nil) then
          application.CreateForm(TdmReportes2, dmReportes2);

        dmReportes2.IR13.Close();
        dmReportes2.IR13.Parameters[1].Value := Desde.date;
        dmReportes2.IR13.Parameters[2].value := Hasta.Date;
        dmReportes2.IR13.Open();
            //if dmReportes2.IR13.active then dmReportes2.IR13.requery else dmReportes2.IR13.Open;
        uutiles.ImprimirReporte(dmReportes2.rptIR13);
      end;
    finally
      free;
    end;
  end;
end;

procedure TMenuGeneral.ResumenTransSeccionExecute(Sender: TObject);
begin
  if (dmReporte = nil) then application.CreateForm(TdmReporte, dmReporte);
  with TParametros.Create(self) do
  begin
    Paginas.Pages[0].TabVisible := True;
    Paginas.TabIndex := 0;
    try
      if Showmodal = mrok then
      begin
        dmReporte.spRptResumenTransSeccion.Close;
        dmReporte.spRptResumenTransSeccion.Parameters.ParamByName('@Desde').Value := Desde.Date;
        dmReporte.spRptResumenTransSeccion.Parameters.ParamByName('@Hasta').Value := Hasta.Date;
        dmReporte.spRptResumenTransSeccion.Open;

        uutiles.ImprimirReporte(dmReporte.rptResumenTransSeccion);

        dmReporte.spRptResumenTransSeccion.Close;
      end;
    finally
      free;
    end;
  end;
end;

procedure TMenuGeneral.ResumenTransDptoExecute(Sender: TObject);
begin
  if (dmReporte = nil) then application.CreateForm(TdmReporte, dmReporte);
  with TParametros.Create(self) do
  begin
    Paginas.Pages[0].TabVisible := True;
    Paginas.TabIndex := 0;
    try
      if Showmodal = mrok then
      begin
        dmReporte.spRptResumenTransDpto.Close;
        dmReporte.spRptResumenTransDpto.Parameters.ParamByName('@Desde').Value := Desde.Date;
        dmReporte.spRptResumenTransDpto.Parameters.ParamByName('@Hasta').Value := Hasta.Date;
        dmReporte.spRptResumenTransDpto.Open;

        uutiles.ImprimirReporte(dmReporte.rptResumenTransDpto);

        dmReporte.spRptResumenTransDpto.Close;
      end;
    finally
      free;
    end;
  end;
end;

procedure TMenuGeneral.ReportesConfiguradosExecute(Sender: TObject);
begin
  ModalShow(TReportesConfigurados);
end;

procedure TMenuGeneral.ReporteConfigurableExecute(Sender: TObject);
begin
  ModalShow(tReporteConfiguracion);
end;

procedure TMenuGeneral.ResTransXClienteExecute(Sender: TObject);
begin
  if (dmReporte = nil) then application.CreateForm(TdmReporte, dmReporte);
  with TParametros.Create(self) do
  begin
    Paginas.Pages[0].TabVisible := True;
    Paginas.Pages[15].TabVisible := True;
    Paginas.TabIndex := 0;
    try
      if Showmodal = mrok then
      begin
        dmReporte.spResTransEmpleado.Close;
        dmReporte.spResTransEmpleado.Parameters.ParamByName('@Desde').Value := Desde.Date;
        dmReporte.spResTransEmpleado.Parameters.ParamByName('@Hasta').Value := Hasta.Date;
        dmReporte.spResTransEmpleado.Parameters.ParamByName('@TipoTransaccionId').Value := SaveStrToInt(edtTipoTransaccion.Text);
        dmReporte.spResTransEmpleado.Open;

        uutiles.ImprimirReporte(dmReporte.rptResTransEmpleado);

        dmReporte.spResTransEmpleado.Close;
      end;
    finally
      free;
    end;
  end;
end;

procedure TMenuGeneral.AcumuladoEmpleadoExecute(Sender: TObject);
begin
  ModalShow(tAcumuladoEmpleado);
end;

procedure TMenuGeneral.PrestacionesExecute(Sender: TObject);
begin
  ModalShow(tPrestaciones);
end;


procedure TMenuGeneral.ListadoEmpleadoExecute(Sender: TObject);
begin
  ModalShow(tListadoEmpleado);
end;

procedure TMenuGeneral.DGT3Execute(Sender: TObject);
begin
  ModalShow(TDGT3);

 { if (dmReportes2 = nil) then application.CreateForm(TdmReportes2, dmReportes2);
  if (RptParams = nil) then application.CreateForm(TRptParams, RptParams);

  with RptParams do
  begin
    Desde.Visible := False;
    Hasta.Visible := False;
    tn.Visible := False;
    Label1.Visible := False;
    Label2.Visible := False;
    Label3.Visible := False;
    if Showmodal = mrok then
    begin
      if (dmReportes2 = nil) then application.CreateForm(TdmReportes2, dmReportes2);
      dmReportes2.spGovDGT3.Close();
      dmReportes2.spGovDGT3.Parameters.ParamByName('@TipoEmpleadoId').Value := te.KeyValue;
      dmReportes2.spGovDGT3.Open;
      uutiles.ImprimirReporte(dmReportes2.rptGovDGT3);
    end;
    hide;
  end;    }
end;

procedure TMenuGeneral.CreditoISRExecute(Sender: TObject);
begin
  ModalShow(tCreditoISR);
end;

procedure TMenuGeneral.DGT4Execute(Sender: TObject);
begin
  ModalShow(tDGT4);
end;

procedure TMenuGeneral.RPTNominaPeriodoExecute(Sender: TObject);
begin
  ModalShow(TRPTNominaPeriodo);
end;

procedure TMenuGeneral.EmpleadoExecute(Sender: TObject);
begin
  ModalShow(TEmpleado);
end;

procedure TMenuGeneral.svEmpleadoExecute(Sender: TObject);
begin
  ModalShow(TsvEmpleado);
end;

procedure TMenuGeneral.DepartamentoExecute(Sender: TObject);
begin
  ModalShow(TDepartamento);
end;

function TMenuGeneral.ModalShowFunc(Tf: TFormClass): TModalResult;
begin
  with Tf.Create(Application) do begin
    try
      Result := ShowModal();
    finally
      Release();
    end;
  end;
end;

procedure TMenuGeneral.fMantSuplidoresExecute(Sender: TObject);
begin
  ModalShow(TfMantSuplidores);
end;

procedure TMenuGeneral.fMantDocumentosExecute(Sender: TObject);
begin
  ModalShow(TfMantDocumentos, showbrowse, 1, 'IdTrans', False);
end;

procedure TMenuGeneral.fAgingCXPExecute(Sender: TObject);
begin
  ModalShow(TfAgingCXP);

end;

procedure TMenuGeneral.MantSolicitudesExecute(Sender: TObject);
begin
  ModalShowFunc(TMantSolicitudes);
end;



procedure TMenuGeneral.fRelacionCksExecute(Sender: TObject);
begin
  ModalShow(TfRelacionCks);
end;

procedure TMenuGeneral.RelacionDocumentosExecute(Sender: TObject);
begin
  ModalShow(TRelacionDocumentos);

end;

procedure TMenuGeneral.ModificarChequeExecute(Sender: TObject);
begin
  ModalShow(TMantNcr, showBrowse, 20, 'idTrans', False);

end;

procedure TMenuGeneral.MantTipoSupsExecute(Sender: TObject);
begin
  ModalShow(TMantTipoSups);

end;

procedure TMenuGeneral.MantBancosExecute(Sender: TObject);
begin
  ModalShow(TMantBancos);

end;

procedure TMenuGeneral.MantImpuestosExecute(Sender: TObject);
begin
  ModalShow(TMantImpuestos);

end;

procedure TMenuGeneral.CreditosNoDistrExecute(Sender: TObject);
begin
  ModalShow(TCreditosNoDistr);
end;

procedure TMenuGeneral.MantRetencionesExecute(Sender: TObject);
begin
  ModalShow(TMantRetenciones);
end;


procedure TMenuGeneral.ListadoSuplidoresExecute(Sender: TObject);
begin
  uReporteSuplidores.ImprimirReporte();
end;



procedure TMenuGeneral.RemisionGastosDGIIExecute(Sender: TObject);
begin
  ModalShow(TRemisionGastosDGII);
end;

procedure TMenuGeneral.ReporteItbisRetExecute(Sender: TObject);
begin
  ModalShow(TReporteItbisRet);
end;

procedure TMenuGeneral.GastosMenoresExecute(Sender: TObject);
begin
  ModalShow(TGastosMenores);
end;


procedure TMenuGeneral.EntradaDiarioExecute(Sender: TObject);
begin
  ModalShow(TEntradaDiario);
end;


procedure TMenuGeneral.TransXCuentaExecute(Sender: TObject);
begin
  with TTransXCuenta.Create(Application) do begin
    ShowModal();
    Release();
  end;
end;

procedure TMenuGeneral.MantConceptosExecute(Sender: TObject);
begin
  with TMantConceptos.Create(Application) do begin
    ShowModal();
    Release();
  end;
end;

procedure TMenuGeneral.fMarcarDepositosExecute(Sender: TObject);
begin
  ModalShow(TfMarcarDepositos);
end;

procedure TMenuGeneral.fMarcarCksExecute(Sender: TObject);
begin
  ModalShow(TfMarcarCks);
end;

procedure TMenuGeneral.fCksTransitoExecute(Sender: TObject);
begin
  ModalShow(TfCksTransito);
end;

procedure TMenuGeneral.fCksPagadosExecute(Sender: TObject);
begin
  ModalShow(TfCksPagados);
end;

procedure TMenuGeneral.fDisponibilidadExecute(Sender: TObject);
begin
  ModalShow(TfDisponibilidad);
end;

procedure TMenuGeneral.MantConciliacionExecute(Sender: TObject);
begin
  ModalShow(TMantConciliacion);
end;

procedure TMenuGeneral.DocumentoBancoExecute(Sender: TObject);
//var
//  i: Integer;
begin
  ModalShow(TDocumentoBanco);

 { if dm.TienepermisoShow(pAbrir,(dm.apppermisos('MantDocumentosBco') ) ) then begin
    i := BuscarIdtrans();
    if i > 0 then begin
      with TMantDocumentosbco.Create(Application) do begin
        idTrans := i;
        Nuevo();
        ShowModal();
        Release();
      end;
    end;
  end
  else
    raise exception.Create('Permiso denegado, consulte su administrador');
  }
end;

procedure TMenuGeneral.fDepsTransitoExecute(Sender: TObject);
begin
  ModalShow(TfDepsTransito);
end;

procedure TMenuGeneral.CatalogoCuentasExecute(Sender: TObject);
begin
  ModalShow(TCatalogoCuentas);
end;

procedure TMenuGeneral.MantEntradaExecute(Sender: TObject);
begin
  ModalShow(TMantEntrada);
end;

procedure TMenuGeneral.CuentasPrimaExecute(Sender: TObject);
begin
  ModalShow(TCuentasPrima);
end;

procedure TMenuGeneral.fEditarEstadosExecute(Sender: TObject);
begin
  ModalShow(TfEditarEstados);
end;

procedure TMenuGeneral.MantFactoresExecute(Sender: TObject);
begin
  ModalShow(TMantFactores);
end;

procedure TMenuGeneral.MantDistribucionesExecute(Sender: TObject);
begin
  ModalShow(TMantDistribuciones);
end;

procedure TMenuGeneral.MantEDRecurrenteExecute(Sender: TObject);
begin
  ModalShow(TMantEDRecurrente);
end;

procedure TMenuGeneral.GenEDRecurrenteExecute(Sender: TObject);
begin
  ModalShow(TGenEDRecurrente);
end;

procedure TMenuGeneral.MantFactoresMesExecute(Sender: TObject);
begin
  ModalShow(TMantFactoresMes);
end;

procedure TMenuGeneral.RestoreBackUpExecute(Sender: TObject);
begin
  ModalShow(TRestoreBackUp);
end;

procedure TMenuGeneral.ImprimirEstadosExecute(Sender: TObject);
begin
  ModalShow(TImprimirEstados);
end;

procedure TMenuGeneral.BalanzaComprobacionExecute(Sender: TObject);
begin
  ModalShow(TBalanzaComprobacion);
end;

procedure TMenuGeneral.MayorGeneralExecute(Sender: TObject);
begin
  ModalShow(TMayorGeneral);
end;

procedure TMenuGeneral.ResumenEntradasExecute(Sender: TObject);
begin
  ModalShow(TResumenEntradas)
end;

procedure TMenuGeneral.CuadreEntradasExecute(Sender: TObject);
begin
  ModalShow(TCuadreEntradas);
end;

procedure TMenuGeneral.CierreDiarioExecute(Sender: TObject);
begin
  ModalShow(TCierreDiario);
end;

procedure TMenuGeneral.HacerBackupExecute(Sender: TObject);
begin
  if sd.Execute() then
    gldm.HacerBackup(sd.FileName);
end;

procedure TMenuGeneral.GenerarEntradasExecute(Sender: TObject);
begin
  ModalShow(tGenerarEntradas);
end;

procedure TMenuGeneral.PeriodoExecute(Sender: TObject);
begin
  ModalShow(TPeriodo);
end;

procedure TMenuGeneral.MantNCRExecute(Sender: TObject);
begin
  ModalShow(TMantNcr, showBrowse, 25, 'idTrans', False);
end;

procedure TMenuGeneral.PagoACHExecute(Sender: TObject);
begin
  ModalShow(TMantNcr, showBrowse, 29, 'idTrans', False);
end;

procedure TMenuGeneral.FormResize(Sender: TObject);
var x: Double;
begin
  //cxImage1.Left := (ClientWidth - cxImage1.Width) div 2;
  //cxImage1.Top := (ClientHeight - cxImage1.Height) div 2;

  x := (ClientWidth * 42);

  Chart1.Width := Floor((x / 100));

  //Chart2.Width := Floor((x / 100));
  //Chart2.Left := (ClientWidth - Chart1.Width);

  //Chart3.Width := Floor((x / 100));

  //Chart4.Width := Floor((x / 100));
  //Chart4.Left := (ClientWidth - Chart3.Width);
end;

procedure TMenuGeneral.QuickListExecute(Sender: TObject);
begin
  ModalShow(TQuickList);
end;

procedure TMenuGeneral.GastosPorCentroCostoExecute(Sender: TObject);
begin
  ModalShow(TGastosPorCentroCosto);
end;

procedure TMenuGeneral.ConfigurarPCExecute(Sender: TObject);
begin
  ModalShow(TConfigurarPC);
end;

procedure TMenuGeneral.RetencionesExecute(Sender: TObject);
begin
  ModalShow(TRetenciones);
end;

procedure TMenuGeneral.FactorDistribExecute(Sender: TObject);
begin
  ModalShow(TFactorDistrib);
end;

procedure TMenuGeneral.MantTransParaPrestacionesExecute(Sender: TObject);
begin
  ModalShow(TMantTransParaPrestaciones);
end;

procedure TMenuGeneral.FacturasAbiertasExecute(Sender: TObject);
begin
  ModalShow(TFacturasAbiertas);
end;

procedure TMenuGeneral.MantActivosExecute(Sender: TObject);
begin
  ModalShow(TmantActivos);
end;

procedure TMenuGeneral.MantUbicacionesExecute(Sender: TObject);
begin
  ModalShow(TMantUbicaciones);
end;

procedure TMenuGeneral.MantCategoriaExecute(Sender: TObject);
begin
  ModalShow(TMantCategoria);
end;

procedure TMenuGeneral.MantClasesExecute(Sender: TObject);
begin
  ModalShow(TMantClases);
end;

procedure TMenuGeneral.MainActivosExecute(Sender: TObject);
begin
  ModalShow(TMainActivos);
end;

procedure TMenuGeneral.GenDepreciacionExecute(Sender: TObject);
begin
  with TParametros.Create(self) do
  begin
    Paginas.Pages[1].TabVisible := True;
    Paginas.TabIndex := 0;
    try
      if Showmodal = mrok then
        dmActivos.GenDepreciacion(Fecha.Date);
    finally
      Release();
    end;
  end;
end;

procedure TMenuGeneral.ListaActivosExecute(Sender: TObject);
begin
  uReporteActivos.ImprimirReporte;
end;

procedure TMenuGeneral.ReporteDepreciacionExecute(Sender: TObject);
begin
  with TParametros.Create(self) do
  begin
    Paginas.Pages[1].TabVisible := True;
    Paginas.TabIndex := 0;
    try
      if Showmodal = mrok then
        dmActivos.ImprimirListaDepr(Fecha.Date, False);
    finally
      Release();
    end;
  end;
end;

procedure TMenuGeneral.DepResumidoExecute(Sender: TObject);
begin
  with TParametros.Create(self) do
  begin
    Paginas.Pages[1].TabVisible := True;
    Paginas.TabIndex := 0;
    try
      if Showmodal = mrok then
        dmActivos.ImprimirListaDepr(Fecha.Date, True);
    finally
      Release();
    end;
  end;
end;

procedure TMenuGeneral.ConsultaActivoDepreciacionExecute(Sender: TObject);
begin
  ModalShow(tConsultaActivoDepreciacion);
end;

procedure TMenuGeneral.ListadoActivosExecute(Sender: TObject);
begin
  ModalShow(tListadoActivos);
end;

procedure TMenuGeneral.AjusteInfExecute(Sender: TObject);
begin
  ModalShow(TAjusteInf);
end;

procedure TMenuGeneral.RemisionManualExecute(Sender: TObject);
begin
  ModalShow(TRemisionManual);
end;

procedure TMenuGeneral.fGenEDCierreExecute(Sender: TObject);
begin
  ModalShow(TfGenEDCierre);
end;

procedure TMenuGeneral.EjecutarConsulta;
var
  SQL: string;
  ado: TADODataSet;
begin
  Chart1.Visible := False;


  Chart1.AxisVisible := False;


  Chart1.Title.Visible := False;


  // Crear la lista de threads
  ThreadList := TObjectList.Create();
  ThreadList.OwnsObjects := False;

  // listado de query a fabricarse con un top de 4, el usuario dira si quiere barra, pastel o linea
  // el usuario dira la posicion del grafico, si es el primero, segundo, tercero o cuarto.

  ado := TADODataSet.Create(nil);
  try
    ado.ConnectionString := ConexionStr;
    ado.CommandType := cmdStoredProc;
    ado.CommandText := 'UserinGrafico';
    ado.Parameters.Refresh;
    ado.Parameters[1].Value := dm.UsuarioActual();
    ado.Open;
  finally
  end;

  // recorro ese listado y los voy ejecutando
  with ado do
  begin
    First;
    while not Eof do
    begin
      // Leer Sentencias SQL
      try
        numThreads := 0;

        SQL := 'EXEC ' + ado.FieldByName('procedimiento').AsString;
        Screen.Cursor := crSQLWait;

        // utilizar Threads
        EjecutarSQLThread(ConexionStr, SQL, ado.FieldByName('Nombre').AsString, ado.FieldByName('TipoGrafico').AsInteger, ado.FieldByName('Posicion').AsInteger);

      finally
        Screen.Cursor := crDefault;
      end;

      Next;
    end;
  end;
end;

procedure TMenuGeneral.EjecutarSQLThread(AConnection, ASQL, nombre: string; tipoGrafico, posicion: integer);
var
  th: TADOSQLThread;
begin
  // incrementa contador de thread
  inc(numThreads);

  // crear el Thread
  th := TADOSQLThread.Create(True, AConnection, ASQL);

  // Añadirlo a la lista
  ThreadList.Add(th);

  th.tipoGrafico := (tipoGrafico - 1);
  th.posicion := posicion;
  th.Nombre := nombre;

  // evento finalizacion
  th.OnTerminate := TerminarThread;

  // Ejecutarlo
  th.Resume;
end;

procedure TMenuGeneral.contruirGrafico(qryData: TADOQuery; _tipoGrafico, _posicion: integer; _nombre: string);
var
  Columna, i: integer;
begin
  case _posicion of
    1:
      Chart1.Series[_tipoGrafico].Clear;

  end;

  for Columna := 0 to qryData.FieldCount - 1 do
  begin
    case _posicion of
      1:
        begin
          with Chart1 do
          begin
            //recorro las serie y solo dejo activa la que voy a mostrar
            for i := 0 to SeriesCount - 1 do
              Series[i].Active := (i = _tipoGrafico);

            Series[_tipoGrafico].AddY(qryData.Fields[Columna].AsFloat, qryData.Fields[Columna].DisplayName);
            Series[_tipoGrafico].Marks.Style := smsPercent;
            Series[_tipoGrafico].ColorEachPoint := TRUE;
            Title.Text.Clear;
            Title.Color := clWhite;
            Title.Text.Add(_nombre);
            LeftAxis.Title.Caption := 'Monto en Pesos';
            LeftAxis.Title.Font.Color := clRed;
            BottomAxis.Title.Font.Color := clRed;
            BottomAxis.LabelStyle := talText;
            BottomAxis.LabelsAngle := 90;
            Legend.LegendStyle := lsValues;
            Legend.TextStyle := ltsLeftValue;
            Legend.Visible := True;

            if Screen.FormCount <= 2 then
            begin
              //Visible := TRUE;
              AxisVisible := TRUE;
              Title.Visible := TRUE;
            end;
          end;
        end;
      
    end;
  end;
end;

procedure TMenuGeneral.TerminarThread(Sender: TObject);
var
  str: string;
  th: TADOSQLThread;
  timeSQL: TDateTime;
begin
  // Thread
  th := TADOSQLThread(Sender);

  // decrementar activos
  dec(numThreads);

  //DataSource1.DataSet := th.ADOQ;

  contruirGrafico(th.ADOQ, th.tipoGrafico, th.posicion, th.Nombre);

  // Han terminado todos
  if (numThreads = 0) then
    Screen.Cursor := crDefault;
end;

procedure TMenuGeneral.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_F5) then
    EjecutarConsulta;
end;

procedure TMenuGeneral.MantGraficoExecute(Sender: TObject);
begin
  ModalShow(TMantGrafico);
end;

procedure TMenuGeneral.Archivo608Execute(Sender: TObject);
begin
  ModalShow(TArchivo608);
end;

procedure TMenuGeneral.MantNotasFacturasExecute(Sender: TObject);
begin
  ModalShow(TMantNotasFacturas);
end;

procedure TMenuGeneral.GestionCobrosExecute(Sender: TObject);
begin
  ModalShow(TGestionCobros);
end;

procedure TMenuGeneral.MantTipoIngresoExecute(Sender: TObject);
begin
  ModalShow(TMantTipoIngreso);
end;

procedure TMenuGeneral.RemisionGastosDGII606Execute(Sender: TObject);
begin
  ModalShow(TRemisionGastosDGII606);
end;

procedure TMenuGeneral.ToDgiiNcfVentas2018Execute(Sender: TObject);
begin
  ModalShow(TToDGIINcfVentas2018);
end;

procedure TMenuGeneral.RemisionGastosDGII2018Execute(Sender: TObject);
begin
  ModalShow(TRemisionGastosDGII2018);
end;

procedure TMenuGeneral.Archivo6082018Execute(Sender: TObject);
begin
  ModalShow(TArchivo6082018);
end;

procedure TMenuGeneral.OpticaEvaluacionExecute(Sender: TObject);
begin
    ModalShow(TOpticaEvaluacion);
end;

procedure TMenuGeneral.CentralFacturacionExecute(Sender: TObject);
begin
      ModalShow(TCentralFacturacion);
end;

procedure TMenuGeneral.Action2Execute(Sender: TObject);
begin
      ModalShow(TCentralEncuesta);
end;

procedure TMenuGeneral.Action1Execute(Sender: TObject);
begin
      ModalShow(TMantEncuestas);
end;

procedure TMenuGeneral.CuadreCajaDiarioExecute(Sender: TObject);
begin
      ModalShow(TCuadreCajaDiario);
end;

procedure TMenuGeneral.ModeloFiscalExecute(Sender: TObject);
begin
      ModalShow(TModeloFiscal);
end;

end.


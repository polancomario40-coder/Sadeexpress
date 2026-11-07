unit uFacturaPdv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uformmant2, DB, dxDBELib, StdCtrls, dxCntner, dxEditor, dxEdLib,
  ADODB, ActnList, ImgList, Wwdatsrc, Grids, Wwdbigrd, Wwdbgrid,
  wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, dxExEdtr, dxDBEdtr,
  ComCtrls, ppDB, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppStrtch, ppMemo, jpeg,
  ppParameter, math, myChkBox, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,strUtils,
  cxDBLookupComboBox, Buttons, Menus, cxLookAndFeelPainters, cxButtons,
  ppModule, daDataModule, DBCtrls, cxButtonEdit, cxDBEdit, wwdblook,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  cxImage, cxCalendar, cxCheckBox, ufrBuscadorProds;

type
  TFacturapdv = class(Tfformmant2)
    ClienteAct: TADODataSet;
    dsEstacionAct: TDataSource;
    dxDBEdit6: TdxDBEdit;
    dxDBCheckEdit2: TdxDBCheckEdit;
    ProductoAct: TADODataSet;
    dsProductoAct: TDataSource;
    SPTieneCredito: TADOCommand;
    SPCreditoAutorizacion: TADOCommand;
    Clientes: TAction;
    bAnular: TwwNavButton;
    AnularFact: TADOCommand;
    RSidFactura: TGuidField;
    RSidCliente: TIntegerField;
    RSCliente: TStringField;
    RSDireccion: TStringField;
    RSTelefono: TStringField;
    RSidEmpleado: TIntegerField;
    RSFecha: TDateTimeField;
    RSHora: TDateTimeField;
    RSReferencia: TStringField;
    RSCancelado: TBooleanField;
    RSCredito: TBooleanField;
    RSidCompania: TIntegerField;
    RSSubTotal: TBCDField;
    RSItbis: TBCDField;
    RSDescuento: TBCDField;
    RSTotal: TBCDField;
    RSNota: TStringField;
    RSUsuario: TStringField;
    RSDetidFacturaDet: TGuidField;
    RSDetidFactura: TGuidField;
    RSDetidProducto: TStringField;
    RSDetProducto: TStringField;
    RSDetCantidad: TFloatField;
    RSDetidUnidad: TStringField;
    RSDetDescuento: TBCDField;
    RSDetItbis: TBCDField;
    ClienteActidCliente: TIntegerField;
    ClienteActCliente: TStringField;
    ClienteActContacto: TStringField;
    ClienteActLimiteCredito: TBCDField;
    ClienteActActivo: TBooleanField;
    Empleado: TADODataSet;
    dsEmpleado: TDataSource;
    dxDBEdit11: TdxDBEdit;
    RSDetLineTotal: TBCDField;
    ACotizacion: TAction;
    BdeCotizacion: TwwNavButton;
    ClienteActidEmpleado: TIntegerField;
    dxDBEdit5: TdxDBEdit;
    RSContacto: TStringField;
    RSSector: TStringField;
    RSCiudad: TStringField;
    ClienteActDireccion: TStringField;
    ClienteActSector: TStringField;
    ClienteActCiudad: TStringField;
    ClienteActTelefono: TStringField;
    ClienteActNoPagaItbis: TBooleanField;
    Cotizacion2Fact: TADODataSet;
    Cotizacion2FactidCotizacion: TGuidField;
    Cotizacion2FactidCotizacionStatus: TStringField;
    Cotizacion2FactidCliente: TIntegerField;
    Cotizacion2FactCliente: TStringField;
    Cotizacion2FactContacto: TStringField;
    Cotizacion2FactDireccion: TStringField;
    Cotizacion2FactSector: TStringField;
    Cotizacion2FactCiudad: TStringField;
    Cotizacion2FactTelefono: TStringField;
    Cotizacion2FactidEmpleado: TIntegerField;
    Cotizacion2FactFecha: TDateTimeField;
    Cotizacion2FactHora: TDateTimeField;
    Cotizacion2FactCancelado: TBooleanField;
    Cotizacion2FactCredito: TBooleanField;
    Cotizacion2FactidCompania: TIntegerField;
    Cotizacion2FactSubTotal: TBCDField;
    Cotizacion2FactItbis: TBCDField;
    Cotizacion2FactDescuento: TBCDField;
    Cotizacion2FactNota: TStringField;
    Cotizacion2FactUsuario: TStringField;
    Cotizacion2FactTotal: TBCDField;
    Cotizacion2FactidCotizacionDet: TGuidField;
    Cotizacion2FactidProducto: TStringField;
    Cotizacion2FactProducto: TStringField;
    Cotizacion2FactCantidad: TFloatField;
    Cotizacion2FactPrecio: TBCDField;
    Cotizacion2FactidUnidad: TStringField;
    Cotizacion2FactDescDet: TBCDField;
    Cotizacion2FactItbisDet: TBCDField;
    Cotizacion2FactLineTotal: TBCDField;
    RSFactura: TStringField;
    Cotizacion2FactCotizacion: TStringField;
    RSCotizacion: TStringField;
    RSidCotizacion: TGuidField;
    RSidClienteObra: TStringField;
    ClienteObra: TADODataSet;
    ClienteObraidClienteObra: TStringField;
    ClienteObraidCliente: TIntegerField;
    ClienteObraDireccionObra: TStringField;
    ClienteObraSectorObra: TStringField;
    ClienteObraCiudadObra: TStringField;
    ClienteObraTelefonoObra: TStringField;
    ClienteObraFaxObra: TStringField;
    ClienteObraCelularObra: TStringField;
    ClienteObraContactoObra: TStringField;
    dsClienteObra: TDataSource;
    Cotizacion2FactidClienteObra: TStringField;
    Conduce2Factura: TAction;
    Factura2Cxc: TADOCommand;
    AGetProduct: TAction;
    rptFactura: TADODataSet;
    dsRptFactura: TDataSource;
    FacturaRPT: TppReport;
    bPrint: TwwNavButton;
    desc: TdxDBEdit;
    rptFacturaidFactura: TGuidField;
    rptFacturaFactura: TStringField;
    rptFacturaCliente: TStringField;
    rptFacturaContacto: TStringField;
    rptFacturaDireccion: TStringField;
    rptFacturaSector: TStringField;
    rptFacturaCiudad: TStringField;
    rptFacturaTelefono: TStringField;
    rptFacturaEmpleado: TStringField;
    rptFacturaFecha: TDateTimeField;
    rptFacturaReferencia: TStringField;
    rptFacturaCancelado: TBooleanField;
    rptFacturaCredito: TBooleanField;
    rptFacturaSubTotal: TBCDField;
    rptFacturaItbis: TBCDField;
    rptFacturaDescuento: TBCDField;
    rptFacturaTotal: TBCDField;
    rptFacturaNota: TStringField;
    rptFacturaidClienteObra: TStringField;
    rptFacturaidFacturaDet: TGuidField;
    rptFacturaDetidProducto: TStringField;
    rptFacturaDetProducto: TStringField;
    rptFacturaDetCantidad: TFloatField;
    rptFacturaDetPrecio: TBCDField;
    rptFacturaDetDescuento: TBCDField;
    rptFacturaDetITBIS: TBCDField;
    rptFacturaDetLineTotal: TBCDField;
    rptFacturacoCompania: TStringField;
    rptFacturacoDireccion: TStringField;
    rptFacturacoTelefono: TStringField;
    rptFacturacoFax: TStringField;
    rptFacturacoRNC: TStringField;
    RSPagaItbis: TBooleanField;
    PagaItbis: TdxDBCheckEdit;
    RSidOrdComp: TGuidField;
    RSOrdComp: TStringField;
    OrdComp2Fact: TADODataSet;
    OrdComp2FactidOrdComp: TGuidField;
    OrdComp2FactOrdComp: TStringField;
    OrdComp2FactidOrdCompStatus: TStringField;
    OrdComp2FactidCliente: TIntegerField;
    OrdComp2FactCliente: TStringField;
    OrdComp2FactContacto: TStringField;
    OrdComp2FactDireccion: TStringField;
    OrdComp2FactSector: TStringField;
    OrdComp2FactCiudad: TStringField;
    OrdComp2FactTelefono: TStringField;
    OrdComp2FactidEmpleado: TIntegerField;
    OrdComp2FactFecha: TDateTimeField;
    OrdComp2FactHora: TDateTimeField;
    OrdComp2FactCancelado: TBooleanField;
    OrdComp2FactCredito: TBooleanField;
    OrdComp2FactidCompania: TIntegerField;
    OrdComp2FactSubTotal: TBCDField;
    OrdComp2FactItbis: TBCDField;
    OrdComp2FactDescuento: TBCDField;
    OrdComp2FactNota: TStringField;
    OrdComp2FactUsuario: TStringField;
    OrdComp2FactTotal: TBCDField;
    OrdComp2FactidClienteObra: TStringField;
    OrdComp2FactidOrdCompDet: TGuidField;
    OrdComp2FactidProducto: TStringField;
    OrdComp2FactProducto: TStringField;
    OrdComp2FactCantidad: TFloatField;
    OrdComp2FactPrecio: TBCDField;
    OrdComp2FactidUnidad: TStringField;
    OrdComp2FactDescDet: TBCDField;
    OrdComp2FactItbisDet: TBCDField;
    OrdComp2FactLineTotal: TBCDField;
    OrdComp2FactidCotizacion: TGuidField;
    OrdComp2FactCotizacion: TStringField;
    AOrdComp2Factura: TAction;
    BdeOrdComp: TwwNavButton;
    ClienteActDescuento: TFloatField;
    RSFax: TStringField;
    RSeMail: TStringField;
    ClienteActFax: TStringField;
    ClienteActeMail: TStringField;
    SendMail: TAction;
    bMail: TwwNavButton;
    RSPorcDesc: TFloatField;
    Cotizacion2FactPorcDesc: TFloatField;
    OrdComp2FactPorcDesc: TFloatField;
    RSCondicion: TIntegerField;
    rptFacturaOrdComp: TStringField;
    ClienteActidListaPrecio: TStringField;
    ppParameterList1: TppParameterList;
    RSDetLinea: TIntegerField;
    rptFacturaidCliente: TIntegerField;
    ClienteActCondicion: TIntegerField;
    OrdComp2Factcondicion: TIntegerField;
    Cotizacion2FactCondicion: TIntegerField;
    ProductoActidProducto: TStringField;
    ProductoActProducto: TStringField;
    ProductoActAutoDescuento: TBooleanField;
    ProductoActExistencia: TBCDField;
    ProductoActCostoPromedio: TBCDField;
    ProductoActInactivo: TBooleanField;
    ProductoActporciento: TFloatField;
    ProductoActidUnidad: TStringField;
    ProductoActDescuento: TFloatField;
    ProductoActExistenciaNeg: TBooleanField;
    ProductoActidListaPrecio: TStringField;
    RSFechaCancelado: TDateTimeField;
    RSDetidCargo: TGuidField;
    RSidMoneda: TIntegerField;
    OrdComp2FactidMoneda: TIntegerField;
    Cotizacion2FactidMoneda: TIntegerField;
    rptFacturaidUnidad: TStringField;
    PrnFormat: TcxComboBox;
    RSidCobrador: TIntegerField;
    RSidAlmacen: TStringField;
    Almacen: TADODataSet;
    dsAlmacen: TDataSource;
    Factura2ProMov: TADOCommand;
    ProductoActMinimo: TFloatField;
    ProductoActReorden: TFloatField;
    ProductoActCambiarPrecio: TBooleanField;
    ProductoActidPartida: TStringField;
    PopupMenu1: TPopupMenu;
    AProductoDet: TAction;
    ProductoDet1: TMenuItem;
    ProductoActidMoneda: TIntegerField;
    qryCondicion: TADOQuery;
    dsCondicion: TDataSource;
    Label26: TLabel;
    dxDBEdit21: TdxDBEdit;
    RSCompFiscal: TStringField;
    rptFacturaCondicion: TStringField;
    rptFacturaVencimiento: TDateTimeField;
    RSNota2: TStringField;
    rptFacturaNota2: TStringField;
    plrptFactura: TppDBPipeline;
    RSDetPrecio: TBCDField;
    rptFacturaCompFiscal: TStringField;
    RSClienteRNC: TStringField;
    ClienteActRNC_Cedula: TStringField;
    rptFacturaClienteRNC: TStringField;
    dxDBEdit22: TdxDBEdit;
    RSidCondicion: TStringField;
    qryCondicionidCondicion: TStringField;
    qryCondicionCondicion: TStringField;
    qryCondicionCredito: TBooleanField;
    qryCondicionDias: TIntegerField;
    qryCondicionPrecioContado: TBooleanField;
    Cotizacion2FactCotizacionstatus: TStringField;
    Cotizacion2Factfacturable: TBooleanField;
    OrdComp2FactOrdCompStatus: TStringField;
    OrdComp2FactFacturable: TBooleanField;
    ClienteActidCondicion: TStringField;
    rptFacturaTipoNCF: TStringField;
    qryCondicionNoCreditoCheck: TBooleanField;
    RSTasa: TBCDField;
    Cotizacion2FactidCondicion: TStringField;
    OrdComp2FactidCondicion: TStringField;
    OrdComp2Factreferencia: TStringField;
    Cotizacion2Factpagaitbis: TBooleanField;
    OrdComp2Factpagaitbis: TBooleanField;
    Cotizacion2Factreferencia: TStringField;
    AFacturaDetEspec: TAction;
    EspecificacionesTecnicasdeProducto1: TMenuItem;
    RSObservacion: TStringField;
    rsEspec: TADODataSet;
    rsEspecidFacturaDet: TGuidField;
    rsEspecidFactura: TGuidField;
    rsEspecEspecificacion: TStringField;
    rsEspecFechaEspec: TDateTimeField;
    AObservacion: TAction;
    GetProductoEspec: TADODataSet;
    GetProductoEspecEspecificacion: TStringField;
    GetProductoEspecFechaEspec: TDateTimeField;
    rptFacturaEspecificacion: TStringField;
    rptFacturaidMoneda: TIntegerField;
    rptFacturaMoneda: TStringField;
    DBText1: TDBText;
    ClienteActNotas: TStringField;
    dsClienteAct: TDataSource;
    ProductoActCalcExistencia: TBooleanField;
    cBuscarNCFFact: TADOCommand;
    OrdCompEnt2Fact: TADODataSet;
    OrdCompEnt2FactidOrdCompEnt: TGuidField;
    OrdCompEnt2FactOrdCompEnt: TStringField;
    OrdCompEnt2FactidOrdComp: TGuidField;
    OrdCompEnt2FactOrdComp: TStringField;
    OrdCompEnt2FactidOrdCompStatus: TStringField;
    OrdCompEnt2FactidCliente: TIntegerField;
    OrdCompEnt2FactCliente: TStringField;
    OrdCompEnt2FactContacto: TStringField;
    OrdCompEnt2FactDireccion: TStringField;
    OrdCompEnt2FactSector: TStringField;
    OrdCompEnt2FactCiudad: TStringField;
    OrdCompEnt2FactTelefono: TStringField;
    OrdCompEnt2FactidEmpleado: TIntegerField;
    OrdCompEnt2FactFecha: TDateTimeField;
    OrdCompEnt2FactHora: TDateTimeField;
    OrdCompEnt2FactCancelado: TBooleanField;
    OrdCompEnt2FactCredito: TBooleanField;
    OrdCompEnt2FactidCompania: TIntegerField;
    OrdCompEnt2FactSubTotal: TBCDField;
    OrdCompEnt2FactItbis: TBCDField;
    OrdCompEnt2FactidMoneda: TIntegerField;
    OrdCompEnt2FactDescuento: TBCDField;
    OrdCompEnt2FactNota: TStringField;
    OrdCompEnt2FactUsuario: TStringField;
    OrdCompEnt2FactTotal: TBCDField;
    OrdCompEnt2FactidClienteObra: TStringField;
    OrdCompEnt2FactidCotizacion: TGuidField;
    OrdCompEnt2FactCotizacion: TStringField;
    OrdCompEnt2FactPorcDesc: TFloatField;
    OrdCompEnt2Factcondicion: TIntegerField;
    OrdCompEnt2FactidCondicion: TStringField;
    OrdCompEnt2Factreferencia: TStringField;
    OrdCompEnt2Factpagaitbis: TBooleanField;
    OrdCompEnt2FactidOrdCompDet: TGuidField;
    OrdCompEnt2FactidProducto: TStringField;
    OrdCompEnt2FactProducto: TStringField;
    OrdCompEnt2FactCantidad: TFloatField;
    OrdCompEnt2FactPrecio: TBCDField;
    OrdCompEnt2FactidUnidad: TStringField;
    OrdCompEnt2FactDescDet: TFloatField;
    OrdCompEnt2FactItbisDet: TFloatField;
    OrdCompEnt2FactLineTotal: TFloatField;
    OrdCompEnt2FactOrdCompStatus: TStringField;
    OrdCompEnt2FactFacturable: TBooleanField;
    rptFacturaFax: TStringField;
    rptFacturaLinea: TIntegerField;
    rptFacturaNumeroSuplidor: TStringField;
    RSTipoAnulacion: TStringField;
    RSidReferencia: TGuidField;
    GenCodif: TADOCommand;
    rptFacturaPrecioDia: TBCDField;
    RSDetidAlmacen: TStringField;
    AlmacenidAlmacen: TStringField;
    AlmacenAlmacen: TStringField;
    ProductoActMonedaProducto: TIntegerField;
    ProductoActPrecioContProd: TBCDField;
    ProductoActPrecioCredProd: TBCDField;
    rptFacturaDias: TBCDField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid: TcxGridDBBandedTableView;
    cxGrididProducto: TcxGridDBBandedColumn;
    cxGridProducto: TcxGridDBBandedColumn;
    cxGridCantidad: TcxGridDBBandedColumn;
    cxGridPrecio: TcxGridDBBandedColumn;
    cxGrididUnidad: TcxGridDBBandedColumn;
    cxGridDescuento: TcxGridDBBandedColumn;
    cxGridItbis: TcxGridDBBandedColumn;
    cxGridLineTotal: TcxGridDBBandedColumn;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle3: TcxStyle;
    cxGrididAlmacen: TcxGridDBBandedColumn;
    ProductoActDescNivel1: TFloatField;
    ProductoActDescNivel2: TFloatField;
    ProductoActDescNivel3: TFloatField;
    ProductoActDescuentoPermitido: TFloatField;
    ProductoActDescuentoVence: TDateTimeField;
    ppHeaderBand1: TppHeaderBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppDBText7: TppDBText;
    ppLabel7: TppLabel;
    ppDBText17: TppDBText;
    ppShape3: TppShape;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDBText21: TppDBText;
    ppLabel34: TppLabel;
    ppLine4: TppLine;
    ppLabel2: TppLabel;
    ppDBText8: TppDBText;
    ppLabel8: TppLabel;
    ppDBText6: TppDBText;
    ppDBText9: TppDBText;
    ppLabel17: TppLabel;
    ppDBText11: TppDBText;
    ppLabel18: TppLabel;
    ppDBText18: TppDBText;
    ppLabel19: TppLabel;
    ppDBText22: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel20: TppLabel;
    ppDBText23: TppDBText;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDBText25: TppDBText;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel26: TppLabel;
    ppDBText30: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText10: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppDBText24: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel3: TppLabel;
    ppDBText13: TppDBText;
    ppLabel4: TppLabel;
    ppDBText14: TppDBText;
    ppLabel5: TppLabel;
    ppDBText15: TppDBText;
    ppLabel6: TppLabel;
    ppDBText16: TppDBText;
    ppLine1: TppLine;
    ppLabel9: TppLabel;
    ppLine2: TppLine;
    ppLabel10: TppLabel;
    ppLine3: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel25: TppLabel;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppDBMemo3: TppDBMemo;
    ppDBText31: TppDBText;
    ProductoActPrecioContado: TBCDField;
    ProductoActPrecioCredito: TBCDField;
    rptFacturaCelular: TStringField;
    rptFacturahora: TDateTimeField;
    rptFacturaObservacion: TStringField;
    rptFacturaemail: TStringField;
    luCondicion: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    BooleanField1: TBooleanField;
    IntegerField1: TIntegerField;
    BooleanField2: TBooleanField;
    BooleanField3: TBooleanField;
    dslucondicion: TDataSource;
    ProductoActParaVender: TBooleanField;
    Shape1: TShape;
    Label18: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label23: TLabel;
    Shape4: TShape;
    Shape6: TShape;
    Shape8: TShape;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Shape10: TShape;
    Label35: TLabel;
    Label36: TLabel;
    Shape11: TShape;
    FindCliente: TSpeedButton;
    Label37: TLabel;
    Label38: TLabel;
    Shape5: TShape;
    Label39: TLabel;
    DBText4: TDBText;
    DBText2: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    Label40: TLabel;
    Label42: TLabel;
    DBText3: TDBText;
    dxDBEdit20: TdxDBEdit;
    dxDBEdit23: TdxDBEdit;
    dxDBEdit26: TdxDBEdit;
    dxDBEdit27: TdxDBEdit;
    dxDBMemo6: TdxDBMemo;
    dxDBEdit2: TdxDBEdit;
    DBText8: TDBText;
    Shape7: TShape;
    dxDBLookupEdit3: TdxDBLookupEdit;
    frBuscadorProds1: TfrBuscadorProds;
    Shape9: TShape;
    RSCobrada: TBooleanField;
    NoPromov: TcxCheckBox;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    rptFacturaUsuario: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure RSDetAfterPost(DataSet: TDataSet);
    procedure RSDetNewRecord(DataSet: TDataSet);
    procedure RSDetDescuentoValidate(Sender: TField);
    procedure RSNewRecord(DataSet: TDataSet);
    procedure RSAfterScroll(DataSet: TDataSet);
    procedure RSDetPrecioValidate(Sender: TField);
    procedure RSDetCantidadValidate(Sender: TField);
    procedure ClientesExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure AAnularExecute(Sender: TObject);
    procedure RSidClienteValidate(Sender: TField);
    procedure RSDetidProductoValidate(Sender: TField);
    procedure FormDestroy(Sender: TObject);
    procedure ACotizacionExecute(Sender: TObject);
    procedure RSCotizacionValidate(Sender: TField);
    procedure AGetProductExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AprintExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure dxDBEdit16DblClick(Sender: TObject);
    procedure dxDBEdit6DblClick(Sender: TObject);
    procedure PagaItbisClick(Sender: TObject);
    procedure RSOrdCompValidate(Sender: TField);
    procedure dxDBEdit4DblClick(Sender: TObject);
    procedure AOrdComp2FacturaExecute(Sender: TObject);
    procedure SendMailExecute(Sender: TObject);
    procedure RSPorcDescValidate(Sender: TField);
    procedure RSDescuentoValidate(Sender: TField);
    procedure RSCondicionValidate(Sender: TField);
    procedure RSidAlmacenValidate(Sender: TField);
    procedure RSDetBeforePost(DataSet: TDataSet);
    procedure AProductoDetExecute(Sender: TObject);
    procedure RSidMonedaValidate(Sender: TField);
    procedure RSPagaItbisChange(Sender: TField);
    procedure RSidCondicionValidate(Sender: TField);
    procedure RSFechaValidate(Sender: TField);
    procedure ANuevoExecute(Sender: TObject);
    procedure RSBeforePost(DataSet: TDataSet);
    procedure ALocalizarExecute(Sender: TObject);
    procedure cxGrididProductoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid1Enter(Sender: TObject);
    procedure cxGrid1Exit(Sender: TObject);
    procedure FindClienteClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    ALMACENDEFAULT : String;
    FLoading  : boolean;
    FDescuento: double;
    FITBIS    : double;
    FSubtotal : double;
    fCreditoAutorizado : Boolean;
    procedure CalcTotal;
    procedure CalcITBIS;
    Procedure ActualizarTotales;
    Function MostrarCliente(idCliente : Integer): integer;
    function LocateProducto(idProducto : string):boolean;
    function TieneCredito(idCliente : Integer; MasMonto : Double; IdCondicion : String): Boolean;
    function NoTieneCredito() : Boolean;
    procedure CargarCotizacion;
    function GetProduct: string;
    procedure CargarOrdComp;
    procedure CheckExistencia;
    procedure DescuentoCalc;
//    function TieneCreditoShow(idCliente: Integer): Boolean;
    procedure CalcLineTotal;
    procedure GetTasa;
    procedure PrintFactura;
    function BuscarNCFFactura(const ncf: string): Variant;
    procedure CargarOrdCompEnt(idOrdComEntrega: variant);
    procedure OcultarCampos;
    procedure ValidarDescuento;
    procedure ValidarCondicion;
  protected
    { Private declarations }
    CLIENTECONTADO : integer;
    PrintFormatA : string;
    PrintFormatB : string;
    PrinterFormatA : string;
    PrinterFormatB : string;
//    ModoPDV : string;
//    PDVPagoContado : String;
    Moneda  : integer;
//    CajaPDV : string;
    DEFAULT_NOTA: string;
    DescAutorizado: Integer;
//    DescAutLimite: Integer;
    PrintPreview: string;
    importing : boolean;
    xxValue : variant;
    xxField : string;
    procedure UserAutoCodigo; override;
    procedure browsebotonstate; override;
    procedure editbotonstate; override;
    procedure newbotonstate; override;
  public
    { Public declarations }
    procedure DoShowstate; override;
    procedure Getproductoframe(const idProd: string);
  end;

var
  Facturapdv: TFacturapdv;

implementation

uses Udata, UUtiles, FacturaFind, uBusqueda, CotizacionFind,
  uCotizacion, uCliente, uOrdComp, OrdCompFind, ueMails7,
  uformx, uCXC, uFacturaCobro,
  uProductoDetalle, uFacturaDetEspec, uTipoAnulaciones,
  uProductoFindDX, uform, uProMov;

{$R *.dfm}


procedure TFacturapdv.FormCreate(Sender: TObject);
begin
  AOrdComp2Factura.Visible :=  (dm.GetDefaultStr('FACT_PEDIDO') = '1');
  ACotizacion.Visible := (dm.GetDefaultStr('FACT_COTIZACION') = '1');
  xxValue := NULL;
  xxField := '';
  importing := false;
  fCreditoAutorizado := False;
  DescAutorizado := 0;
  ALMACENDEFAULT := dm.GetDefaultStr('ALMACENDEFAULT');
  PrintFormatA := dm.GetDefaultstr('FORMAT_FACTURA_A');
  PrintFormatB := dm.GetDefaultstr('FORMAT_FACTURA_B');
  PrinterFormatA := dm.GetDefaultstr('PRINTER_FACT_A');
  PrinterFormatB := dm.GetDefaultstr('PRINTER_FACT_B');
//  ModoPDV := dm.GetDefaultstr('Modo_PuntoVenta');
//  PDVPagoContado := dm.GetDefaultstr('PDVPagoContado');
//  CajaPDV := dm.GetDefaultstr('Caja_Automatica');
  DEFAULT_NOTA := dm.GetDefaultstr('NOTA_POR_DEFECTO');

  if DEFAULT_NOTA <> '' then
    DEFAULT_NOTA := AnsiReplaceStr(DEFAULT_NOTA,'//',#13);

  PrintPreview := dm.GetDefaultstr('VERPORPANTALLA');

  if (PrintFormatA <> '') and (fileexists(PrintFormatA)) then begin
    FacturaRpt.Template.FileName := PrintFormatA;
    FacturaRpt.Template.LoadFromFile;
  end;

  if (PrinterFormatA <> '') then
    FacturaRpt.PrinterSetup.PrinterName := PrinterFormatA;

 // AUTDESCLIM  := dm.GetDefault('NIVELAUTODESCLIM');

  try
    Moneda := dm.GetDefault('MONEDA_ACTIVA');
  except
    Moneda := 1;
  end;
  CLIENTECONTADO := dm.GetDefault('CLIENTEDEFECTO');
  FLoading := false;
//  ds2.DataSet := mRSDet;
  MasterField := 'idFactura';
  DetailField := 'idFactura';
  inherited;
  Modulo := 'Venta';
  logField := 'Factura';
  imageidField := 'idFactura';
  ProductoAct.open;
  CampodeCierre := 'FECHA'; //nombre del campo de fecha para validar el cierre de operaciones
  spName := '';
  Busqfield := 'idFactura';
  tfBusqueda := TFindFactura;
  OcultarC1 := false;       //oculta la columna 1 en la busqueda
  if not(ds2.dataset.active) then ds2.dataset.open ;
  FDescuento := 0.00;
  FITBIS     := 0.00;
  FSubtotal  := 0.00;
  Empleado.Open;
  luCondicion.open();
  Almacen.Open;
  ClienteObra.Parameters[1].Value := null;
  if ClienteObra.Active then ClienteObra.Requery() else ClienteObra.Open;
  OcultarCampos(); //oculta algunos campos del detalle de la factura segun parametros
  frBuscadorProds1.OnSelectItem := Getproductoframe;

end;

Procedure  TFacturapdv.Getproductoframe(const idProd: string);
begin
  if appestado <> appBrowse then begin

    if rsdet.Locate('idProducto', idprod,[]) then begin
      try
        rsdet.edit;
        rsdetcantidad.value := rsdetcantidad.value + 1;
        rsdet.Post;
      except
        on e: Exception do begin
          ShowMessage('Error con el articulo elegido' + #13 + e.Message);
          rsdet.Cancel;
        end;
      end;

    end else begin
      try
        rsdet.append;
        rsdetidproducto.Value := idProd;
        rsdet.Post;
      except
        on e: Exception do begin
          ShowMessage('Error con el articulo elegido' + #13 + e.Message);
          rsdet.Cancel;
        end;
      end;
    end;
  end;
end;


procedure TFacturapdv.DoShowstate;
begin

  if (xField = 'OrdCompEnt') then begin
      xxValue := xvalue;
      xxField := xField;
      xValue := ''; //se limpian los valores para que el inherited no haga nada incorrecto
      xField := '';
  end;

  inherited;

  if (xxValue <> NULL) and (xxField = 'OrdCompEnt') then begin
    CargarOrdCompEnt(xxValue);
  end;

end;


Function TFacturapdv.MostrarCliente(idCliente : Integer): integer;
Begin
   Result := 0;  // todo bien
   if idCliente <> 0 then
   begin
      //if (rsEstacionAct.Parameters[1].Value <> EstacionID) then
      begin
        ClienteAct.Parameters[1].Value := idCliente;
        if ClienteAct.Active then ClienteAct.requery() else ClienteAct.Open;
      end
   end
   else
   begin
      ClienteAct.close; //para que no muestre nada
   end;

   if (not(ClienteAct.active)) or (ClienteAct.IsEmpty) then
      Result := -1  // No Existe el codigo de cliente
   else
      if not(ClienteActActivo.value) then
         Result := 1   //esta inactivo pero si existe el cliente
end;

procedure TFacturapdv.UserAutoCodigo;
begin
  if rsFactura.isnull then
      rsFactura.Value := dm.GetNextCounterSTR ('FACTURA');
 end;


procedure TFacturapdv.newbotonstate;
begin
  inherited;
  FindCliente.enabled := true;
  //Cod.ReadOnly :=true;
  AAnular.Enabled := false;
  ACotizacion.Enabled := false;
  AOrdComp2Factura.Enabled := false;
  Conduce2Factura.Enabled := true;
  AGetProduct.Enabled := true;
  APrint.Enabled := False;
  //desc.Enabled := true;
  Sendmail.Enabled := false;
  AObservacion.Enabled := false;
  CxGridReadOnly(False, cxGrid);
end;

procedure TFacturapdv.editbotonstate;
begin
  inherited;
  FindCliente.enabled := true;
//  Cod.ReadOnly :=true;
  AAnular.Enabled := false;
  ACotizacion.Enabled := false;
  AOrdComp2Factura.Enabled := false;
  Conduce2Factura.Enabled := false;
  AGetProduct.Enabled := true;
  APrint.Enabled := False;
  //desc.Enabled := false;
  Sendmail.Enabled := (not(ds.dataset.IsEmpty)) and (dm.TienePermisoShow(pImprimir,Permisos));
  AObservacion.Enabled := false;
  CxGridReadOnly(False, cxGrid);
end;

procedure TFacturapdv.browsebotonstate;
begin
  inherited;
  FindCliente.enabled := false;

  ACotizacion.Enabled := true;
  AOrdComp2Factura.Enabled := true;
  Conduce2Factura.Enabled := false;
  AGetProduct.Enabled := false;
  APrint.Enabled := true; //verificar si tiene permiso para imprimir
  // verificar fecha ultimo cierre para status boton editar
  Sendmail.Enabled := (not(ds.dataset.IsEmpty)) and (dm.TienePermisoShow(pImprimir,Permisos));
  DescAutorizado := 0;
//  DescAutLimite := False;
  AObservacion.Enabled := not(rs.IsEmpty);
  CxGridReadOnly(True, cxGrid);
end;

procedure TFacturapdv.CalcTotal();
Var
  bm : string;
begin
  inherited;
  RSDet.DisableControls;
  With RSDet Do
  Begin
    bm := BookMark;
    First;

    FDescuento:= 0.00;
    FITBIS    := 0.00;
    FSubTotal := 0.00;

    While Not Eof Do
    Begin
      FDescuento:= FDescuento + rsDetDescuento.ascurrency;
      FITBIS    := FITBIS + rsDetITBIS.ascurrency;
      FSubTotal := FSubTotal + rsDetLineTotal.ascurrency;
      Next;
    End;
    Bookmark := bm;

  End;
  RSDet.EnableControls;
end;

function TFacturapdv.GetProduct() : string;
var
  idprodres : variant;
begin
  inherited;

  idprodres := TProductoFindDX.Buscar('idProducto',dm.PCSettings['INVPORDEFECTO'], True);

  if idprodres = Null then
    result := ''
  else
    result := idprodres;

end;

procedure TFacturapdv.RSDetAfterPost(DataSet: TDataSet);
begin
  inherited;
  CalcTotal();
  ActualizarTotales();
end;

procedure TFacturapdv.ActualizarTotales;
begin
  if (appestado in [appedit, appinsert]) then
  begin
     if not(rs.state in dsEditModes) then rs.Edit;

     rsTotal.Value    := 0;
     rsDescuento.Value:= 0;
     rsSubTotal.Value := 0;
     rsItbis.Value    := 0;

     rsTotal.Value    := FSubTotal - FDescuento + FITBIS;
     rsDescuento.Value:= FDescuento;
     rsSubTotal.Value := FSubTotal;
     rsItbis.Value    := FITBIS;
  end;
end;

Function TFacturapdv.LocateProducto(idProducto : string): boolean;
begin
  if (ProductoAct.active) and
     (ProductoActidProducto.value = idProducto) and
     (ProductoActidMoneda.value = rsidMoneda.value) and
     (ProductoAct.Parameters[3].value = rsDetidAlmacen.value) and
     (ProductoActidListaPrecio.value = ClienteActidListaPrecio.value) then
  begin
    Result := true;
    exit;
  end
  else
  begin
    ProductoAct.Parameters[1].value := idProducto;
    if ClienteActidListaPrecio.isnull then
      ProductoAct.Parameters[2].Value := Null
    else
      ProductoAct.Parameters[2].Value := ClienteActidListaPrecio.value;
    ProductoAct.Parameters[3].value := rsDetidAlmacen.value;
    ProductoAct.Parameters[4].value := rsidMoneda.value;
    productoAct.close;
    productoAct.Open;
  end;
  Result := not(ProductoAct.isempty);
end;

procedure TFacturapdv.RSDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  floading := true; //para que no tome en cuenta cambiar precio en validate de precio
  rsdetCantidad.Value := 1.00;
  rsdetDescuento.value:= 0.00;
  rsdetITBIS.Value    := 0.00;
  rsdetidFacturaDet.AsGuid := dm.NewGuid;
  rsdetlinea.Value := rsdet.RecordCount;
  rsDetidAlmacen.Value := rsIdAlmacen.value;
  floading := false;
end;

procedure TFacturapdv.RSDetDescuentoValidate(Sender: TField);
begin
  inherited;
  if importing then exit;

  if sender.value = 0 then
  Begin
    CalcITBIS();
    exit;
  End;

  if (sender.AsCurrency > 0) and (sender.AsCurrency >= (rsdetcantidad.AsFloat * rsdetprecio.AsCurrency)) then
    raise exception.Create ('El descuento no puede ser mayor o igual que el total');

  if sender.AsCurrency < 0  then raise exception.Create ('El descuento no puede ser negativo');

  ValidarDescuento();

  CalcITBIS();
end;

procedure TFacturapdv.ValidarDescuento;
var
  descto: Single;
  Nivel: Integer;
begin
  descto := (rsdetDescuento.value / (rsdetcantidad.value * rsdetprecio.value)) * 100.00;

  if not LocateProducto(rsDetIdProducto.Value) then
    raise Exception.Create('Este producto no existe');

  if (descto <= ClienteActDescuento.Value) and (ProductoActAutoDescuento.Value) then
    Exit;

  if (descto <= ProductoActDescuentoPermitido.Value) and (ProductoActDescuentoVence.AsDateTime > dm.DBFecha()) then
    Exit;

  if descto < ProductoActDescNivel1.Value then begin;
    Nivel := 1;
//    Lim := ProductoActDescNivel1.Value;
  end else if descto < ProductoActDescNivel2.Value then begin
    Nivel := 2;
//    Lim := ProductoActDescNivel2.Value;
  end else if descto < ProductoActDescNivel3.Value then begin
    Nivel := 3;
//    Lim := ProductoActDescNivel3.Value;
  end else if descto < ProductoActDescuento.Value then begin
    Nivel := 4;
//    Lim := ProductoActDescuento.Value;
  end else begin
    Nivel := 5;
//    Lim := 100.00;
  end;

  if (DescAutorizado = 0) or (DescAutorizado < Nivel) then begin
    if dm.Autorizar(Nivel,'Cliente:'+rsidCliente.AsString,'Descuento Nivel ' + IntToStr(Nivel) + ' para ' + ProductoActProducto.Value, 'Autorizacion descuento sobre Maximo Permitido') then
      DescAutorizado := Nivel
    else
      raise Exception.Create('Autorizacion Invalida, ESC para cancelar') ;
  end;
end;

procedure TFacturapdv.RSNewRecord(DataSet: TDataSet);
begin
  inherited;
  rsCobrada.Value := false;
  rscredito.Value := false;
  fCreditoAutorizado := False;
  rsidFactura.AsGuid := dm.NewGuid;
  rsidEmpleado.value := 1;
  if ALMACENDEFAULT <> '' then rsidAlmacen.value := ALMACENDEFAULT;
  if not rsdet.IsEmpty then rsdet.close;
  rsPagaitbis.Value := true;
  rsPorcDesc.Value := 0;
  rsDescuento.Value := 0.00;
  rsItbis.Value := 0.00;
  rsCancelado.value := false;
  rsidCompania.Value := dm.CompaniaActual();
  RSUsuario.Value := dm.UsuarioActual;
  rsidMoneda.Value := Moneda;
  rsfecha.Value := dm.DBFecha ();
  rshora.value := dm.DBFechaHora();
  rsTotal.value := 0.00;
  rsSubTotal.value := 0.00;
  rsNota.Value := DEFAULT_NOTA;
  try
    rsidCliente.Value := CLIENTECONTADO;
  except
    raise exception.create('Verifique que exista un cliente de contado y que su codigo este configurado en el parametro "CLIENTEDEFECTO"');
  end;
end;

procedure TFacturapdv.RSAfterScroll(DataSet: TDataSet);
begin
  inherited;
  MostrarCliente(RSidCliente.AsInteger);

  rsEspec.Close;
  if rsidFactura.IsNull then rsEspec.Parameters[1].Value := NULL else rsEspec.Parameters[1].Value := rsidFActura.Value;
  rsEspec.open;

end;

procedure TFacturapdv.RSDetPrecioValidate(Sender: TField);
begin
  inherited;
  if (not(floading)) and (not(importing)) then begin
    if (not(productoActcambiarprecio.value)) and (not(dm.Tienepermiso(PAprobar,Permisos, 'Cambio de Precio Producto '+productoActidproducto.value ,'Prod: '+productoActidproducto.value))) then
      raise exception.create('El precio de este producto esta bloqueado para no ser cambiado y usted no esta autorizado');
  end;

  if sender.value < 0 then
    raise exception.create('El Precio no puede ser menor que cero (0)');

  CalcLineTotal();
  DescuentoCalc();
  CalcITBIS();
end;

procedure TFacturapdv.RSDetCantidadValidate(Sender: TField);
begin
  inherited;
  if sender.value <= 0 then
    raise exception.create('Debe especificar una cantidad positiva');

  CheckExistencia;

  CalcLineTotal();
  DescuentoCalc();
  CalcITBIS();
end;

Procedure TFacturapdv.DescuentoCalc();
var
  desc : currency;
begin

  if (rsdetcantidad.value = 0) or (rsdetprecio.value = 0) or (rsdetidproducto.isnull) then begin
    rsdetDescuento.value:= 0.0;
    exit;
  end;

  LocateProducto(rsdetidProducto.value);
  if not(ProductoActAutoDescuento.Value) then begin
    desc := 0.00
  end else begin
    if ((rsporcdesc.Value /100) <= (ProductoActDescuento.AsFloat/100)) then
      desc := ((rsdetprecio.Value * rsdetcantidad.Value) * (rsporcdesc.Value /100))
    else
      desc := (rsdetcantidad.value * rsdetprecio.value) * (ProductoActDescuento.AsFloat/100);
  end;

  if (rsdetDescuento.value <> desc) then rsdetDescuento.value:= desc;
end;

procedure TFacturapdv.CalcLineTotal();
begin
  rsdetLineTotal.AsCurrency := 0.00;
  if (rsDetPrecio.ascurrency > 0) and (rsDetCantidad.asfloat > 0) and (not(rsdetidProducto.IsNull)) then
  begin
     rsdetLineTotal.AsCurrency := (rsDetPrecio.ascurrency * rsDetCantidad.asfloat);
  end;
end;


procedure TFacturapdv.CalcITBIS();
begin
  rsdetITBIS.AsCurrency := 0.00;
  if (rsDetPrecio.ascurrency > 0) and (rsDetCantidad.asfloat > 0) and (not(rsdetidProducto.IsNull)) then
  begin
     if LocateProducto(rsdetidProducto.AsString) and (ProductoActPorciento.AsFloat > 0) and (rsPagaItbis.AsBoolean) then
        rsdetITBIS.AsCurrency := RoundTo(((rsDetPrecio.ascurrency * rsDetCantidad.asfloat) - rsDetDescuento.ascurrency) * (ProductoActPorciento.AsFloat),-2)
  end;
end;


Function TFacturapdv.TieneCredito(idCliente : Integer; MasMonto : Double; IdCondicion : String) : Boolean;
var
  TC : Integer;
begin
  Result := false;

  spTieneCredito.parameters.ParamByName('@IdCliente').value := idCliente;
  spTieneCredito.Parameters.ParamByName('@MasMonto').Value := MasMonto;
  spTieneCredito.Execute;

  TC := spTieneCredito.Parameters.ParamByName('@TieneCredito').value;

     If TC = 1 Then begin
        result := True;
        fCreditoAutorizado := False;
     end else If (TC = 0) then begin
        if dm.TienePermiso(pAprobar, Permisos, 'Cuenta Sobre Limite de Credito','LIMITE CRED: REQ NO. AUTORIZACION') Then begin
          result := true;
          fCreditoAutorizado := Result;
        end;
     end else If (TC = 2) then begin
        if dm.TienePermiso(pAprobar, Permisos, 'Facturas vencidas','FACTURA VENCIDA: REQ NO. AUTORIZACION') Then begin
          result := true;
          fCreditoAutorizado := Result;
        end;
     end else if TC = -1 Then begin
         result := NoTieneCredito();
         //Se supone que si no tiene credito no continuara con la factura
         fCreditoAutorizado := False;
     end;
End;


function TFacturapdv.NoTieneCredito() : Boolean;
begin
   ShowMessage('El cliente no tiene Limite de Credito asignado');
   Result := False;
end;


procedure TFacturapdv.ClientesExecute(Sender: TObject);
var
  x : variant;
begin
  inherited;
  x := fbuscar(TBusqueda,'idCliente',false,'FindCliente');
  if x <> Null then
  begin
    RSidCliente.Value := x;
  end;
end;

procedure TFacturapdv.AGuardarExecute(Sender: TObject);
begin

  if rsdet.State in dseditmodes then begin
    if rsdetidproducto.IsNull then
      rsdet.cancel
    else  begin
      try
        rsdet.Post;
      except
        on e : exception do begin
           raise exception.create('Error en el renglon activo del detalle de factura '+e.Message)
        end;
      end;
    end;
  end;
  rsDet.first ;
  while not rsDet.Eof do begin
  checkexistencia;
  rsDet.Next ;
  end;

  HandleTrans := false;       // las transacciones no se manejaran automaticamente si no lo pone false
  HandleGuardarState := false;  // el estado de los botones y de la aplicacion al guardar
                                 // no se manejaran automaticamente si se pone false
  calcTotal;
  ActualizarTotales();

    // si es de credito la condicion y no dice que no chequee el credito
    if (rsCredito.Value) and (not(qrycondicionNoCreditoCheck.Value)) then begin
      // si es credito verificar si el cliente tiene credito
      If Not fCreditoAutorizado Then
      Begin
        if (not(TieneCredito(rsidCliente.AsInteger, rsTotal.Value, rsIdCondicion.Value))) then begin
          ShowMessage('Credito NO Autorizado');
          Abort;
        end;
      End
      Else
        fCreditoAutorizado := False;
    end;
//***************************

  if (appEstado = appInsert) then begin
    if (not(rs.state in dseditmodes)) then
      rs.Edit;

//    if ModoPDV = '1' then
      rsfecha.Value := dm.DBFecha ();

    rshora.value := dm.DBFechaHora();
  end;

  dm.Coneccion.BeginTrans;
  try
    try
      inherited;
      BatchUpdateCancel(rsEspec, true);
      // Genera Cxc
      Factura2Cxc.Parameters[1].Value := rsidFactura.Value;
      Factura2Cxc.Execute;
      if Factura2Cxc.Parameters[0].Value <> 0 then begin
        if Factura2Cxc.Parameters[0].Value = -1 then
          Raise Exception.Create('Error, Este documento tiene pagos aplicados, debe quitar la aplicacion antes de modificar')
        else
          Raise Exception.Create('Error al crear el movimiento de Cxc')
      end;

      // Generar la codificacion contable de la factura
      GenCodif.Parameters[1].Value := rsidFactura.value ;
      GenCodif.Execute;
//      if GenCodif.Parameters[0].value <> 0 then
 //       Raise Exception.create('Error generando la codificacion contable, verifique las cuentas');


      if (xxField <> 'OrdCompEnt') then begin
        if not(rsidCotizacion.isnull) then
          dm.Coneccion.Execute('Update Cotizacion Set idCotizacionStatus = ''facturado'' where idCotizacion ='''+rsidCotizacion.Value+'''');
        if not(rsidOrdComp.isnull) then
          dm.Coneccion.Execute('Update OrdComp Set idOrdCompStatus = ''facturado'' where idOrdComp ='''+rsidOrdComp.Value+'''');
      end;

      if (dm.GetDefaultStr('GEN_SALIDA_FACT') = '1') and (xxField <> 'OrdCompEnt') then begin
        if not(nopromov.Checked) then begin
          Factura2ProMov.Parameters[1].value := rsidFactura.value;
          Factura2ProMov.Execute;
          If Factura2ProMov.Parameters[0].value <> 0 then
            raise exception.create('Error al generar el movimiento de almacen');
        end;

        if dm.GetDefault('AUTO_PRN_SAL') = '1' then begin
          ImprimirSalidasFactura(rsIdFactura.Value);
        end;
      end;
    except
      dm.Coneccion.RollbackTrans;
      raise;
    end;
    dm.Coneccion.CommitTrans;

    browsebotonstate;
    ds.AutoEdit := false;

//    if (not(rscredito.value)) then
//      if (PDVPagoContado = '1')  then
//        getpago(rsidFactura.asstring, rstotal.asfloat);

    if (appestado = appinsert) then PrintFactura();
//   if (CajaPDV = '1') then AbrirCaja();

    appestado := appBrowse;
    nopromov.Checked := false;

  finally
    HandleTrans := true;       // las transacciones no se manejaran automaticamente
    HandleGuardarState := true;  // el estado de los botones y de la aplicacion al guardar
                               // no se manejaran automaticamente
  end;

  if XCloseonSave then begin
    Close();
    XShow := false;
  end else begin
//    if MODOPDV = '1' then
      ANuevo.Execute;
  end;
end;


procedure TFacturapdv.AAnularExecute(Sender: TObject);
var
  s : string;
begin
  inherited;
  if not(RSCancelado.AsBoolean) then
  begin
    if not Confirmar('Esta seguro de anular esta factura?') then
      exit;

    //no se deben poder anular las facturas con promov posteado
    s := ShowTipoAnulacion();
    if s = '-1' then
      raise exception.create('Debe especificar el concepto de anulacion para poder anular una factura');

    AnularFact.Parameters[1].Value := RSidFactura.Value;
    AnularFact.Parameters[3].Value := S;
    AnularFact.Execute;
    if AnularFact.Parameters[2].Value then
    begin
       ShowMessage('La factura ha sido anulada');
    end
    else
    begin
       if AnularFact.Parameters[0].Value = -1 then
          Raise exception.create('No se pudo anular la factura / verifique si tiene pagos aplicados')
       else if AnularFact.Parameters[0].Value = -2 then
          Raise exception.create('No se pudo anular la factura / Existen movientos de inventario posteados para esta factura');
    end;
  end;
end;

procedure TFacturapdv.RSidClienteValidate(Sender: TField);
var
  x : integer;
begin
  inherited;
  fCreditoAutorizado := False;

  if sender.IsNull then begin
    rsCliente.Clear;
    rsContacto.Clear;
    rsDireccion.clear;
    rsSector.clear;
    rsCiudad.clear;
    rsTelefono.clear;
    rsfax.clear;
    rseMail.clear;
    rsClienteRNC.clear ;
    rsidEmpleado.Clear;
    rsidclienteobra.clear;
    exit;
  end;

  x := MostrarCliente(sender.AsInteger);

  if x = -1 then raise Exception.create('Este cliente no existe');
  if x =  1 then raise exception.Create('Este cliente esta inactivo');

  if not(importing) then begin
     // si se encuentra la condicion del cliente en la tabla de condiciones

     rsidCondicion.value := ClienteActidCondicion.value;
     rsCliente.Value := ClienteActCliente.AsString;

     if (ClienteActidEmpleado.isnull) or (ClienteActidEmpleado.AsString = '') then
       rsidEmpleado.Clear
     else
       rsidEmpleado.Value := ClienteActidEmpleado.value;

     if ClienteActDescuento.AsFloat > 0 then
       rsporcdesc.value := ClienteActDescuento.value
     else
       rsPorcDesc.Value := 0;
       //desc.Clear;

     rsidClienteObra.Clear;
     ClienteObra.Parameters[1].Value := rsidCliente.Value;
     if ClienteObra.Active then ClienteObra.Requery() else ClienteObra.Open;

     if rsdet.IsEmpty then begin
       rsPagaItbis.Value := not(ClienteActNoPagaItbis.asboolean);
     end else begin if rsPagaitbis.Value <> not(ClienteActNoPagaItbis.asboolean) then
       ShowMessage('Las condicion de ITBIS del cliente no se pueden actualuzar si tiene articulos');
     end;
  end; // fin si no esta importando

  rsContacto.value   :=  ClienteActContacto.value;
  rsDireccion.value  :=  ClienteActDireccion.value;
  rsSector.value     :=  ClienteActSector.value;
  rsCiudad.value     :=  ClienteActCiudad.value;
  rsTelefono.value   :=  ClienteActTelefono.value;
  rsfax.value        :=  ClienteActFax.value;
  rseMail.value      :=  ClienteActeMail.value;
  rsClienteRNC.Value :=  ClienteActRNC_Cedula.Value;
end;

procedure TFacturapdv.RSDetidProductoValidate(Sender: TField);
begin
  inherited;
  if LocateProducto(sender.value) then
  begin
    floading := true;

    if qryCondicionPrecioContado.value then
      rsdetprecio.value := ProductoActPrecioContado.AsCurrency
    else
      rsdetprecio.value := ProductoActPrecioCredito.AsCurrency;

    rsdetProducto.value := ProductoActProducto.AsString;

    rsdetidUnidad.Value := ProductoActidUnidad.Value;

    CheckExistencia;
    
    floading := false;
  end
  else
     raise exception.create('Producto invalido');
end;

procedure TFacturapdv.CheckExistencia();
begin
  if (dm.GetDefaultStr('VAL_INV_FACT') = '0') Or importing then
    Exit;
  if (not rsdetidProducto.IsNull)
      and LocateProducto(rsdetidProducto.value)
      and (not rsdetcantidad.isnull)
      and (rsdetcantidad.Value > 0)
      and (not(nopromov.Checked)) then begin
      if (ProductoActCalcExistencia.AsBoolean) and ((Not ProductoActExistenciaNeg.Value) and (rsdetCantidad.Value > ProductoActExistencia.Value)) then
         raise exception.create('La existencia del producto es menor que la requerida  '+rsDetProducto.Value )
  end;
end;


procedure TFacturapdv.FormDestroy(Sender: TObject);
begin
  inherited;
  Empleado.close;
end;


procedure TFacturapdv.ACotizacionExecute(Sender: TObject);
begin
  inherited;
  CargarCotizacion();
end;

Procedure TFacturapdv.CargarCotizacion();
var
  c : Variant;
begin
  c := fBuscar(TFindCotizacion, 'idCotizacion',false);
  if not(c = Null) then
  begin
    Cotizacion2Fact.close;
    Cotizacion2Fact.Parameters[1].Value := c;
    Cotizacion2Fact.Open;

    try
      if not(Cotizacion2FactFacturable.Value) then
        raise exception.create('La Cotizacion tiene un status no Facturable ['+Cotizacion2FactCotizacionStatus.asstring+']');
      try
        if not(Cotizacion2Fact.IsEmpty) then begin
          Anuevo.Execute;
          importing := true;
            rsidCliente.Value   := Cotizacion2FactidCliente.Value;
            rsidCotizacion.Value:= Cotizacion2FactidCotizacion.Value;
            rsCotizacion.Value:= Cotizacion2FactCotizacion.Value;
          importing := false;
          rsidCondicion.value := Cotizacion2FactidCondicion.value;
          rsCliente.Value     := Cotizacion2FactCliente.Value;
          rsidMoneda.value  := Cotizacion2FactidMoneda.value;
          rsContacto.Value    := Cotizacion2FactContacto.Value;
          rsDireccion.Value   := Cotizacion2FactDireccion.Value;
          rsSector.Value      := Cotizacion2FactSector.Value;
          rsCiudad.Value      := Cotizacion2FactCiudad.Value;
          rsTelefono.Value    := Cotizacion2FactTelefono.Value;
          rsidEmpleado.value  := Cotizacion2FactidEmpleado.Value;
          rspagaitbis.Value   := Cotizacion2FactPagaitbis.Value;
          rsReferencia.value  := Cotizacion2FactReferencia.Value;
          rsPorcDesc.Value    := Cotizacion2FactPorcDesc.Value ;


          if Cotizacion2FactidClienteObra.isnull then
            rsidClienteObra.clear
          else
            rsidClienteObra.Value := Cotizacion2FactidClienteObra.value;

          importing :=  true;
          while not(Cotizacion2Fact.Eof) do begin

           try
            rsDet.Append;
            rsDetidProducto.Value:= Cotizacion2FactidProducto.Value;
            rsDetProducto.Value  := Cotizacion2FactProducto.Value;
            rsDetCantidad.Value  := Cotizacion2FactCantidad.Value;
            rsDetPrecio.Value    := Cotizacion2FactPrecio.Value;
            rsDetItbis.Value     := Cotizacion2FactItbisDet.Value;
            rsDetidUnidad.Value  := Cotizacion2FactidUnidad.Value;
            rsDetDescuento.Value := Cotizacion2FactDescDet.Value;
            rsDet.Post;
           except on e: Exception do begin
           showmessage('Error importando la cotizacion : ' +#10+#13+ e.Message);
           end; end;

            Cotizacion2Fact.next;
          end;
          importing :=  false;
        end;
      except on e: Exception do begin
           floading :=  false;
           Importing := false;
           ACancelar.Execute;
           Raise exception.create('Error importando la cotizacion : ' +#10+#13+ e.Message);
      end; end;
    finally
      Cotizacion2Fact.Close;
    end;
  end;
end;

Procedure TFacturapdv.CargarOrdComp();
var
  c : Variant;
begin
  c := fBuscar(TFindOrdComp, 'idOrdComp',false);
  if not(c = Null) then
  begin
    OrdComp2Fact.close;
    OrdComp2Fact.Parameters[1].Value := c;
    OrdComp2Fact.Open;

    try
      if not(OrdComp2FactFacturable.Value) then
        raise exception.create('El Pedido (OC) tiene un status No Facturable ['+OrdComp2FactOrdCompStatus.asstring+']');
      try
        if not(OrdComp2Fact.IsEmpty) then begin
          Anuevo.Execute;
          importing := true;
            rsidCliente.Value   := OrdComp2FactidCliente.Value;
            if not(OrdComp2FactidOrdComp.isnull) then begin
              rsidOrdComp.Value   := OrdComp2FactidOrdComp.Value;
              rsOrdComp.Value   := OrdComp2FactOrdComp.Value;
            end;
            if not(OrdComp2FactidCotizacion.isnull) then begin
              rsidCotizacion.Value:= OrdComp2FactidCotizacion.Value;
              rsCotizacion.Value:= OrdComp2FactCotizacion.Value;
            end;
          importing := false;
          rsidCondicion.value := OrdComp2FactidCondicion.value;
          rsCliente.Value   := OrdComp2FactCliente.Value;
          rsidMoneda.value := OrdComp2FactidMoneda.value;
          rsContacto.Value  := OrdComp2FactContacto.Value;
          rsDireccion.Value := OrdComp2FactDireccion.Value;
          rsSector.Value    := OrdComp2FactSector.Value;
          rsCiudad.Value    := OrdComp2FactCiudad.Value;
          rsTelefono.Value  := OrdComp2FactTelefono.Value;
          rsidEmpleado.value:= OrdComp2FactidEmpleado.Value;
          rspagaitbis.Value   := OrdComp2FactPagaitbis.Value;
          rsReferencia.value := OrdComp2FactReferencia.Value;
          rsPorcDesc.Value := OrdComp2FactPorcDesc.Value;

          if OrdComp2FactidClienteObra.isnull then
            rsidClienteObra.isnull
          else
            rsidClienteObra.Value := OrdComp2FactidClienteObra.value;

          importing :=  true;
          while not(OrdComp2Fact.Eof) do begin
            rsDet.Append;
            rsDetidProducto.Value:= OrdComp2FactidProducto.Value;
            rsDetProducto.Value  := OrdComp2FactProducto.Value;
            rsDetCantidad.Value  := OrdComp2FactCantidad.Value;
            rsDetPrecio.Value    := OrdComp2FactPrecio.Value;
            rsDetItbis.Value     := OrdComp2FactItbisDet.Value;
            rsDetidUnidad.Value  := OrdComp2FactidUnidad.Value;
            rsDetDescuento.Value := OrdComp2FactDescDet.Value;
            rsDet.Post;
            //-----------------------------------------
            //------------------------------------------
            OrdComp2Fact.next;
          end;
          importing :=  false;
        end;
      except on e: Exception do begin
           floading := false;
           Importing := false;
           ACancelar.Execute;
           Raise exception.create('Error importando el Pedido : ' +#10+#13+ e.Message);
      end; end;
    finally
      OrdComp2Fact.Close;
    end;
  end;
end;

Procedure TFacturapdv.CargarOrdCompEnt(idOrdComEntrega : variant);  //Entregas
begin
    OrdCompEnt2Fact.close;
    OrdCompEnt2Fact.Parameters[1].Value := idOrdComEntrega;
    OrdCompEnt2Fact.Open;

    try
      if not(OrdCompEnt2FactFacturable.Value) then
        raise exception.create('El Pedido (OC) tiene un status No Facturable ['+ OrdCompEnt2FactOrdCompStatus.asstring+']');
      try
        if not(OrdCompEnt2Fact.IsEmpty) then begin
          Anuevo.Execute;
          importing := true;
            rsidfactura.value := idOrdComEntrega;
            rsidreferencia.value := idOrdComEntrega;
            rsidCliente.Value   := OrdCompent2FactidCliente.Value;
            if not(OrdCompEnt2FactidOrdComp.isnull) then begin
              rsidOrdComp.Value   := OrdCompEnt2FactidOrdComp.Value;
              rsOrdComp.Value   := OrdCompEnt2FactOrdComp.Value;
            end;
            if not(OrdCompEnt2FactidCotizacion.isnull) then begin
              rsidCotizacion.Value:= OrdCompEnt2FactidCotizacion.Value;
              rsCotizacion.Value:= OrdCompEnt2FactCotizacion.Value;
            end;
          importing := false;
          rsidCondicion.value := OrdCompEnt2FactidCondicion.value;
          rsCliente.Value   := OrdCompEnt2FactCliente.Value;
          rsidMoneda.value := OrdCompEnt2FactidMoneda.value;
          rsContacto.Value  := OrdCompEnt2FactContacto.Value;
          rsDireccion.Value := OrdCompEnt2FactDireccion.Value;
          rsSector.Value    := OrdCompEnt2FactSector.Value;
          rsCiudad.Value    := OrdCompEnt2FactCiudad.Value;
          rsTelefono.Value  := OrdCompEnt2FactTelefono.Value;
          rsidEmpleado.value:= OrdCompEnt2FactidEmpleado.Value;
          rspagaitbis.Value   := OrdCompEnt2FactPagaitbis.Value;
          rsReferencia.value := OrdCompEnt2FactReferencia.Value;
          rsPorcDesc.Value := OrdCompEnt2FactPorcDesc.Value;

          if OrdCompEnt2FactidClienteObra.isnull then
            rsidClienteObra.isnull
          else
            rsidClienteObra.Value := OrdCompEnt2FactidClienteObra.value;

          importing :=  true;
          while not(OrdCompEnt2Fact.Eof) do begin
            rsDet.Append;
            rsDetidProducto.Value:= OrdCompEnt2FactidProducto.Value;
            rsDetProducto.Value  := OrdCompEnt2FactProducto.Value;
            rsDetCantidad.Value  := OrdCompEnt2FactCantidad.Value;
            rsDetPrecio.Value    := OrdCompEnt2FactPrecio.Value;
            rsDetItbis.Value     := OrdCompEnt2FactItbisDet.Value;
            rsDetidUnidad.Value  := OrdCompEnt2FactidUnidad.Value;
            rsDetDescuento.Value := OrdCompEnt2FactDescDet.Value;
            rsDet.Post;
            //-----------------------------------------

            OrdCompEnt2Fact.next;
          end;
          importing :=  false;
        end;
      except on e: Exception do begin
           floading := false;
           Importing := false;
           ACancelar.Execute;
           Raise exception.create('Error importando la Entrega : ' +#10+#13+ e.Message);
      end; end;
    finally
      OrdCompEnt2Fact.Close;
    end;

    AGuardar.Execute;
end;


procedure TFacturapdv.RSCotizacionValidate(Sender: TField);
var
  h : variant;
begin
  inherited;

  if importing then exit;

  rsidCotizacion.Clear;
  if sender.AsString <> '' then
    h := ReturnVariant('Cotizacion','idCotizacion','Cotizacion = ''' + Sender.AsString + '''')
  else
    exit;

  if (h = null) then
    Raise exception.Create('Esta Cotizacion no existe')
  else
    rsidCotizacion.Value := H;

end;

procedure TFacturapdv.AGetProductExecute(Sender: TObject);
var
  idProd : variant;
begin
  inherited;
  //cxGrid.SetFocus;
  if (AGetProduct.Enabled) then begin
    if rsidAlmacen.IsNull then
      raise exception.create('Debe tener un almacen seleccionado antes de seleccionar un producto');

    idProd := GetProduct();
    if idProd <> ''  then begin
      if not(rsdet.State in dsEditmodes) then rsdet.Edit;
        rsdetidProducto.Value := idProd;
    end;
  end;
end;


procedure TFacturapdv.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_add then begin
     if AGetProduct.Enabled then
       AGetProduct.Execute;
  end;

end;

procedure TFacturapdv.AprintExecute(Sender: TObject);
begin
  inherited;
  PrintFactura();
end;

procedure TFacturapdv.PrintFactura();
begin
rptFactura.Close;
  rptFactura.Parameters[1].value := rsidFactura.Value;
  rptFactura.Open;

  if (prnFormat.Text = 'Formato A') and (PrintFormatA <> '') and (fileexists(PrintFormatA)) then begin
     if FacturaRpt.Template.FileName <> PrintFormatA then begin
       FacturaRpt.Template.FileName := PrintFormatA;
       FacturaRpt.Template.LoadFromFile;
       FacturaRpt.PrinterSetup.PrinterName := PrinterFormatA;
     end
  end
  else if (prnFormat.Text = 'Formato B') and (PrintFormatB <> '') and (fileexists(PrintFormatB))then
  begin
     if FacturaRpt.Template.FileName <> PrintFormatB then begin
       FacturaRpt.Template.FileName := PrintFormatB;
       FacturaRpt.Template.LoadFromFile;
       FacturaRpt.PrinterSetup.PrinterName := PrinterFormatB;
     end
  end;

  if (PrintPreview = '1') then begin
    FacturaRPT.DeviceType := 'Screen';
    FacturaRPT.ShowPrintDialog := True;
  end
  else begin
    FacturaRPT.DeviceType := 'Printer';
    FacturaRPT.ShowPrintDialog := False;
  end;

  FacturaRpt.Print;
end;

procedure TFacturapdv.ACancelarExecute(Sender: TObject);
begin
  inherited;
  BatchUpdateCancel(rsEspec, false);  
end;

procedure TFacturapdv.dxDBEdit16DblClick(Sender: TObject);
begin
  inherited;
 if not(rsidCotizacion.isnull) then
    Modalshow(TCotizacion,ShowFind,rsidCotizacion.Value, '',true);
end;

procedure TFacturapdv.dxDBEdit6DblClick(Sender: TObject);
begin
  inherited;
 if not(rsidcliente.isnull) then
    Modalshow(TCliente, ShowFind, rsidCliente.Value, '',true)
 else
   Modalshow(TCliente, showInsert, rsidCliente.Value, '',true)

end;

procedure TFacturapdv.PagaItbisClick(Sender: TObject);
begin
  inherited;
  if rsPagaItbis.AsBoolean <> PagaItbis.Checked then
     rsPagaItbis.AsBoolean := PagaItbis.Checked;
     
end;

procedure TFacturapdv.RSOrdCompValidate(Sender: TField);
var
  h : variant;
begin
  inherited;
  if importing then exit;

  rsidOrdComp.Clear;
  if sender.AsString <> '' then
    h := ReturnVariant('OrdComp','idOrdComp','OrdComp = ''' + Sender.AsString + '''')
  else
    exit;

  if (h = null) then
    Raise exception.Create('Esta Orden de Compra no existe')
  else
    rsidOrdComp.Value := H;


end;

procedure TFacturapdv.dxDBEdit4DblClick(Sender: TObject);
begin
  inherited;
 if not(rsidOrdComp.isnull) then
    Modalshow(TOrdComp,ShowFind,rsidOrdComp.Value, '',true);
end;

procedure TFacturapdv.AOrdComp2FacturaExecute(Sender: TObject);
begin
  inherited;
  CargarOrdComp();

  calcTotal;
  ActualizarTotales();

end;

procedure TFacturapdv.SendMailExecute(Sender: TObject);
var
  Myfile : string;
  destino: string;
begin
  destino := rsemail.value;
  if not(inputquery('Confirmar Direccion', 'Confimacion',destino)) then abort;

  inherited;
  MyFile := GetTempFolder()+'Fact'+rsFactura.AsString +'.pdf';
  try
    application.Createform(TeMail, eMail);
    rptFactura.Close;
    rptFactura.Parameters[1].value := rsidFactura.Value;
    rptFactura.Open;
    deletefile(MyFile);
    FacturaRPT.DeviceType := 'PDFFile';
    FacturaRPT.ShowPrintDialog := false;
    FacturaRPT.ShowPrintDialog := false;
    FacturaRPT.TextFileName := MyFile;
    FacturaRPT.Print;
    if eMail.MailSend(Destino, 'Factura : ' + rsCliente.AsString ,'Su conduce ha sido enviado como adjunto a este correo',MyFile,'TXT') <> 0 then
      raise exception.Create('Error al enviar el eMail, verifique');

  finally
    FacturaRPT.ShowPrintDialog := true;
    FacturaRPT.ShowPrintDialog := true;
    FacturaRPT.DeviceType := 'Printer';
    email.Release;
  end;
end;

procedure TFacturapdv.RSPorcDescValidate(Sender: TField);
var
  cargando : boolean;
begin
  inherited;
  if importing then exit;

//  if (rsPorcDesc.AsFloat > 0) and (rsPorcDesc.AsFloat > ClienteActDescuento.value) then begin
//    if not DescAutorizado then DescAutorizado := dm.TienePermiso(PAprobar, Permisos, 'Descuentos para el cliente :'+rsidcliente.AsString, 'Client: ' +rsidcliente.AsString);
//    if not DescAutorizado then raise Exception.Create('No tiene autorizacion para aplicar el descuento');
//  end;

  if not(rsdet.active) then
    Exit;

  cargando := floading;
  floading := true;
  rsdet.First;
  while not rsdet.Eof do begin
    rsdet.Edit;
    try
      DescuentoCalc();
    except
      rsdetdescuento.Value := 0;
    end;
    rsdet.Post;
    rsdet.Next;
  end;

  floading := cargando;
end;


procedure TFacturapdv.RSDescuentoValidate(Sender: TField);
begin
  inherited;
  if rsdescuento.Value < 0 then
    raise exception.Create('El descuento no puede ser negativo');


end;

procedure TFacturapdv.RSCondicionValidate(Sender: TField);
begin
  inherited;
  if (not(rscredito.Value)) and (rscondicion.Value > 0)  then
    raise exception.create('Facturas de contado solo pueden tener condicion de cero (0) dias,  Presione Escape para abortar');
end;

procedure TFacturapdv.RSidAlmacenValidate(Sender: TField);
begin
  inherited;
  if Not(rsdet.IsEmpty) then
    Raise exception.Create('No puede cambiar el almacen despues de tener productos seleccionados');

end;

procedure TFacturapdv.RSDetBeforePost(DataSet: TDataSet);
begin
  inherited;
  if rsdetidproducto.isnull then
    raise exception.create('Debe seleccionar un codigo de producto');

  if rsdetCantidad.value <= 0 then
    raise exception.create('La Cantidad no puede ser cero');

  if rsdetPrecio.value <= 0 then
    raise exception.create('El Precio del producto no puede ser cero');

end;

procedure TFacturapdv.AProductoDetExecute(Sender: TObject);
begin
  inherited;
  ModalShow(TProductoDetalle, Showfind, rsdetidproducto.Value ,'');
end;

procedure TFacturapdv.RSidMonedaValidate(Sender: TField);
begin
  inherited;
  if not(rsdet.IsEmpty) then
    raise exception.Create('No puede cambiar la moneda con productos, cancele y elija la moneda antes que los productos');

  GetTasa();
end;

procedure TFacturapdv.GetTasa();
begin
  inherited;
  if (not(rsidmoneda.isnull)) and (not(rsfecha.isnull)) then
    rstasa.Value := dm.TasaActual(rsidmoneda.Value, rsfecha.value);
end;


procedure TFacturapdv.RSPagaItbisChange(Sender: TField);
begin
  inherited;
  if not(rsdet.IsEmpty) then begin
    rsdet.First;
    while not(rsdet.Eof) do begin
      rsdet.edit;
      CalcLineTotal();
      DescuentoCalc();
      CalcITBIS();
      rsdet.post;
      rsdet.Next
    end;
  end;
end;

procedure TFacturapdv.RSidCondicionValidate(Sender: TField);
begin
  inherited;
  ValidarCondicion();
end;


procedure TFacturapdv.ValidarCondicion();
var
  condicioncontado : variant;
  bm : string;
begin

  if not(qryCondicion.active) then begin
    qryCondicion.open();
    if not(qryCondicion.locate('idCondicion', RSidCondicion.Value, [])) then
      raise exception.Create('No existe la condicion especificada');
  end;

  if rsidcondicion.Value = qryCondicionidcondicion.Value then
    exit;

  condicioncontado := qryCondicionpreciocontado.value;

  bm := qryCondicion.Bookmark;
  if not(qryCondicion.locate('idCondicion', RSidCondicion.Value, [])) then
      raise exception.Create('No existe la condicion especificada');

  if (not(rsdet.IsEmpty)) and  (condicioncontado <> qryCondicionpreciocontado.value) then begin
    if not(uutiles.Confirmar('La condicion seleccionada requiere de precios diferentes, si continua se cambiaran los precios a los adecuados')) then begin
      qryCondicion.Bookmark := bm;
      abort;
    end else begin
      // actualizar precios
      rsdet.First;
      while not rsdet.eof do begin
        if not(rsdet.state in dseditmodes) then rsdet.edit;
        rsdetidproducto.value := rsdetidproducto.value;
        rsdet.Post;
        rsdet.next;
      end;
     end;
  end;

  if qryCondicioncredito.value then begin
        if fLoading = false then begin
          if (not(rsidcliente.IsNull)) and (not(TieneCredito(rsidCliente.asinteger, rsTotal.Value, RSidCondicion.Value))) then begin
            abort;
        end;
      end;
  end;

  if rscredito.Value <> qryCondicioncredito.value then
    rscredito.Value   := qryCondicioncredito.value;
  if rscondicion.Value <> qryCondiciondias.value then
    rscondicion.Value := qryCondiciondias.value;

  if rscredito.AsBoolean then
    prnFormat.Text := 'Formato B'
  else
    prnFormat.Text := 'Formato A';

end;


procedure TFacturapdv.RSFechaValidate(Sender: TField);
begin
  inherited;
  GetTasa();
end;

procedure TFacturapdv.ANuevoExecute(Sender: TObject);
begin
  inherited;
  nopromov.Checked := false;
  dxDBEdit6.SetFocus();


end;

function TFacturapdv.BuscarNCFFactura(const ncf: string): Variant;
begin
  with cBuscarNCFFact do begin
    Parameters[1].Value := ncf;
    Execute();
    Result := Parameters[2].Value;
  end;
end;

procedure TFacturapdv.RSBeforePost(DataSet: TDataSet);
var
  v: Variant;
begin
  inherited;
  if rs.State = dsInsert then begin

    if rsCompFiscal.Asstring = '' then begin
      rsCompFiscal.Value := dm.GetCompFiscal(ComputerName(),'FT', rsidcliente.value);
      v := BuscarNCFFactura(rsCompFiscal.Value);
      if v <> NULL then begin
        if v <> rsIdFactura.Value then
          rsCompFiscal.Value := dm.GetCompFiscal(ComputerName(),'FT', rsidcliente.value);
      end;
    end;
  end;
end;

procedure TFacturapdv.ALocalizarExecute(Sender: TObject);
begin
  inherited;
  fCreditoAutorizado := False;
end;

procedure TFacturapdv.OcultarCampos;
begin
  if dm.GetDefaultStr('MULTIPLES_ALMS') <> '1' then begin
    cxGrididAlmacen.Visible := False;
  end;

  if dm.GetDefaultStr('OCULTAR_UNIDAD') <> '1' then begin
    cxGrididUnidad.Visible := False;
  end;
end;

procedure TFacturapdv.cxGrididProductoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if AGetProduct.Enabled then AGetProduct.Execute;
end;

procedure TFacturapdv.cxGrid1Enter(Sender: TObject);
begin
  inherited;
  if appestado <> appBrowse then
    if rsdet.IsEmpty then rsdet.Append;

  Enter2Tab := False;
end;

procedure TFacturapdv.cxGrid1Exit(Sender: TObject);
begin
  inherited;
  Enter2Tab := True;

end;

procedure TFacturapdv.FindClienteClick(Sender: TObject);
var
  x : variant;
begin
  inherited;
  x := fbuscar(TBusqueda,'idCliente',false,'FindCliente');
  if x <> Null then
  begin
    RSidCliente.Value := x;
  end;
end;

procedure TFacturapdv.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if not(DM.Tienepermiso(PAprobar, permisos, 'Requiere permiso de aprobacion para este acceso')) then
    raise exception.create('Usted no tiene autorizacion de aprobar esta accion')
  else
    Nopromov.Checked := not(Nopromov.Checked);
end;

end.





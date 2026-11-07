unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ppDB, ppDBPipe, ppParameter, ppBands, ppVar,
  ppStrtch, ppMemo, myChkBox, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport;

type
  TForm1 = class(TForm)
    FacturaRPT: TppReport;
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
    ppDBText26: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText10: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppDBText24: TppDBText;
    ppDBMemo3: TppDBMemo;
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
    ppSummaryBand1: TppSummaryBand;
    ppDBMemo1: TppDBMemo;
    ppParameterList1: TppParameterList;
    plrptFactura: TppDBPipeline;
    plrptFacturappField1: TppField;
    plrptFacturappField2: TppField;
    plrptFacturappField3: TppField;
    plrptFacturappField4: TppField;
    plrptFacturappField5: TppField;
    plrptFacturappField6: TppField;
    plrptFacturappField7: TppField;
    plrptFacturappField8: TppField;
    plrptFacturappField9: TppField;
    plrptFacturappField10: TppField;
    plrptFacturappField11: TppField;
    plrptFacturappField12: TppField;
    plrptFacturappField13: TppField;
    plrptFacturappField14: TppField;
    plrptFacturappField15: TppField;
    plrptFacturappField16: TppField;
    plrptFacturappField17: TppField;
    plrptFacturappField18: TppField;
    plrptFacturappField19: TppField;
    plrptFacturappField20: TppField;
    plrptFacturappField21: TppField;
    plrptFacturappField22: TppField;
    plrptFacturappField23: TppField;
    plrptFacturappField24: TppField;
    plrptFacturappField25: TppField;
    plrptFacturappField26: TppField;
    plrptFacturappField27: TppField;
    plrptFacturappField28: TppField;
    plrptFacturappField29: TppField;
    plrptFacturappField30: TppField;
    plrptFacturappField31: TppField;
    plrptFacturappField32: TppField;
    plrptFacturappField33: TppField;
    plrptFacturappField34: TppField;
    plrptFacturappField35: TppField;
    plrptFacturappField36: TppField;
    plrptFacturappField37: TppField;
    plrptFacturappField38: TppField;
    plrptFacturappField39: TppField;
    plrptFacturappField40: TppField;
    plrptFacturappField41: TppField;
    plrptFacturappField42: TppField;
    dsRptFactura: TDataSource;
    rptFactura: TADODataSet;
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
    rptFacturaCondicion: TStringField;
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
    rptFacturaOrdComp: TStringField;
    rptFacturaidCliente: TIntegerField;
    rptFacturaidUnidad: TStringField;
    rptFacturaVencimiento: TDateTimeField;
    rptFacturaNota2: TStringField;
    rptFacturaCompFiscal: TStringField;
    rptFacturaClienteRNC: TStringField;
    rptFacturaTipoNCF: TStringField;
    rptFacturaEspecificacion: TStringField;
    ADOConnection1: TADOConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.

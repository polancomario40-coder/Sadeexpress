unit uMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons, ppRelatv, ppProd,
  ppClass, ppReport, ppComm, ppEndUsr, Gradient, DB, ADODB, ppDB, ppDBPipe,
  ppDBBDE, ppParameter, ppModule, daDataModule, ppCtrls, ppBands, ppStrtch, raCodMod,
  ppMemo, ppPrnabl, ppCache, ppVar, myChkBox, ppDesignLayer, ppSubRpt;

type
  TMainForm = class(TForm)
    Designer: TppDesigner;
    OpenDialog1: TOpenDialog;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    SaveDialog1: TSaveDialog;
    Gradient1: TGradient;
    ADOConnection1: TADOConnection;
    Report: TppReport;
    ppParameterList1: TppParameterList;
    plrptFactura: TppDBPipeline;
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
    rptFacturaidMoneda: TIntegerField;
    rptFacturaMoneda: TStringField;
    rptFacturaFax: TStringField;
    rptFacturaLinea: TIntegerField;
    rptFacturaNumeroSuplidor: TStringField;
    rptFacturaDias: TBCDField;
    rptFacturaPrecioDia: TBCDField;
    rptFacturaCelular: TStringField;
    rptFacturahora: TDateTimeField;
    rptFacturaemail: TStringField;
    rptFacturaObservacion: TStringField;
    rptFacturaUsuario: TStringField;
    rptFacturaidEmpleado: TIntegerField;
    rptFacturaClienteObra: TStringField;
    rptFacturaNetLineTotal: TBCDField;
    rptFacturaPagadoCon: TBCDField;
    rptFacturaDevuelta: TBCDField;
    Label1: TLabel;
    ppTitleBand2: TppTitleBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText46: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLabel18: TppLabel;
    ppDBText18: TppDBText;
    ppLabel39: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppDBText32: TppDBText;
    ppLabel19: TppLabel;
    ppDBText33: TppDBText;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText3: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel20: TppLabel;
    ppDBText23: TppDBText;
    ppLabel21: TppLabel;
    ppDBText24: TppDBText;
    ppLabel22: TppLabel;
    ppDBText25: TppDBText;
    ppLabel23: TppLabel;
    ppDBText26: TppDBText;
    ppLabel24: TppLabel;
    ppLabel2: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBText6: TppDBText;
    ppDBText9: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    calcTotalPago: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel3: TppLabel;
    ppVariable1: TppVariable;
    raCodeModule1: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppDBMemo2: TppDBMemo;
    ppDBText4: TppDBText;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    raCodeModule2: TraCodeModule;
    rptFacturaFechaVenceNCF: TDateTimeField;
    ppDBText5: TppDBText;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.cxButton1Click(Sender: TObject);
begin
  if Opendialog1.Execute() then begin
    Report.Template.FileName := OpenDialog1.FileName;
    Report.Template.LoadFromFile();

    Designer.ShowModal();
  end;
end;

procedure TMainForm.cxButton2Click(Sender: TObject);
begin
  if SaveDialog1.Execute() then begin
    Report.Template.FileName := SaveDialog1.FileName;
    Report.Template.SaveToFile();
  end;
end;

procedure TMainForm.cxButton4Click(Sender: TObject);
begin
  Close();
end;

end.

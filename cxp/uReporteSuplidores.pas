unit uReporteSuplidores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, DB, ADODB, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppClass, ppReport, dxCntner, Gradient, ppStrtch, ppRichTx, ppCtrls,
  ppVar, ppPrnabl, ppBands, ppCache, uSimpleForm, myChkBox, ppParameter;

type
  TReporteSuplidores = class(TSimpleForm)
    Report: TppReport;
    ppDBPipeline1: TppDBPipeline;
    rsSups: TADODataSet;
    rsSupsidSuplidor: TIntegerField;
    rsSupsNombre: TStringField;
    rsSupsTelefono1: TStringField;
    rsSupsTelefono2: TStringField;
    rsSupsFax: TStringField;
    rsSupsRNC: TStringField;
    rsSupsDireccion: TStringField;
    rsSupsTipo: TStringField;
    rsSupsMoneda: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppGroup1: TppGroup;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppLine4: TppLine;
    ppShape1: TppShape;
    ppDBRichText1: TppDBRichText;
    ppDBText7: TppDBText;
    ppShape2: TppShape;
    ppLine1: TppLine;
    rsSupsLimiteCredito: TBCDField;
    rsSupsFormaPago: TStringField;
    rsSupsDiasCredito: TIntegerField;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel10: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText9: TppDBText;
    ppLabel11: TppLabel;
    ppDBText10: TppDBText;
    rsSupsTipoNCF: TStringField;
    rsSupsEstatus: TBooleanField;
    myDBCheckBox1: TmyDBCheckBox;
    procedure ppShape2Print(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReporteSuplidores: TReporteSuplidores;

procedure ImprimirReporte;

implementation

uses uMAINDM, Udata;

{$R *.dfm}

procedure TReporteSuplidores.ppShape2Print(Sender: TObject);
begin
  inherited;
  ppShape2.Visible := not ppShape2.Visible;
end;

procedure ImprimirReporte;
begin
  with TReporteSuplidores.Create(Application) do begin
    rsSups.Open();
    Imprimir(Report);
    Release();
  end;
end;

end.

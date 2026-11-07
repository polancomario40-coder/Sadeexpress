unit uImprimirCert;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, ADODB, Wwdatsrc, cxLookAndFeelPainters, StdCtrls,
  cxButtons, Gradient, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppCtrls, ppBands, ppStrtch, ppRichTx, ppPrnabl, ppCache, uLicenseManager,
  ppMemo, ppParameter;

type
  TImprimirCert = class(TFForm)
    rsDocs: TADODataSet;
    rsCheque: TADODataSet;
    dsDocs: TDataSource;
    Gradient1: TGradient;
    Gradient2: TGradient;
    Label17: TLabel;
    cxButton3: TcxButton;
    cxButton2: TcxButton;
    rsChequeNumero: TIntegerField;
    rsChequeIdDocumento: TIntegerField;
    rsChequeFecha: TDateTimeField;
    rsChequeIdEntidad: TIntegerField;
    rsChequeCuentaBanco: TStringField;
    rsChequeNombre: TStringField;
    rsChequeCtaDoc: TStringField;
    rsChequeDescripcionCuenta: TStringField;
    rsChequeValor: TBCDField;
    rsChequeValorCheque: TBCDField;
    rsChequeTextoConcepto: TStringField;
    rsChequeST: TStringField;
    rsChequeidCuentaBanco: TIntegerField;
    rsChequeFechaProcesado: TDateTimeField;
    rsChequeFormatoCheque: TStringField;
    rsChequeidCuenta: TStringField;
    rsChequeDescripcion: TStringField;
    rsChequeDebito: TBCDField;
    rsChequeCredito: TBCDField;
    plCheque: TppDBPipeline;
    Report: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppRichText1: TppRichText;
    ppRichText2: TppRichText;
    ppSummaryBand1: TppSummaryBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppRichText3: TppRichText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppShape1: TppShape;
    ppShape2: TppShape;
    rsDocsidDocumento: TIntegerField;
    rsDocsReferencia: TStringField;
    rsDocsFecha: TDateTimeField;
    rsDocsValor: TBCDField;
    rsDocsRetencion: TBCDField;
    ppDBPipeline1: TppDBPipeline;
    rsDocsNombre: TStringField;
    rsDocsRNC: TStringField;
    rsDocsFechaCheque: TDateTimeField;
    rsDocsValorCheque: TBCDField;
    rsDocsNumero: TStringField;
    rsDocsTextoRetencion: TStringField;
    rsDocsRetencionISR: TBCDField;
    rsDocsRetencionITBIS: TBCDField;
    ppDBText9: TppDBText;
    ppLabel5: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppShape3: TppShape;
    ppLabel6: TppLabel;
    rsDocsFirmaRetencion: TVariantField;
    ppDBMemo1: TppDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure MostrarCertificacion(const idck: Integer);
  end;

var
  ImprimirCert: TImprimirCert;

implementation

uses Udata, StrUtils;

{$R *.dfm}

{ TImprimirCert }

class procedure TImprimirCert.MostrarCertificacion(const idck: Integer);
var
  fn: string;
begin
  with TImprimirCert.Create(Application) do begin
    try
      rsCheque.Close();
      rsCheque.Parameters[1].Value := idck;
      rsCheque.Open();

      rsDocs.Close();
      rsDocs.Parameters[1].Value := idck;
      rsDocs.Open();

      fn := dm.GetDefaultStr('FMT_RETENCION');
      if (fn <> '') and (FileExists(fn)) then begin
        Report.Template.FileName := fn;
        Report.Template.LoadFromFile();
      end;
      Imprimir(Report);
    finally
      Release();
    end;
  end;
end;

end.

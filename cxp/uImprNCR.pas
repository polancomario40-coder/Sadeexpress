unit uImprNCR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uMantClass, DB, ADODB, dxCntner, Gradient, ppStrtch, ppRichTx,
  ppCtrls, ppPrnabl, ppClass, ppDB, ppBands, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, uSimpleForm, ppMemo, ppParameter;

Procedure ImprimirProvInf(Const IdDoc : Integer);

type
  TfImprNCR = class(TSimpleForm)
    rsDocumento: TADODataSet;
    rsDocumentoidDocumento: TIntegerField;
    rsDocumentoidTrans: TIntegerField;
    rsDocumentoFecha: TDateTimeField;
    rsDocumentoidSuplidor: TIntegerField;
    rsDocumentoReferencia: TStringField;
    rsDocumentoValor: TBCDField;
    rsDocumentoMontoImpuestos: TBCDField;
    rsDocumentoMontoDescuento: TBCDField;
    rsDocumentoMontoRetenciones: TBCDField;
    rsDocumentoTotal: TBCDField;
    rsDocumentoConcepto: TStringField;
    rsDocumentoidMoneda: TIntegerField;
    rsDocumentoTelefono1: TStringField;
    rsDocumentoTelefono2: TStringField;
    rsDocumentoFax: TStringField;
    rsDocumentoDireccion: TStringField;
    rsDocumentoNombre: TStringField;
    rsDocumentoRNC: TStringField;
    rsDocumentoCodifManual: TBooleanField;
    rsDocumentoDescripcion: TStringField;
    rsDocumentoDebCre: TWordField;
    rsDocumentoAbrev: TStringField;
    rsDocumentoidCuenta: TStringField;
    rsDocumentoidCuentaBanco: TIntegerField;
    rsDocumentoStatus: TStringField;
    rsDocumentoFechaStatus: TDateTimeField;
    rsDocumentoTipoDocOrigen: TStringField;
    rsDocumentoDocOrigen: TIntegerField;
    rsDocumentoDias: TSmallintField;
    rsDocumentoMostrarEnCXP: TBooleanField;
    rsDocDtl: TADODataSet;
    rsDocDtlidDocumento: TIntegerField;
    rsDocDtlLineaNum: TIntegerField;
    rsDocDtlIdDocXPagar: TIntegerField;
    rsDocDtlValor: TBCDField;
    rsDocDtlFecha: TDateTimeField;
    rsDocDtlTotal: TBCDField;
    rsDocDtlReferencia: TStringField;
    rsDocDtlAbrev: TStringField;
    rsDocDtlFechaDoc: TDateTimeField;
    dsHeader: TDataSource;
    plHeader: TppDBPipeline;
    plDet: TppDBPipeline;
    Report: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel1: TppLabel;
    ppDBText5: TppDBText;
    ppLabel2: TppLabel;
    ppDBRichText1: TppDBRichText;
    ppDBText6: TppDBText;
    rsCtasDoc: TADODataSet;
    rsCtasDocidCuenta: TStringField;
    rsCtasDocDescripcion: TStringField;
    rsCtasDocDebCre: TWordField;
    rsCtasDocDebito: TBCDField;
    rsCtasDocCredito: TBCDField;
    rsCtasDocAutomatica: TBooleanField;
    ppLabel3: TppLabel;
    ppDBText7: TppDBText;
    ppLabel4: TppLabel;
    ppDBText8: TppDBText;
    ppLabel5: TppLabel;
    ppDBText9: TppDBText;
    ppLabel6: TppLabel;
    ppDBText10: TppDBText;
    ppShape1: TppShape;
    ppLabel7: TppLabel;
    ppLine1: TppLine;
    ReportDoc: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape2: TppShape;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLabel8: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLabel14: TppLabel;
    ppDBRichText2: TppDBRichText;
    ppLine2: TppLine;
    ppDBText21: TppDBText;
    ppLine3: TppLine;
    ppShape3: TppShape;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppShape4: TppShape;
    rsDocumentoBienesServicio: TSmallintField;
    rsDocumentoNotaAdicional: TStringField;
    rsDocumentoidAuxiliar: TStringField;
    rsDocumentoCompFiscal: TStringField;
    rsDocumentoGUIDDocumento: TGuidField;
    rsDocumentoTotalNeto: TBCDField;
    rsDocumentoidTipoIdentificacion: TStringField;
    rsDocumentoidClaseGasto: TStringField;
    rsDocumentoTasa: TBCDField;
    rsDocumentoPedirNCF: TStringField;
    rsDocumentoTotalRetenciones: TFloatField;
    ppLabel15: TppLabel;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    spCxpDocumentoRpt: TADOStoredProc;
    spCxpDocumentoRptidDocumento: TAutoIncField;
    spCxpDocumentoRptidTrans: TIntegerField;
    spCxpDocumentoRptFecha: TDateTimeField;
    spCxpDocumentoRptidSuplidor: TIntegerField;
    spCxpDocumentoRptReferencia: TStringField;
    spCxpDocumentoRptValor: TBCDField;
    spCxpDocumentoRptMontoImpuestos: TBCDField;
    spCxpDocumentoRptMontoDescuento: TBCDField;
    spCxpDocumentoRptMontoRetenciones: TBCDField;
    spCxpDocumentoRptConcepto: TStringField;
    spCxpDocumentoRptidMoneda: TIntegerField;
    spCxpDocumentoRptCodifManual: TBooleanField;
    spCxpDocumentoRptStatus: TStringField;
    spCxpDocumentoRptFechaStatus: TDateTimeField;
    spCxpDocumentoRptidCuentaBanco: TIntegerField;
    spCxpDocumentoRptidCuenta: TStringField;
    spCxpDocumentoRptTipoDocOrigen: TStringField;
    spCxpDocumentoRptDocOrigen: TIntegerField;
    spCxpDocumentoRptDias: TSmallintField;
    spCxpDocumentoRptMostrarEnCXP: TBooleanField;
    spCxpDocumentoRptBienesServicio: TSmallintField;
    spCxpDocumentoRptNotaAdicional: TStringField;
    spCxpDocumentoRptidAuxiliar: TStringField;
    spCxpDocumentoRptCompFiscal: TStringField;
    spCxpDocumentoRptGUIDDocumento: TGuidField;
    spCxpDocumentoRptTotal: TBCDField;
    spCxpDocumentoRptTotalNeto: TBCDField;
    spCxpDocumentoRptidTipoIdentificacion: TStringField;
    spCxpDocumentoRptidClaseGasto: TStringField;
    spCxpDocumentoRptTasa: TBCDField;
    spCxpDocumentoRptTelefono1: TStringField;
    spCxpDocumentoRptTelefono2: TStringField;
    spCxpDocumentoRptFax: TStringField;
    spCxpDocumentoRptDireccion: TStringField;
    spCxpDocumentoRptNombre: TStringField;
    spCxpDocumentoRptRNC: TStringField;
    spCxpDocumentoRptPedirNCF: TStringField;
    spCxpDocumentoRptttDescripcion: TStringField;
    spCxpDocumentoRptttDebCre: TWordField;
    spCxpDocumentoRptttAbrev: TStringField;
    spCxpDocumentoRptTotalRetenciones: TFloatField;
    spCxpDocumentoRptidAuxiliar_1: TStringField;
    spCxpDocumentoRptDescripcion: TStringField;
    spCxpDocumentoRptDebCre: TWordField;
    spCxpDocumentoRptAutomatica: TBooleanField;
    spCxpDocumentoRptDebito: TBCDField;
    spCxpDocumentoRptCredito: TBCDField;
    spCxpDocumentoRptMoneda: TStringField;
    plDocRpt: TppDBPipeline;
    rptDocProveedoresInf: TppReport;
    dsDocRpt: TDataSource;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImprNCR: TfImprNCR;

procedure ImprimirNCR(const idDoc: Integer);

implementation

uses uMAINDM, Udata;

{$R *.dfm}

procedure ImprimirNCR(const idDoc: Integer);
begin
  with TfImprNCR.Create(Application) do begin
    with rsDocumento do begin
      Close();
      Parameters[1].Value := idDoc;
      Open();
    end;

    with rsCtasDoc do begin
      Close();
      Parameters[1].Value := idDoc;
      Open();
    end;

    Imprimir(Report);
    Release();
  end;
end;

Procedure ImprimirProvInf(Const IdDoc : Integer);
Begin
  With tFImprNCR.Create(Application) Do
  Begin
    With spCxpDocumentoRpt, Parameters Do
    Begin
      Close();
      ParamByName('@IdDoc').Value := IdDoc;
      Open();

      Imprimir(rptDocProveedoresInf);
      Release();
    End;
  End;
End;

end.


unit uReporteActivos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ppDB, ppDBPipe, ppBands, ppClass, ppStrtch, ppRichTx,
  ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxLookAndFeelPainters, cxButtons, ppParameter;

type
  TReporteActivos = class(TForm)
    rListaActivos: TppReport;
    ppTitleBand1: TppTitleBand;
    ppHeaderBand4: TppHeaderBand;
    ppLine11: TppLine;
    ppLabel52: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable7: TppSystemVariable;
    ppDetailBand4: TppDetailBand;
    ppDBText44: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBRichText1: TppDBRichText;
    ppLine15: TppLine;
    ppFooterBand4: TppFooterBand;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppDBText38: TppDBText;
    ppLine14: TppLine;
    ppLabel53: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel60: TppLabel;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppLine10: TppLine;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppDBText45: TppDBText;
    ppGroupFooterBand8: TppGroupFooterBand;
    plReporte: TppDBPipeline;
    dsRepActivos: TDataSource;
    rsReporteActivos: TADODataSet;
    ppDBText1: TppDBText;
    ppDBCalc1: TppDBCalc;
    rsReporteActivosidActivo: TIntegerField;
    rsReporteActivosDescripcion: TStringField;
    rsReporteActivosFechaAdq: TDateTimeField;
    rsReporteActivosDocumentoAdq: TStringField;
    rsReporteActivosFechaActivacion: TDateTimeField;
    rsReporteActivosVidaUtil: TBCDField;
    rsReporteActivosidCategoria: TIntegerField;
    rsReporteActivosidCuentaActivo: TStringField;
    rsReporteActivosStatus: TStringField;
    rsReporteActivosFechaStatus: TDateTimeField;
    rsReporteActivosReferencia: TStringField;
    rsReporteActivosNumeroSerie: TStringField;
    rsReporteActivosCantidad: TBCDField;
    rsReporteActivosidUbicacion: TIntegerField;
    rsReporteActivosObservaciones: TStringField;
    rsReporteActivosAsignadoA: TStringField;
    rsReporteActivosCategoria: TStringField;
    rsReporteActivosUbicacion: TStringField;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    rsReporteActivosValorAdq: TBCDField;
    Label1: TLabel;
    rsDpto: TADODataSet;
    rsDptoidUbicacion: TAutoIncField;
    rsDptoidUbicMadre: TIntegerField;
    rsDptoDescripcion: TStringField;
    ds: TDataSource;
    ludpto: TcxLookupComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReporteActivos: TReporteActivos;

procedure ImprimirReporte;

implementation

uses Udata, UUtiles;

{$R *.dfm}

{ TForm1 }

procedure ImprimirReporte;
begin
  with TReporteActivos.Create(Application)  do begin
    rsdpto.Open();
    ShowModal();
    Release();
  end;
end;

procedure TReporteActivos.cxButton1Click(Sender: TObject);
begin
  with rsReporteActivos do begin
    Close();
    if luDpto.Text <> '' then
      Parameters[1].Value := luDpto.EditValue
    else
      Parameters[1].Value := 0;
    Open();
    uutiles.ImprimirReporte(rListaActivos);
  end;
end;

procedure TReporteActivos.cxButton2Click(Sender: TObject);
begin
  Close();
end;

end.

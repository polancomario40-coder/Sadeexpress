unit uResumenED;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, StdCtrls, Buttons, wwdbdatetimepicker, Grids, Wwdbigrd,
  Wwdbgrid, ComCtrls, wwriched, ppCtrls, ppVar, ppPrnabl, ppClass, ppBands,
  ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppParameter;

type
  TCuadreEntradas = class(TForm)
    Label2: TLabel;
    dtDesde: TwwDBDateTimePicker;
    dtHasta: TwwDBDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edds: TDataSource;
    rsEntradas: TADODataSet;
    rsEntradasNumeroEntrada: TStringField;
    rsEntradasFecha: TDateTimeField;
    rsEntradasTotalDebito: TBCDField;
    rsEntradasTotalCredito: TBCDField;
    Label1: TLabel;
    rsEntradasDiferencia: TCurrencyField;
    wwDBGrid1: TwwDBGrid;
    rsEntradasConcepto: TStringField;
    plEntradas: TppDBPipeline;
    Report: TppReport;
    rsEntradasidEntrada: TGuidField;
    ppTitleBand1: TppTitleBand;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLine2: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBText7: TppDBText;
    procedure BitBtn1Click(Sender: TObject);
    procedure rsEntradasCalcFields(DataSet: TDataSet);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure ppShape1Print(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CuadreEntradas: TCuadreEntradas;

implementation

uses ugldm, uMantEntrada, Udata, UUtiles;

{$R *.dfm}

procedure TCuadreEntradas.BitBtn1Click(Sender: TObject);
begin
  with rsEntradas do begin
    Close();
    parameters[0].Value := int(dtDesde.Date);
    parameters[1].Value := int(dtHasta.Date);
    Open();
  end;
end;

procedure TCuadreEntradas.rsEntradasCalcFields(DataSet: TDataSet);
begin
  rsEntradasDiferencia.AsCurrency := rsEntradasTotalDebito.AsCurrency - rsEntradasTotalCredito.AsCurrency;
end;

procedure TCuadreEntradas.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if HighLight then
    Exit;

  if (rsEntradasDiferencia.AsCurrency <> 0) then
    AFont.Color := clRed
  else
    AFont.Color := clWindowText;
end;

procedure TCuadreEntradas.ppShape1Print(Sender: TObject);
begin
  ppShape1.Visible := rsEntradasDiferencia.AsCurrency <> 0;
end;

procedure TCuadreEntradas.BitBtn2Click(Sender: TObject);
begin

    uutiles.ImprimirReporte(Report);
 
end;

procedure TCuadreEntradas.wwDBGrid1DblClick(Sender: TObject);
begin
  if rsEntradas.Active and (rsEntradas.RecordCount > 0) then begin
    if not rsEntradasIdEntrada.IsNull then
      AbrirEntradaDiario(rsEntradasIdEntrada.Value);
  end;
end;

end.

unit uResumen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, StdCtrls, Buttons, wwdbdatetimepicker, Grids, Wwdbigrd,
  Wwdbgrid, ComCtrls, wwriched, ppCtrls, ppVar, ppPrnabl, ppClass, ppBands,
  ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, dxEditor,
  dxEdLib, ppStrtch, ppMemo, ppParameter;

type
  TResumenEntradas = class(TForm)
    Label2: TLabel;
    dtDesde: TwwDBDateTimePicker;
    dtHasta: TwwDBDateTimePicker;
    BitBtn1: TBitBtn;
    Edds: TDataSource;
    rsEntradas: TADODataSet;
    Label1: TLabel;
    wwDBGrid1: TwwDBGrid;
    Report: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppShape1: TppShape;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    EntradaNum: TdxEdit;
    Label3: TLabel;
    BitBtn2: TBitBtn;
    rsEntradasidCuenta: TStringField;
    rsEntradasCuenta: TStringField;
    rsEntradasDebito: TBCDField;
    rsEntradasCredito: TBCDField;
    rsEntradasNumeroEntrada: TStringField;
    plEntradas: TppDBPipeline;
    rsEntradasDebCre: TSmallintField;
    rsEntradasConcepto: TStringField;
    ppVariable1: TppVariable;
    ppDBMemo1: TppDBMemo;
    ppDBText5: TppDBText;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppShape1Print(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ResumenEntradas: TResumenEntradas;

implementation

uses ugldm, Udata, UUtiles;

{$R *.dfm}

procedure TResumenEntradas.BitBtn1Click(Sender: TObject);
begin
  with rsEntradas do begin
    Close();
    parameters[1].Value := dtDesde.Date;
    parameters[2].Value := dtHasta.Date;
    parameters[3].Value := Entradanum.text;

    Open();
  end;
end;

procedure TResumenEntradas.BitBtn2Click(Sender: TObject);
begin
  uutiles.ImprimirReporte(Report);
end;

procedure TResumenEntradas.ppShape1Print(Sender: TObject);
begin
  ppShape1.Visible := not ppShape1.Visible;
end;

procedure TResumenEntradas.ppVariable1Calc(Sender: TObject; var Value: Variant);
begin
  Value := 'Desde: ' + dtDesde.text + ' hasta: ' + dtHasta.Text;
end;

end.

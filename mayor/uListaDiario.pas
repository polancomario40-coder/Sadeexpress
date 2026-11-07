unit uListaDiario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, wwdbedit, StdCtrls, wwdbdatetimepicker, DB, Buttons,
  Grids, Wwdbigrd, Wwdbgrid, ppProd, ppClass, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, ppCtrls, ppPrnabl, ppBands, ppCache, ppVar, DateUtils,
  dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms, dxCntner, dxExEdtr,
  ppParameter;

type
  TfListaDiario = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    dtHasta: TwwDBDateTimePicker;
    edCta: TwwDBEdit;
    SpeedButton1: TSpeedButton;
    dsDiario: TDataSource;
    Label3: TLabel;
    dtDesde: TwwDBDateTimePicker;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    dsTotales: TDataSource;
    Label4: TLabel;
    wwDBEdit3: TwwDBEdit;
    Label5: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    sd1: TSaveDialog;
    plDiario: TppDBPipeline;
    Report: TppReport;
    plTotales: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppShape1: TppShape;
    ppDBText12: TppDBText;
    Grid: TdxDBGrid;
    GridFecha: TdxDBGridDateColumn;
    GridReferencia: TdxDBGridMaskColumn;
    GridDebito: TdxDBGridMaskColumn;
    GridCredito: TdxDBGridMaskColumn;
    GridSistema: TdxDBGridMaskColumn;
    GridDescripcion: TdxDBGridMaskColumn;
    GrididTrans: TdxDBGridMaskColumn;
    GrididDocumento: TdxDBGridMaskColumn;
    GridKeyCol: TdxDBGridMaskColumn;
    GrididCuenta: TdxDBGridMaskColumn;
    ppSummaryBand1: TppSummaryBand;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dtHastaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    FTotalDB, FTotalCR: Currency;
    function GetCuenta: string;
    procedure SetCuenta(const Value: string);
    procedure CalcularTotales;
    { Private declarations }
  public
    { Public declarations }
    property idCuenta: string read GetCuenta write SetCuenta;
    procedure Mostrar;
  end;

var
  fListaDiario: TfListaDiario;

implementation

uses ugldm, uBuscarCuentaMayor, UUtiles;

{$R *.dfm}

procedure TfListaDiario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_RETURN then begin
    SelectNext(ActiveControl,True,True);
  end
  else if Key = vk_ESCAPE then begin
    edCta.SetFocus();
    Key := 0;
  end;
end;

procedure TfListaDiario.dtHastaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_RETURN then
    SpeedButton4.Click();
end;

procedure TfListaDiario.SpeedButton4Click(Sender: TObject);
begin
  Mostrar();
end;

procedure TfListaDiario.SpeedButton3Click(Sender: TObject);
begin
  if sd1.Execute() then begin
     Grid.SaveToXLS(sd1.FileName,True);
  end;
end;

procedure TfListaDiario.SpeedButton1Click(Sender: TObject);
var
  cta: string;
begin
  cta := BuscarCtaDetalle();
  if cta <> '' then begin
    edCta.Text := cta;
    SelectNext(ActiveControl,True,True);
  end;
end;

function TfListaDiario.GetCuenta: string;
begin
  Result := Trim(edCta.Text);
end;

procedure TfListaDiario.SetCuenta(const Value: string);
begin
  edCta.Text := Value;
end;

procedure TfListaDiario.FormCreate(Sender: TObject);
begin
  dtDesde.Date := StartOfAMonth(YearOf(Date()),MonthOf(Date()));
  dtHasta.Date := Int(Date());
  FTotalCR := 0;
  FTotalDB := 0;
end;

procedure TfListaDiario.Mostrar;
begin
  gldm.AbrirListaDiario(Trim(edCta.Text), Int(dtDesde.Date), Int(dtHasta.Date));
  CalcularTotales();
end;

procedure TfListaDiario.CalcularTotales;
begin
  FTotalCR := 0;
  FTotalDB := 0;
  with gldm.rsListaDiario do begin
    DisableControls();
    try
      First();
      while not Eof do begin
        FtotalCR := FTotalCR + gldm.rsListaDiarioCredito.AsCurrency;
        FtotalDB := FTotalDB + gldm.rsListaDiarioDebito.AsCurrency;
        Next();
      end;
    finally
      EnableControls();
      First();
    end;
  end;
end;

procedure TfListaDiario.SpeedButton2Click(Sender: TObject);
begin
  uutiles.ImprimirReporte(Report);
end;

end.

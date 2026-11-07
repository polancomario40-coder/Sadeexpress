unit uBalanceGral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ADODB,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppVar,
  ppPrnabl, ppBands, ppCache,dateutils;

type
  TfBalanceGral = class(TForm)
    Label1: TLabel;
    deHasta: TcxDateEdit;
    rsEstado: TADODataSet;
    ds: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxButton1: TcxButton;
    cxGrid1DBTableView1Grupo: TcxGridDBColumn;
    cxGrid1DBTableView1Descripcion: TcxGridDBColumn;
    cxGrid1DBTableView1CtaEstado: TcxGridDBColumn;
    cxGrid1DBTableView1Cuenta: TcxGridDBColumn;
    cxGrid1DBTableView1MovActual: TcxGridDBColumn;
    cxGrid1DBTableView1MovAnterior: TcxGridDBColumn;
    cxGrid1DBTableView1MovAcumulado: TcxGridDBColumn;
    plEstado: TppDBPipeline;
    Report: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppGroup1: TppGroup;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroup2: TppGroup;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel3: TppLabel;
    ppDBText5: TppDBText;
    ppLabel4: TppLabel;
    ppDBText6: TppDBText;
    ppLabel5: TppLabel;
    ppLine5: TppLine;
    cxButton2: TcxButton;
    rsEstadoGrupo: TStringField;
    rsEstadoidGrupo: TIntegerField;
    rsEstadoidItem: TIntegerField;
    rsEstadoDescripcion: TStringField;
    rsEstadoPieGrupo: TStringField;
    rsEstadoPieSubGrupo: TStringField;
    rsEstadoOrdenGrupo: TWordField;
    rsEstadoOrdenSubGrupo: TIntegerField;
    rsEstadoCtaEstado: TStringField;
    rsEstadoCuenta: TStringField;
    rsEstadoDebCre: TWordField;
    rsEstadoMovActual: TBCDField;
    rsEstadoMovAnterior: TBCDField;
    rsEstadoMovAcumulado: TBCDField;
    ppDBText7: TppDBText;
    ppShape1: TppShape;
    ppDBText8: TppDBText;
    ppShape2: TppShape;
    ppLine1: TppLine;
    rsEstadoOrigen: TStringField;
    rsEstadoOrigenGrupo: TWordField;
    rsEstadoOrigenSubGrupo: TWordField;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppDBText9: TppDBText;
    ppLine4: TppLine;
    rsEstadoMovAnnoAnt: TBCDField;
    rsEstadocVariacion: TFloatField;
    ppLabel6: TppLabel;
    ppDBText11: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    rsEstadoNombreEstado: TStringField;
    rsEstadoPieEstado: TStringField;
    ppDBText12: TppDBText;
    ppVariable1: TppVariable;
    ppLabel1: TppLabel;
    cxButton3: TcxButton;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    rsEstadocMovActual: TBCDField;
    rsEstadocMovAnterior: TBCDField;
    rsEstadocMovAcumulado: TBCDField;
    rsEstadocMovAnnoAnt: TBCDField;
    rsEstadocsgMovActual: TBCDField;
    rsEstadocsgMovAnterior: TBCDField;
    rsEstadocsgMovAcumulado: TBCDField;
    rsEstadocsgMovAnnoAnt: TBCDField;
    rsEstadocgMovActual: TBCDField;
    rsEstadocgMovAnterior: TBCDField;
    rsEstadocgMovAcumulado: TBCDField;
    rsEstadocgMovAnnoAnt: TBCDField;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    rsEstadocsecMovActual: TBCDField;
    rsEstadocsecMovAnterior: TBCDField;
    rsEstadocsecMovAcumulado: TBCDField;
    rsEstadocsecMovAnnoAnt: TBCDField;
    rsEstadoidSeccion: TIntegerField;
    rsEstadoSeccion: TStringField;
    rsEstadoPieSeccion: TStringField;
    rsEstadoOrigenSeccion: TWordField;
    rsEstadoOrdenSeccion: TIntegerField;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppShape4: TppShape;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText30: TppDBText;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    rsEstadoDetGrupo: TBooleanField;
    rsEstadoHeadergrupo: TBooleanField;
    rsEstadoTotalesGrupo: TBooleanField;
    rsEstadoDetSec: TBooleanField;
    rsEstadoHeaderSec: TBooleanField;
    rsEstadoTotalesSec: TBooleanField;
    rsEstadoDetItem: TBooleanField;
    rsEstadoHeaderItem: TBooleanField;
    rsEstadoTotalesItem: TBooleanField;
    ppDBText2: TppDBText;
    VertReport: TppReport;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand2: TppHeaderBand;
    ppLine6: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppDBText31: TppDBText;
    ppVariable2: TppVariable;
    ppLabel18: TppLabel;
    ppLine7: TppLine;
    ppDetailBand2: TppDetailBand;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine8: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppShape5: TppShape;
    ppDBText38: TppDBText;
    ppLine9: TppLine;
    ppDBText39: TppDBText;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppDBText43: TppDBText;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppShape6: TppShape;
    ppDBText44: TppDBText;
    ppLine10: TppLine;
    ppDBText45: TppDBText;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppDBText49: TppDBText;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppShape7: TppShape;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppDBText55: TppDBText;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppShape8: TppShape;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    rsEstadocImporte: TCurrencyField;
    ppLabel10: TppLabel;
    ppDBText15: TppDBText;
    rsEstadocompania: TStringField;
    ppDBText19: TppDBText;
    ppDBText23: TppDBText;
    ppDBText29: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    rsEstadocImporteItem: TCurrencyField;
    rsEstadocVariacionItem: TCurrencyField;
    rsEstadocSecVariacion: TFloatField;
    rsEstadocsecImporte: TCurrencyField;
    rsEstadocsgImporte: TCurrencyField;
    rsEstadocsgVariacion: TFloatField;
    ppLabel11: TppLabel;
    ppShape9: TppShape;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine2: TppLine;
    ppLine15: TppLine;
    ppLabel2: TppLabel;
    ppLabel9: TppLabel;
    ppLabel12: TppLabel;
    rsEstadoNotaGrupo: TStringField;
    rsEstadoNotaSec: TStringField;
    rsEstadoNotaItem: TStringField;
    rsEstadoNotaCta: TStringField;
    ppDBText10: TppDBText;
    ppDBText16: TppDBText;
    ppDBText20: TppDBText;
    ppLabel13: TppLabel;
    ppLine3: TppLine;
    ppLabel14: TppLabel;
    ppLine16: TppLine;
    rsEstadoNotaEstado: TStringField;
    ppSystemVariable5: TppSystemVariable;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure rsEstadoCalcFields(DataSet: TDataSet);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure cxButton3Click(Sender: TObject);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand3BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand4BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand5BeforePrint(
  Sender: TObject);
    procedure ppGroupFooterBand6BeforePrint(
  Sender: TObject);
    procedure ppGroupHeaderBand4BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand5BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand6BeforePrint(Sender: TObject);
    procedure ppVariable2Calc(Sender: TObject;
  var Value: Variant);
    procedure ppShape4Print(Sender: TObject);
    procedure ppDBText26Print(Sender: TObject);
    procedure ppDBText9Print(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppLabel1Print(Sender: TObject);
    procedure ppVariable3Calc(Sender: TObject; var Value: Variant);
    procedure ppSystemVariable5GetText(Sender: TObject; var Text: String);
  private
    FidMoneda: string;
    procedure CalcularVariacion(const Act, Ant: Currency;
      out Imp: Double; out Porc: Double);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBalanceGral: TfBalanceGral;

procedure ImprimirBalanceGral(const idEstado: Integer; const hasta: TDateTime; const Vertical: Boolean = False);

implementation

uses ugldm, Udata, UUtiles;

{$R *.dfm}

procedure TfBalanceGral.cxButton1Click(Sender: TObject);
begin
  with rsEstado do begin
    Close();
    Parameters[1].Value := 2;
    Parameters[2].Value := deHasta.Date;
    Open();
  end;
end;

procedure TfBalanceGral.cxButton2Click(Sender: TObject);
begin
  ImprimirReporte(Report);
end;

procedure TfBAlanceGral.CalcularVariacion(const Act,Ant: Currency; out Imp: Double; out Porc: Double);
begin
  imp:= Act - Ant;

  if ant <> 0 then
    porc := imp / ant * 100
  else if act <> 0 then
    porc := 100.00
  else
    porc := 0.00;
end;

procedure TfBalanceGral.rsEstadoCalcFields(DataSet: TDataSet);
var
  i,v: double;
begin
  CalcularVariacion(rsEstadoMovActual.AsCurrency, rsEstadoMovAnterior.AsCurrency, i,v);
  rsEstadocImporte.Value := i;
  rsEstadocVariacion.Value := v;

  CalcularVariacion(rsEstadocMovActual.AsCurrency, rsEstadocMovAnterior.AsCurrency, i,v);
  rsEstadocImporteItem.Value := i;
  rsEstadocVariacionItem.Value := v;

  CalcularVariacion(rsEstadocsecMovActual.AsCurrency, rsEstadocsecMovAnterior.AsCurrency, i,v);
  rsEstadocsecImporte.Value := i;
  rsEstadocsecVariacion.Value := v;

  CalcularVariacion(rsEstadocsgMovActual.AsCurrency, rsEstadocsgMovAnterior.AsCurrency, i,v);
  rsEstadocsgImporte.Value := i;
  rsEstadocsgVariacion.Value := v;
end;

function IIf(const exp: Boolean; const val1: Currency; const val2: Currency): Currency;
begin
  if exp then
    Result := val1
  else
    Result := val2;
end;
procedure TfBalanceGral.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  //Value := 'Hasta el: ' + deHasta.Text;
  if MonthOf(deHasta.Date) = 1 then begin
    Value := 'Meses de ' + FormatDateTime('mmmmm',deHasta.Date) +
             ' del ' + FormatDateTime('yyyy', deHasta.Date) + ' y ' +
             FormatDateTime('mmmmm', IncMonth(deHasta.Date, -1)) +
              ' del ' + FormatDateTime('yyyy', IncMonth(deHasta.Date,-1));
  end
  else begin
    Value := 'Meses de ' + FormatDateTime('mmmmm',deHasta.Date) + ' y ' +
                           FormatDateTime('mmmmm', IncMonth(deHasta.Date, -1)) +
                           ' del ' + FormatDateTime('yyyy', deHasta.Date);
  end;
end;

procedure TfBalanceGral.cxButton3Click(Sender: TObject);
begin
  Close();
end;

procedure TfBalanceGral.ppGroupFooterBand2BeforePrint(
  Sender: TObject);
begin
  ppGroupFooterBand2.Visible := rsEstadoTotalesSec.Asboolean;
end;

procedure TfBalanceGral.ppGroupFooterBand3BeforePrint(
  Sender: TObject);
begin
  ppGroupFooterBand3.Visible := rsEstadoTotalesItem.AsBoolean;
end;

procedure TfBalanceGral.ppGroupHeaderBand3BeforePrint(Sender: TObject);
begin
  ppGroupHeaderBand3.Visible := rsEstadoHeaderItem.AsBoolean;
end;

procedure TfBalanceGral.ppDetailBand1BeforePrint(Sender: TObject);
begin
  ppDetailBand1.Visible := rsEstadoDetItem.AsBoolean;
end;

procedure TfBalanceGral.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
  ppGroupHeaderBand1.Visible := rsEstadoHeadergrupo.AsBoolean;
end;

procedure TfBalanceGral.ppGroupHeaderBand2BeforePrint(Sender: TObject);
begin
  ppGroupHeaderBand2.visible := rsEstadoHeaderSec.AsBoolean;
end;

procedure TfBalanceGral.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  ppGroupFooterBand1.Visible := rsEstadoTotalesGrupo.AsBoolean;
end;

procedure ImprimirBalanceGral(const idEstado: Integer; const hasta: TDateTime; const Vertical: Boolean = False);
begin
  with TfBalanceGral.Create(Application) do begin
    with rsEstado do begin
      Close();
      Parameters[1].Value := idEstado;
      Parameters[2].Value := hasta;
      Open();
    end;

    deHasta.Date := Hasta;

    if Vertical then begin
      ImprimirReporte(VertReport)
    end
    else
      ImprimirReporte(Report);

    Release();
  end;
end;

procedure TfBalanceGral.ppDetailBand2BeforePrint(Sender: TObject);
begin
  ppDetailBand2.Visible := rsEstadoDetItem.AsBoolean;
end;

procedure TfBalanceGral.ppGroupFooterBand4BeforePrint(Sender: TObject);
begin
  ppGroupFooterBand4.Visible := rsEstadoTotalesGrupo.AsBoolean;
end;

procedure TfBalanceGral.ppGroupFooterBand5BeforePrint(
  Sender: TObject);
begin
  ppGroupFooterBand5.Visible := rsEstadoTotalesSec.Asboolean;
end;

procedure TfBalanceGral.ppGroupFooterBand6BeforePrint(
  Sender: TObject);
begin
  ppGroupFooterBand6.Visible := rsEstadoTotalesItem.AsBoolean;
end;

procedure TfBalanceGral.ppGroupHeaderBand4BeforePrint(Sender: TObject);
begin
  ppGroupHeaderBand4.Visible := rsEstadoHeadergrupo.AsBoolean;
end;

procedure TfBalanceGral.ppGroupHeaderBand5BeforePrint(Sender: TObject);
begin
  ppGroupHeaderBand5.visible := rsEstadoHeaderSec.AsBoolean;
end;

procedure TfBalanceGral.ppGroupHeaderBand6BeforePrint(Sender: TObject);
begin
  ppGroupHeaderBand6.Visible := rsEstadoHeaderItem.AsBoolean;
end;

procedure TfBalanceGral.ppVariable2Calc(Sender: TObject;
  var Value: Variant);
begin
  Value := 'Hasta el: ' + deHasta.Text;
end;

procedure TfBalanceGral.ppShape4Print(Sender: TObject);
begin
  ppShape4.Visible := rsEstadoDetItem.AsBoolean;
end;

procedure TfBalanceGral.ppDBText26Print(Sender: TObject);
begin
  if rsEstadoDetItem.AsBoolean then
    ppDBText26.Font.Style := [fsBold]
  else
    ppDBText26.Font.Style := [];
end;

procedure TfBalanceGral.ppDBText9Print(Sender: TObject);
begin
  (Sender as TppDBText).Visible := rsEstadoPieEstado.Value <> '';
end;

procedure TfBalanceGral.FormCreate(Sender: TObject);
begin
  try
    with gldm.rsMoneda do begin
      Close();
      Open();
      FidMoneda := gldm.rsMonedaMoneda.Asstring;
    end;
  except
    FidMoneda := 'RD $';
  end;
end;

procedure TfBalanceGral.ppLabel1Print(Sender: TObject);
begin
  ppLabel1.Caption := 'Valores en ' + FidMoneda;
end;

procedure TfBalanceGral.ppVariable3Calc(Sender: TObject;
  var Value: Variant);
begin
  Value := rsEstadoNotaEstado.AsString + '/' + IntToStr(Report.PageNo);
end;

procedure TfBalanceGral.ppSystemVariable5GetText(Sender: TObject;
  var Text: String);
begin
 if rsEstadoNotaEstado.Asstring <> '' then
   Text := rsEstadoNotaEstado.AsString + '/' + Text;
end;

end.

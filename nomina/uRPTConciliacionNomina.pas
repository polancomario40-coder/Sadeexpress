unit uRPTConciliacionNomina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uform, DB, Wwdatsrc, ADODB, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls,
  cxButtons, cxContainer, cxTextEdit, cxMaskEdit, cxSpinEdit, ppDB,
  ppDBPipe, ppCtrls, ppBands, ppClass, ppVar, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, ppReport;

type
  TRPTConciliacionNomina = class(TFForm)
    rs: TADODataSet;
    rsNominaID: TIntegerField;
    rsEmpleadoID: TIntegerField;
    rsHoraNormal: TBCDField;
    rsHoraNocturna: TBCDField;
    rsHoraExtra: TBCDField;
    rsHoraDoble: TBCDField;
    rsPrecioNormal: TBCDField;
    rsPrecioNocturna: TBCDField;
    rsPrecioExtra: TBCDField;
    rsPrecioDoble: TBCDField;
    rsTotalNormal: TBCDField;
    rsTotalNocturna: TBCDField;
    rsTotalExtra: TBCDField;
    rsTotalDoble: TBCDField;
    rsOtrosIngresos: TBCDField;
    rsBruto: TBCDField;
    rsSS: TBCDField;
    rsAFP: TBCDField;
    rsIR: TBCDField;
    rsOtrosDescuentos: TBCDField;
    rsTDescuentos: TBCDField;
    rsNeto: TBCDField;
    rsNotas: TStringField;
    rsDias: TBCDField;
    rsDiasPuntoA: TBCDField;
    rsDiasPuntoB: TBCDField;
    rsDiasPuntoC: TBCDField;
    rsCheque: TIntegerField;
    rsVolante: TIntegerField;
    rsNumero: TIntegerField;
    rsAdelanto: TBCDField;
    rsPrecioHora: TBCDField;
    rsDepartamentoID: TIntegerField;
    rsDepartamento: TStringField;
    rsDepOrden: TIntegerField;
    rsSeccionID: TIntegerField;
    rsSeccion: TStringField;
    rsSecOrden: TIntegerField;
    rsUidNominaEmp: TGuidField;
    Label1: TLabel;
    Label2: TLabel;
    seDesde: TcxSpinEdit;
    seHasta: TcxSpinEdit;
    cxButton1: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1NominaID: TcxGridDBColumn;
    cxGrid1DBTableView1EmpleadoID: TcxGridDBColumn;
    cxGrid1DBTableView1HoraNormal: TcxGridDBColumn;
    cxGrid1DBTableView1HoraNocturna: TcxGridDBColumn;
    cxGrid1DBTableView1HoraExtra: TcxGridDBColumn;
    cxGrid1DBTableView1HoraDoble: TcxGridDBColumn;
    cxGrid1DBTableView1PrecioNormal: TcxGridDBColumn;
    cxGrid1DBTableView1PrecioNocturna: TcxGridDBColumn;
    cxGrid1DBTableView1PrecioExtra: TcxGridDBColumn;
    cxGrid1DBTableView1PrecioDoble: TcxGridDBColumn;
    cxGrid1DBTableView1TotalNormal: TcxGridDBColumn;
    cxGrid1DBTableView1TotalNocturna: TcxGridDBColumn;
    cxGrid1DBTableView1TotalExtra: TcxGridDBColumn;
    cxGrid1DBTableView1TotalDoble: TcxGridDBColumn;
    cxGrid1DBTableView1OtrosIngresos: TcxGridDBColumn;
    cxGrid1DBTableView1Bruto: TcxGridDBColumn;
    cxGrid1DBTableView1SS: TcxGridDBColumn;
    cxGrid1DBTableView1AFP: TcxGridDBColumn;
    cxGrid1DBTableView1IR: TcxGridDBColumn;
    cxGrid1DBTableView1OtrosDescuentos: TcxGridDBColumn;
    cxGrid1DBTableView1TDescuentos: TcxGridDBColumn;
    cxGrid1DBTableView1Neto: TcxGridDBColumn;
    cxGrid1DBTableView1Adelanto: TcxGridDBColumn;
    Report: TppReport;
    ppTitleBand1: TppTitleBand;
    ppDBText81: TppDBText;
    ppSystemVariable19: TppSystemVariable;
    ppSystemVariable20: TppSystemVariable;
    ppLabel314: TppLabel;
    ppHeaderBand4: TppHeaderBand;
    ppShape7: TppShape;
    ppShape6: TppShape;
    ppLabel28: TppLabel;
    ppShape5: TppShape;
    ppLabel29: TppLabel;
    ppShape4: TppShape;
    ppLabel30: TppLabel;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppLabel31: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel148: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText146: TppDBText;
    ppDBText113: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine1: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape11: TppShape;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppDBCalc44: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    ppLabel51: TppLabel;
    ppDBCalc81: TppDBCalc;
    ppDBCalc54: TppDBCalc;
    ppLabel169: TppLabel;
    Data: TppDBPipeline;
    cxButton2: TcxButton;
    rsEmpleado: TStringField;
    ppShape1: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppLabel1: TppLabel;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppLabel2: TppLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RPTConciliacionNomina: TRPTConciliacionNomina;

implementation

uses Udata;

{$R *.dfm}

procedure TRPTConciliacionNomina.cxButton1Click(Sender: TObject);
begin
  inherited;
  with rs do begin
    Close();
    Parameters[1].Value := seDesde.Value;
    Parameters[2].Value := seHasta.Value;
    Open();
  end;
  
end;

procedure TRPTConciliacionNomina.cxButton2Click(Sender: TObject);
begin
  inherited;
  Report.Print();
end;

end.
